part of view;

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Profile Page',
            ),
          ],
        ),
      ),
    );
  }
}
