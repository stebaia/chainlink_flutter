import 'package:add_2_calendar/add_2_calendar.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ResultScreen extends StatelessWidget {
  final String text;

  const ResultScreen({super.key, required this.text});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Result'),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(30.0),
          child: Column(
          
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(text, textAlign: TextAlign.center,),
              ElevatedButton(onPressed: (){
                Add2Calendar.addEvent2Cal(Event(title: text, startDate: DateTime.now(), endDate: DateTime.now()));
              }, child: Text('Add to calendar')),
              ElevatedButton(onPressed: (){
                Share.share(text);
              }, child: Text('Share'))
            ],
          ),
        ),
      );

}
