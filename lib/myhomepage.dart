import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yeniproject/containerwidget.dart';
import 'package:yeniproject/panelwidget.dart';
import 'package:yeniproject/scrollview.dart';
import 'package:yeniproject/textwidget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top:38,left: 16),
        child: Column(
          children: [
            Row(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
            const Icon(Icons.menu),
            const SizedBox(width: 10,),
            const Boldtextwidget(text: 'Communities', color: Colors.black, size: 20,),
            const SizedBox(width: 190,),
            IconButton(onPressed: () { }, icon:const Icon(Icons.search))
        ],
    ),
            const SizedBox(height: 10,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Boldtextwidget(text: 'Trending now', color: Colors.black, size: 20,),
              ],
            ),
            const SizedBox(height: 5,),
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children  : const [
                  containerwidget(text: 'one piece', icon: Icon(Icons.flag,color: Colors.white),),
                  containerwidget(text: 'nba', icon: Icon(Icons.sports_basketball,color: Colors.white,),),
                  containerwidget(text: 'politics', icon: Icon(Icons.person,color: Colors.white),),
                  containerwidget(text: 'movies', icon: Icon(Icons.movie_creation,color: Colors.white),),
                  containerwidget(text: 'music', icon: Icon(Icons.music_note_sharp,color: Colors.white),),
                  containerwidget(text: 'britney spears', icon: Icon(Icons.mic_external_on_sharp,color: Colors.white),),
                  containerwidget(text: 'league of legends', icon: Icon(Icons.videogame_asset_rounded,color: Colors.white),),

                ]

              ),
            ),
            const SizedBox(height: 10,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Boldtextwidget(text: 'Recommended For You', color: Colors.black, size: 20,),
              ],
            ),
            Container(
                  margin: EdgeInsets.only(right: 16),
                    child: const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            panelwidget(),
                            panelwidget()
                          ],
                        ),
                    )
                ),
            SizedBox(height: 20,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Boldtextwidget(text: 'Recent Recipes', color: Colors.black, size: 20),
              ],
            ),
            Container(
                margin: EdgeInsets.only(right: 16),
                child: const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      horizontalwidget(),
                      horizontalwidget(),
                      horizontalwidget(),
                      horizontalwidget(),
                      horizontalwidget(),
                      horizontalwidget(),
                    ],
                  ),
                ),
            )



          ],
        ),
      ),
    );
  }
}


