import 'package:flutter/material.dart';

class rusultat extends StatelessWidget {
  String results;
   rusultat({Key? key,required this.results}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 4, 0, 24),
      appBar: AppBar(
        title: Text("ДЕН СООЛУК ИНДЕКСИ(ВМI)"),
        backgroundColor: Colors.grey[900],
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Text(
                    "Жыйынтык",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 500,
              width: double.infinity,
              color: Color.fromARGB(255, 37, 34, 56),
              child: Column(
                children: [
                  Spacer(),
                  Text(
                    "НОРМАЛДУУ",
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "${results}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Сиздин дене салмагыныз нормалдуу. Азаматсыз!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 34,
            ),
            Container(
              height: 60,
              width: double.infinity,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Кайра эсепте",
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
    );
  }
}
