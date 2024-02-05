import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWid extends StatefulWidget {
  const ImagePickerWid({super.key});

  @override
  State<ImagePickerWid> createState() => _ImagePickerWidState();
}

class _ImagePickerWidState extends State<ImagePickerWid> {
  ImagePicker _picker = ImagePicker();
  XFile? file;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: file == null ? Placeholder() : Image.file(File(file!.path)),
            ),
            SizedBox(height: 50),
            ElevatedButton(onPressed: selectImage, child: Text("Select Image")),
            SizedBox(height: 20),
            ElevatedButton(onPressed: selectMultipleImages, child: Text("Select Images"))
          ],
        ),
      ),
    );
  }

  selectImage() async {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Select Image"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                    onTap: () async {
                      final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
                      setState(() {
                        file = photo;
                      });
                      print("File Uploaded: " + file!.path);
                    },
                    child: ListTile(leading: Icon(Icons.camera), title: Text("Camera"))),
                InkWell(
                    onTap: () async {
                      final XFile? photo = await _picker.pickImage(source: ImageSource.gallery);
                      setState(() {
                        file = photo;
                      });
                      print("File Uploaded: " + file!.path);
                    },
                    child: ListTile(leading: Icon(Icons.photo), title: Text("Gallery"))),
              ],
            ),
          );
        });
  }

  selectMultipleImages()async{
    final List <XFile>? photo = await _picker.pickMultiImage();
    photo!.map((e){
      print(e.path);
    });
  }
}
