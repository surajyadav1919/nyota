import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  TextEditingController dateinput = TextEditingController();
  var today= DateTime.now();

  @override
  Widget build(BuildContext context) {
    return  Container(

      // create calendar
      child: TableCalendar(
          headerStyle:HeaderStyle(formatButtonVisible: false),
          focusedDay: today,
          firstDay: DateTime.utc(2000, 01, 01),
          lastDay: DateTime.utc(2050, 01, 01)),


    );

  }
}