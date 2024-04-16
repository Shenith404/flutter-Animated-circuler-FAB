import 'package:flutter/material.dart';

class FABWidget extends StatefulWidget {
  const FABWidget({super.key});

  @override
  State<FABWidget> createState() => _FABWidgetState();
}

class _FABWidgetState extends State<FABWidget> {
  @override
  Widget build(BuildContext context) => Flow(
        delegate: FlowMenuDelegate(),
        children: <IconData>[
          Icons.mail,
          Icons.call,
          Icons.notifications,
          Icons.sms,
          Icons.menu
        ].map<Widget>(buildFab).toList(),
      );

  Widget buildFab(IconData icon) => SizedBox(
        width: 50,
        height: 50,
        child: FloatingActionButton(
            onPressed: () {},
            elevation: 0,
            splashColor: Colors.black,
            child: Icon(icon, color: Colors.white, size: 45)),
      );
}

class FlowMenuDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    context.paintChild(0, transform: Matrix4.identity()..translate(1));
  }

  @override
  bool shouldRepaint(FlowMenuDelegate oldDelegate) => false;
}
