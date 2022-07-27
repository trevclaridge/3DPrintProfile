part of model;

class MMFAPI {
  //singleton
  static final MMFAPI _singleton = MMFAPI._internal();
  factory MMFAPI() {
    return _singleton;
  }
  MMFAPI._internal();

  String _baseUrl = 'https://www.myminifactory.com/api/v2/';
  String _apiKey = '36be06aa-5d9d-4346-bfeb-7e9cd8eb9f9b';

  Future<MMFUser> fetchMMFUser(String user) async {
    final response = await http.get(
      Uri.parse(
          'https://www.myminifactory.com/api/v2/users/$user?key=$_apiKey'),
    );

    if (response.statusCode == 200) {
      print(response.body);
      return MMFUser.fromJson(jsonDecode(response.body));
    } else {
      print(response.body);
      throw Exception('Failed to load album');
    }
  }
}
