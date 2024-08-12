import 'package:expance__manager/menu_class.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

Map<String, double> _pieData = {
  "Food": 650,
  "Fuel": 600,
  "Medicine": 500,
  "Entertainment": 475,
  "Shopping": 325
};
List<Map> _totalData = [
  {"title": "Food", "amt": 650, "img": "img/food.png"},
  {"title": "Fuel", "amt": 600, "img": "img/fuel.png"},
  {"title": "medicine", "amt": 500, "img": "img/medicine.png"},
  {"title": "Entertainment", "amt": 475, "img": "img/food.png"},
  {"title": "Shopping", "amt": 650, "img": "img/shopping.png"}
];

class GraphScreen extends StatefulWidget {
  const GraphScreen({super.key});

  @override
  State<GraphScreen> createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawerClass(),
      appBar: AppBar(
          title: Text(
        "Graphs",
        style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
      )),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            PieChart(
              dataMap: _pieData,
              chartType: ChartType.ring,
              chartRadius: 130,
              ringStrokeWidth: 30,
              animationDuration: const Duration(seconds: 3),
              chartValuesOptions: const ChartValuesOptions(
                showChartValues: false,
              ),
              centerWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Total",
                    style: GoogleFonts.poppins(
                        fontSize: 10, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "₹ 2550.0",
                    style: GoogleFonts.poppins(
                        fontSize: 13, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              colorList: const [
                Color.fromRGBO(214, 3, 3, 0.7),
                Color.fromRGBO(0, 148, 255, 0.7),
                Color.fromRGBO(0, 174, 91, 0.7),
                Color.fromRGBO(2100, 62, 255, 0.7),
                Color.fromRGBO(241, 38, 196, 0.7),
                Color.fromRGBO(214, 3, 3, 0.7),
                Color.fromRGBO(0, 148, 255, 0.7),
                Color.fromRGBO(0, 174, 91, 0.7),
                Color.fromRGBO(2100, 62, 255, 0.7),
                Color.fromRGBO(241, 38, 196, 0.7),
              ],
            ),
            const Divider(),
            SizedBox(
              width: double.infinity,
              height: 350,
              child: ListView.builder(
                  itemCount: _totalData.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              _totalData[index]["img"],
                              height: 40,
                              width: 40,
                            ),
                            Text(
                              "  ${_totalData[index]["title"]}",
                              style: GoogleFonts.poppins(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                            const Spacer(),
                            Text(
                              "₹ ${_totalData[index]["amt"]}  >",
                              style: GoogleFonts.poppins(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Total",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "₹ 2550.0",
                    style: GoogleFonts.poppins(
                        fontSize: 15, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
