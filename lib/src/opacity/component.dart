import 'package:flutter/widgets.dart';

class OpacityNotationComponent extends StatefulWidget {
  final Widget child;

  OpacityNotationComponent({@required this.child});

  @override
  _OpacityNotationComponentState createState() =>
      _OpacityNotationComponentState();
}

class _OpacityNotationComponentState extends State<OpacityNotationComponent> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.7,
      child: widget.child,
    );
  }
}
