import 'package:flutter/material.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;

  const AdaptiveLayoutWidget({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          // Mobile layout
          return mobileLayout(context);
        } else if (constraints.maxWidth < 900) {
          // Tablet layout
          return tabletLayout(context);
        } else {
          // Desktop layout
          return desktopLayout(context);
        }
      },
    );
  }
}
