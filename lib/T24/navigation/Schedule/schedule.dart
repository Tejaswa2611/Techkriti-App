import 'package:flutter/material.dart';
import 'package:techkriti/T24/navigation/Schedule/Day1.dart';
import 'package:techkriti/T24/navigation/Schedule/Day2.dart';
import 'package:techkriti/T24/navigation/Schedule/Day3.dart';
import 'package:techkriti/T24/navigation/Schedule/Day4.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      length: 4,
      vsync: this,
    );
    _tabController!.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const PreferredSize(
          preferredSize: Size(double.infinity, 70),
          child: Text(
            "Schedule Page",
            style: TextStyle(
                fontFamily: 'heading',
                fontSize: 22,
                fontWeight: FontWeight.normal,
                color: Colors.white),
          ),
        ),
        bottom:
            TabBar(dividerHeight: 0, controller: _tabController, tabs: const [
          Tab(
            child: Text(
              "Day 1",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
          Tab(
            child: Text(
              "Day 2",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
          Tab(
            child: Text(
              "Day 3",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
          Tab(
            child: Text(
              "Day 4",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          )
        ]),
      ),
      backgroundColor: const Color(0xFF121212),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Day1(),
          Day2(),
          Day3(),
          Day4(),
        ],
      ),
    );
  }
}
