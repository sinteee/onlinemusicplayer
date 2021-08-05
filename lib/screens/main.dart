import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:myfirsteverapp/page_manager.dart';




class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
   PageManager _pageManager;

  @override
  void initState() {
    super.initState();
    _pageManager = PageManager('assets/audio/Audio Examples _ SoundHelix.mp3');
  }

  @override
  void dispose() {
    _pageManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Spacer(),
              ValueListenableBuilder<ProgressBarState>(
                valueListenable: _pageManager.progressNotifier,
                builder: (_, value, __) {
                  return ProgressBar(
                    progress: value.current,
                    buffered: value.buffered,
                    total: value.total,
                    onSeek: _pageManager.seek,
                  );
                },
              ),
              ValueListenableBuilder<ButtonState>(
                valueListenable: _pageManager.buttonNotifier,
                builder: (_, value, __) {
                  switch (value) {
                    case ButtonState.loading:
                      return Container(
                        margin: EdgeInsets.all(8.0),
                        width: 32.0,
                        height: 32.0,
                        child: CircularProgressIndicator(),
                      );
                    case ButtonState.paused:
                      return IconButton(
                        icon: Icon(Icons.play_arrow),
                        iconSize: 32.0,
                        onPressed: _pageManager.play,
                      );
                    case ButtonState.playing:
                      return IconButton(
                        icon: Icon(Icons.pause),
                        iconSize: 32.0,
                        onPressed: _pageManager.pause,
                      );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}