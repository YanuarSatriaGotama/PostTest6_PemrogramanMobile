import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  int angka = 0;
  String nama = " ", barang = "", jumlah = "";
  TextEditingController controllerA = TextEditingController();
  TextEditingController controllerB = TextEditingController();
  TextEditingController controllerC = TextEditingController();
  bool? myCheck = false;

  @override
  Widget build(BuildContext context) {
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
                "Form Pembelian\n",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ]
          ),
            
          SizedBox(height:  30),
          TextFormField(
            controller: controllerA,
            decoration: InputDecoration(
              labelText: "Masukkan Nama Anda",
              icon: Icon(Icons.people),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height:  30),
          TextFormField(
            controller: controllerB,
            decoration: InputDecoration(
              labelText: "Masukkan Barang Belanjaan",
              icon: Icon(Icons.shopping_cart),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 30),
          TextFormField(
            controller: controllerC,
            decoration: InputDecoration(
              labelText: "Masukkan Jumlah Barang",
              icon: Icon(Icons.shopping_bag),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              setState(() {
                nama = controllerA.text;
                barang = controllerB.text;
                jumlah = controllerC.text;
              });
            }, 
          child: Text("Submit"),
          ),
          Text("Apakah yang Anda masukkan sudah benar?"),
          Checkbox(value: myCheck, onChanged: (value) {
            myCheck = value ;
            setState(() {});
          }),
          Text("\t\tNama Anda : $nama \n \t\tBarang Belanjaan :  $barang \n \t\tJumlah Barang : $jumlah \n Terima Kasih Pesanan Anada akan Kami Proses")
          ],
        ),
    );
  }
}
