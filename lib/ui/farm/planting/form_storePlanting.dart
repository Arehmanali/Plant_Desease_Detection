import 'package:agricure/app_theme.dart';
import 'package:agricure/data/farm/repositories/storeData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:getwidget/components/appbar/gf_appbar.dart';
import 'package:getwidget/components/button/gf_icon_button.dart';
import 'package:getwidget/types/gf_button_type.dart';
import 'package:intl/intl.dart';

class FormStorePlanting extends StatefulWidget {
  const FormStorePlanting({Key? key}) : super(key: key);

  @override
  _FormStorePlantingState createState() => _FormStorePlantingState();
}

class _FormStorePlantingState extends State<FormStorePlanting> {
  final _formKey = GlobalKey<FormBuilderState>();
  final DateTime now = DateTime.now();
  final DateFormat formatter = DateFormat('dd-MM-yyyy');

  date() {
    return formatter.format(now);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GFAppBar(
          leading: GFIconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            type: GFButtonType.transparent,
          ),
          title: const Text(
            "Create Planting Entry",
            style: TextStyle(
              color: AppTheme.nearlyWhite,
            ),
          ),
          backgroundColor: AppTheme.pastelGreen,
        ),
        body: Container(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(10.0),
                  children: <Widget>[
                    FormBuilder(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          FormBuilderTextField(
                            name: 'plantName',
                            //validator: FormBuilderValidators.compose([
                            //FormBuilderValidators.required(context),
                            //]),
                            decoration: const InputDecoration(
                              labelText: "Plant Name",
                              icon: Icon(Icons.local_florist_outlined),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                          const SizedBox(height: 10),
                          FormBuilderTextField(
                            name: 'plantNumber',
                            //validator: FormBuilderValidators.compose([
                            //FormBuilderValidators.required(context),
                            //FormBuilderValidators.integer(context, errorText: "Enter numbers only."),
                            //]),
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              labelText: "No. of Plants",
                              icon: Icon(Icons.format_list_numbered),
                            ),
                          ),
                          const SizedBox(height: 10),
                          FormBuilderDateTimePicker(
                            attribute: 'plantDate',
                            format: DateFormat('dd-MM-yyyy'),
                            currentDate: DateTime.now(),
                            inputType: InputType.date,
                            initialValue: DateTime.now(),
                            lastDate: DateTime.now(),
                            decoration: const InputDecoration(
                              labelText: 'Date',
                              icon: Icon(Icons.date_range),
                            ),
                          ),
                          const SizedBox(height: 10),
                          FormBuilderSlider(
                            attribute: 'plantEstimated',
                            /*validator: FormBuilderValidators.compose([
                              FormBuilderValidators.min(context, 1),
                            ]),*/
                            min: 1.0,
                            max: 12.0,
                            initialValue: 5.0,
                            divisions: 11,
                            label: 'Weeks',
                            activeColor: Colors.red,
                            inactiveColor: Colors.pink[100],
                            decoration: const InputDecoration(
                              labelText: 'Estimated Harvest Date',
                              icon: Icon(Icons.timelapse),
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: MaterialButton(
                            color: Colors.red,
                            child: const Text(
                              "Reset",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              _formKey.currentState?.reset();
                            },
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: MaterialButton(
                            color: Theme.of(context).accentColor,
                            child: const Text(
                              "Submit",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              _formKey.currentState!.save();
                              if (_formKey.currentState!.validate()) {
                                addData(_formKey.currentState!.value);
                                Navigator.pop(context);
                              } else {
                                print("validation failed");
                              }
                            },
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
