import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raaz/config/colors.dart';

class UpwardFadedText extends StatefulWidget {
  const UpwardFadedText(
      {Key? key, required this.length, required this.duration})
      : super(key: key);
  final double? length;
  final Duration duration;
  @override
  _UpwardFadedTextState createState() => _UpwardFadedTextState();
}

class _UpwardFadedTextState extends State<UpwardFadedText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _distanceAnimation;
  late Animation<double> _curve;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _curve = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _distanceAnimation =
        Tween<double>(begin: 0, end: widget.length).animate(_curve);
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Opacity(
          opacity: _controller.value,
          child: Padding(
            padding: EdgeInsets.only(bottom: _distanceAnimation.value),
            child: RichText(
              text: TextSpan(
                text: "Hi, ",
                style: GoogleFonts.poppins(
                  color: AppColors.brown,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
                children: [
                  TextSpan(
                    text: "Pratham",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
