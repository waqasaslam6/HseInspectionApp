import 'package:flutter/material.dart';

class StatusReports extends StatefulWidget {
  @override
  _StatusReportsState createState() => _StatusReportsState();
}

class _StatusReportsState extends State<StatusReports> {
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
      body: Container(
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
                  child: Icon(Icons.assessment,size: 50,),
                ),
                SizedBox(width: 30,),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 50,
                    color: Color(0xff4472C4),
                    child: Center(
                      child: Text("Status of Reports",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                        ),),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
