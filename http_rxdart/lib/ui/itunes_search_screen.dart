import 'package:flutter/material.dart';
import './result_list.dart';
import '../bloc/searchBloc.dart';

class ItunesSearchScreen extends StatelessWidget {
  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    void _search() {
      final enteredKeyword = _searchController.text;
      if (enteredKeyword.isEmpty) {
        return;
      }
      print('###keyword###    $enteredKeyword');
      searchBloc.fetchMusicVideoWithKeyword(enteredKeyword);
    }

    return SafeArea(
      child: Container(
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Search'),
            controller: _searchController,
            onSubmitted: (_) => _search(),
          ),
          Expanded(
            child: Container(
              child: ResultList(),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          RaisedButton(
            onPressed: _search,
            padding: EdgeInsets.all(0.0),
            child: Container(
              padding: const EdgeInsets.all(10.0),
              color: Colors.yellow,
              child: (Text(
                'Search',
                style: TextStyle(color: Colors.pink, fontSize: 24),
              )),
            ),
          )
        ],
      ),
    ));
  }
}
