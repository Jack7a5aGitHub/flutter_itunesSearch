class MusicVideoInfo {
    String artistName;
    String previewUrl;
    String iconImageUrl;
    String trackName;
    String trackId;

    MusicVideoInfo(this.artistName, this.previewUrl, this.iconImageUrl, this.trackName, this.trackId);
    MusicVideoInfo.fromJson(parsedJson) :
       artistName = parsedJson['artistName'], 
       previewUrl = parsedJson['previewUrl'],
       iconImageUrl = parsedJson['artworkUrl30'],
       trackName = parsedJson['trackName'],
       trackId = parsedJson['trackId'].toString();
    

}