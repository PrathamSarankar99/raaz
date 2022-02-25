import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raaz/config/colors.dart';
import 'package:raaz/config/config.dart';
import 'package:raaz/widgets/timeline_widgets/status_widget.dart';

class TimelinePosts extends StatefulWidget {
  const TimelinePosts({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  _TimelinePostsState createState() => _TimelinePostsState();
}

class _TimelinePostsState extends State<TimelinePosts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 18, left: 18, bottom: 50),
      padding: const EdgeInsets.only(
        top: 12,
        left: 12,
        bottom: 12,
        right: 12,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            children: [
              StatusWidget(
                image: NetworkImage(
                  Config.dummyProfilePics[widget.index],
                ),
                padding: EdgeInsets.zero,
                size: MediaQuery.of(context).size.height * 0.05,
              ),
              const SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.030,
                    child: Text(
                      Config.dummyNames[widget.index],
                      style: GoogleFonts.poppins(
                        color: AppColors.brown,
                        fontWeight: FontWeight.w600,
                        shadows: [
                          Shadow(
                            color: Colors.grey.withOpacity(0.3),
                            offset: const Offset(2, 2),
                            blurRadius: 3,
                          ),
                        ],
                        fontSize: MediaQuery.of(context).size.height * 0.023,
                      ),
                    ),
                  ),
                  Text(
                    (widget.index * 2).toString() + " hours ago",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.height * 0.016,
                      color: AppColors.brown.withOpacity(0.8),
                    ),
                  )
                ],
              ),
              const Spacer(),
              Icon(
                Icons.more_vert,
                color: AppColors.brown,
                size: MediaQuery.of(context).size.height * 0.032,
              ),
            ],
          ),
          Container(
            height: (MediaQuery.of(context).size.width - 30) * 9 / 16,
            margin: const EdgeInsets.only(top: 12),
            decoration: BoxDecoration(
              color: AppColors.cream,
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.mode_comment_outlined,
                      color: AppColors.brown,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      (widget.index * 4).toString(),
                      style: GoogleFonts.poppins(
                        color: AppColors.brown.withOpacity(0.8),
                        fontSize: MediaQuery.of(context).size.height * 0.023,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.share_outlined,
                      color: AppColors.brown,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      (widget.index * 5).toString(),
                      style: GoogleFonts.poppins(
                        color: AppColors.brown.withOpacity(0.8),
                        fontSize: MediaQuery.of(context).size.height * 0.023,
                      ),
                    )
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              "The Title is here",
              maxLines: 1,
              style: GoogleFonts.poppins(
                fontSize: MediaQuery.of(context).size.height * 0.020,
                fontWeight: FontWeight.w600,
                color: AppColors.brown,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.017 * 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 1),
              child: Text(
                "We never know how they will come, what they will have, what they can do. Keep a pen, a white cloth and a piece of paper with you. ",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.height * 0.017,
                  fontWeight: FontWeight.w400,
                  color: AppColors.brown.withOpacity(0.7),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
