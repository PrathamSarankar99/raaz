import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raaz/config/colors.dart';

class DraftTile extends StatefulWidget {
  const DraftTile({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  _DraftTileState createState() => _DraftTileState();
}

class _DraftTileState extends State<DraftTile> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 20,
          bottom: 60,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.70,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(
                sigmaX: 5,
                sigmaY: 20,
                tileMode: TileMode.clamp,
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                child: Image.asset(
                  'assets/demo_${widget.index}.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          bottom: 25,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.82,
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
              child: Image.asset(
                "assets/demo_${widget.index}.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 15,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width * 0.75,
            constraints: const BoxConstraints(
              minHeight: 70,
            ),
            padding: const EdgeInsets.only(
              top: 8,
              bottom: 5,
              left: 10,
              right: 10,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 5),
                  color: Colors.grey.shade400,
                  blurRadius: 5,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 70),
                  child: Text(
                    "Living Fires",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: AppColors.brown,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      "We never know how they will come, what they will have, what they can do. Keep a pen, a white cloth and a piece of paper with you. ",
                      maxLines: 2,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
