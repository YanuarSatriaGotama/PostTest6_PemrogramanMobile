import 'package:flutter/material.dart';
import 'Order.dart';
import 'MainPage.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Toko Electronic City'),
        backgroundColor: Color.fromARGB(255, 1, 162, 255),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 105, 245, 243),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 250,
                margin: EdgeInsets.only(top: 61),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/elec.png"),
                  ),
                ),
              ),
              Text(
                "Bright your Life\n",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              Text(
                "SELAMAT DATANG DI WEBSITE TOKO ELECTRONIC CITY",
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 210,
                    height: 250,
                    margin: EdgeInsets.only(top: 61),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/kipas.png"),
                          ),
                        ),
                      ),
                    Container(
                      width: 210,
                      height: 250,
                      margin: EdgeInsets.only(top: 61),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/setrika.png"),
                            ),
                          ),
                        ),
                    Container(
                      width: 210,
                      height: 250,
                      margin: EdgeInsets.only(top: 61),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/lampu.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizeContainer(isActive: true, size: "Kipas"),
                  SizeContainer(size: "Setrika"),
                  SizeContainer(size: "Lampu"),
                ],
              ),
              ButtonMainPage()
            ],
          ),
        ],
      ),
    );
  }
}

class SizeContainer extends StatelessWidget {
  const SizeContainer({Key? key, this.isActive = false, required this.size})
      : super(key: key);

  final bool isActive;
  final String size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isActive ? Color.fromARGB(255, 1, 162, 255) : Colors.transparent,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          width: 1,
          color: Color(0xFF023E4A),
        ),
      ),
      child: Text(
        size,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: isActive ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}

class  ButtonMainPage extends StatefulWidget {
  const ButtonMainPage({Key? key}) : super(key: key);

  @override
  State<ButtonMainPage> createState() => _ButtonMainPageState();
}

class _ButtonMainPageState extends State<ButtonMainPage> {
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
          return MainPage();
        }));
      }),
      child: Container(
        width: 150,
        height: 35,
        margin: EdgeInsets.only(top: 50, bottom: 20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 12, 90, 163),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          "Beli",
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}