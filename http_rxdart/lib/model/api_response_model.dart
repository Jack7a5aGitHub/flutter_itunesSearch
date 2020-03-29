import './music_video_info.dart';

class SearchResponse {
  final resultCount;
  final List<MusicVideoInfo> musicVideoInfo;

SearchResponse(this.resultCount, this.musicVideoInfo);

SearchResponse.fromJson(Map<String, dynamic> parsedJson) :
  resultCount = parsedJson['resultCount'],
  musicVideoInfo = (parsedJson['results'] as List).map((i) => new MusicVideoInfo.fromJson(i)).toList();

}
