import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MovieAPI extends StatelessWidget {
  const MovieAPI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MoviesHouse(context),
      body: MovieSelector(),
    );
  }
}

class MovieSelector extends StatelessWidget {
  const MovieSelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 2.5,
        child: Column(
          children: [
            Row(
              children: [
                Text("Movie House"),
                Icon(Icons.more_horiz),
              ],
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height / 3.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(3.5, 3.5),
                        color: Colors.black.withOpacity(0.5))
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.link),
                ),
                Icon(Icons.abc),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.location_on),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

AppBar MoviesHouse(BuildContext context) {
  return AppBar(
    title: Text(
      "Free Movies Download",
      style: Theme.of(context).textTheme.bodyText1?.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.bold
        
      ),
    ),
  );
}
