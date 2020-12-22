import 'package:tikTokClone/models/videoModel.dart';
import 'package:uuid/uuid.dart';

var uuid = Uuid();

List videoData = [
  VideoModel(
      id: uuid.v1(),
      videoUrl:
          "https://firebasestorage.googleapis.com/v0/b/flutter-apps-4e226.appspot.com/o/videos%2Fvideo_1.mp4?alt=media&token=daa13cf8-87a4-4479-9dda-1e2dd862647d",
      name: "Vannak Niza🦋",
      caption: "Morning, everyone!!",
      songName: "original sound - Łÿ Pîkâ Ćhûû",
      profileImg:
          "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/1663771856684033.jpeg",
      likes: "1.5M",
      comments: "18.9K",
      shares: "80K",
      albumImg:
          "https://images.unsplash.com/photo-1502982899975-893c9cf39028?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"),
  VideoModel(
    id: uuid.v1(),
    videoUrl:
        "https://firebasestorage.googleapis.com/v0/b/flutter-apps-4e226.appspot.com/o/videos%2Fvideo_2.mp4?alt=media&token=be14a16d-10db-4083-86bb-c0ef908879e6",
    name: "Dara Chamroeun",
    caption: "Oops 🙊 #fyp #cambodiatiktok",
    songName: "original sound - 💛💛Khantana 🌟",
    profileImg:
        "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/ba13e655825553a46b1913705e3a8617.jpeg",
    likes: "4.4K",
    comments: "5.2K",
    shares: "100",
    albumImg:
        "https://images.unsplash.com/photo-1462804512123-465343c607ee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80",
  ),
  VideoModel(
    id: uuid.v1(),
    videoUrl:
        "https://firebasestorage.googleapis.com/v0/b/flutter-apps-4e226.appspot.com/o/videos%2Fvideo_3.mp4?alt=media&token=04e7bac1-6b01-4367-aebe-35ea43cebfbc",
    name: "9999womenfashion",
    caption: "#블루모드",
    songName: "original sound - 🖤Khün MÄk🇰🇭",
    profileImg:
        "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/1664576339652610.jpeg",
    likes: "100K",
    comments: "10K",
    shares: "8.5K",
    albumImg:
        "https://images.unsplash.com/photo-1457732815361-daa98277e9c8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80",
  ),
  VideoModel(
    id: uuid.v1(),
    videoUrl:
        "https://firebasestorage.googleapis.com/v0/b/flutter-apps-4e226.appspot.com/o/videos%2Fvideo_4.mp4?alt=media&token=29e1bfe7-f327-4656-ae01-e1ad2b722e92",
    name: "@sunilghige",
    caption: "चल, भटक ले ना बावरे....🌄🏞️✌️",
    songName: "original sound - Kyon | Barfi",
    profileImg:
        "https://instagram.fpnq2-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/p640x640/122142921_346700159767744_5153237613819551521_n.jpg?_nc_ht=instagram.fpnq2-1.fna.fbcdn.net&_nc_cat=104&_nc_ohc=2fQux6mAq14AX_oHd0j&tp=1&oh=f99bdbf47f1a85ea85b49252a3d7203e&oe=600C73A0",
    likes: "80M",
    comments: "100K",
    shares: "20K",
    albumImg:
        "https://www.chordzone.org/wp-content/uploads/2020/03/300x300bb-288-300x300.jpg",
  )
];
