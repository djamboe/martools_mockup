import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'appBars.dart';
import 'bottomFormButton.dart';


class DetailTaskProspekPerdana extends StatefulWidget {
  DetailTaskProspekPerdana({Key key}) : super(key: key);

  _DetailTaskProspekPerdanaState createState() => _DetailTaskProspekPerdanaState();
}

class _DetailTaskProspekPerdanaState extends State<DetailTaskProspekPerdana> {
  var data;
  bool autoValidate = true;
  bool readOnly = false;
  bool showSegmentedControl = true;
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  final GlobalKey<FormFieldState> _specifyTextFieldKey =
  GlobalKey<FormFieldState>();
  final bottomNavigationBarIndex = 1;

  ValueChanged _onChanged = (val) => print(val);

  @override
  void initState() {
    super.initState();
    final _selectedDay = DateTime.now();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: emptyAppbar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              FormBuilder(
                // context,
                key: _fbKey,
                autovalidate: true,
                initialValue: {
                  'movie_rating': 5,
                },
                // readOnly: true,
                child: Column(
                  children: <Widget>[
                    FormBuilderTextField(
                      attribute: "title",
                      decoration: InputDecoration(
                        labelText: "Title",
                        /*border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),*/
                      ),
                      onChanged: _onChanged,
                      valueTransformer: (text) => num.tryParse(text),
                      validators: [
                        
                        FormBuilderValidators.max(70),
                      ],
                      initialValue: "Visit Perdana Perkenalan Produk",
                    ),
                    FormBuilderTextField(
                      attribute: "pic",
                      decoration: InputDecoration(
                        labelText: "PIC",
                        /*border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),*/
                      ),
                      onChanged: _onChanged,
                      valueTransformer: (text) => num.tryParse(text),
                      validators: [
                        
                        FormBuilderValidators.max(70),
                      ],
                      initialValue: "Bambang Sudjamitko",
                    ),
                    FormBuilderTextField(
                      attribute: "note",
                      decoration: InputDecoration(
                        labelText: "Notes",
                        /*border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),*/
                      ),
                      onChanged: _onChanged,
                      valueTransformer: (text) => num.tryParse(text),
                      validators: [
                        
                        FormBuilderValidators.max(70),
                      ],
                      initialValue: "Meeting memperkenalkan produk asuransi, dan mengumpulkan data2 customer",
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Column(
                          children: <Widget>[
                            Text('Upload Image'),
                            GestureDetector(
                                child: Container(
                                    width:75,
                                    height: 75,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      image: DecorationImage(
                                          image:AssetImage("assets/images/photoicon.png"),
                                          fit:BoxFit.cover
                                      ),
                                    )
                                ),onTap:(){
                              print("you clicked my");
                            }
                            ),
                            Container(
                              height: 150,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 5),
                                    child: Image.asset(
                                      "assets/images/meeting1.jpg",
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 5),
                                    child: Image.asset(
                                      "assets/images/meeting2.jpg",
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 5),
                                    child: Image.asset(
                                      "assets/images/meeting3.jpg",
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 5),
                                    child: Image.asset(
                                      "assets/images/meeting4.jpg",
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 5),
                                    child: Image.asset(
                                      "assets/images/meeting5.jpg",
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                    ),
                    FormBuilderDropdown(
                      attribute: "status",
                      decoration: InputDecoration(
                        labelText: "Status",
                        /*border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),*/
                      ),
                      // readOnly: true,
                      initialValue: 'MEETING',
                      hint: Text('Select Status'),
                      validators: [FormBuilderValidators.required()],
                      items: ['MEETING','DONE']
                          .map((gender) => DropdownMenuItem(
                        value: gender,
                        child: Text('$gender'),
                      ))
                          .toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:
      BottomFormButton(),
    );
  }

}
