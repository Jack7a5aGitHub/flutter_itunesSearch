import 'package:flutter/material.dart';
import 'package:http_rxdart/bloc/searchBloc.dart';
import 'package:http_rxdart/model/api_response_model.dart';
import 'package:http_rxdart/model/music_video_info.dart';

class ResultList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<SearchResponse>(
      initialData: SearchResponse(0, null),
      stream: searchBloc.result,
      builder: (context, AsyncSnapshot<SearchResponse> snapshot) {
        print('###snapshot### ${snapshot.data.musicVideoInfo}');
        if (snapshot.hasError || snapshot.data.musicVideoInfo == null) {
          return Container();
        }
        return ListView.builder(
          itemCount: snapshot.data.musicVideoInfo.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                child: Container(
                  color: Colors.black,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                    'ArtistName : ${snapshot.data.musicVideoInfo[index].artistName} \nTrackName : ${snapshot.data.musicVideoInfo[index].trackName}',
                    style: TextStyle(color: Colors.white),
                    maxLines: 2,
                  ),
                  Divider(height: 4,color: Colors.white,),
                    ],
                  )
                ));
          },
        );
      },
    );
  }
}
