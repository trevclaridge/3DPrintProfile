// ignore_for_file: deprecated_member_use

part of view;

class MyProfilePage extends StatefulWidget {
  MyProfilePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  late Future<MMFUser> _futureUser;

  @override
  void initState() {
    super.initState();

    // _futureUser = MMFAPI().fetchMMFUser('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pushNamed(context, 'home'),
          icon: const Icon(Icons.home),
        ),
        title: const Text('3DPrintProfile: Profile'),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Settings Not Implemented"),
                ),
              );
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            // OutlinedButton(
            //   onPressed: () {
            //     _futureUser = MMFAPI().fetchMMFUser('trevorclaridge');
            //     setState(() {});
            //   },
            //   child: const Text('API Request'),
            // ),
            // Center(
            //   child: FutureBuilder<MMFUser>(
            //     future: _futureUser,
            //     builder: (context, snapshot) {
            //       if (snapshot.hasData) {
            //         return Text(
            //           snapshot.data!.username!,
            //           style: const TextStyle(color: Palette.text),
            //         );
            //       } else if (snapshot.hasError) {
            //         return Text(
            //           '${snapshot.error}',
            //           style: const TextStyle(color: Palette.text),
            //         );
            //       }

            //       // By default, show a loading spinner.
            //       return const CircularProgressIndicator();
            //     },
            //   ),
            // ),
            InkWell(
              onTap: () => _launchURL(AuthProviders.mmf.authUrl!),
              child: SignInWithButton(
                signInFunction: () {},
                text: AuthProviders.mmf.name,
                icon: AuthProviders.mmf.icon,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () => _launchURL(AuthProviders.patreon.authUrl!),
              child: SignInWithButton(
                signInFunction: () {},
                text: AuthProviders.patreon.name,
                icon: AuthProviders.patreon.icon,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, webOnlyWindowName: '_self');
    } else {
      throw 'Could not launch $url';
    }
  }
}
