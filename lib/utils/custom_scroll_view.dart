import 'package:flutter/widgets.dart';

class CommonScrollView extends StatelessWidget {
  final Widget child;

  const CommonScrollView({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (OverscrollIndicatorNotification overScroll) {
        overScroll.disallowGlow();
        return false;
      },
      child: SingleChildScrollView(
        child: child,
      ),
    );
  }
}
