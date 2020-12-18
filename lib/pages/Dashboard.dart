import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hse/pages/ComplianceStatus.dart';
import 'package:hse/pages/DepartmentActions.dart';
import 'package:hse/pages/HseResources.dart';
import 'package:hse/pages/MyProfile.dart';
import 'package:hse/pages/StatusReports.dart';
import 'package:hse/pages/UnsafeActsConditions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hse/pages/Login.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: ()
          {
            showDialog(
              context: context,
              child: AlertDialog(
                title: Text("Logout"),
                content: Text("Are you sure you want to exit?"),
                actions: [
                  MaterialButton(
                    onPressed: ()=>Navigator.pop(context),
                    color: Theme.of(context).primaryColor,
                    child: Text("No"),
                    textColor: Colors.white,
                  ),
                  MaterialButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=> Login()
                      ));
                    },
                    color: Colors.grey,
                    child: Text("Yes"),
                    textColor: Colors.white,
                  ),
                ],
              )
            );
          },
          icon: Icon(Icons.arrow_back),
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
         padding: EdgeInsets.only(left: 0,right: 30, top: 5, bottom: 5),
         width:  MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: <Widget>[
             Row(
             children: <Widget>[
               Expanded(
                 flex: 1,
                 child: Icon(Icons.person_pin,size: 50,),
               ),
               Expanded(
                 flex: 3,
                 child: GestureDetector(
                   onTap: ()
                   {
                     Navigator.push(context, MaterialPageRoute(
                         builder: (context) =>MyProfile()
                     ));
                   },
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
               ),

             ],
           ),
             Row(
               children: <Widget>[
                 Expanded(
                   flex: 1,
                   child: Icon(Icons.bug_report,size: 50,),
                 ),
                 Expanded(
                   flex: 3,
                   child: GestureDetector(
                     onTap: ()
                     {
                       Navigator.push(context, MaterialPageRoute(
                         builder: (context) =>UnsafeActsConditions()
                       ));
                     },
                     child: Container(
                       height: 50,
                       color: Color(0xff4472C4),
                       child: Center(
                         child: Text("Report unsafe acts or conditions",
                           style: TextStyle(
                               color: Colors.white,
                               fontSize: 16
                           ),),
                       ),
                     ),
                   ),
                 ),
               ],
             ),
             Row(
               children: <Widget>[
                 Expanded(
                   flex: 1,
                   child: Icon(Icons.info,size: 50,),
                 ),
                 Expanded(
                   flex: 3,
                   child: GestureDetector(
                     onTap: ()
                     {
                       Navigator.push(context, MaterialPageRoute(
                           builder: (context) =>ComplianceStatus()
                       ));
                     },
                     child: Container(
                       height: 50,
                       color: Color(0xff4472C4),
                       child: Center(
                         child: Text("My compliance Status",
                           style: TextStyle(
                               color: Colors.white,
                               fontSize: 16
                           ),),
                       ),
                     ),
                   ),
                 ),

               ],
             ),
             Row(
               children: <Widget>[
                 Expanded(
                   flex: 1,
                   child: Icon(Icons.help,size: 50,),
                 ),
                 Expanded(
                   flex: 3,
                   child: GestureDetector(
                     onTap: ()
                     {
                       Navigator.push(context, MaterialPageRoute(
                           builder: (context) =>DepartmentActions()
                       ));
                     },
                     child: Container(
                       height: 50,
                       color: Color(0xff4472C4),
                       child: Center(
                         child: Text("My department actions",
                           style: TextStyle(
                               color: Colors.white,
                               fontSize: 16
                           ),),
                       ),
                     ),
                   ),
                 ),

               ],
             ),
             Row(
               children: <Widget>[
                 Expanded(
                   flex: 1,
                   child: Icon(Icons.assessment,size: 50,),
                 ),
                 Expanded(
                   flex: 3,
                   child: GestureDetector(
                     onTap: ()
                     {
                       Navigator.push(context, MaterialPageRoute(
                           builder: (context) =>StatusReports()
                       ));
                     },
                     child: Container(
                       height: 50,
                       color: Color(0xff4472C4),
                       child: Center(
                         child: Text("Status of reports",
                           style: TextStyle(
                               color: Colors.white,
                               fontSize: 16
                           ),),
                       ),
                     ),
                   ),
                 ),

               ],
             ),
             Row(
               children: <Widget>[
                 Expanded(
                   flex: 1,
                   child: Icon(Icons.beenhere,size: 50,),
                 ),
                 Expanded(
                   flex: 3,
                   child: GestureDetector(
                     onTap: ()
                     {
                       Navigator.push(context, MaterialPageRoute(
                           builder: (context) =>HseResources()
                       ));
                     },
                     child: Container(
                       height: 50,
                       color: Color(0xff4472C4),
                       child: Center(
                         child: Text("HSE Resources",
                           style: TextStyle(
                               color: Colors.white,
                               fontSize: 16
                           ),),
                       ),
                     ),
                   ),
                 ),

               ],
             ),

           ],
         ),
      ),
    );
  }
}
