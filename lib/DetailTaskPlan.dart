import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:todo_app/detailTaskProspekPerdana.dart';
import 'package:todo_app/fab.dart';
import 'package:intl/intl.dart';
import 'bottomFormButton.dart';
import 'data.dart';
import 'util.dart';

class DetailTaskPlan extends StatefulWidget {
  DetailTaskPlan({Key key}) : super(key: key);

  _DetailTaskPlanState createState() => _DetailTaskPlanState();
}

class _DetailTaskPlanState extends State<DetailTaskPlan> {
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: GradientAppBar(
          gradient:  LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [CustomColors.HeaderBlueDark, CustomColors.HeaderBlueLight],
          ),
          title: Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Visit Pertamina',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                Text(
                  'penawaran asuransi kendaraan',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          bottom: TabBar(tabs: <Widget>[
            Tab(
              text: 'Prospek Detail',
            ),
            Tab(
              text: 'Visit History',
            )
          ]),
        ),
        body: TabBarView(
          children: [
            Scaffold(
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
                                FormBuilderValidators.max(70),
                              ],
                              initialValue: "PT. Pertamina Persero",
                              readOnly: true,
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
                                FormBuilderValidators.max(70),
                              ],
                              initialValue: "Jalan Abdul Muis 101 Jakarta Pusat",
                              readOnly: true,
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
                              initialValue: "Bambang Sudjatmiko",
                              readOnly: true,
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
                              readOnly: true,
                            ),
                            FormBuilderDateRangePicker(
                              attribute: "date_range",
                              firstDate: DateTime(1970),
                              lastDate: DateTime(2020),
                              format: DateFormat("yyyy-MM-dd"),
                              onChanged: _onChanged,
                              decoration: InputDecoration(labelText: "Date"),
                              readOnly: true,
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
                              initialValue: "Prospek penawaran asuransi",
                              readOnly: true,
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
              bottomNavigationBar:
              BottomFormButton(),
            ),
            Scaffold(
              body: Container(
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    SizedBox(height: 15)
                  ],
                ),
              ),
              floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
              floatingActionButton: customFabDetailProspek(context),
            )
          ],
        ),
      ),
    );
  }

}
