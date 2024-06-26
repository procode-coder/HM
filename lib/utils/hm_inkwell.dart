import 'package:flutter/material.dart';
// import 'package:my_exp/injectable_init.dart';

// import 'analytics_service.dart';

/// This class is used to log events when a user taps on a widget.
/// It is connected to the [AnalyticsService] to log the event.
class HmInkWell extends InkWell {
  HmInkWell({
    Key? key,
    GestureTapCallback? onTap,
    FocusNode? focusNode,
    HitTestBehavior? behavior,
    // UserEvent? analyticsEvent,
    ValueChanged<bool>? onHover,
    ShapeBorder? customBorder,
    BorderRadius? borderRadius,
    Color? splashColor,
    Color? hoverColor,
    Color? highlightColor,
    Widget? child,
  }) : super(
          key: key,
          child: child,
          hoverColor: hoverColor,
          splashColor: splashColor,
          focusNode: focusNode,
          borderRadius: borderRadius,
          customBorder: customBorder,
          highlightColor: highlightColor,
          onHover: onHover,
          onTap: onTap == null
              ? null
              : () {
                  // onTap();
                  // if (analyticsEvent != null) {
                  //   serviceLocator<AnalyticsService>().logEvent(
                  //     analyticsEvent,
                  //     description: analyticsEvent.toString(),
                  //   );
                  // }
                },
        );
}
