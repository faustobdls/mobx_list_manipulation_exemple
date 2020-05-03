import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../home_controller.dart';

class DropdownContainer extends StatefulWidget {
  final String title;
  final int pos;

  DropdownContainer({Key key, this.title, this.pos}) : super(key: key);

  @override
  _DropdownContainerState createState() => _DropdownContainerState();
}

class _DropdownContainerState extends State<DropdownContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(widget.title),
          SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            onPressed: () {
              Modular.get<HomeController>().seValue(widget.pos);
            },
            child: Icon(Icons.delete),
          )
        ],
      ),
    );
  }
}
