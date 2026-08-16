import 'package:flutter/material.dart';

class HoverWrapper extends StatefulWidget {
  const HoverWrapper({
    super.key,
    required this.child,
    required this.glow,
    this.scaleAfter,
    this.borderColor,
  });

  final Widget child;
  final Color glow;
  final double? scaleAfter;
  final Color? borderColor;

  @override
  State<HoverWrapper> createState() => _HoverWrapperState();
}

class _HoverWrapperState extends State<HoverWrapper> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: AnimatedScale(
        scale: isHover ? widget.scaleAfter ?? 1 : 1,
        duration: const Duration(milliseconds: 200),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          decoration: BoxDecoration(
            boxShadow: isHover
                ? [
                    BoxShadow(
                      color: widget.glow,
                      blurRadius: 25,
                      spreadRadius: 2,
                    ),
                  ]
                : [],
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: isHover
                  ? widget.borderColor ?? Colors.transparent
                  : Colors.transparent,
            ),
          ),
          child: widget.child,
        ),
      ),
    );
  }
}
