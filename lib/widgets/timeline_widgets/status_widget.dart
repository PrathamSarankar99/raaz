import 'package:flutter/material.dart';
import 'package:raaz/config/colors.dart';

class StatusWidget extends StatefulWidget {
  const StatusWidget(
      {Key? key,
      required this.image,
      required this.padding,
      required this.size})
      : super(key: key);
  final ImageProvider image;
  final EdgeInsets padding;
  final double size;
  @override
  _StatusWidgetState createState() => _StatusWidgetState();
}

class _StatusWidgetState extends State<StatusWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.orange,
          width: 2,
        ),
        color: Colors.transparent,
        shape: BoxShape.circle,
      ),
      child: Container(
        height: widget.size,
        width: widget.size,
        margin: widget.padding,
        decoration: BoxDecoration(
          color: AppColors.orange,
          shape: BoxShape.circle,
          image: DecorationImage(
            image: widget.image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
