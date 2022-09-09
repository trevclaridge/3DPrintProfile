part of model;

class AuthProviders {
  int providersCount = 5;
  static AuthProvider mmf = AuthProvider.withIcon(
    MMFAuth().MMFAuthUrl,
    "MyMiniFactory",
    Image.asset("assets/logos/mmf_logo.png"),
  );
  static AuthProvider patreon = AuthProvider.withIcon(
      PatreonAuth().patreonAuthUrl,
      "Patreon",
      Image.asset("assets/logos/patreon_logo.png"));
  static AuthProvider cults = AuthProvider(null, "Cults3D");
  static AuthProvider thiniverse = AuthProvider(null, "Thingiverse");
  static AuthProvider gambody = AuthProvider(null, "Gambody");
}
