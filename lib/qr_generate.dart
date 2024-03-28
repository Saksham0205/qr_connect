import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrGenerate extends StatefulWidget {
  const QrGenerate({super.key});

  @override
  State<QrGenerate> createState() => _QrGenerateState();
}

class _QrGenerateState extends State<QrGenerate> {
  TextEditingController urlController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Generate QR",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SingleChildScrollView(
        child: Column(
        children: [
          if(urlController.text.isNotEmpty)
            QrImageView(data: urlController.text,size: 200,),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: TextField(
              controller: urlController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                hintText: "Enter your Data",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              ),

            ),
          ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){setState(() {

          });}, child: Text("Generate QR Code"))

        ],
      ),
      ),
      ),
    );
  }
}
