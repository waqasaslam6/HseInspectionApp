import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {


  String userID;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getUser();
  }

  getUser() async
  {
    SharedPreferences pref = await SharedPreferences.getInstance();
    userID = pref.getString("userID");
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('users').doc(userID).snapshots(),
        builder: (context, snapshot) {
          if(!snapshot.hasData)
            {
              return new Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: new Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: new Center(
                          child: new CircularProgressIndicator(
                              valueColor: new AlwaysStoppedAnimation<Color>(Theme.of(context).accentColor)
                          )
                      )
                  )
              );
            }
          else
            {
              var userDocument = snapshot.data;
              return Container(
                padding: EdgeInsets.only(left: 15,right: 10, top: 10),
                width:  MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Icon(Icons.person_pin,size: 50,),
                        ),
                        SizedBox(width: 30,),
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: 50,
                            color: Color(0xff4472C4),
                            child: Center(
                              child: Text("My profile",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16
                                ),),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                    Container(
                      padding: EdgeInsets.all(50),
                      height: MediaQuery.of(context).size.height*0.6,
                      width: MediaQuery.of(context).size.width,
                      color: Color(0xff4472C4),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Name of employee:",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),),

                              Text(userDocument["emp_name"],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Department:",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),),
                              Text(userDocument["dept_name"],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),),

                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Designation:",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),),
                              Text(userDocument["designation"],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Area of work:",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),),
                              Text(userDocument["area_of_work"],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                  ],
                ),
              );
            }
    }
      ),
    );
  }
}
