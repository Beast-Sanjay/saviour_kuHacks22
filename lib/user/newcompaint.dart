// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker_modern/image_picker_modern.dart';
import 'dart:io';
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
  File? _image;
  String? _uploadedFileURL;
  bool isLoading = false;
  Future chooseFile() async {
    await ImagePicker.pickImage(source: ImageSource.gallery).then((image) {
      setState(() {
        _image = image;
      });
    });
  }

  Future uploadFile() async {
    setState(() {
      isLoading = true;
    });
    Reference storageReference = FirebaseStorage.instance
        .ref()
        .child('images/${Path.basename(_image!.path)}}');
    UploadTask uploadTask = storageReference.putFile(_image!);
    await uploadTask.whenComplete(() => print('File Uploaded'));

    storageReference.getDownloadURL().then((fileURL) {
      setState(() {
        _uploadedFileURL = fileURL;
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                    Column(
                      children: <Widget>[
                        Text('Selected Image'),
                        _image != null
                            ? Image.file(
                                _image!,
                                // height: 150,
                                height: 150,
                                width: 150,
                              )
                            : Container(
                                child: Center(
                                  child: Text(
                                    "No Image is Selected",
                                  ),
                                ),
                                height: 150,
                              ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text('Uploaded Image'),
                        _uploadedFileURL != null
                            ? Image.network(
                                _uploadedFileURL!,
                                height: 150,
                                width: 150,
                              )
                            : Container(
                                child: Center(
                                  child: Text(
                                    "No Image is Selected",
                                  ),
                                ),
                                height: 150,
                              ),
                      ],
                    ),
                    _image != null
                        ? isLoading
                            ? CircularProgressIndicator()
                            : RaisedButton(
                                child: Text('Upload Image'),
                                onPressed: uploadFile,
                                color: Colors.red,
                              )
                        : Container()
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
