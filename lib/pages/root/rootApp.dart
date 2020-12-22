import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tikTokClone/pages/discover/discoverPage.dart';
import 'package:tikTokClone/pages/home/homePage.dart';
import 'package:tikTokClone/pages/inbox/inboxPage.dart';
import 'package:tikTokClone/pages/me/mePage.dart';
import 'package:tikTokClone/pages/upload/uploadPage.dart';
import 'package:tikTokClone/provider/videoProvider.dart';
import 'package:tikTokClone/theme/colors.dart';

import 'widgets/footer.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _pageIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 5);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Scaffold(
        bottomNavigationBar: getFooter(context, selectedIndex, _pageIndex),
        body: getBody(context),
      ),
    );
  }

  Widget getBody(BuildContext context) {
    final _videoProvider = Provider.of<VideoProvider>(context);
    return TabBarView(
      physics: NeverScrollableScrollPhysics(),
      controller: _tabController,
      children: [
        StreamBuilder(
            stream: _videoProvider.allData,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return HomePage(
                  data: snapshot.data,
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text(
                    "Error Occoured",
                  ),
                );
              }
              return Container(
                color: black,
              );
            }),
        DiscoverPage(),
        UploadPage(),
        InboxPage(),
        MePage(),
      ],
    );
  }

  selectedIndex(int index) {
    setState(() {
      _tabController.index = index;
    });
  }
}
