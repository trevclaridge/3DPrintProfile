part of view;

class SignInWithButton extends StatelessWidget {
  const SignInWithButton(
      {Key? key, required this.signInFunction, required this.text, this.icon})
      : super(key: key);
  final VoidCallback signInFunction;
  final String text;
  final Image? icon;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        color: Palette.white,
        width: 250.0,
        height: 70.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: icon!,
            ),
            Text("Connect $text")
          ],
        ),
      ),
    );
  }
}
