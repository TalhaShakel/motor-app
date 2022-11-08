import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constaint.dart';
import 'package:get/get.dart';
import 'package:open_file/open_file.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

var result;

class _HomeScreenState extends State<HomeScreen> {
  getPdfAndUpload() async {
    result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: [
        // 'jpg',
        'csv',
        'pdf',
        'doc',
        'xlsx',
        'xls',
      ],
    );

    if (result != null) {
      setState(() {
        file1 = result; //file1 is a global variable which i created
      });
      print(result.files.first.name);
      print(result.files.first.size);
      print(result.files.first.path);
    }
  }

  var file1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kprimecolor,
        body: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Upload Your Documents"),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      getPdfAndUpload();
                    },
                    child: Text("Upload File")),
              ),
              ElevatedButton(
                  onPressed: () {
                    if (result != null) {
                      final file = result.files.first;
                      _openFile(file);
                    } else {
                      Get.snackbar("Please select file", "");
                    }
                  },
                  child: Text("view file"))
            ],
          ),
        ));
  }

  void _openFile(PlatformFile file) {
    OpenFile.open(file.path);
  }
}
