import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:makeyourhome/tools/color.dart';
import 'package:vibration/vibration.dart';

int _index = 0;

class DisplayGraph extends StatefulWidget {
  const DisplayGraph({super.key});

  @override
  State<DisplayGraph> createState() => _DisplayGraphState();
}

class _DisplayGraphState extends State<DisplayGraph> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    final routes =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    print(routes['name']);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding:
            EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: EdgeInsets.only(
                    top: height * 0.02,
                    left: width * 0.016,
                    bottom: height * 0.03),
                child: Icon(Icons.arrow_back),
              ),
            ),
            routes['image'] != null
                ? Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.0,
                        left: MediaQuery.of(context).size.width * 0.02,
                        bottom: height * 0.02),
                    child: Image.network(
                      routes['image'].toString(),
                      height: height * 0.03,
                      width: width * 0.08,
                    ),
                  )
                : SizedBox(),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.0,
                left: MediaQuery.of(context).size.width * 0.02,
              ),
              child: Text(
                routes['name'].toString().toUpperCase(),
                style: GoogleFonts.roboto(
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                    //  fontWeight: FontWeight.bold,
                    color: mycolor['secondaryColor']),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: height * 0.02,
                          left: width * 0.02,
                          bottom: height * 0.002,
                          right: width * 0.03),
                      child: Text(
                        "₹ ${routes['cp']}",
                        style: GoogleFonts.roboto(
                            fontSize: MediaQuery.of(context).size.height * 0.04,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff44475B)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: height * 0.00,
                          bottom: height * 0.01,
                          left: width * 0.022,
                          right: width * 0.04),
                      child: Text(
                        routes['percent'].toString(),
                        style: GoogleFonts.roboto(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.016,
                            fontWeight: FontWeight.w600,
                            color: routes['isProfit'].toString() == "true"
                                ? Color(0xff00B499)
                                : Colors.red),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: width * 0.06),
                  child: InkWell(
                    onTap: () {
                      Vibration.vibrate(duration: 50);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xff00B499), width: 0.4),
                          color: Color(0xffE5FAF5),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.006,
                            bottom: height * 0.006,
                            left: width * 0.06,
                            right: width * 0.06),
                        child: Text(
                          "Predict",
                          style: GoogleFonts.roboto(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.016,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff00B499)),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.04, left: width * 0.07),
              child: Container(
                height: height * 0.3,
                width: width * 0.85,
                child: LineChart(
                  LineChartData(
                    maxX: 27,
                    minX: 0,
                    maxY: 500,
                    minY: 0,
                    borderData: FlBorderData(
                        border: Border(
                            bottom: BorderSide(width: 0),
                            left: BorderSide(width: 0))),
                    titlesData: FlTitlesData(
                        leftTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false)),
                        bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                          showTitles: false,
                          getTitlesWidget: (value, meta) {
                            switch (value.toInt()) {
                              case 0:
                                return Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: Text(
                                    "May",
                                    style: GoogleFonts.roboto(
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.014,
                                        //  fontWeight: FontWeight.bold,
                                        color: mycolor['textColor']),
                                  ),
                                );
                              case 1:
                                return Text(
                                  "June",
                                  style: GoogleFonts.roboto(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.014,
                                      //  fontWeight: FontWeight.bold,
                                      color: mycolor['textColor']),
                                );
                              case 2:
                                return Text(
                                  "July",
                                  style: GoogleFonts.roboto(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.014,
                                      //  fontWeight: FontWeight.bold,
                                      color: mycolor['textColor']),
                                );
                              case 3:
                                return Text(
                                  "Aug",
                                  style: GoogleFonts.roboto(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.014,
                                      //  fontWeight: FontWeight.bold,
                                      color: mycolor['textColor']),
                                );
                              case 4:
                                return Text(
                                  "Sep",
                                  style: GoogleFonts.roboto(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.014,
                                      //  fontWeight: FontWeight.bold,
                                      color: mycolor['textColor']),
                                );
                              case 5:
                                return Text(
                                  "Oct",
                                  style: GoogleFonts.roboto(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.014,
                                      //  fontWeight: FontWeight.bold,
                                      color: mycolor['textColor']),
                                );
                              case 6:
                                return Text(
                                  "Nov",
                                  style: GoogleFonts.roboto(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.014,
                                      //  fontWeight: FontWeight.bold,
                                      color: mycolor['textColor']),
                                );
                            }
                            return Text("");
                          },
                        )),
                        rightTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        topTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false))),
                    lineBarsData: [
                      LineChartBarData(
                          spots: [
                            FlSpot(0, 365),
                            FlSpot(1, 370),
                            FlSpot(2, 380),
                            FlSpot(3, 350),
                            FlSpot(4, 360),
                            FlSpot(5, 370),
                            FlSpot(6, 380),
                            FlSpot(7, 365),
                            FlSpot(8, 370),
                            FlSpot(9, 380),
                            FlSpot(10, 350),
                            FlSpot(11, 360),
                            FlSpot(12, 370),
                            FlSpot(13, 380),
                            FlSpot(14, 365),
                            FlSpot(15, 370),
                            FlSpot(16, 380),
                            FlSpot(17, 350),
                            FlSpot(18, 360),
                            FlSpot(19, 370),
                            FlSpot(20, 380),
                            FlSpot(21, 365),
                            FlSpot(22, 370),
                            FlSpot(23, 380),
                            FlSpot(24, 350),
                            FlSpot(25, 360),
                            FlSpot(26, 370),
                            FlSpot(27, 380)
                          ],
                          isCurved: true,
                          color: routes['isProfit'] == "true"
                              ? Colors.green.withOpacity(0.7)
                              : Colors.red.withOpacity(0.7),
                          barWidth: 2,
                          dotData: FlDotData(
                            show: false,
                          ),
                          belowBarData: BarAreaData(
                              show: true,
                              color: routes['isProfit'] == "true"
                                  ? Colors.greenAccent.withOpacity(0.09)
                                  : Colors.red.withOpacity(0.09))),
                    ],
                    gridData: FlGridData(show: false),
                  ),
                  swapAnimationDuration:
                      Duration(milliseconds: 150), // Optional
                  swapAnimationCurve: Curves.linear,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.16, top: height * 0.014),
                  child: GestureDetector(
                    onTap: () {
                      Vibration.vibrate(duration: 50);
                      setState(() {
                        _index = 0;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          // border: Border.all(color: Color(0xff00B499), width: 0.4),
                          color: _index == 0 ? Color(0xffE5FAF5) : Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.006,
                            bottom: height * 0.006,
                            left: width * 0.04,
                            right: width * 0.04),
                        child: Text(
                          "1 D",
                          style: GoogleFonts.roboto(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.016,
                              fontWeight: FontWeight.w600,
                              color: _index == 0
                                  ? Color(0xff00B499)
                                  : Color(0xff44475B)),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.04, top: height * 0.014),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Vibration.vibrate(duration: 50);
                        _index = 1;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          // border: Border.all(color: Color(0xff00B499), width: 0.4),
                          color: _index == 1 ? Color(0xffE5FAF5) : Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.006,
                            bottom: height * 0.006,
                            left: width * 0.04,
                            right: width * 0.04),
                        child: Text(
                          "1 W",
                          style: GoogleFonts.roboto(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.016,
                              fontWeight: FontWeight.w600,
                              color: _index == 1
                                  ? Color(0xff00B499)
                                  : Color(0xff44475B)),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.04, top: height * 0.014),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Vibration.vibrate(duration: 50);
                        _index = 2;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          // border: Border.all(color: Color(0xff00B499), width: 0.4),
                          color: _index == 2 ? Color(0xffE5FAF5) : Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.006,
                            bottom: height * 0.006,
                            left: width * 0.04,
                            right: width * 0.04),
                        child: Text(
                          "1 M",
                          style: GoogleFonts.roboto(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.016,
                              fontWeight: FontWeight.w600,
                              color: _index == 2
                                  ? Color(0xff00B499)
                                  : Color(0xff44475B)),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.04, top: height * 0.014),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Vibration.vibrate(duration: 50);
                        _index = 3;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          // border: Border.all(color: Color(0xff00B499), width: 0.4),
                          color: _index == 3 ? Color(0xffE5FAF5) : Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.006,
                            bottom: height * 0.006,
                            left: width * 0.04,
                            right: width * 0.04),
                        child: Text(
                          "1 Y",
                          style: GoogleFonts.roboto(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.016,
                              fontWeight: FontWeight.w600,
                              color: _index == 3
                                  ? Color(0xff00B499)
                                  : Color(0xff44475B)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.04, top: height * 0.04),
              child: Text(
                "Overview",
                style: GoogleFonts.roboto(
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff44475B)),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.04, top: height * 0.04),
                  child: Text(
                    "Todays High : ",
                    style: GoogleFonts.roboto(
                        fontSize: MediaQuery.of(context).size.height * 0.017,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff44475B)),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.01, top: height * 0.04),
                  child: Text(
                    "₹ 360",
                    style: GoogleFonts.roboto(
                        fontSize: MediaQuery.of(context).size.height * 0.017,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff44475B)),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.04, top: height * 0.02),
                  child: Text(
                    "Todays Low : ",
                    style: GoogleFonts.roboto(
                        fontSize: MediaQuery.of(context).size.height * 0.017,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff44475B)),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.01, top: height * 0.02),
                  child: Text(
                    "₹ 350",
                    style: GoogleFonts.roboto(
                        fontSize: MediaQuery.of(context).size.height * 0.017,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff44475B)),
                  ),
                ),
              ],
            ),
            // Padding(
            //   padding: EdgeInsets.only(left: width * 0.04, top: height * 0.04),
            //   child: Text(
            //     "Best time to buy",
            //     style: GoogleFonts.roboto(
            //         fontSize: MediaQuery.of(context).size.height * 0.02,
            //         fontWeight: FontWeight.w600,
            //         color: Color(0xff44475B)),
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.only(left: width * 0.04, top: height * 0.04),
            //   child: Text(
            //     "Buy tommorow between 9 am to 11 am at an expected price of ₹351",
            //     style: GoogleFonts.roboto(
            //         fontSize: MediaQuery.of(context).size.height * 0.017,
            //         fontWeight: FontWeight.w600,
            //         color: Color(0xff44475B)),
            //   ),
            // ),
          ],
        ),
      )),
    );
  }
}
