import 'package:flutter/foundation.dart';
import 'package:tikTokClone/models/videoModel.dart';
import 'package:tikTokClone/services/databaseService.dart';

class VideoProvider extends ChangeNotifier {
  final FirestoreService firestoreService = FirestoreService();
  // String _id;
  // String _name;
  // String _videoUrl;
  // String _caption;
  // String _songName;
  // String _profileImg;
  // String _likes;
  // String _comments;
  // String _shares;
  // String _albumImg;

  Stream<List<VideoModel>> get allData => firestoreService.getVideos();
}
