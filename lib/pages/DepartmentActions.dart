import 'package:flutter/material.dart';

class DepartmentActions extends StatefulWidget {
  @override
  _DepartmentActionsState createState() => _DepartmentActionsState();
}

class _DepartmentActionsState extends State<DepartmentActions> {
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
                  child: Icon(Icons.help,size: 50,),
                ),
                SizedBox(width: 30,),
                Expanded(
                  flex: 3,
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
              ],
            ),
            SizedBox(height: 10,),
            Center(
                child: Text(
                  'Weekly Incident Summary',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
             Expanded(
               child: ListView(
                 scrollDirection: Axis.horizontal,
                   children: <Widget>[

                    SizedBox(height: 15,),
                    DataTable(
            columns: [
                       DataColumn(label: Text('No')),
                       DataColumn(label: Text('Auditor')),
                       DataColumn(label: Text('Auditee')),
              DataColumn(label: Text('Date')),
              DataColumn(label: Text('Category')),
            ],
            rows: [
                DataRow(cells: [
                      DataCell(Text('1')),
                      DataCell(Text('Arya')),
                      DataCell(Text('ROSHNESS')),
                  DataCell(Text('')),
                  DataCell(Text('Positions of People')),
                ]),
                DataRow(cells: [
                     DataCell(Text('2')),
                     DataCell(Text('John')),
                     DataCell(Text('ROSHNESS')),
                  DataCell(Text('')),
                  DataCell(Text('House Keeping')),
                ]),
                DataRow(cells: [
                     DataCell(Text('3')),
                     DataCell(Text('Tony')),
                     DataCell(Text('ROSHNESS')),
                  DataCell(Text('')),
                  DataCell(Text('Personal Equipment')),
                ]),
              DataRow(cells: [
                DataCell(Text('4')),
                DataCell(Text('Tony')),
                DataCell(Text('ROSHNESS')),
                DataCell(Text('')),
                DataCell(Text('Handling of Tools')),
              ]),
              DataRow(cells: [
                DataCell(Text('5')),
                DataCell(Text('Tony')),
                DataCell(Text('ROSHNESS')),
                DataCell(Text('')),
                DataCell(Text('Personal Equipment')),
              ]),
              DataRow(cells: [
                DataCell(Text('6')),
                DataCell(Text('Tony')),
                DataCell(Text('ROSHNESS')),
                DataCell(Text('')),
                DataCell(Text('Positions of People')),
              ]),
              DataRow(cells: [
                DataCell(Text('7')),
                DataCell(Text('Tony')),
                DataCell(Text('ROSHNESS')),
                DataCell(Text('')),
                DataCell(Text('Handling of Tools')),
              ]),
            ],
          ),
        ]
               ),
             ),
          ],
        ),
      ),
    );
  }
}
