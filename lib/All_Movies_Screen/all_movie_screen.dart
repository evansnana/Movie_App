import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:movie_app/All_Movies_Screen/movie_details_screens.dart';

class AllMoviesScreen extends StatelessWidget {
  const AllMoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBE7E7),
      appBar: allMovesAppBar(context),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: MovieCard(),
              onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: ( context){
                return MovieDetailsScreen(currentIndex: index,);
               }
               ));
              },
            );
          }),
    );
  }
}

class MovieCard extends StatelessWidget {
  const MovieCard({
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Release Date"),
                Icon(Icons.more_horiz),
              ],
            ),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 3.5,
                      offset: Offset(2, 3),
                    )
                  ])),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Row(children: [
                Icon(FeatherIcons.heart),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(FeatherIcons.messageCircle),
                ),
                Icon(FeatherIcons.cornerUpRight)
              ]),
              Row(
                children: [Icon(FeatherIcons.star), Text("4.5")],
              )
            ])
          ],
        ),
      ),
    );
  }
}

AppBar allMovesAppBar(BuildContext context) {
  return AppBar(
    title: Text("Timeline",
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
    elevation: 0,
    backgroundColor: Colors.grey.withOpacity(0.5),
    centerTitle: true,
  );
}
