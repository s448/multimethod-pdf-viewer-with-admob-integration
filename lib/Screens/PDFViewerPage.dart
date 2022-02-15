import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
class PDFViewerPage extends StatefulWidget {
  final File file;
  const PDFViewerPage({Key? key, required this.file}) : super(key: key);
  @override
  _PDFViewerPageState createState() => _PDFViewerPageState();
}
class _PDFViewerPageState extends State<PDFViewerPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('PDF Details'),
          backgroundColor: Colors.pink.shade300,
          actions: [
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_forward),
            ),
          ],
        ),
        body: PDFView(
          filePath: widget.file.path,
        ),
      ),
    );
  }
}
