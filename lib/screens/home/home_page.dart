import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mytodo/screens/home/add_taks.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffc0c7),
        elevation: 0,
      //  leading: ,
        title: Text(
          "MyTodo",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          ShowDailyTaks(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Text("${index + 1}"),
                      title: Text("Taks"),
                      trailing: Icon(Icons.edit),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Add_Taks(),
              ));
        },
        child: Container(
          height: 50,
          width: 130,
          decoration: BoxDecoration(
              color: Color(0xffffc0c7),
              borderRadius: BorderRadius.circular(50)),
          child: Center(
              child: Text(
            "Add Taks",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }

// show crent Date
  Widget ShowDailyTaks() {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 56, 86, 168),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// cerant timer //
              /// // Add package Date formate
              Text(
                DateFormat.yMMMMd().format(DateTime.now()),
                style: TextStyle(fontSize: 20, color: Colors.grey[400]),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Today",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
