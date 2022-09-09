part of model;

class PatreonAuth {
  final String _redirectUri = 'http://localhost:49530';
  // final String _redirectUri = 'https://trevclaridge.github.io/3DPrintProfile/';
  final String _baseUrl = 'https://www.patreon.com/oauth2/';

  String get patreonAuthUrl {
    return '$_baseUrl/authorize?response_type=code&client_id=${Environment.PATREON_CLIENT_ID}&redirect_uri=$_redirectUri&scope=identity';
  }

  String get redirectUri {
    return _redirectUri;
  }

  String get clientId {
    return Environment.PATREON_CLIENT_ID;
  }

  String get clientSecret {
    return Environment.PATREON_SECRET;
  }

  String get creatorAccessToken {
    return Environment.PATREON_CREATOR_ACCESS_TOKEN;
  }

  String get refreshToken {
    return Environment.PATREON_REFRESH_TOKEN;
  }
}
