import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raaz/config/colors.dart';
import 'package:raaz/config/config.dart';
import 'package:raaz/widgets/timeline_widgets/status_widget.dart';
import 'package:raaz/widgets/timeline_widgets/timelineposts.dart';

class TimelineTab extends StatefulWidget {
  const TimelineTab({Key? key}) : super(key: key);

  @override
  _TimelineTabState createState() => _TimelineTabState();
}

class _TimelineTabState extends State<TimelineTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
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
                          fontSize: MediaQuery.of(context).size.height * 0.030,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "People who recently updated",
                        style: GoogleFonts.poppins(
                          color: AppColors.brown.withOpacity(0.8),
                          fontSize: MediaQuery.of(context).size.height * 0.015,
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
            Container(
              height: MediaQuery.of(context).size.height * 0.10,
              margin:
                  const EdgeInsets.only(top: 18, right: 0, left: 0, bottom: 30),
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: 5,
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return StatusWidget(
                    image: NetworkImage(
                      Config.dummyProfilePics[index],
                    ),
                    size: MediaQuery.of(context).size.height * 0.1,
                    padding: const EdgeInsets.all(5),
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return TimelinePosts(index: index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
