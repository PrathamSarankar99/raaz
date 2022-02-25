import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raaz/config/colors.dart';
import 'package:raaz/config/config.dart';
import 'package:raaz/pages/tabs/profile_tile.dart';
import 'package:raaz/widgets/animation/fadeInZoomInImage.dart';
import 'package:raaz/widgets/profile_widgets/profile_heading.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(
          children: [
            SafeArea(
              child: Row(
                children: [
                  const Spacer(),
                  TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        const CircleBorder(),
                      ),
                    ),
                    onPressed: () {},
                    child: Icon(
                      Icons.more_vert,
                      color: AppColors.brown,
                      size: 25,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.18,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "102",
                        style: GoogleFonts.poppins(
                          color: AppColors.brown,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Followers",
                        style: GoogleFonts.poppins(
                          color: AppColors.brown,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.33,
                    height: MediaQuery.of(context).size.width * 0.33,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Transform.rotate(
                          angle: pi * 0.8,
                          child: CircularProgressIndicator(
                            color: AppColors.marron,
                            value: 0.7,
                            strokeWidth: 2,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: ClipOval(
                            child: Image.asset(
                              "assets/demo_1.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "36",
                        style: GoogleFonts.poppins(
                          color: AppColors.brown,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Following",
                        style: GoogleFonts.poppins(
                          color: AppColors.brown,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Pratham Sarankar",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColors.brown,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on_sharp,
                  color: AppColors.orange,
                ),
                Text(
                  "Bhopal, India.",
                  style: GoogleFonts.poppins(
                    color: AppColors.brown.withOpacity(0.7),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: MediaQuery.of(context).size.height * 0.045,
              child: OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  side: MaterialStateProperty.all(
                    BorderSide(
                      color: AppColors.orange,
                    ),
                  ),
                  maximumSize: MaterialStateProperty.all(
                    Size(MediaQuery.of(context).size.width * 0.3, 50),
                  ),
                ),
                child: Text(
                  "Edit Profile",
                  style: GoogleFonts.poppins(
                    color: AppColors.orange,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(
                  right: 10, left: 10, top: 10, bottom: 10),
              padding:
                  const EdgeInsets.only(bottom: 10, top: 10, right: 5, left: 5),
              child: Text(
                "No friends🙃🥳\nNo lovers😜🤩\nJust crime partners🌹🥰😘😝.",
                style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                  fontWeight: FontWeight.w400,
                  color: AppColors.brown,
                ),
              ),
            ),
          ],
        ),
        const ProfileHeading(title: "CONTENT"),
        ProfileTile(
          onTap: () {},
          title: "Favorites",
          leading: Icon(
            Icons.favorite_border,
            size: MediaQuery.of(context).size.height * 0.03,
            color: Colors.grey.shade700,
          ),
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.grey.shade600,
            size: MediaQuery.of(context).size.height * 0.022,
          ),
        ),
        ProfileTile(
          onTap: () {},
          title: "Saved",
          leading: Icon(
            Icons.file_download_outlined,
            size: MediaQuery.of(context).size.height * 0.03,
            color: Colors.grey.shade700,
          ),
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.grey.shade600,
            size: MediaQuery.of(context).size.height * 0.022,
          ),
        ),
        const ProfileHeading(title: "PREFERENCES"),
        ProfileTile(
          onTap: () {},
          title: "Language",
          leading: Icon(
            Icons.language_outlined,
            size: MediaQuery.of(context).size.height * 0.03,
            color: Colors.grey.shade700,
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "English",
                style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.height * 0.018,
                  color: Colors.grey.shade600,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.grey.shade600,
                size: MediaQuery.of(context).size.height * 0.022,
              ),
            ],
          ),
        ),
        ProfileTile(
          onTap: () {},
          title: "Dark Mode",
          leading: Icon(
            Icons.dark_mode_outlined,
            size: MediaQuery.of(context).size.height * 0.03,
            color: Colors.grey.shade700,
          ),
          trailing: CupertinoSwitch(
            activeColor: AppColors.orange,
            value: Config.darkMode,
            onChanged: (value) {
              setState(() {
                Config.darkMode = !Config.darkMode;
              });
            },
          ),
        ),
        const SizedBox(
          height: 100,
        ),
      ],
    ));
  }
}
