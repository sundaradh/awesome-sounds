import 'package:awesome_sounds/global/const.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class Motivational extends StatefulWidget {
  const Motivational({super.key});

  @override
  State<Motivational> createState() => _MotivationalState();
}

class _MotivationalState extends State<Motivational> {
  final _player = AudioPlayer();
  bool isPlaying = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text("Motivational", style: TextStyle(color: Colors.white)),
        backgroundColor: primaryColor,
      ),
      body: Column(
        children: [
          IconButton(
            onPressed: () async {
              if (isPlaying) {
                await _player.pause();
                setState(() {
                  isPlaying = false;
                });
              } else {
                await _player.setAsset('assets/sounds/test.mp3');

                // Set loop mode
                _player.setLoopMode(LoopMode.one);

                await _player.play();

                setState(() {
                  isPlaying = true;
                });
              }
            },
            icon: Icon(
              isPlaying ? Icons.pause : Icons.play_arrow,
              color: primaryColor,
            ),
          ),
          const SizedBox(height: 20),
          const Center(
              child: Text(
            'Play',
            style: TextStyle(),
          )),
          const SizedBox(height: 20),
          Center(
            child: Text(
              "Motivational",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          const SizedBox(height: 20),
          const Center(
              child: Text(
            'Play',
            style: TextStyle(),
          )),
          const SizedBox(height: 20),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/shoe.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Text(
              "Motivational",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ],
      ),
    );
  }
}
