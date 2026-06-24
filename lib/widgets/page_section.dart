import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PageSection extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;

  const PageSection({
    super.key,
    required this.child,
    this.backgroundColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    final isMobile =
        ResponsiveBreakpoints.of(context)
            .smallerThan(TABLET);

    return Container(
      width: double.infinity,
      color: backgroundColor,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 80,
        vertical: 90,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 1400,
          ),
          child: child,
        ),
      ),
    );
  }
}