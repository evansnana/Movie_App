import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MovieDetailsScreen extends StatelessWidget {
  MovieDetailsScreen({Key? key, this.currentIndex}) : super(key: key);

  int? currentIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.only(left: 0, right: 0, top: 0),
            child: Container(
              height: MediaQuery.of(context).size.height / 1.7,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPj-a_Z3mioZIGCklcEFk7myoIbDXZ98AsDQ&usqp=CAU"))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.arrow_back_ios)),
                  ),
                  Container(
                    height: 50,
                    color: Colors.black.withOpacity(0.3),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Align(
                            alignment: Alignment.bottomRight,
                          ),
                          Material(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(FeatherIcons.playCircle),
                            ),
                          )
                        ]),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  children: [
                    Text(
                      "Description:",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Wrap(
                  children: [
                    Text(
                      "Director:",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text("ndjjjdbsnvhsi")
                  ],
                ),
                Wrap(
                  children: [
                    Text(
                      "Producer:",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
               
              ],
            ),
          ))
        ],
      ),
    );
  }
}
