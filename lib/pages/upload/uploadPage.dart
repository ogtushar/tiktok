import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tikTokClone/data/demoData.dart';
import 'package:tikTokClone/provider/videoProvider.dart';
import 'package:tikTokClone/theme/colors.dart';

class UploadPage extends StatefulWidget {
  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  @override
  Widget build(BuildContext context) {
    final _videoProvider = Provider.of<VideoProvider>(context);
    return Container(
      child: Center(
        child: RaisedButton(
          onPressed: () {
            videoData.forEach((element) async {
              await _videoProvider.firestoreService.uploadVideo(element);
            });
          },
          child: Text(
            "UploadData",
            style: TextStyle(color: black),
          ),
        ),
      ),
    );
  }
}
