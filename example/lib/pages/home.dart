import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'grid_view_example.dart';
import 'simple_example.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Peek And Pop Example"),
      ),
      body: Column(
        children: [
          Divider(),
          ListTile(
            title: Text("Simple Example"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => SimplePage())),
          ),
          Divider(),
          ListTile(
            title: Text("Grid View Example"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => GridViewPage())),
          ),
          Divider(),
        ],
      ),
    );
  }
}
