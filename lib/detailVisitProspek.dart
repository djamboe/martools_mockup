import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:todo_app/fab.dart';
import 'package:intl/intl.dart';
import 'appBars.dart';
import 'bottomFormButton.dart';
import 'data.dart';
import 'util.dart';

class DetailVisitProspek extends StatefulWidget {
  DetailVisitProspek({Key key}) : super(key: key);

  _DetailVisitProspekState createState() => _DetailVisitProspekState();
}

class _DetailVisitProspekState extends State<DetailVisitProspek> {
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
                        FormBuilderValidators.numeric(),
                        FormBuilderValidators.max(70),
                      ],
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
                        FormBuilderValidators.numeric(),
                        FormBuilderValidators.max(70),
                      ],
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
                        FormBuilderValidators.numeric(),
                        FormBuilderValidators.max(70),
                      ],
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Column(
                          children: <Widget>[
                            Text('Upload Image'),
                            GestureDetector(
                                child: Container(
                                    width:150,
                                    height: 150,
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
