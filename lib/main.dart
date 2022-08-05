import 'package:flutter/material.dart';
import 'package:print_profile/model/model.dart';
import 'package:print_profile/view/view.dart';

void main() {
  var url = Uri.base.toString();
  if (url.contains('code=')) {
    var code = MMFAuth().fetchAuthCode(url);
    print(code);
  }
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
        'profile': (context) => MyProfilePage(title: '3DPrintProfile: Profile')
      },
    );
  }
}
