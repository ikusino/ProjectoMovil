import 'package:flutter/material.dart';

class TabTutorialScreen extends StatelessWidget {
  const TabTutorialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //----------------INICIO APPBAR------------------------
        appBar: AppBar(
          title: Text(
            'Tutorial',
            style: TextStyle(fontSize: 32),
          ),
          leading: Icon(Icons.info_outline),
          //leading: FaIcon(FontAwesomeIcons.image),
        ),

        //---------------------INICIO BODDY---------------
        body: Center(
          child: ListView(
            children: [
              //--------CONTAINER PRIMERA IMAGEN-----
              Container(
                height: 255,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('assets/images/tutorial.jpg'),
                    ),
                  ],
                ),
              ),

              //--------CONTAINER TITULO PRIMERA IMAGEN
              Container(
                child: Column(
                  children: [
                    Text(
                      'Tutorial con un paso a paso de imagenes',
                      style: TextStyle(fontSize: 32, color: Colors.deepPurple),
                    ),
                    Text(
                      'o podria ser un video tutorial (dueño viejito y ayudanta igual) \n o podria tener 2 botones, que direccione a uno o el otro',
                      style: TextStyle(fontSize: 32, color: Colors.red),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
