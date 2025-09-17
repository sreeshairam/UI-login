import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:students/conformation.dart';

class UserData {
   String name;
   String email;
   String password;
   String confirmPassword;

  UserData({
    required this.name,
    required this.email,
    required this.password,
    required this.confirmPassword,
  });
}


class Loginscreen extends StatefulWidget {
   const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController usernamecontroller = TextEditingController();
  final TextEditingController passcontrol = TextEditingController();
  final TextEditingController conpasscontrol = TextEditingController();
  final TextEditingController phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child: Padding(
          padding: const EdgeInsets.all(50),
          child: SingleChildScrollView(
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Image(image: AssetImage("assets/images/img4.png"),height: 100,width: 100,),
                    Image(image: AssetImage("assets/images/car.jpg"),height: 100,width: 100,),
                    Center(child: Text("email registeration ")),
                    TextFormField(
                          controller: namecontroller,
                           validator: (value) {
                             if (value == null || value.isEmpty) {
                               return 'Please enter  name';
                             }
                             return null;
                           },
                        decoration: InputDecoration(labelText: 'name',border: OutlineInputBorder())

                ),
                    TextFormField(

                        controller: usernamecontroller,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter user name';
                          }
                          else if(!value.contains("@")||!value.contains(".com")){
                            return 'Your email id must contain @ and .com';
                          }
                          return null;
                        },
                        decoration: InputDecoration(labelText: 'email',border: OutlineInputBorder())
                    ),
                    SizedBox(height: 10,),
                    TextFormField(

                        controller: phone,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter phone';
                          }
                          else if(value.length<10 || value.length>=11){
                            return 'your phone number have exactly 10 numbers';
                          }
                          return null;
                        },
                        decoration: InputDecoration(labelText: 'phone',border: OutlineInputBorder())
                    ),
                    TextFormField(
                      obscureText: true,
                      controller: passcontrol,
                      keyboardType: TextInputType.text,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9!-)]'))
                      ],
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter any password';
                        }
                        else if(value.length<10){
                          return 'your password must contain atleast 10 characters';
                        }
                        return null;
            
                      },
            
                      decoration: InputDecoration(labelText: 'password',border: OutlineInputBorder() ),
            
                    ),
                    SizedBox(height: 10,width: 10,),
                    TextFormField(
                      obscureText: true,
                      controller: conpasscontrol,
                      keyboardType: TextInputType.text,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9!-)]'))
                      ],
                      decoration: InputDecoration(labelText: 'conform-password',border: OutlineInputBorder() ),
                    ),
                    SizedBox(height: 10,width: 10),
                    ElevatedButton(
                        onPressed:(){
                          if (_formKey.currentState!.validate()) {
                            // If the form is valid, display a snackbar. In the real world,
                            // you'd often call a server or save the information in a database.
                            if(passcontrol.text!=conpasscontrol.text){
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('password not same')),
                              );
                            } else{
                              UserData user = UserData(
                                  name: namecontroller.text,
                                  email: usernamecontroller.text,
                                  password: passcontrol.text,
                                  confirmPassword: conpasscontrol.text,
                              );
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Conformation(user1:user),
                                ),
                              );
            
            
                            }
                          }
                        },
                        child: Text("submit",style: TextStyle(color: Colors.red),)
                    )
            
                  ],
            
                )
            ),
          ),


          )
        )
    );
  }
}

