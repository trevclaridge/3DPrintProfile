part of view;

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PAppBar(),
      body: ListView.separated(
        itemCount: 20,
        padding: const EdgeInsets.all(15.0),
        itemBuilder: (context, index) {
          return const FeedBlock(
              style: BlockStyle.patreon, title: "Patreon Block");
        },
        separatorBuilder: (BuildContext context, int index) {
          return const FeedBlock(style: BlockStyle.mmf, title: "MMF Block");
        },
      ),
    );
  }
}
