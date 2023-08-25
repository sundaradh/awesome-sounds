import 'package:awesome_sounds/global/const.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class FocusPage extends StatefulWidget {
  const FocusPage({super.key});

  @override
  State<FocusPage> createState() => _FocusPageState();
}

class _FocusPageState extends State<FocusPage> {
final _player = AudioPlayer();
  bool isPlaying = false;

  Future<void> _togglePlayer() async {
    if (isPlaying) {
      await _player.pause();
    } else {
      await _player.setAsset('assets/sounds/focus.mp3');
      _player.setLoopMode(LoopMode.one);
      await _player.play();
    }
    setState(() {
      isPlaying = !isPlaying;
    });
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
        title: const Text("Focus", style: TextStyle(color: Colors.white)),
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
                color: primaryColor,
                size: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
