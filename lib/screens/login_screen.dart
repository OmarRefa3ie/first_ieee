import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var ScreenHeight=MediaQuery.of(context).size.height;
    var ScreenWidthht=MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors:[
              Color(0xff2567E8),
              Color(0xff1CE6DA)
            ],
          begin: AlignmentGeometry.topCenter,
          end: AlignmentGeometry.bottomCenter
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            padding: EdgeInsets.all(24),
            width: ScreenWidthht*(343/375),
            height: ScreenHeight*(581/812),
            decoration: BoxDecoration(
              color:Colors.white ,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",style: TextStyle(color: Colors.grey,fontSize: 17),),
                    TextButton(onPressed: (){}, child: Text("Sign Up",style: TextStyle(color: Colors.blue,fontSize: 17),)),
                  ],
                ),
                Text("Email",style: TextStyle(color: Colors.grey,),textAlign: TextAlign.left,),
                TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 2,color: Colors.grey)
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 2,color: Colors.red)
                    ),
                    hintText: "example@gmail.com",
                    labelText: "Enter your email",
                    suffixIcon: Icon(Icons.email),
                    suffixText: "@gmail.com",
                  ),
                ),
                Text("Password"),
                TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 2,color: Colors.grey)
                    ),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 2,color: Colors.red)
                    ),
                    labelText: "Enter your password",
                    suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.visibility)),
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
