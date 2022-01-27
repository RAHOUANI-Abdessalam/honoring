import 'dart:io';
import 'package:flutter/material.dart';
import 'package:honoringapp/shipping_info.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class DeceasedInfo extends StatefulWidget {
  const DeceasedInfo({Key? key}) : super(key: key);

  @override
  _DeceasedInfoState createState() => _DeceasedInfoState();
}

class _DeceasedInfoState extends State<DeceasedInfo> {
  final ImagePicker _picker = ImagePicker();
  List<XFile> _imageList = [];

  DateTime date = DateTime.now();
  DateTime date1 = DateTime.now();
  datePicker(int index) {
    showDatePicker(
            context: context,
            initialDate: date,
            firstDate: DateTime(1900),
            lastDate: DateTime(2100))
        .then((value) {
      if (value == null) {
        return;
      }
      if (index == 1) {
        setState(() {
          date = value;
        });
      } else {
        setState(() {
          date1 = value;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deceased Informations"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 85),
              child: ListView(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey, width: 2),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.purple, width: 2)),
                        labelText: "First Name",
                        labelStyle:
                            TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey, width: 2),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Colors.purple, width: 2)),
                      labelText: "Family Name",
                      labelStyle: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: TextFormField(
                          readOnly: true,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: Colors.purple, width: 2)),
                              labelText: "Date Of Birth",
                              labelStyle:
                                  TextStyle(color: Colors.white, fontSize: 15),
                              prefixText:
                                  (DateFormat.yMMMMd().format(date).toString()),
                              prefixStyle: TextStyle(color: Colors.grey),
                              suffixIcon: Padding(
                                padding:
                                    const EdgeInsetsDirectional.only(end: 12.0),
                                child: Icon(
                                  Icons.date_range,
                                  color: Colors.grey,
                                ), // myIcon is a 48px-wide widget.
                              )),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.only(left: 10),
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              datePicker(1);
                            },
                            child: Text("Add"),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              elevation: 10,
                              shadowColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: TextFormField(
                          readOnly: true,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: Colors.purple, width: 2)),
                              labelText: "Date Of Death",
                              labelStyle:
                                  TextStyle(color: Colors.white, fontSize: 15),
                              prefixText: (DateFormat.yMMMMd()
                                  .format(date1)
                                  .toString()),
                              prefixStyle: TextStyle(color: Colors.grey),
                              suffixIcon: Padding(
                                padding:
                                    const EdgeInsetsDirectional.only(end: 12.0),
                                child: Icon(
                                  Icons.date_range,
                                  color: Colors.grey,
                                ), // myIcon is a 48px-wide widget.
                              )),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.only(left: 10),
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              datePicker(2);
                            },
                            child: Text("Add"),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              elevation: 10,
                              shadowColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey, width: 2),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Colors.purple, width: 2)),
                      labelText: "Job",
                      labelStyle: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    maxLines: 3,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey, width: 2),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Colors.purple, width: 2)),
                      labelText: "Contributions",
                      labelStyle: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    maxLines: 5,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey, width: 2),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Colors.purple, width: 2)),
                      labelText: "Story",
                      labelStyle: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 40,
                          margin: EdgeInsets.only(bottom: 20),
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              imageSelect();
                            },
                            child: Text("Add Pictures"),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              elevation: 10,
                              shadowColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Expanded(child: Container())
                    ],
                  ),
                  GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3),
                      itemCount: _imageList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Image.file(
                                File(_imageList[index].path),
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                right: -4,
                                top: -4,
                                child: Container(
                                  color: Color.fromRGBO(255, 255, 244, 0.5),
                                  child: IconButton(
                                    onPressed: () {
                                      _imageList.removeAt(index);
                                      setState(() {});
                                    },
                                    icon: Icon(Icons.delete),
                                    color: Colors.red[500],
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      })
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 55,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> ShippingInfo()));
                  },
                  child: Text(
                    "Save And Next",
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 10,
                    shadowColor: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void imageSelect() async {
    final XFile? selectedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (selectedImage!.path.isNotEmpty) {
      _imageList.add(selectedImage);
    }
    setState(() {});
  }
}
