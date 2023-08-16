import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mytodo/ui_helper.dart';

class Add_Taks extends StatefulWidget {
  const Add_Taks({super.key});

  @override
  State<Add_Taks> createState() => _Add_TaksState();
}

class _Add_TaksState extends State<Add_Taks> {
  DateTime _seletDateTime = DateTime.now();
  String _endTime = "11:20 PM";
  String _startTime = DateFormat("hh:mm:s").format(DateTime.now()).toString();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffc0c7),
      /*  appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Color(0xffffc0c7),
      ), */
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Add Daily Taks",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Custom_TextFild(
                text: "Title",
                crenttext: 'Enter Your Title',
              ),
              SizedBox(
                height: 10,
              ),
              Custom_TextFild(
                text: "Notes",
                crenttext: 'Enter Your Desc',
              ),
              SizedBox(
                height: 20,
              ),
              Custom_TextFild(
                text: "Catagry",
                crenttext: "Add Catagry",
                icons: IconButton(
                    onPressed: () {}, icon: Icon(Icons.keyboard_arrow_down)),
              ),
              SizedBox(
                height: 10,
              ),
              Custom_TextFild(
                text: "Date",
                crenttext: DateFormat.yMd().format(_seletDateTime),
                icons: IconButton(
                    onPressed: () {
                      _calenderDate();
                    },
                    icon: Icon(Icons.calendar_month)),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Custom_TextFild(
                      text: "Start Time",
                      crenttext: _startTime,
                      icons: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.access_time_rounded)),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Custom_TextFild(
                      text: "End Time",
                      crenttext: _endTime,
                      icons: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.access_time_rounded)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Custom_TextFild(
                text: "Remind",
                crenttext: DateFormat.yMd().format(DateTime.now()),
                icons: IconButton(
                    onPressed: () {}, icon: Icon(Icons.keyboard_arrow_down)),
              ),
              SizedBox(
                height: 10,
              ),
              Custom_TextFild(
                text: "Repeat",
                crenttext: DateFormat.yMd().format(DateTime.now()),
                icons: IconButton(
                    onPressed: () {}, icon: Icon(Icons.keyboard_arrow_down)),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("Color"),
                      SizedBox(
                        height: 10,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.red,
                      )
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("data"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  /// add function calender creant date
  _calenderDate() async {
    DateTime? _pickerDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2021),
        lastDate: DateTime(2050));

    /// set date condtion
    if (_pickerDate != null) {
      setState(() {
        _seletDateTime = _pickerDate;
      });
    } else {
      print("something rong");
    }
  }

/*   _startTimer() {
    var stat_timer = _showTimePicker();
    String _f
    /* if (stat_timer != null) {
      setState(() {
        _startTime = stat_timer;
      });
    } */
  } */

  _showTimePicker() {
    return showTimePicker(
        initialEntryMode: TimePickerEntryMode.input,
        context: context,
        initialTime: TimeOfDay(hour: 9, minute: 10));
  }
}
