import 'package:assessment/presentation/base/page/widget_component.dart';
import 'package:assessment/presentation/extensions/context_extensions.dart';
import 'package:assessment/presentation/modules/definition/bloc/definition_bloc.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MediaComponent
    extends
        WidgetComponent<
          DefinitionBloc,
          DefinitionState,
          DefinitionSenseMediaState
        > {
  const MediaComponent({super.key});

  @override
  Widget buildOnData(BuildContext context, DefinitionSenseMediaState state) {
    return Container(
      decoration: BoxDecoration(color: context.appColorScheme.cardBackgroundColor),
      child: switch (state) {
        SenseVideo(:final url) => _VideoPlayerWidget(url: url),
        SenseImage(:final url) => _ImageWidget(url: url,),
        Loading() => Center(child: CircularProgressIndicator()),
      },
    );
  }

  @override
  Widget buildEmpty(BuildContext context) {
    return Center(child: CircularProgressIndicator());
  }
}

class _VideoPlayerWidget extends StatefulWidget {
  final String url;

  const _VideoPlayerWidget({super.key, required this.url});

  @override
  State<_VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<_VideoPlayerWidget> {
  late VideoPlayerController _videoController;

  @override
  void initState() {
    super.initState();
    _initVideo();
  }

  Future<void> _initVideo() async {
    _videoController =
        VideoPlayerController.networkUrl(Uri.parse(widget.url))
          ..setLooping(true)
          ..setVolume(0.0);
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: FutureBuilder(
        future: _videoController.initialize(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            _videoController.play();
            return VideoPlayer(_videoController);
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

class _ImageWidget extends StatelessWidget {
  final String url;
  const _ImageWidget({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      fit: BoxFit.cover,
      width: double.infinity,
      loadingBuilder: (_, child, progress) =>
      progress == null ? child : const Center(child: CircularProgressIndicator()),
      errorBuilder: (_, __, ___) => const Icon(Icons.error),
    );
  }
}

