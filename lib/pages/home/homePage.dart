import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tikTokClone/models/videoModel.dart';
import 'package:tikTokClone/provider/videoProvider.dart';
import 'widgets/videoPlayerItem.dart';

class HomePage extends StatefulWidget {
  final List<VideoModel> data;

  const HomePage({Key key, this.data}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.data.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final _videoProvider = Provider.of<VideoProvider>(context);
    print(_videoProvider.allData);
    return RotatedBox(
      quarterTurns: 1,
      child: TabBarView(
        controller: _tabController,
        children: List.generate(
          widget.data.length,
          (index) => RotatedBox(
            quarterTurns: -1,
            child: VideoPlayerItem(
              size: size,
              videoModel: widget.data[index],
            ),
          ),
        ),
      ),
    );
  }
}
