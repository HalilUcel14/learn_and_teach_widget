import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn Widget"),
        centerTitle: true,
      ),
      body: WidgetLearn,
    );
  }

  Widget get WidgetLearn {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        padding: const EdgeInsets.all(20),
        color: Colors.red,
        child: const FittedBox(
            child: Text(
          "Fitted Box Nedir?",
          style: TextStyle(fontSize: 100),
        )),
      ),
    );
  }
}
