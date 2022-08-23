import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class doMovies extends StatelessWidget {
  const doMovies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "timeline",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      body: Card(
        child: Column(
          children: [
            Row(children: [
              Text("1975"),
              // Icon(),
              ])

          ],
        ),
      ),
    );
  }
}
