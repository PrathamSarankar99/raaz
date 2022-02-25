import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raaz/config/colors.dart';
import 'package:raaz/config/config.dart';
import 'package:raaz/widgets/animation/fadeInZoomInImage.dart';
import 'package:raaz/widgets/animation/upwardfadedtext.dart';
import 'package:raaz/widgets/home_widgets/draft_tile.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.13,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(left: 15, right: 15),
            alignment: Alignment.bottomLeft,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  child: const FadeInZoomInImage(
                    image: AssetImage("assets/default_profile.png"),
                    duration: Duration(milliseconds: 500),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const UpwardFadedText(
                  length: 10,
                  duration: Duration(milliseconds: 500),
                ),
              ],
            ),
          ),
          Container(
            height: (MediaQuery.of(context).size.width * 0.85 * 9) / 16 +
                30, // The title image is in ratio 16:9
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(top: 10),
            child: PageView.builder(
              itemCount: 3,
              controller: PageController(viewportFraction: 0.85),
              itemBuilder: (context, index) {
                return DraftTile(index: index);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              top: 20,
              bottom: 10,
              right: 15,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Tags",
                  style: GoogleFonts.poppins(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontWeight: FontWeight.w600,
                    color: AppColors.brown,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    print("Tapped");
                  },
                  child: Icon(
                    Icons.arrow_forward,
                    color: AppColors.brown.withOpacity(0.7),
                    size: MediaQuery.of(context).size.height * 0.028,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05 + 10,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Config.defaultTagList.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 30,
                  alignment: Alignment.center,
                  margin:
                      const EdgeInsets.only(right: 15, left: 15, bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 1),
                        blurRadius: 6,
                        color: Colors.grey.shade400.withOpacity(0.5),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          gradient: Config.template.gradients[
                              (index % Config.template.gradients.length)],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            (index * Random().nextInt(10) + 3).toString(),
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 20,
                                shadows: [
                                  Shadow(
                                    color: Colors.grey.shade800,
                                    offset: const Offset(1, 1),
                                    blurRadius: 3,
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          Config.defaultTagList[index].name,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: AppColors.brown.withOpacity(0.8),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              top: 20,
              bottom: 10,
              right: 15,
            ),
            child: Row(
              children: [
                Text(
                  "Categories",
                  style: GoogleFonts.poppins(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontWeight: FontWeight.w600,
                    color: AppColors.brown,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    print("Tapped");
                  },
                  child: Icon(
                    Icons.arrow_forward,
                    color: AppColors.brown.withOpacity(0.7),
                    size: MediaQuery.of(context).size.height * 0.028,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              padding: const EdgeInsets.only(right: 10, left: 10),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.2,
                  margin: const EdgeInsets.only(right: 8, left: 8, bottom: 10),
                  color: Colors.blue,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
