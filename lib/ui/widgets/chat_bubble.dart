import 'package:flutter/material.dart';
import 'package:kalo_landing/ui/theme.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
    required this.child,
    this.color = KaloTheme.secondaryColor,
    this.borderRadius = const BorderRadius.only(
      topRight: Radius.circular(16),
      bottomRight: Radius.circular(16),
      topLeft: Radius.circular(16),
    ),
    this.width = 200,
    this.height = 70,
  });

  final double height;
  final double width;
  final Color color;
  final Widget child;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: color, borderRadius: borderRadius),
        width: width,
        height: height,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: child);
  }
}
