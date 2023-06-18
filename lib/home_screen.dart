import 'package:flutter/material.dart';
import 'package:uas/utils/bmi_service.dart';
import 'package:uas/utils/constant.dart';
import 'package:uas/widgets/drawer_widget.dart';
import 'package:uas/widgets/result_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int weight = 55;
  int height = 110;
  double minHeight = 0;
  double maxHeight = 220;

  String bmiPoint = '';
  String result = '';
  String recommend = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Kalkulator BMI'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width / 1.1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Column(
                    children: [
                      const Text(
                        'TINGGI BADAN',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: const TextStyle(
                                fontSize: 50, fontWeight: FontWeight.bold),
                          ),
                          const Text(' cm')
                        ],
                      ),
                      Slider(
                        value: height.toDouble(),
                        min: minHeight,
                        max: maxHeight,
                        onChanged: (value) {
                          setState(() {
                            height = value.round();
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 55,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Column(
                    children: [
                      const Text(
                        'BERAT BADAN',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            weight.toString(),
                            style: const TextStyle(
                                fontSize: 50, fontWeight: FontWeight.bold),
                          ),
                          const Text(' kg')
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                            icon: Image.asset('${assetIcons}minus1.png'),
                            color: Colors.deepPurple,
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            icon: Image.asset('${assetIcons}plus1.png'),
                            color: Colors.deepPurple,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 55,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(
                  MediaQuery.of(context).size.width / 1.3,
                  MediaQuery.of(context).size.height / 20,
                ),
                foregroundColor: Colors.white,
                backgroundColor: Colors.deepPurple,
                shadowColor: Colors.black,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
              ),
              onPressed: () {
                setState(() {
                  BMICalculatorServices bmi = BMICalculatorServices(
                    height: height,
                    weight: weight,
                  );
                  bmiPoint = bmi.calculateBMI();
                  result = bmi.getResult();
                  recommend = bmi.getRecomendation();
                });
              },
              child: const Text('Hitung'),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 55,
            ),
            ResultWidget(
              bmiResult: bmiPoint,
              resultText: result,
              recommendation: recommend,
            ),
          ],
        ),
      ),
    );
  }
}
