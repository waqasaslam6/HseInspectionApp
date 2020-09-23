import 'package:flutter/material.dart';
import 'package:hse/pages/Dashboard.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Text("DASHBOARD",
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
      body: Container(
        padding: EdgeInsets.only(left: 20,right: 20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            color: Color(0xffECE9D8),
            height: MediaQuery.of(context).size.height/2,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                        child: Text("User Name:",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),)
                    ),
                    Expanded(
                      flex: 2,
                      child: TextFormField(
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
                        child: Text("Password:",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),)
                    ),
                    Expanded(
                      flex: 2,
                      child: TextFormField(
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
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Dashboard()
                            ));
                          },
                          child: Text("OK",
                          style: TextStyle(
                            color: Colors.white
                          ),),
                        )
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      flex: 1,
                      child: OutlineButton(
                        onPressed: (){},
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

    );
  }
}
