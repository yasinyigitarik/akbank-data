import 'package:akbank_data/mainPages/chart.dart';
import 'package:akbank_data/repos/userRepo.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<UserRepo>().getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            //Green Side
            Container(
              height: MediaQuery.of(context).size.height / 3.5,
              margin: EdgeInsets.symmetric(horizontal: 3),
              decoration: BoxDecoration(
                  color: Colors.green[600],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
            ),
            // Welcome Text
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 6, left: 30),
              child: Text(
                'Welcome Can',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                ),
              ),
            ),
            //SearchBar
            Container(
              padding: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(1, 1),
                )
              ], color: Colors.white, borderRadius: BorderRadius.circular(50)),
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 4.2,
                  left: 20,
                  right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.green[600]),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.green[600],
                      ),
                    )),
              ),
            )
            //The Chart
            ,
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 3,
                  left: 5,
                  right: 5),
              child: LineChartSample1(),
            )
          ],
        ),
      ),
    );
  }
}
