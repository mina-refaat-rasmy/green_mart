import 'package:flutter/material.dart';
import 'package:green_mart/AppTest/list_view_add.dart';
import 'package:green_mart/AppTest/main_button.dart';
import 'package:green_mart/AppTest/remove_continer.dart';

class continerCount extends StatefulWidget {
  const continerCount({super.key});

  @override
  State<continerCount> createState() => _continerCountState();
}

int count = 1;

class _continerCountState extends State<continerCount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Continer Count'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 5,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                icon: Icon(Icons.add_circle, color: Colors.green, size: 50),
              ),
              Divider(
                height: 20,
                thickness: 2,
                color: Colors.green,
                indent: 20,
                endIndent: 20,
              ),
              ListViewAdd(count: count, height: 100),
              Divider(),
              RemoveContiner(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MainButton(),
    );
  }
}
