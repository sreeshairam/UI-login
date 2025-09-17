import 'package:flutter/material.dart';

import 'package:students/loginscreen.dart';


import 'package:flutter/services.dart';
import 'package:students/homepage.dart';
class Conformation extends StatefulWidget {
  final UserData user1;
  const Conformation({super.key,required this.user1 });

  @override
  State<Conformation> createState() => _ConformationState();
}

 class _ConformationState extends State<Conformation> {
   final _formKey = GlobalKey<FormState>();

   final TextEditingController usernamecontroller1 = TextEditingController();
   final TextEditingController passcontrol1 = TextEditingController();


   @override
   void initState() {
     super.initState();

     // ✅ Set values passed from previous page

   }
     Widget build(BuildContext context) {
       return Scaffold(
           body: SafeArea(child: Padding(

             padding: const EdgeInsets.all(50),
             child:SingleChildScrollView(
               child: Form(
                   key: _formKey,
                   child: Column(
                     children: [
                       Image(image: AssetImage("assets/images/car.jpg"),
                         height: 100,
                         width: 100,),
                       Center(child: Text("email registeration ")),

                       TextFormField(
                           controller: usernamecontroller1,
                           validator: (value) {
                             if (value == null || value.isEmpty) {
                               return 'Please enter user name';
                             }

                             return null;
                           },
                           decoration: InputDecoration(
                               labelText: 'email', border: OutlineInputBorder())
                       ),
                       SizedBox(height: 10, width: 10,),
                       TextFormField(
                         obscureText: true,
                         controller: passcontrol1,
                         keyboardType: TextInputType.text,
                         inputFormatters: <TextInputFormatter>[
                           FilteringTextInputFormatter.allow(
                               RegExp(r'[a-zA-Z0-9!-)]'))
                         ],
                         validator: (value) {
                           if (value == null || value.isEmpty) {
                             return 'Please enter any password';
                           }
                           return null;
                         },

                         decoration: InputDecoration(
                             labelText: 'password', border: OutlineInputBorder()),

                       ),


                       SizedBox(height: 10, width: 10),
                       ElevatedButton(
                           onPressed: () {

                             if (_formKey.currentState!.validate()) {
                               // If the form is valid, display a snackbar. In the real world,
                               // you'd often call a server or save the information in a database.
                               if (widget.user1.password == passcontrol1.text &&
                                   widget.user1.email == usernamecontroller1.text) {
                                 Navigator.of(context).push(
                                     MaterialPageRoute(
                                     builder: (context) => homepage()));
                               } else {
                                 ScaffoldMessenger.of(context).showSnackBar(
                                   const SnackBar(
                                       content: Text('your email or password is not correct')),
                                 );
                               }
                             }
                           },
                           child: Text(
                             "submit", style: TextStyle(color: Colors.red),)
                       )

                     ],

                   )
               ),
             )




           )
           )
       );
     }
   }


