import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yeniproject/containerwidget.dart';
import 'package:yeniproject/list_info.dart';
import 'package:yeniproject/panelwidget.dart';
import 'package:yeniproject/scrollview.dart';
import 'package:yeniproject/textwidget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:[ Container(
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
                    containerwidget(text: 'Deserts', icon: Icon(Icons.flag,color: Colors.white),),
                    containerwidget(text: 'Cool Treats!!', icon: Icon(Icons.sports_basketball,color: Colors.white,),),
                    containerwidget(text: 'New cookie recipes', icon: Icon(Icons.person,color: Colors.white),),
                    containerwidget(text: 'Cool Tricks', icon: Icon(Icons.movie_creation,color: Colors.white),),
                    containerwidget(text: 'boreks', icon: Icon(Icons.music_note_sharp,color: Colors.white),),
                    containerwidget(text: 'Cold and Hot Brews', icon: Icon(Icons.mic_external_on_sharp,color: Colors.white),),

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


              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Row(
                  children : panelList.map((value) => PanelW(recipe: value)).toList(),
                ),
              ),

              SizedBox(height: 20,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Boldtextwidget(text: 'Recent Recipes', color: Colors.black, size: 20),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Row(
                  children : panelList.map((value) => horizontalwidget(food: value)).toList(),
                ),
              ),



            ],
          ),
        ),]
      ),
    );
  }
}


