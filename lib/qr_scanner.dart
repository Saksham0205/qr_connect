import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class QrScanner extends StatefulWidget {
  const QrScanner({super.key});

  @override
  State<QrScanner> createState() => _QrScannerState();
}

class _QrScannerState extends State<QrScanner> {
  String qrResult  ="Scanned Data will appear here";
  Future<void> scanQR()async{
    try{
      final qrCode = await FlutterBarcodeScanner.scanBarcode("#ff6666", "Cancel", false, ScanMode.QR);
      if(!mounted){
        setState(() {
          this.qrResult =qrCode.toString();
        });
      }

    } on PlatformException{
      qrResult = "Fail to read QR Code";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Code Scanner",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$qrResult",style: TextStyle(color: Colors.black,fontSize: 25),),
            SizedBox(height: 15,),
            ElevatedButton(onPressed: scanQR, child: Text("Scan Code"))

          ],
        ),
      ),
    );
  }
}
