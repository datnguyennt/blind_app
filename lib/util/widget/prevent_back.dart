import 'package:flutter/cupertino.dart';

class PreventBack extends StatelessWidget {
  final Widget child;
  final bool isPreventBack;
  const PreventBack({
    Key? key,
    required this.child,
    this.isPreventBack = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: child,
      onWillPop: () async => isPreventBack ? false : true,
    );
  }
}
