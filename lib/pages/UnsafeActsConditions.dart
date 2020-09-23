import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';

class UnsafeActsConditions extends StatefulWidget {
  @override
  _UnsafeActsConditionsState createState() => _UnsafeActsConditionsState();
}

class _UnsafeActsConditionsState extends State<UnsafeActsConditions> {

  var _categories = [
    "Category",
    "Food",
    "Transport",
    "Personal",
    "Shopping",
    "Medical",
    "Rent",
    "Movie",
    "Salary"
  ];
  var _locations = [
    "Location",
    "USA",
    "Pakistan",
    "China",
    "India",
    "Russia",
    "France",
    "Italy"
  ];

  var _types = [
    "Type",
    "Type 1",
    "Type 2",
    "Type 3",
    "Type 4"
  ];

  String _currentSelectedValue = "Category";
  String _currentSelectedValueType = "Type";
  String _currentSelectedValueLoc = "Location";

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
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
        body: SingleChildScrollView(
          child: Container(
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
                     child: Icon(Icons.bug_report,size: 50,),
                   ),
                   SizedBox(width: 30,),
                   Expanded(
                     flex: 3,
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
                 ],
               ),
               SizedBox(height: 10,),
               Expanded(
                 child: Container(
                   padding: EdgeInsets.all(8),
                   decoration: BoxDecoration(
                     color: Color(0xffECE9D8)
                   ),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text("Incident Details",
                           style: TextStyle(
                             fontSize: 18,
                             fontWeight: FontWeight.w500,
                           ),),
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                           OutlineButton(
                             onPressed: (){},
                             child: Text("New"),
                           ),
                           OutlineButton(
                             onPressed: (){},
                             child: Text("Edit"),
                           ),
                           OutlineButton(
                             onPressed: (){},
                             child: Text("Save"),
                           ),
                           OutlineButton(
                             onPressed: (){},
                             child: Text("Delete"),
                           ),
                         ],
                       ),
                       SizedBox(height: 5,),
                       Expanded(
                         child: Container(
                           padding: EdgeInsets.all(10),
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.all(Radius.circular(1)),
                               border: Border.all(color: Colors.grey[400])
                           ),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: <Widget>[
                               Row(
                                 children: <Widget>[
                                   Expanded(
                                       child: TextFormField(
                                     decoration: InputDecoration(
                                         isDense: true,
                                       labelText: "Reference",
                                       enabledBorder: OutlineInputBorder(),
                                         focusedBorder: OutlineInputBorder()
                                     ),
                                   )),
                                   SizedBox(width: 15,),
                                   Expanded(
                                       child: TextFormField(
                                         decoration: InputDecoration(
                                             isDense: true,
                                             labelText: "Auditor",
                                             enabledBorder: OutlineInputBorder(),
                                             focusedBorder: OutlineInputBorder()
                                         ),
                                       )),
                                   SizedBox(width: 15,),
                                   Expanded(
                                       child: TextFormField(
                                         decoration: InputDecoration(
                                             isDense: true,
                                             labelText: "Auditee",
                                             enabledBorder: OutlineInputBorder(),
                                             focusedBorder: OutlineInputBorder()
                                         ),
                                       )),
                                 ],
                               ),
                               Row(
                                 children: <Widget>[
                                   Expanded(
                                     child:  FormField<String>(
                                       builder: (FormFieldState<String> state) {
                                         return InputDecorator(
                                           decoration: InputDecoration(
                                             isDense: true,
                                               errorStyle: TextStyle(color: Colors.redAccent, fontSize: 10.0),
                                               hintText: 'Category',
                                               border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
                                           isEmpty: _currentSelectedValue == '',
                                           child: DropdownButtonHideUnderline(
                                             child: DropdownButton<String>(
                                               value: _currentSelectedValue,
                                               isDense: true,
                                               onChanged: (String newValue) {
                                                 setState(() {
                                                   _currentSelectedValue = newValue;
                                                   state.didChange(newValue);
                                                 });
                                               },
                                               items: _categories.map((String value) {
                                                 return DropdownMenuItem<String>(
                                                   value: value,
                                                   child: Text(value,
                                                   style: TextStyle(
                                                     fontSize: 12
                                                   ),),
                                                 );
                                               }).toList(),
                                             ),
                                           ),
                                         );
                                       },
                                     ),
                                       ),
                                   SizedBox(width: 10,),
                                   Expanded(
                                     child:  FormField<String>(
                                       builder: (FormFieldState<String> state) {
                                         return InputDecorator(
                                           decoration: InputDecoration(
                                               isDense: true,
                                               errorStyle: TextStyle(color: Colors.redAccent, fontSize: 10.0),
                                               hintText: 'Location',
                                               border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
                                           isEmpty: _currentSelectedValueLoc == '',
                                           child: DropdownButtonHideUnderline(
                                             child: DropdownButton<String>(
                                               value: _currentSelectedValueLoc,
                                               isDense: true,
                                               onChanged: (String newValue) {
                                                 setState(() {
                                                   _currentSelectedValueLoc = newValue;
                                                   state.didChange(newValue);
                                                 });
                                               },
                                               items: _locations.map((String value) {
                                                 return DropdownMenuItem<String>(
                                                   value: value,
                                                   child: Text(value,
                                                     style: TextStyle(
                                                         fontSize: 12
                                                     ),),
                                                 );
                                               }).toList(),
                                             ),
                                           ),
                                         );
                                       },
                                     ),
                                   ),
                                   SizedBox(width: 10,),
                                   Expanded(
                                     child:  FormField<String>(
                                       builder: (FormFieldState<String> state) {
                                         return InputDecorator(
                                           decoration: InputDecoration(
                                               isDense: true,
                                               errorStyle: TextStyle(color: Colors.redAccent, fontSize: 10.0),
                                               hintText: 'Type',
                                               border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
                                           isEmpty: _currentSelectedValueType == '',
                                           child: DropdownButtonHideUnderline(
                                             child: DropdownButton<String>(
                                               value: _currentSelectedValueType,
                                               isDense: true,
                                               onChanged: (String newValue) {
                                                 setState(() {
                                                   _currentSelectedValueType = newValue;
                                                   state.didChange(newValue);
                                                 });
                                               },
                                               items: _types.map((String value) {
                                                 return DropdownMenuItem<String>(
                                                   value: value,
                                                   child: Text(value,
                                                     style: TextStyle(
                                                         fontSize: 12
                                                     ),),
                                                 );
                                               }).toList(),
                                             ),
                                           ),
                                         );
                                       },
                                     ),
                                   ),
                                 ],
                               ),
                               Row(
                                 children: <Widget>[
                                   Expanded(
                                       child: Builder(
                                         builder: (context) =>TextFormField(
                                           readOnly: true,
                                           onTap: ()
                                           async {
                                             var datePicked = await DatePicker.showSimpleDatePicker(
                                               context,
                                               initialDate: DateTime(2020),
                                               firstDate: DateTime(2000),
                                               lastDate: DateTime(2050),
                                               dateFormat: "dd-MMMM-yyyy",
                                               locale: DateTimePickerLocale.en_us,
                                               looping: true,
                                             );
                                             final snackBar =
                                             SnackBar(content: Text("Date Picked $datePicked"));
                                             Scaffold.of(context).showSnackBar(snackBar);
                                           },
                                           decoration: InputDecoration(
                                               isDense: true,
                                               hintText: "Reported",
                                               enabledBorder: OutlineInputBorder(),
                                               focusedBorder: OutlineInputBorder()
                                           ),
                                         ),
                                       )),
                                   SizedBox(width: 15,),
                                   Expanded(
                                       child: TextFormField(
                                         decoration: InputDecoration(
                                             isDense: true,
                                             labelText: "Week No",
                                             enabledBorder: OutlineInputBorder(),
                                             focusedBorder: OutlineInputBorder()
                                         ),
                                       )),
                                   SizedBox(width: 15,),
                                   Expanded(
                                       child: TextFormField(
                                         decoration: InputDecoration(
                                             isDense: true,
                                             labelText: "Year",
                                             enabledBorder: OutlineInputBorder(),
                                             focusedBorder: OutlineInputBorder()
                                         ),
                                       )),
                                 ],
                               ),
                               Row(
                                 children: <Widget>[
                                   Expanded(
                                       child: TextFormField(
                                         minLines: 2,
                                         maxLines: 3,
                                         decoration: InputDecoration(
                                             isDense: true,
                                             labelText: "Work/Site Description",
                                             enabledBorder: OutlineInputBorder(),
                                             focusedBorder: OutlineInputBorder()
                                         ),
                                       )),
                                 ],
                               ),
                               Row(
                                 children: <Widget>[
                                   Expanded(
                                       child: TextFormField(
                                         minLines: 2,
                                         maxLines: 3,
                                         decoration: InputDecoration(
                                             isDense: true,
                                             labelText: "Deviation Observerd",
                                             enabledBorder: OutlineInputBorder(),
                                             focusedBorder: OutlineInputBorder()
                                         ),
                                       )),
                                 ],
                               ),
                               Row(
                                 children: <Widget>[
                                   Expanded(
                                       child: TextFormField(
                                         minLines: 2,
                                         maxLines: 3,
                                         decoration: InputDecoration(
                                             isDense: true,
                                             labelText: "Deviation Observerd",
                                             enabledBorder: OutlineInputBorder(),
                                             focusedBorder: OutlineInputBorder()
                                         ),
                                       )),
                                 ],
                               ),
                               Row(
                                 children: <Widget>[
                                   Expanded(
                                       child: TextFormField(
                                         decoration: InputDecoration(
                                             isDense: true,
                                             labelText: "Action Required",
                                             enabledBorder: OutlineInputBorder(),
                                             focusedBorder: OutlineInputBorder()
                                         ),
                                       )),
                                   SizedBox(width: 10,),
                                   Expanded(
                                       child: TextFormField(
                                         decoration: InputDecoration(
                                             isDense: true,
                                             labelText: "Action Party",
                                             enabledBorder: OutlineInputBorder(),
                                             focusedBorder: OutlineInputBorder()
                                         ),
                                       )),
                                 ],
                               ),
                             ],
                           ),
                         ),
                       ),

                     ],
                   ),
                 ),
               ),
            ],
          ),
      ),
        ),
    );
  }
}
