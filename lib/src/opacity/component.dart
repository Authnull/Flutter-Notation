import 'package:flutter/widgets.dart';

class OpacityNotationComponent extends StatefulWidget {
  final String title;

  OpacityNotationComponent({
    @required this.title,
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
    this.setState(() {
      this._show = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          AnimatedOpacity(
            opacity: this._show ? 1.0 : 0.0,
            duration: Duration(milliseconds: 300),
            child: Text(widget.title),
          )
        ],
      ),
    );
  }
}
