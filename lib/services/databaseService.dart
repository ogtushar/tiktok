import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tikTokClone/models/videoModel.dart';

class FirestoreService {
  FirebaseFirestore _db = FirebaseFirestore.instance;

  // Upsert
  Future<void> uploadVideo(VideoModel videoModel) {
    var options = SetOptions(merge: true);
    return _db
        .collection('videoData')
        .doc(videoModel.id)
        .set(videoModel.toJSON(), options);
  }

  // Read
  Stream<List<VideoModel>> getVideos() {
    return _db.collection('videoData').snapshots().map(
          (snapshot) => snapshot.docs
              .map(
                (doc) => VideoModel.fromJSON(
                  doc.data(),
                ),
              )
              .toList(),
        );
  }

  // Delete
  Future<void> deleteVideo(String id) {
    return _db.collection('videoData').doc(id).delete();
  }
}
