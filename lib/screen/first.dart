import 'package:calculator/screen/result.dart';
import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  String? result;

  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();

  int height = 160;
  int counter = 12;
  int couner = 40;

  void ayruu() {
    setState(() {
      if (couner == 40) {
        return;
      } else {
        couner--;
      }
    });
  }

  void koshuu() {
    setState(() {
      if (couner == 150) {
        return;
      } else {
        couner++;
      }
    });
  }

  void katta() {
    setState(() {
      if (counter == 99) {
        return;
      } else {
        counter++;
      }
    });
  }

  void kichik() {
    setState(() {
      if (counter == 12) {
        return;
      } else {
        counter--;
      }
    });
  }

  Color colors = Color.fromARGB(255, 4, 0, 24);
  Color colrs = Color.fromARGB(255, 37, 34, 56);
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors,
      appBar: AppBar(
        backgroundColor: colors,
        elevation: 0,
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  radioButton("Male", Colors.blue, 0),
                  radioButton("Female", Colors.pink, 1),
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                decoration: BoxDecoration(
                  color: colrs,
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Height",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          height.toString(),
                          style: TextStyle(
                            fontSize: 70,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "cm",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                        trackHeight: 3.0,
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color.fromARGB(122, 0, 0, 0),
                        thumbColor: Colors.pink,
                      ),
                      child: Slider(
                        min: 120,
                        max: 220,
                        value: height.toDouble(),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: colrs,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 200,
                    width: 180,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Weight",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "$couner",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[700],
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: IconButton(
                                onPressed: () {
                                  ayruu();
                                },
                                icon: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[700],
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: IconButton(
                                onPressed: () {
                                  koshuu();
                                },
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: colrs,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 200,
                    width: 180,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Age",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "$counter",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[700],
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: IconButton(
                                onPressed: () {
                                  kichik();
                                },
                                icon: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[700],
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: IconButton(
                                onPressed: () {
                                  katta();
                                },
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10)
                          bottomRight: Radius.circular(10)),
                    ),
                  ),
                  onPressed: () {
                    double height = double.parse(heightController.value.text);
                    double weight = double.parse(weightController.value.text);
                    
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            rusultat(results: calculateBmi(height, weight),),
                      ),
                    );
                  },
                  child: Text(
                    "CALCULATE",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  calculateBmi(double height, double weight) {
    double finalresult = weight / (height * height / 10000);

    String bmi = finalresult.toStringAsFixed(2);
    setState(
      () {
        result = bmi;
      },
    );
  }

  void changeIndex(int index) {
    setState(
      () {
        currentindex = index;
      },
    );
  }

  Widget radioButton(
    String value,
    Color color,
    int index,
  ) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12.0),
        height: 180.0,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: currentindex == index ? color : colrs,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          onPressed: () {
            changeIndex(index);
          },
          child: Column(
            children: [
              SizedBox(height: 5),
              Icon(
                Icons.male,
                color: Colors.white,
                size: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                value,
                style: TextStyle(
                  color: currentindex == index ? Colors.white : Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
