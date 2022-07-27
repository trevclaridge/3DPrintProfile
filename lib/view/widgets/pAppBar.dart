part of view;

class PAppBar extends StatelessWidget with PreferredSizeWidget {
  const PAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('3DPrintProfile'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
