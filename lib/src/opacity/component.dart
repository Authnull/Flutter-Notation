import 'package:flutter/widgets.dart';

class OpacityNotationComponent extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final Duration delay;

  final double top;
  final double bottom;

  OpacityNotationComponent({
    @required this.child,
    @required this.duration,
    @required this.delay,
    this.top,
    this.bottom,
  });

  @override
  _OpacityNotationComponentState createState() =>
      _OpacityNotationComponentState();
}

class _OpacityNotationComponentState extends State<OpacityNotationComponent> {
  bool _show = false;

  @override
  void initState() {
    super.initState();
    this._delayShow();
    this._delayHide();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: this.widget.top,
      bottom: this.widget.bottom,
      child: AnimatedOpacity(
        opacity: this._show ? 1.0 : 0.0,
        duration: this.widget.delay,
        child: Container(
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: this.widget.child,
        ),
      ),
    );
  }

  void _delayShow() async {
    await Future.delayed(Duration(
      milliseconds: 0,
    ));
    this.setState(() {
      this._show = true;
    });
  }

  void _delayHide() async {
    final int milliseconds = this.widget.duration.inMilliseconds;
    final int differnece = milliseconds - 300;
    await Future.delayed(Duration(
      milliseconds: differnece,
    ));
    this.setState(() {
      this._show = false;
    });
  }
}
