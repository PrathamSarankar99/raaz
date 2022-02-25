import 'package:flutter/material.dart';
import 'package:raaz/widgets/timeline_widgets/timeline_header.dart';
import 'package:raaz/widgets/timeline_widgets/timelineposts.dart';

class SliverTimelineTab extends StatefulWidget {
  const SliverTimelineTab({Key? key}) : super(key: key);

  @override
  _SliverTimelineTabState createState() => _SliverTimelineTabState();
}

class _SliverTimelineTabState extends State<SliverTimelineTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: TimelineHeader(
              minimumExtent: MediaQuery.of(context).size.height * 0.20,
              maximumExtent: MediaQuery.of(context).size.height * 0.30,
            ),
            floating: false,
            pinned: false,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return TimelinePosts(index: index);
              },
              childCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
