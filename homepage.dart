import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(

        child: SingleChildScrollView(

          child: Column(

            children: [

              Center(child: Container(
                color: Colors.red,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person,weight: 20,size: 50,),

                        Center(
                          child: Text(
                            "Sree shai ram",

                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2),

                          ),
                          child: Center(
                            child: Icon(Icons.favorite, color: Colors.brown, size: 20),
                          ),
                        )

                      ],


                    ),


                    SizedBox(height: 50, width: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(vertical: 22),
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Column(children: [
                              //SizedBox(height: 10),
                              Icon(Icons.money,color: Colors.brown,),
                              SizedBox(height: 5,),
                              Text("Money", style: TextStyle(color: Colors.black))]),
                              SizedBox(width: 20,),
                              Column(
                                children: [
                                  Icon(Icons.app_shortcut),
                                  SizedBox(height: 5,),
                                  Text("App", style: TextStyle(color: Colors.black)),

                                ],
                              ),
                              SizedBox(width: 20,),
                              Column(children: [Icon(Icons.favorite),
                                SizedBox(height: 5,),
                                Text("Favorites", style: TextStyle(color: Colors.black)),
                              ],),
                              SizedBox(width: 20,),
                              Column(children: [Icon(Icons.star),
                                SizedBox(height: 5,),
                                Text("Select", style: TextStyle(color: Colors.black)),],),
                            ],
                          )
                        ),






                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(vertical: 22),
                        color: Colors.brown,
                        child: Column(
                          children: [
                            SizedBox(height: 20,),


                            ElevatedButton.icon(
                              onPressed: () {},

                              icon:Icon(Icons.play_arrow),

                              label: Text("Connect now",),

                            ),
                          ],
                        )
                    )
                   ,
                  ],
                ),
              ),) ,

              Center(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      color: Colors.red,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      padding: EdgeInsets.symmetric(vertical: 22),

                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [ Column(children: [Icon(Icons.settings),
                        Text("Options", style: TextStyle(color: Colors.white)),],),
                        SizedBox(width: 50,),
                        Row(children: [   Column(children: [
                          Icon(Icons.lock_clock),
                          Text("Alarm", style: TextStyle(color: Colors.white)),],),
                          SizedBox(width: 50,),
                          Column(children: [Icon(Icons.question_answer),
                            Column(children: [Text("info", style: TextStyle(color: Colors.white)),],)
                          ],),


                        ],
                        ),
                      ],
                      )
                  )
             ,
                ],)),

            ],
          ),
        ),

      ),
    );
  }
}
