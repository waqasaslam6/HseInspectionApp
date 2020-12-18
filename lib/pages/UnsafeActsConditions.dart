import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

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

  String dateP="";
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  TextEditingController _reference = new TextEditingController();
  TextEditingController _auditor = new TextEditingController();
  TextEditingController _auditee = new TextEditingController();
  TextEditingController _weekNo = new TextEditingController();
  TextEditingController _year = new TextEditingController();
  TextEditingController _workDescription = new TextEditingController();
  TextEditingController _deviationObserved = new TextEditingController();
  TextEditingController _actionRequired = new TextEditingController();
  TextEditingController _actionParty = new TextEditingController();
  TextEditingController _email = new TextEditingController();



  Future<void> sendDataToEmail ()async
  {
    setState(() {
      _load = true;
    });
    String username = 'smslegends@gmail.com';
    String password = 'waqas614';

    final smtpServer = gmail(username, password);
    // Use the SmtpServer class to configure an SMTP server:
    // final smtpServer = SmtpServer('smtp.domain.com');
    // See the named arguments of SmtpServer for further configuration
    // options.

    // Create our message.
    final message = Message()
      ..from = Address(username, 'HSE APP')
      ..recipients.add('${_email.text}')
      ..subject = 'HSE INCIDENT REPORT :: 😀 :: ${DateTime.now()}'
      ..text = 'This is the plain text.\nThis is line 2 of the text part.'
      ..html = """
      <!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>HSE</title>
  <style>
    html,
    body,
    table,
    tbody,
    tr,
    td,
    div,
    p,
    ul,
    ol,
    li,
    h1,
    h2,
    h3,
    h4,
    h5,
    h6 {
      margin: 0;
      padding: 0;
    }

    body {
      margin: 0;
      padding: 0;
      font-size: 0;
      line-height: 0;
      -ms-text-size-adjust: 100%;
      -webkit-text-size-adjust: 100%;
    }

    table {
      border-spacing: 0;
      mso-table-lspace: 0pt;
      mso-table-rspace: 0pt;
    }

    table td {
      border-collapse: collapse;
    }

    .ExternalClass {
      width: 100%;
    }

    .ExternalClass,
    .ExternalClass p,
    .ExternalClass span,
    .ExternalClass font,
    .ExternalClass td,
    .ExternalClass div {
      line-height: 100%;
    }
    /* Outermost container in Outlook.com */

    .ReadMsgBody {
      width: 100%;
    }

    img {
      -ms-interpolation-mode: bicubic;
    }

    h1,
    h2,
    h3,
    h4,
    h5,
    h6 {
      font-family: Arial;
    }

    h1 {
      font-size: 28px;
      line-height: 32px;
      padding-top: 10px;
      padding-bottom: 24px;
    }

    h2 {
      font-size: 24px;
      line-height: 28px;
      padding-top: 10px;
      padding-bottom: 20px;
    }

    h3 {
      font-size: 20px;
      line-height: 24px;
      padding-top: 10px;
      padding-bottom: 16px;
    }

    p {
      font-size: 16px;
      line-height: 20px;
      font-family: Georgia, Arial, sans-serif;
    }

    </style>
    <style>

      .container600 {
        width: 600px;
        max-width: 100%;
      }

    @media all and (max-width: 599px) {
      .container600 {
        width: 100% !important;
      }
    
      .smarttable {
        border: 0px;
      }
      .smarttable thead {
        display:none;
        border: none;
        height: 0px;
        margin: 0px;
        overflow: hidden;
        padding: 0px;
        max-width:0px;
        max-height:0px;
      }
      .smarttable tr {
        display: block;
        width:90%;
        margin:20px auto;
      }
      .smarttable td {
        border-bottom: 1px solid #ddd;
        display: block;
        font-size: 15px;
        text-align: center;
      }
    }
  </style>

   <!--[if gte mso 9]>
        <style>
            .ol {
              width: 100%;
            }
        </style>
    <![endif]-->

</head>
<body style="background-color:#F4F4F4;">
    <center>

        <!--[if gte mso 9]><table width="600" cellpadding="0" cellspacing="0"><tr><td>
                    <![endif]-->
      <table class="container600" cellpadding="0" cellspacing="0" border="0" width="100%" style="width:calc(100%);max-width:calc(600px);margin: 0 auto;">
        <tr>
          <td width="100%" style="text-align: left;">

                <table width="100%" cellpadding="0" cellspacing="0" style="min-width:100%;">
                  <tr>
                    <td style="background-color:#FFFFFF;color:#000000;padding:30px;">
                      <img alt="" src="https://www.jksl.com/wp-content/uploads/2019/09/HSE2.jpg" width="200" style="display: block;" />
                    </td>
                  </tr>
                </table>
                
                <table width="100%" cellpadding="0" cellspacing="0" style="min-width:100%;">
                  <tr>
                    <td style="background-color:#F8F7F0;color:#58585A;padding:5px;">

                      <h1>Incident Details</h1>
                    </td>
                  </tr>
                 
                  <tr>
                   
<h3>
  Date:   ${DateTime.now()}
                      </h3>
                        <table border="2' class="smarttable" width="100%" cellpadding="0" cellspacing="0" style="min-width:100%;">
                          <thead>
                            <tr>
                              <th scope="col" style="padding:5px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;line-height:30px">Auditor</th>
                              <th scope="col" style="padding:5px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;line-height:30px">Auditee</th>
                              <th scope="col" style="padding:5px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;line-height:30px">Location</th>
                                                            <th scope="col" style="padding:5px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;line-height:30px">Category</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td valign="top" style="padding:5px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;">${_auditor.text}</td>
                              <td valign="top" style="padding:5px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;">${_auditee.text}</td>
                              <td valign="top" style="padding:5px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;">$_currentSelectedValueLoc</td>
                                                   <td valign="top" style="padding:5px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;">$_currentSelectedValue</td>
                            </tr>
                          
                          </tbody>
                        </table>

                    </td>
                  </tr>
                </table>
               
            <br/>
            <h3>Work Site Brief Description:</h3>
            
           <p>${_workDescription.text}</p>
           
        
            
        
            <br/><br/>
            
            
            
               <table border="2" class="smarttable" width="100%" cellpadding="0" cellspacing="0" style="min-width:100%;">
                          <thead>
                            <tr>
                              <th scope="col" style="padding:5px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;line-height:30px">Reference</th>
                              <th scope="col" style="padding:5px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;line-height:30px">Week Number</th>
                              <th scope="col" style="padding:5px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;line-height:30px">Year</th>
                                                            <th scope="col" style="padding:5px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;line-height:30px">Reported</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td valign="top" style="padding:5px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;">${_reference.text}</td>
                              <td valign="top" style="padding:5px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;">${_weekNo.text}</td>
                              <td valign="top" style="padding:5px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;">${_year.text}</td>
                                                   <td valign="top" style="padding:5px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;">$dateP</td>
                            </tr>
                           
                          
                          
                          </tbody>
                        </table>

            
            
            
            <br/>
            
            
            
               <table border="2" class="smarttable" width="100%" cellpadding="0" cellspacing="0" style="min-width:100%;">
                          <thead>
                            <tr>
                              <th scope="col" style="padding:5px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;line-height:30px">Category</th>
                              <th scope="col" style="padding:5px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;line-height:30px">Deviation from requirement</th>
                              <th scope="col" style="padding:5px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;line-height:30px">Action Required</th>
                                                            <th scope="col" style="padding:5px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;line-height:30px">Action Party</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td valign="top" style="padding:5px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;">$_currentSelectedValue</td>
                              <td valign="top" style="padding:5px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;">${_deviationObserved.text}</td>
                              <td valign="top" style="padding:5px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;">${_actionRequired.text}</td>
                                                   <td valign="top" style="padding:5px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;">${_actionParty.text}</td>
                            </tr>
                           
                            <tr>
                              <td valign="top" style="padding:15px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;"></td>
                              <td valign="top" style="padding:15px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;"></td>
                              <td valign="top" style="padding:15px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;"></td>
                                                   <td valign="top" style="padding:15px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;"></td>
                            </tr>
                            <tr>
                              <td valign="top" style="padding:15px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;"></td>
                              <td valign="top" style="padding:15px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;"></td>
                              <td valign="top" style="padding:15px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;"></td>
                                                   <td valign="top" style="padding:15px; font-family: Arial,sans-serif; font-size: 16px; line-height:20px;"></td>
                            </tr>
                          
                          </tbody>
                        </table>

                    </td>
                  </tr>
                </table>
               
            
            
            
            
      
            
                    </td>
                  </tr>
                </table>
               
            
                
                <table width="100%" cellpadding="0" cellspacing="0" style="min-width:100%;">
                  <tr>
                    <td width="100%" style="min-width:100%;background-color:#58585A;color:#FFFFFF;padding:30px;">
                      <p style="font-size:16px;line-height:20px;font-family:Georgia,Arial,sans-serif;text-align:center;">2020 @ COPYRIGHT - HSE APP</p>
                    </td>
                  </tr>
                </table>
              </td>
        </tr>
    </table>

  <!--[if gte mso 9]></td></tr></table>
                    <![endif]-->
    </center>
</body>
</html>
      """;

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ' + sendReport.toString());
      setState(() {
        _load = false;
      });
      showDialog(
        context: context,
        child: AlertDialog(
          title: Text("Success"),
          content: Text("Incident details has been submitted!"),
          actions: [
            MaterialButton(
              color: Theme.of(context).primaryColor,
              onPressed: (){
              _email.clear();
                Navigator.pop(context);
              },
              child: Text("Great"),
            )
          ],
        )
      );
    } on MailerException catch (e) {
      setState(() {
        _load = false;
      });
      showDialog(
          context: context,
          child: AlertDialog(
            title: Text("Failed"),
            content: Text("There is something wrong!"),
            actions: [
              MaterialButton(
                color: Theme.of(context).primaryColor,
                onPressed: ()=>Navigator.pop(context),
                child: Text("Ohh"),
              )
            ],
          )
      );
      print('Message not sent.');
      for (var p in e.problems) {
        print('Problem: ${p.code}: ${p.msg}');
      }
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
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                 padding: EdgeInsets.only(left: 15,right: 10, top: 10),
                 width:  MediaQuery.of(context).size.width,
                 height: MediaQuery.of(context).size.height,
                 child: Form(
                   key: _formKey,
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
                             // Row(
                             //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             //   children: <Widget>[
                             //     OutlineButton(
                             //       onPressed: (){},
                             //       child: Text("New"),
                             //     ),
                             //     OutlineButton(
                             //       onPressed: (){},
                             //       child: Text("Edit"),
                             //     ),
                             //     OutlineButton(
                             //       onPressed: (){},
                             //       child: Text("Save"),
                             //     ),
                             //     OutlineButton(
                             //       onPressed: (){},
                             //       child: Text("Delete"),
                             //     ),
                             //   ],
                             // ),
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
                                               controller: _reference,
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
                                               controller: _auditor,
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
                                               controller: _auditee,
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
                                           child: FormField<String>(
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
                                                   dateP = datePicked.toString();
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
                                               controller: _weekNo,
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
                                               controller: _year,
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
                                               controller: _workDescription,
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
                                               controller: _deviationObserved,
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
                                               controller: _actionRequired,
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
                                               controller: _actionParty,
                                               decoration: InputDecoration(
                                                   isDense: true,
                                                   labelText: "Action Party",
                                                   enabledBorder: OutlineInputBorder(),
                                                   focusedBorder: OutlineInputBorder()
                                               ),
                                             )),
                                       ],
                                     ),
                                     Row(
                                       children: [
                                         Expanded(
                                             child: TextFormField(
                                               controller: _email,
                                               decoration: InputDecoration(
                                                   isDense: true,
                                                   labelText: "Email",
                                                   enabledBorder: OutlineInputBorder(),
                                                   focusedBorder: OutlineInputBorder()
                                               ),
                                             )),
                                       ],
                                     ),
                                     MaterialButton(
                                       minWidth: MediaQuery.of(context).size.width/2,
                                       onPressed: sendDataToEmail,
                                       child: Text("Submit"),
                                       textColor: Colors.white,
                                       color: Theme.of(context).primaryColor,
                                     )
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
            ),
            new Align(child: loadingIndicator,alignment: FractionalOffset.center,),
          ],
        ),
    );
  }
}
