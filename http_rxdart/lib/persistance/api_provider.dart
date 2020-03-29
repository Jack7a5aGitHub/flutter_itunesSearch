import 'dart:convert';
import 'package:http/http.dart';
import 'package:http_rxdart/model/api_response_model.dart';

class ApiProvider {
  Client client = Client();

  final _baseUrl = 'https://itunes.apple.com';
  
  Future<SearchResponse> fetchMusicVideoWithKeyword(String keyword) async {
  final _tempUrl = 'https://itunes.apple.com/search?term=${keyword}&limit=25&entity=musicVideo&country=jp';
    // Map<String, dynamic> queryParameter = {
    //   'term': keyword,
    //   'limit' : 25,
    //   'entity' : 'musicVideo',
    //   'country' : 'jp'
    // };
    // var uri = Uri.https('itunes.apple.com','/search',queryParameter);
    final response = await client.get(_tempUrl);
    print('###Search Response###  ${response.body.toString()}');
    if (response.statusCode == 200) {
      print('###Search Response###  Succeed');
      Map<String, dynamic> map = json.decode(response.body);
      print('###map### $map');
      return SearchResponse.fromJson(json.decode(response.body));
    } else {
      print('###Search Response###  failed ');
      throw Exception('Failed to fetch result!!!');
    }
  }
}
