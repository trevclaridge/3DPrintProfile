import 'package:flutter/material.dart';
import 'package:print_profile/view/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '3DPrintProfile',
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.defaultTheme,
      initialRoute: 'home',
      routes: <String, WidgetBuilder>{
        'home': (context) => const MyHomePage(title: '3DPrintProfile: Home'),
        'profile': (context) =>
            const MyProfilePage(title: '3DPrintProfile: Profile')
      },
    );
  }
}
