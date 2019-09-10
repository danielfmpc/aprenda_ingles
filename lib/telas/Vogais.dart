import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class Vogais extends StatefulWidget {
  @override
  _VogaisState createState() => _VogaisState();
}

class _VogaisState extends State<Vogais> {
  AudioCache _audioCache = AudioCache(prefix: "audios/");

  _executar(String nomeAudio){
    _audioCache.play(nomeAudio + ".mp3");
  }
  
  @override
  void initState() {
    super.initState();
    _audioCache.loadAll(
      [
        "a.mp3", "e.mp3", "i.mp3", "o.mp3", "u.mp3"
      ]
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      children: <Widget>[
        GestureDetector(
          onTap: (){
            _executar("a");
          },
          child: Image.asset("assets/images/a.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("e");
          },
          child: Image.asset("assets/images/e.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("i");
          },
          child: Image.asset("assets/images/i.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("o");
          },
          child: Image.asset("assets/images/o.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("u");
          },
          child: Image.asset("assets/images/u.png"),
        ),
      ],
    );
  }
}