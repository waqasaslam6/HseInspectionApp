import 'package:flutter/material.dart';

class HseResources extends StatefulWidget {
  @override
  _HseResourcesState createState() => _HseResourcesState();
}

class _HseResourcesState extends State<HseResources> {
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
                  child: Icon(Icons.beenhere,size: 50,),
                ),
                SizedBox(width: 30,),
                Expanded(
                  flex: 3,
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("PROCEDURES, HSE STANDARDS, REGULATIONS WILL BE UPLOADED HERE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
