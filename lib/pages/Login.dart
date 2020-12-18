import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hse/pages/Dashboard.dart';
import 'package:hse/pages/Register.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {


  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  String userID;



  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // Example code of how to sign in with email and password.
  void _signInWithEmailAndPassword() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      _load = true;
    });
    try {
      final User user = (await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      ))
          .user;
      setState(() {
        _load = false;
      });
      print("${user.email} signed in");
      // pref.setString("userEmail", user.email);
      pref.setString("userID", user.uid);
      Navigator.push(context, MaterialPageRoute(
          builder: (context) =>Dashboard()
      ));

    } catch (e) {
      setState(() {
        _load = false;
        showDialog(context: context,
            child: AlertDialog(
              title: Text("Error"),
              content: Text("Failed to sign in"),
              actions: [
                MaterialButton(
                  color: Theme.of(context).primaryColor,
                  child: Text("Try Again",
                    style: TextStyle(
                      color: Colors.white,
                    ),),
                  onPressed: ()=>Navigator.pop(context),
                )
              ],
            ));
      });

      print("Failed to sign in with Email & Password");
    }
  }


  bool _load = false;



  @override
  Widget build(BuildContext context) {
    Widget loadingIndicator =_load ? new Container(
      color: Colors.grey[300],
      width: 70.0,
      height: 70.0,
      child: new Padding(
          padding: const EdgeInsets.all(5.0),
          child: new Center(
              child: new CircularProgressIndicator(
                  valueColor: new AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor)
              )
          )),
    ):new Container();
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.menu),
        ),
        title: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xff4472C4)
          ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("LOGIN",
                style: TextStyle(
                  fontSize: 18,
                ),),
              ],
            )
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
          ),
          IconButton(
            icon: Icon(Icons.check_circle),
            onPressed: (){},
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Container(
                padding: EdgeInsets.all(20),
                color: Color(0xffECE9D8),
                height: MediaQuery.of(context).size.height/2,
                width: MediaQuery.of(context).size.width,
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                              child: Text("Email:",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),)
                          ),
                          Expanded(
                            flex: 2,
                            child: TextFormField(
                              validator: (val)
                              {
                                if(val.isEmpty)
                                  return "Email is required";
                                return null;
                              },
                              controller: _emailController,
                              decoration: InputDecoration(
                                isDense: true,
                                hintText: "Email",
                                enabledBorder: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child: Text("Password:",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),)
                          ),
                          Expanded(
                            flex: 2,
                            child: TextFormField(
                              obscureText: true,
                              validator: (val)
                              {
                                if(val.isEmpty)
                                  return "Password is required";
                                return null;
                              },
                              controller: _passwordController,
                              decoration: InputDecoration(
                                  isDense: true,
                                  hintText: "*****",
                                  enabledBorder: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child: MaterialButton(
                                color: Theme.of(context).primaryColor,
                                onPressed: (){
                                  if(_formKey.currentState.validate())
                                  {
                                    _formKey.currentState.save();
                                    print("Form is valid");
                                    _signInWithEmailAndPassword();
                                  }
                                  else
                                  {
                                    print("Form is invalid");
                                  }
                                },
                                child: Text("LOGIN",
                                style: TextStyle(
                                  color: Colors.white
                                ),),
                              )
                          ),
                          // SizedBox(width: 20,),
                          // Expanded(
                          //   flex: 1,
                          //   child: OutlineButton(
                          //     onPressed: (){},
                          //     child: Text("CANCEL"),
                          //   )
                          // ),
                        ],
                      ),
                      FlatButton(
                        minWidth: MediaQuery.of(context).size.width/2,
                      //  color: Theme.of(context).primaryColor,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => Register()
                          ));
                        },
                        child: Text("NEW USER ? SIGNUP",
                          style: TextStyle(
                              color: Colors.black
                          ),),
                      )

                    ],
                  ),
                ),
              ),
            ),
          ),
          new Align(child: loadingIndicator,alignment: FractionalOffset.center,),
        ],
      ),

    );
  }
}
