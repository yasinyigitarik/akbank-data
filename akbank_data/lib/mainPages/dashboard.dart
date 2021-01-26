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
        color: Colors.green[400],
        child: Center(
            child: PageView(
          children: [
            LineChart(LineChartData(
              backgroundColor: Colors.blue[900],
              borderData: FlBorderData(
                show: true,
                border: const Border(
                  bottom: BorderSide(
                    color: Color(0xff4e4965),
                    width: 4,
                  ),
                  left: BorderSide(
                    color: Colors.transparent,
                  ),
                  right: BorderSide(
                    color: Colors.transparent,
                  ),
                  top: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
              ),
              minX: 0,
              maxX: 14,
              maxY: 4,
              minY: 0,
            )),
          ],
        )),
      ),
    );
  }
}
