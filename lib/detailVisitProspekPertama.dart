import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:todo_app/fab.dart';
import 'package:intl/intl.dart';
import 'appBars.dart';
import 'bottomFormButton.dart';
import 'data.dart';
import 'util.dart';

class DetailVisitProspekPertama extends StatefulWidget {
  DetailVisitProspekPertama({Key key}) : super(key: key);

  _DetailVisitProspekPertamaState createState() => _DetailVisitProspekPertamaState();
}

class _DetailVisitProspekPertamaState extends State<DetailVisitProspekPertama> {
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
                      attribute: "customer_name",
                      decoration: InputDecoration(
                        labelText: "Customer Name",
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
                      attribute: "customer_address",
                      decoration: InputDecoration(
                        labelText: "Customer Address",
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
                    FormBuilderChipsInput(
                      decoration: InputDecoration(labelText: "Product"),
                      attribute: 'product',
                      // readonly: true,
                      onChanged: _onChanged,
                      // valueTransformer: (val) => val.length > 0 ? val[0] : null,
                      initialValue: [
                        Contact('Asuransi', 'stock@man.com',
                            'https://www.policybazaar.com/images/Health/what-is-health-insurance.png'),
                      ],
                      maxChips: 5,
                      findSuggestions: (String query) {
                        if (query.length != 0) {
                          var lowercaseQuery = query.toLowerCase();
                          return contacts.where((profile) {
                            return profile.name
                                .toLowerCase()
                                .contains(query.toLowerCase()) ||
                                profile.email
                                    .toLowerCase()
                                    .contains(query.toLowerCase());
                          }).toList(growable: false)
                            ..sort((a, b) => a.name
                                .toLowerCase()
                                .indexOf(lowercaseQuery)
                                .compareTo(b.name
                                .toLowerCase()
                                .indexOf(lowercaseQuery)));
                        } else {
                          return const <Contact>[];
                        }
                      },
                      chipBuilder: (context, state, profile) {
                        return InputChip(
                          key: ObjectKey(profile),
                          label: Text(profile.name),
                          avatar: CircleAvatar(
                            backgroundImage: NetworkImage(profile.imageUrl),
                          ),
                          onDeleted: () => state.deleteChip(profile),
                          materialTapTargetSize:
                          MaterialTapTargetSize.shrinkWrap,
                        );
                      },
                      suggestionBuilder: (context, state, profile) {
                        return ListTile(
                          key: ObjectKey(profile),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(profile.imageUrl),
                          ),
                          title: Text(profile.name),
                          subtitle: Text(profile.email),
                          onTap: () => state.selectSuggestion(profile),
                        );
                      },
                    ),
                    FormBuilderDateRangePicker(
                      attribute: "date_range",
                      firstDate: DateTime(1970),
                      lastDate: DateTime(2020),
                      format: DateFormat("yyyy-MM-dd"),
                      onChanged: _onChanged,
                      decoration: InputDecoration(labelText: "Date"),
                      // readonly: true,
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
                    FormBuilderDropdown(
                      attribute: "status",
                      decoration: InputDecoration(
                        labelText: "Status",
                        /*border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),*/
                      ),
                      // readOnly: true,
                      initialValue: 'PLAN',
                      hint: Text('Select Status'),
                      validators: [FormBuilderValidators.required()],
                      items: ['PLAN', 'PROSPEK']
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
