import 'package:flutter/material.dart';
import 'package:tikTokClone/models/videoModel.dart';
import 'package:tikTokClone/theme/colors.dart';
import 'package:video_player/video_player.dart';
import 'homePageLeftPanel.dart';
import 'homePageRightPanel.dart';

class VideoPlayerItem extends StatefulWidget {
  final VideoModel videoModel;
  final Size size;
  const VideoPlayerItem({Key key, this.videoModel, this.size})
      : super(key: key);

  @override
  _VideoPlayerItemState createState() => _VideoPlayerItemState();
}

class _VideoPlayerItemState extends State<VideoPlayerItem>
    with SingleTickerProviderStateMixin {
  VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController =
        VideoPlayerController.network(widget.videoModel.videoUrl)
          ..initialize().then((value) {
            // _videoPlayerController.setLooping(true);
            _videoPlayerController.play();
            setState(() {});
          });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _videoPlayerController.value.isPlaying
                  ? _videoPlayerController.pause()
                  : _videoPlayerController.play();
            });
          },
          child: Container(
              width: widget.size.width,
              height: widget.size.height,
              decoration: BoxDecoration(color: black),
              child: Stack(
                children: [
                  VideoPlayer(
                    _videoPlayerController,
                  ),
                  _videoPlayerController.value.isPlaying
                      ? Container()
                      : Center(
                          child: Icon(
                            Icons.play_arrow,
                            color: white.withOpacity(0.6),
                            size: 100,
                          ),
                        )
                ],
              )),
        ),
        Container(
          width: widget.size.width,
          height: widget.size.height,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 25, right: 15, left: 15, bottom: 10),
              child: Column(
                children: [
                  // homePageHeader(context),
                  Flexible(
                    child: Row(
                      children: [
                        LeftPanel(
                          videoName: widget.videoModel.name,
                          videoCaption: widget.videoModel.caption,
                          videoSongName: widget.videoModel.songName,
                        ),
                        RightPanel(
                          videoAblumImg: widget.videoModel.albumImg,
                          videoComments: widget.videoModel.comments,
                          videoLikes: widget.videoModel.likes,
                          videoProfileImg: widget.videoModel.profileImg,
                          videoShares: widget.videoModel.shares,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
