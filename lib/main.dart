import 'package:flutter/material.dart';

void main() {
  runApp(new StartPage());
}

class StartPage extends StatelessWidget {

  void signUp(){
    debugPrint("I m sign UP Button");
  }

  void signIn(){
    debugPrint("I m sign IN Button");
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "GrubX",
        home: new Scaffold(
          body: new Container(
            padding: EdgeInsets.fromLTRB(0.0, 160.0, 0.0, 30.0),
            margin: const EdgeInsets.all(0.0),
            constraints: BoxConstraints.expand(),
            decoration: new BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Text("Welcome",style: new TextStyle(color: Colors.white,letterSpacing: 3.5,fontSize: 45,),),
                const SizedBox(height: 10.0,),
                new Text("Begin your journey",style: new TextStyle(color: Colors.white,letterSpacing: 1.3,fontSize: 17,),),
                const SizedBox(height: 230.0,),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new RaisedButton(
                      onPressed: (){
                        signUp();
                      },
                      child: new Text("Sign Up",
                        style: new TextStyle(color: Colors.black),),
                        elevation: 10.0,
                        color: Colors.white,
                        padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50.0))),

                    const SizedBox(width: 65,),

                    new RaisedButton(
                      onPressed: (){
                        signIn();
                      },
                      child: new Text("Sign In",
                        style: new TextStyle(color: Colors.black),),
                        elevation: 10.0,
                        color: Colors.white,
                        padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50.0)),)
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}
