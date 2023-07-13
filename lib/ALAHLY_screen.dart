import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
//import 'package:audioplayers/audioplayers.dart';

class Al_Ahly extends StatelessWidget {
  const Al_Ahly({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/image/image.jpg'),
          fit: BoxFit.cover,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 280, left: 20),
              child: Image.asset(
                'assets/image/alahly_logo.png',
              ),
            ),
            SizedBox(
              height: 300,
            ),
            SizedBox(width: 300),
            Material(
              elevation: 16,
              color: Color.fromARGB(110, 128, 12, 4),
              shadowColor: Color.fromARGB(130, 248, 241, 240),
              borderRadius: BorderRadius.circular(12),
              child: MaterialButton(
                  onPressed: () {
                    //  final uri = await load(fileName);
                    String audioasset = "assets/audio/aud.wav";
                    // AudioCache player= new AudioCache();
                    //   player.play(audioasset, stayAwake:true);
                    AssetsAudioPlayer.newPlayer().open(
                      Audio(audioasset),
                      autoStart: true,
                      showNotification: true,
                    );
                  },
                  child: Text(
                    'Play now',
                    style: TextStyle(
                        color: Color.fromARGB(255, 241, 233, 233),
                        fontSize: 20),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
