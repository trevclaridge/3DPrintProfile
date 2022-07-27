// ignore_for_file: file_names

part of view;

class PAppBar extends StatelessWidget with PreferredSizeWidget {
  const PAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('3DPrintProfile'),
      actions: [
        IconButton(
          onPressed: () => Navigator.pushNamed(context, 'profile'),
          icon: const Icon(Icons.account_circle_sharp),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
