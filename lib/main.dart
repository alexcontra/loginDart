import 'package:flutter/material.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget
{
      @override
        Widget build(BuildContext context) {
      // TODO: implement build
           return MaterialApp(
            title: 'Flutteer Login UI',
             theme: ThemeData(
               primarySwatch: Colors.blue,
             ),
               home: MyHomePage(title: 'Flutter Login'),
           );
        }
}
class MyHomePage extends StatefulWidget
{
    MyHomePage({Key key , this.title}) : super(key: key);
    _MyHomePage createState()=> _MyHomePage();
    final String title;

}

class _MyHomePage extends State<MyHomePage>{
  TextStyle style = TextStyle(fontFamily: 'Monserrat',fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
      final emailField = TextField(
        obscureText: false,
        style: style,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0,15.0,20.0,15.0),
          hintText: "Email",
          border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        ),
      );
      final passwordField= TextField(
        obscureText: true,
        style : style ,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        ),
      );
      final loginButton = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Color(0xff01A0C7),
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(20.0,15.0,20.0,15.0),
          onPressed: () {},
          child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
              color:Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
      ),
      );
      return Scaffold(
          body: Center(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child :Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 155.0,
                    ),
                    SizedBox(height: 45.0,),
                    emailField,
                    SizedBox(height: 25.0,),
                    passwordField,
                    SizedBox(height: 35.0,),
                    loginButton,
                    SizedBox(height: 15.0,),
                  ],
                ),
              ),
            ),
          ),
      );
  }
}