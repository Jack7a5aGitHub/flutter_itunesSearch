import '../model/api_response_model.dart';
import './api_provider.dart';

class Repository {
  ApiProvider _apiProvider = ApiProvider();
  Future<SearchResponse> fetchMusicVideoWithKeyword(String keyword) => _apiProvider.fetchMusicVideoWithKeyword(keyword);
  
}