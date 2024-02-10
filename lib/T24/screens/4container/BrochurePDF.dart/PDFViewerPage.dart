import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class PDFViewerPage extends StatefulWidget {
  final File file;
  static const String routeName = '/brochure';

  const PDFViewerPage({Key? key, required this.file}) : super(key: key);

  @override
  _PDFViewerPageState createState() => _PDFViewerPageState();

  static Future<File> loadAsset(String path) async {
    final data = await rootBundle.load(path);
    final bytes = data.buffer.asUint8List();

    return _store(path, bytes);
  }

  static Future<File> _store(String url, List<int> bytes) async {
    final filename = basename(url);
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$filename');

    await file.writeAsBytes(bytes, flush: true);
    return file;
  }
}

class _PDFViewerPageState extends State<PDFViewerPage> {
  late PDFViewController controller;
  int pages = 0;
  int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    final text = '${indexPage + 1} of $pages';

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: const Text("Brochure",
            style: TextStyle(
                fontFamily: 'heading',
                fontSize: 22,
                fontWeight: FontWeight.normal,
                color: Colors.white)),
        actions: pages >= 2
            ? [
                Center(
                    child: Text(
                  text,
                  style: const TextStyle(color: Colors.white),
                )),
                IconButton(
                  icon: const Icon(Icons.chevron_left, size: 32),
                  onPressed: () {
                    final page = indexPage == 0 ? pages : indexPage - 1;
                    controller.setPage(page);
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.chevron_right, size: 32),
                  onPressed: () {
                    final page = indexPage == pages - 1 ? 0 : indexPage + 1;
                    controller.setPage(page);
                  },
                ),
              ]
            : null,
      ),
      backgroundColor: const Color(0xFF121212),
      body: PDFView(
        filePath: widget.file.path,
        autoSpacing: true,
        swipeHorizontal: true,
        //pageSnap: false,
        pageFling: false,
        onRender: (pages) => setState(() => this.pages = pages!),
        onViewCreated: (controller) =>
            setState(() => this.controller = controller),
        onPageChanged: (indexPage, _) =>
            setState(() => this.indexPage = indexPage!),
      ),
    );
  }
}
