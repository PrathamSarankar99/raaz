import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/rendering/sliver_persistent_header.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raaz/config/colors.dart';
import 'package:raaz/config/config.dart';
import 'package:raaz/widgets/timeline_widgets/status_widget.dart';

class TimelineHeader implements SliverPersistentHeaderDelegate {
  final double minimumExtent;
  final double maximumExtent;

  TimelineHeader({
    required this.minimumExtent,
    required this.maximumExtent,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: [
        Container(
            // decoration: const BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage("assets/demo_1.jpg"),
            //     fit: BoxFit.cover,
            //   ),
            // ),
            ),
        SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 23,
                    right: 15,
                    top: MediaQuery.of(context).size.height * 0.05,
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Timeline",
                            style: GoogleFonts.poppins(
                              color: AppColors.brown,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.030,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "People who recently updated",
                            style: GoogleFonts.poppins(
                              color: AppColors.brown.withOpacity(0.8),
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.015,
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.more_vert,
                          color: AppColors.brown,
                          size: MediaQuery.of(context).size.height * 0.035,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 0,
                left: 0,
                bottom: 0,
                child: Opacity(
                  opacity: 1 -
                      (shrinkOffset * 12 > maximumExtent
                              ? maximumExtent
                              : shrinkOffset * 12) /
                          maximumExtent,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.10,
                    margin: const EdgeInsets.only(
                        top: 0, right: 0, left: 0, bottom: 20),
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      itemCount: 5,
                      padding: const EdgeInsets.only(
                        left: 15,
                      ),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: StatusWidget(
                            image: NetworkImage(
                              Config.dummyProfilePics[index],
                            ),
                            size: MediaQuery.of(context).size.height * 0.10,
                            padding: const EdgeInsets.all(3),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => maximumExtent;

  @override
  double get minExtent => minimumExtent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  PersistentHeaderShowOnScreenConfiguration? get showOnScreenConfiguration =>
      const PersistentHeaderShowOnScreenConfiguration();

  @override
  FloatingHeaderSnapConfiguration? get snapConfiguration =>
      FloatingHeaderSnapConfiguration();

  @override
  OverScrollHeaderStretchConfiguration? get stretchConfiguration =>
      OverScrollHeaderStretchConfiguration();

  @override
  TickerProvider? get vsync => TimelineTicker();
}

class TimelineTicker implements TickerProvider {
  @override
  Ticker createTicker(TickerCallback onTick) {
    return Ticker(onTick);
  }
}
