class VideoModel {
  final String id;
  final String name;
  final String videoUrl;
  final String caption;
  final String songName;
  final String profileImg;
  final String likes;
  final String comments;
  final String shares;
  final String albumImg;

  VideoModel(
      {this.id,
      this.name,
      this.videoUrl,
      this.caption,
      this.songName,
      this.profileImg,
      this.likes,
      this.comments,
      this.shares,
      this.albumImg});

  Map<String, dynamic> toJSON() {
    return {
      'id': this.id,
      'name': this.name,
      'videoUrl': this.videoUrl,
      'caption': this.caption,
      'songName': this.songName,
      'profileImg': this.profileImg,
      'likes': this.likes,
      'comments': this.comments,
      'shares': this.shares,
      'albumImg': this.albumImg,
    };
  }

  factory VideoModel.fromJSON(Map<String, dynamic> json) {
    return VideoModel(
        id: json['id'],
        name: json['name'],
        videoUrl: json['videoUrl'],
        caption: json["caption"],
        songName: json["songName"],
        profileImg: json["profileImg"],
        likes: json["likes"],
        comments: json["comments"],
        shares: json["shares"],
        albumImg: json["albumImg"]);
  }
}
