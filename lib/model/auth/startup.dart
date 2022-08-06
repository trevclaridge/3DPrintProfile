part of model;

class Startup {
  void startUp() {
    var url = Uri.base.toString();
    if (url.contains('code=')) {
      var code = MMFAuth().fetchAuthCode(url);
      print('code: $code');
      MMFAuth().fetchAthenticationToken(code!);
    }
  }
}
