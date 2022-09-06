part of model;

class Startup {
  void startUp() async {
    var url = Uri.base.toString();
    if (url.contains('code=')) {
      var code = MMFAuth().fetchAuthCode(url);
      print('code: $code');
      AuthenticationToken token =
          await MMFAuth().fetchAthenticationToken(code!);
      print('code: $token');
    }
  }
}
