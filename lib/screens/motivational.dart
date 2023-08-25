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
  void initState() {
    super.initState();
    _player.playerStateStream.listen((playerState) {
      if (mounted) {
        setState(() {
          isPlaying = playerState.playing;
        });
      }
    });
  }

  Future<void> _togglePlayer() async {
    if (isPlaying) {
      await _player.pause();
    } else {
      await _player.setAsset('assets/sounds/motivational.mp3');
      _player.setLoopMode(LoopMode.one);
      await _player.play();
    }
  }

  @override
  void dispose() {
    _player.dispose(); // Dispose the player when the widget is disposed.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Motivation", style: TextStyle(color: Colors.white)),
        backgroundColor: primaryColor3,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Center(
            child: Text(
              isPlaying ? 'Sound is playing' : 'Tap to play button to play sound',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: primaryColor3,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: IconButton(
              onPressed: _togglePlayer,
              icon: Icon(
                isPlaying ? Icons.pause : Icons.play_arrow,
                color: primaryColor3,
                size: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
