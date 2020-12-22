import 'package:flutter/material.dart';
import 'package:tikTokClone/pages/utils/tikTokIcons.dart';
import 'getAlbum.dart';
import 'getIcon.dart';
import 'getProfile.dart';

class RightPanel extends StatelessWidget {
  final String videoProfileImg;
  final String videoLikes;
  final String videoComments;
  final String videoShares;
  final String videoAblumImg;

  const RightPanel(
      {Key key,
      this.videoProfileImg,
      this.videoLikes,
      this.videoComments,
      this.videoShares,
      this.videoAblumImg})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        height: size.height,
        child: Column(
          children: [
            Container(
              height: size.height * 0.3,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  getProfile(videoProfileImg),
                  getIcons(TikTokIcons.heart, 35.0, videoLikes),
                  getIcons(TikTokIcons.chat_bubble, 35.0, videoComments),
                  getIcons(TikTokIcons.reply, 35.0, videoShares),
                  getAlbum(videoAblumImg),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
