part of view;

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlinedButton(
              child: const Text(
                'Go to Profile',
              ),
              onPressed: () => Navigator.pushNamed(context, 'profile'),
            ),
          ],
        ),
      ),
    );
  }
}
