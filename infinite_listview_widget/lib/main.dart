import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(new MaterialApp(
    home: RandomWords(),
  ));
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _saved = new Set<WordPair>();

  void _pushSaved(context) {
    Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
      final tiles = _saved.map((pair) {
        return new ListTile(
          title: new Text(pair.asPascalCase),
        );
      });

      final divider =
          ListTile.divideTiles(context: context, tiles: tiles).toList();
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("Lista de favoritos"),
        ),
        body: new ListView(
          children: divider,
        ),
      );
    }));
  }

  Widget _buildRow(WordPair pair) {
    final bool alreadySaved = _saved.contains(pair);
    for (var item in _saved) {
      print(item);
    }
    return ListTile(
      title: new Text(pair.asPascalCase),
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: Colors.redAccent,
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }

  Widget _buildSuggestion() {
    return new ListView.builder(
      itemBuilder: (context, i) {
        if (i.isOdd) return new Divider();
        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Lista infinita"),
        centerTitle: true,
        actions: [
          new IconButton(
              icon: new Icon(Icons.list),
              onPressed: () {
                _pushSaved(context);
              })
        ],
      ),
      body: _buildSuggestion(),
    );
  }
}
