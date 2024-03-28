import 'package:flutter/material.dart';
import 'package:qr_connect/qr_generate.dart';
import 'package:qr_connect/qr_scanner.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR code scanner and generator",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> QrScanner()));
            }, child: Text("Scan QR",style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> QrGenerate()));
            }, child: Text("Generate QR",style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),),
          ],
        ),
      ),
    );
  }
}
