import 'package:flutter/material.dart';
import 'package:app_2/data/songs.dart';
import 'package:app_2/screen/lyrics_screen.dart';
import '../data/songs.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Music App'),
        backgroundColor: Color.fromARGB(255, 78, 37, 37),
      ),
      body: SongList(),
    );
  }
}

class SongList extends StatelessWidget {
  const SongList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: songTitles.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(songTitles[index]),
            subtitle: Text('Song'),
            leading: Icon(Icons.music_note),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              print(songTitles[index]);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LyricsScreen(
                    id: index,
                    songTitle: songTitles[index],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
