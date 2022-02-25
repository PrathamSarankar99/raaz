import 'package:flutter/material.dart';

class FadeInZoomInImage extends StatefulWidget {
  const FadeInZoomInImage(
      {Key? key, required this.image, required this.duration})
      : super(key: key);
  final ImageProvider image;
  final Duration duration;
  @override
  _FadeInZoomInImageState createState() => _FadeInZoomInImageState();
}

class _FadeInZoomInImageState extends State<FadeInZoomInImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _curve;
  late Animation _sizeAnimation;
  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: widget.duration);
    _curve = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _sizeAnimation = Tween<double>(begin: 35, end: 50).animate(_curve);
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
        return ClipOval(
          child: FadeInImage(
            placeholder: widget.image,
            image: widget.image,
            height: _sizeAnimation.value,
            fadeInDuration: widget.duration,
            fadeInCurve: Curves.decelerate,
          ),
        );
      },
    );
  }
}
