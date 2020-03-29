import 'dart:async';
import '../model/api_response_model.dart';
import 'package:rxdart/rxdart.dart';
import '../persistance/repository.dart';

class SearchBloc {
  Repository _repository = Repository();
  final _resultFetcher = PublishSubject<SearchResponse>();
  Stream<SearchResponse> get result => _resultFetcher.stream;
  fetchMusicVideoWithKeyword(String keyword) async {
    print('###bloc### $keyword');
    SearchResponse searchResponse = await _repository.fetchMusicVideoWithKeyword(keyword);
    _resultFetcher.sink.add(searchResponse);
  }
  dispose() {
    _resultFetcher.close();
  
  }
}
final searchBloc = SearchBloc();