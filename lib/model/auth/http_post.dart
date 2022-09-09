// ignore_for_file: prefer_interpolation_to_compose_strings

part of model;

class GenericHTTPPost {
  Future<http.Response> genericTokenPost(
  // void genericTokenPost(
      String uri, Map<String, String> params, Map<String, String> headers) {
    var fullUri = StringBuffer(uri);
    fullUri.write('?');
    int count = params.keys.length;
    for (var key in params.keys) {
      fullUri.write(key + '=' + params[key]!);
      if (--count > 0) {
        fullUri.write('&');
      }
    }

    // print(fullUri.toString());
    // print(headers);
    return http.post(Uri.parse(uri), headers: headers);
  }
}
