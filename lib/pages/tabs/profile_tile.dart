import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileTile extends StatefulWidget {
  const ProfileTile({
    Key? key,
    required this.onTap,
    required this.title,
    required this.leading,
    required this.trailing,
  }) : super(key: key);
  final VoidCallback onTap;
  final String title;
  final Widget leading;
  final Widget trailing;
  @override
  _ProfileTileState createState() => _ProfileTileState();
}

class _ProfileTileState extends State<ProfileTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: ListTile(
        visualDensity: const VisualDensity(
          horizontal: -1,
          vertical: -1,
        ),
        horizontalTitleGap: 0,
        leading: widget.leading,
        title: Text(
          widget.title,
          style: GoogleFonts.poppins(
            color: Colors.grey.shade800,
            fontWeight: FontWeight.w500,
            fontSize: MediaQuery.of(context).size.height * 0.020,
          ),
        ),
        trailing: widget.trailing,
      ),
    );
  }
}
