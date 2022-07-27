part of view;

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({Key? key, required this.title}) : super(key: key);

  final String title;
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Profile Page',
              style: TextStyle(color: Palette.text),
            ),
          ],
        ),
      ),
    );
  }
}
