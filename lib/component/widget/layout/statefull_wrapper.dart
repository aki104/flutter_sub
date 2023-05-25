import 'package:flutter/cupertino.dart';

class StatefulWrapper extends StatefulWidget {
  final Function? onInit;
  final Widget child;

  const StatefulWrapper(
      {super.key, this.onInit, required this.child});

  @override
  StatefulWrapperState createState() => StatefulWrapperState();
}

class StatefulWrapperState extends State<StatefulWrapper> {

  @override
  void initState() {
    if (widget.onInit != null) {
      widget.onInit?.call();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
