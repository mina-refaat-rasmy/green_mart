import 'package:flutter/material.dart';
import 'package:green_mart/AppTest/continerCount.dart';

class ListViewAdd extends StatefulWidget {
  const ListViewAdd({super.key, required this.count, required this.height});
  final int count;
  final double height;
  @override
  State<ListViewAdd> createState() => _ListViewAddState();
}

class _ListViewAddState extends State<ListViewAdd> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: count,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green,
            ),
            width: double.infinity,
            height: widget.height,
            child: Center(
              child: Text(
                'Item $count',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 10);
        },
      ),
    );
  }
}
