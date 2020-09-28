import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:peek_and_pop_dialog/peek_and_pop_dialog.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Example'),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.zero,
              crossAxisCount: 3,
              children: Colors.primaries.map((color) {
                Widget _child = Container(
                    color: color, height: 150.0, child: Text("Long press me"));
                Widget _dialog = Container(
                  color: color,
                  height: 150.0,
                  width: 150.0,
                );
                return PeekAndPopDialog(
                  child: _child,
                  dialog: _dialog,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
