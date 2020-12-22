import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:tikTokClone/theme/colors.dart';

class LeftPanel extends StatelessWidget {
  final String videoName;
  final String videoCaption;
  final String videoSongName;

  const LeftPanel(
      {Key key, this.videoName, this.videoCaption, this.videoSongName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width * 0.78,
      child: getDetails(context),
    );
  }

  Widget getDetails(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          videoName,
          style: TextStyle(color: white),
        ),
        SizedBox(height: 10),
        Text(
          videoCaption,
          style: TextStyle(color: white),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Icon(
              Icons.music_note,
              color: white,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              height: 30,
              child: Marquee(
                blankSpace: 50.0,
                text: videoSongName,
                style: TextStyle(color: white),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
