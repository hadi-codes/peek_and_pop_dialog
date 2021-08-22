import 'package:flutter/material.dart';
import 'package:peek_and_pop_dialog/peek_and_pop_dialog.dart';

class SimplePage extends StatelessWidget {
  const SimplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Example"),
      ),
      body: Container(
        color: Colors.green,
        child: Center(
          child: PeekAndPopDialog(
            child: Container(
              color: Colors.amber,
              child: Center(
                child: Text(
                  "Long press to show dialog",
                  textAlign: TextAlign.center,
                ),
              ),
              height: 100,
              width: 150,
            ),
            dialog: Container(
              color: Colors.red,
              height: 300,
              width: 300,
            ),
          ),
        ),
      ),
    );
  }
}
