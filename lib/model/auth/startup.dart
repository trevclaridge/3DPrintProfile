part of model;

class Startup {
  void startUp() async {
    var url = Uri.base.toString();
    if (url.contains('code=')) {
      String code = MMFAuth().fetchAuthCode(url);
      print('code: $code');
      Map<String, String> params = {
        'code': code,
        'client_id': PatreonAuth().clientId,
        'redirect_uri': 'http://localhost:49530',
        'client_secret': PatreonAuth().clientSecret,
        'grant_type': 'authorization_code'
      };
      Map<String, String> headers = {
        'Content-Type': 'application/x-www-form-urlencoded'
      };
      GenericHTTPPost().genericTokenPost(
          'https://www.patreon.com/api/oauth2/token', params, headers);
      // AuthenticationToken token =
      //     await MMFAuth().fetchAthenticationToken(code!);
      // print('code: $token');
    }
  }
}
