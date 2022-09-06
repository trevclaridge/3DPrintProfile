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
    // return ElevatedButton(onPressed: signInFunction, child: Text(text));

    return Align(
      alignment: Alignment.center,
      child: Container(
        color: Palette.white,
        width: 270.0,
        height: 90.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: icon!,
            ),
            Text("Sign in with $text")
          ],
        ),
      ),
    );
  }
}
