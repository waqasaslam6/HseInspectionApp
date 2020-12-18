import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hse/pages/Login.dart';


class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final databaseReference = FirebaseFirestore.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _empName = new TextEditingController();
  TextEditingController _designation = new TextEditingController();
  TextEditingController _deptName = new TextEditingController();

  String userID;
  String _userEmail;
  bool _load = false;
  bool _success;

  void _register() async {
    setState(() {
      _load = true;
    });
    final User user = (await _auth.createUserWithEmailAndPassword(
      email: _emailController.text,
      password: _passwordController.text,
    ))
        .user;


    if (user != null) {
      await databaseReference.collection("users")
          .doc(user.uid)
          .set({
        'email':_emailController.text,
        'emp_name': _empName.text,
        'dept_name': _deptName.text,
        'designation': _designation.text,
        'area_of_work': "Test"
      });
      setState(() {
        _load = false;
        _success = true;
          _userEmail = user.email;
        if(_success = true)
        {
          showDialog(context: context,
              child: AlertDialog(
                title: Text("Success"),
                content: Text(_userEmail + " has been registered"),
                actions: [
                  MaterialButton(
                    color: Theme.of(context).accentColor,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Login()
                      ));
                    },
                    child: Text("Login"),
                  )
                ],
              ));

        }

      });
    } else {
      setState(() {
        _load = false;
        _success = false;
        showDialog(context: context,
            child: AlertDialog(
              title: Text("Error"),
              content: Text("Failed to register user"),
              actions: [
                MaterialButton(
                  color: Theme.of(context).accentColor,
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text("Try Again"),
                )
              ],
            ));
      });


    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


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
                Text("REGISTER",
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
          SingleChildScrollView(
            child: Container(
            //  padding: EdgeInsets.only(left: 20,right: 20),
              width: MediaQuery.of(context).size.width,
            //  height: MediaQuery.of(context).size.height,
              height: MediaQuery.of(context).size.height*0.9,
              child: Container(
                padding: EdgeInsets.all(40),
                color: Color(0xffECE9D8),
                height: MediaQuery.of(context).size.height*0.7,
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
                              child: Text("Full Name",
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
                                  return "Name is required";
                                return null;
                              },
                              controller: _empName,
                              decoration: InputDecoration(
                                isDense: true,
                                hintText: "Name",
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
                              child: Text("Department",
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
                                  return "Department is required";
                                return null;
                              },
                              controller: _deptName,
                              decoration: InputDecoration(
                                isDense: true,
                                hintText: "Department",
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
                              child: Text("Designation",
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
                                  return "Designation is required";
                                return null;
                              },
                              controller: _designation,
                              decoration: InputDecoration(
                                isDense: true,
                                hintText: "Designation",
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
                                   _register();
                                  }
                                  else
                                  {
                                    print("Form is invalid");
                                  }
                                },
                                child: Text("REGISTER",
                                  style: TextStyle(
                                      color: Colors.white
                                  ),),
                              )
                          ),
                          SizedBox(width: 20,),
                          Expanded(
                              flex: 1,
                              child: OutlineButton(
                                onPressed: ()=>Navigator.pop(context),
                                child: Text("CANCEL"),
                              )
                          ),
                        ],
                      ),

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
