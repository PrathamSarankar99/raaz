import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileHeading extends StatelessWidget {
  const ProfileHeading({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey.shade100,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(right: 15, left: 15),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          color: Colors.grey.shade600,
          fontSize: MediaQuery.of(context).size.height * 0.022,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.5,
        ),
      ),
    );
  }
}
