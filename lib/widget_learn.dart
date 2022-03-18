import 'package:best_baltanem/best_baltanem.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      backgroundColor: Colors.black,
      body: WidgetLearn,
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      title: Text("GridView-FittedBox Widget"),
      centerTitle: true,
    );
  }

  Widget get WidgetLearn {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          crossAxisCount: 2,
          children: [
            randomContainer(),
            randomContainer(),
            randomContainer(),
            randomContainer(),
            randomContainer(),
            randomContainer(),
            randomContainer(),
            randomContainer(),
            randomContainer(),
          ],
        ),
      ),
    );
  }

  Container randomContainer() {
    return Container(
      width: 200,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: context.randomColor.shade300,
      ),
      padding: const EdgeInsets.all(2),
      child: FittedBox(
        child: Image.network("".randomImage),
      ),
    );
  }
}
