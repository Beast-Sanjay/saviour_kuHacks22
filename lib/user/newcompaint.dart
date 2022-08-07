// ignore_for_file: camel_case_types, non_constant_identifier_names, depend_on_referenced_packages
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart' as Path;

class newCompliant extends StatefulWidget {
  const newCompliant({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _newComplaintState();
}

class _newComplaintState extends State<newCompliant> {
  final _IndustryName = TextEditingController();
  final _Location = TextEditingController();
  final _Description = TextEditingController();
  UploadTask? task;
  File? file;

  Future SelectFile() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);
    if (result == null) return;
    final path = result.files.single.path!;

    setState(() => file = File(path));
  }

  Future UploadFile() async {
    if (file == null) return;

    final filename = Path.basename(file!.path);
    final destination = 'files/$filename';

    FirebaseApi.uploadFile(destination, file!);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final filename =
        file != null ? Path.basename(file!.path) : 'no file seleted';
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Raise Complaint'),
          backgroundColor: Colors.black,
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                //    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
                child: Column(
                  children: [
                    SizedBox(height: size.height * 0.04),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      child: TextField(
                        controller: _IndustryName,
                        decoration: InputDecoration(
                            labelText: "Industry Name", hintText: 'abd.Ltd'),
                      ),
                    ),
                    SizedBox(height: size.height * 0.04),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      child: TextField(
                        controller: _Location,
                        decoration: InputDecoration(
                            labelText: "Location", hintText: 'Enter location'),
                      ),
                    ),
                    SizedBox(height: size.height * 0.04),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 6,
                        controller: _Description,
                        decoration: InputDecoration(
                          hintText: 'Add report description ',
                          labelText: "Description",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 48,
                    ),
                    ElevatedButton.icon(
                      onPressed: SelectFile,
                      icon: Icon(Icons.attach_file),
                      label: Text('Select File'),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      filename,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 48,
                    ),
                    ElevatedButton.icon(
                      onPressed: UploadFile,
                      icon: Icon(Icons.cloud_upload_rounded),
                      label: Text('Report'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FirebaseApi {
  static UploadTask? uploadFile(String destination, File file) {
    try {
      final ref = FirebaseStorage.instance.ref(destination);

      return ref.putFile(file);
    } on FirebaseException catch (e) {
      return null;
    }
  }
}
