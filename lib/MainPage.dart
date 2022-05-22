import 'package:flutter/material.dart';
import 'Order.dart';
import 'CustomAlert.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toko Electronic City'),
        backgroundColor: Color.fromARGB(255, 1, 162, 255),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 105, 245, 243),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 1, 162, 255),
              ),
              child: Text("Menu Dashboard"),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Order Product"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return Order();
                  }),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.messenger),
              title: Text("Kotak Saran"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return snack();
                  }),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.person_outline_sharp),
              title: Text("About Me"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return Introduce();
                  }),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Log Out"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return keluar();
                  }),
                );
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Column(
              children: [
                Container(
                  margin: EdgeInsets.all(35),
                  child: Text(
                    "Out Product",
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 25),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      kipas(),
                      setrika(),
                      lampu(),
                    ],
                  ),
                ),
               ]
              ),
            ]
          ),
        ]
      ),
    );
  }
}

       

class kipas extends StatefulWidget {
  const kipas({Key? key}) : super(key: key);

  @override
  State<kipas> createState() => _kipasState();
}

class _kipasState extends State<kipas> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return detail();
        }));
      }),
      child: Container(
        width: 285,
        height: 265,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 36, 159, 211),
        ),
        child: Column(
          children: [
            Container(
              width: 250,
              height: 215,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/kipas.png",
                  ),
                ),
              ),
            ),
            Text(
              "Kipas Angin",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              'Rp 150.000',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class setrika extends StatefulWidget {
  const setrika({Key? key}) : super(key: key);

  @override
  State<setrika> createState() => _setrikaState();
}

class _setrikaState extends State<setrika> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return detail0();
        }));
      }),
      child: Container(
        width: 285,
        height: 265,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 36, 159, 211),
        ),
        child: Column(
          children: [
            Container(
              width: 250,
              height: 215,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/setrika.png",
                  ),
                ),
              ),
            ),
            Text(
              "Setrika",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              'Rp 170.000',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class lampu extends StatefulWidget {
  const lampu({Key? key}) : super(key: key);

  @override
  State<lampu> createState() => _lampuState();
}

class _lampuState extends State<lampu> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return detail1();
        }));
      }),
      child: Container(
        width: 285,
        height: 265,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 36, 159, 211),
        ),
        child: Column(
          children: [
            Container(
              width: 250,
              height: 215,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/lampu.png",
                  ),
                ),
              ),
            ),
            Text(
              "Lampu LED",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              'Rp 110.000',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class detail extends StatefulWidget {
  const detail({Key? key}) : super(key: key);

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Product"),
        backgroundColor: Color.fromARGB(255, 1, 162, 255),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 105, 245, 243),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Text(
              "Kipas Angin",
              style: TextStyle(
                fontSize: 28,
              ),
            ),
          ),
          Container(
            width: 250,
            height: 215,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(
                  "assets/kipas.png",
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              "Kipas Angin adalah kipas angin duduk yang murah dan berkualitas, kipas ini sangat cocok ditempatkan di kamar, ruang makan, maupun ruang tamu. Kipas memiliki garansi servis 1 tahun dihitung dari tanggal pembelian",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 12, 90, 163), shadowColor: Colors.white),
                  onPressed: (() {
                    Navigator.pop(context);
                    }
                  ),
                  child: Text("Kembali"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class detail0 extends StatefulWidget {
  const detail0({Key? key}) : super(key: key);

  @override
  State<detail0> createState() => _detail0State();
}

class _detail0State extends State<detail0> {
  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Product"),
        backgroundColor: Color.fromARGB(255, 1, 162, 255),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 105, 245, 243),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Text(
              "Setrika",
              style: TextStyle(
                fontSize: 28,
              ),
            ),
          ),
          Container(
            width: 250,
            height: 215,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(
                  "assets/setrika.png",
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              "Setrika ini adalah setrika idaman, yang dapat melicinkan pakaian dengan sekali usap. Setrika dari memiliki bahan yang sangat berkualitas sehingga pemakaian akan lebih lama. Setrika ini memiliki garansi servis selama 1 tahun dihitung dari tanggal pembelian.",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 12, 90, 163), shadowColor: Colors.white),
                  onPressed: (() {
                    Navigator.pop(context);
                    }
                  ),
                  child: Text("Kembali"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class detail1 extends StatefulWidget {
  const detail1({Key? key}) : super(key: key);

  @override
  State<detail1> createState() => _detail1State();
}

class _detail1State extends State<detail1> {
  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Product"),
        backgroundColor: Color.fromARGB(255, 1, 162, 255),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 105, 245, 243),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Text(
              "Lampu LED",
              style: TextStyle(
                fontSize: 28,
              ),
            ),
          ),
          Container(
            width: 250,
            height: 215,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(
                  "assets/lampu.png",
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              "Lampu LED merupakan inovasi baru yang hemat daya dan lebih terang dibanding lampu biasa, lampu ini sangat cocok digunakan untuk di rumah karna cahayanya ramah dan hemat listrik.",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 12, 90, 163), shadowColor: Colors.white),
                  onPressed: (() {
                    Navigator.pop(context);
                    }
                  ),
                  child: Text("Kembali"),
                ),
              ],
            ),
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
          color: Color.fromARGB(255, 6, 79, 93),
        ),
      ),
      child: Text(
        size,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: isActive ? Colors.white : Color.fromARGB(255, 6, 79, 93),
        ),
      ),
    );
  }
}

class snack extends StatelessWidget {
  const snack({Key? key}) : super(key: key);


@override
  Widget build(BuildContext context) {
    TextEditingController _myController = TextEditingController();

    SnackBar mySnackBar(String text) {
      return SnackBar(
        content: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        duration: Duration(seconds: 5),
        padding: EdgeInsets.all(15),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Kotak Saran"),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 105, 245, 243),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
          Text(
                "Masukkan Kritik dan Saran: ",
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                textAlign: TextAlign.center,
              ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              controller: _myController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            child: const Text("Kirim Kritik & Saran..."),
            onPressed: () {
              CustomAlert(context, _myController.text);
            },
          ),
        ],
      ),
    );
  }
}

class Introduce extends StatelessWidget {
  const Introduce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    image: AssetImage("assets/foto.png"),
                  ),
                ),
              ),
              Text(
                "Yanuar Satria Gotama\n",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              Text(
                "Hanya Mahasiswa Biasa :)",
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
             ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class keluar extends StatelessWidget {
  const keluar ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 105, 245, 243),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Container(
                      width: 210,
                      height: 250,
                      margin: EdgeInsets.only(top: 61),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/thank.png"),
                            ),
                          ),
                        ),
              Text(
                "Thank You for Using This App !",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              SizedBox(
                height: 10,
              ),
             ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: const Text('Go Back!'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}