import 'package:agricure/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:getwidget/components/appbar/gf_appbar.dart';
import 'package:getwidget/components/button/gf_icon_button.dart';
import 'package:getwidget/types/gf_button_type.dart';
import 'package:agricure/data/farm/utils/weather_strings.dart';

class DisplayPlanting extends StatefulWidget {
  final String plantName;
  final String plantNo;
  final String plantDate;
  final double plantEstimate;
  final String plantHarvest;

  DisplayPlanting({
    required this.plantName,
    required this.plantNo,
    required this.plantDate,
    required this.plantEstimate,
    required this.plantHarvest,
  });

  @override
  // ignore: no_logic_in_create_state
  _DisplayPlantingState createState() => _DisplayPlantingState(
      name: plantName,
      no: plantNo,
      date: plantDate,
      estimate: plantEstimate,
      harvest: plantHarvest);
}

class _DisplayPlantingState extends State<DisplayPlanting> {
  final String name;
  final String no;
  final String date;
  final double estimate;
  final String harvest;

  _DisplayPlantingState({
    required this.name,
    required this.no,
    required this.date,
    required this.estimate,
    required this.harvest,
  });

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
            "View Planting Entry",
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
                      child: Column(
                        children: <Widget>[
                          FormBuilderTextField(
                            readOnly: true,
                            initialValue: name,
                            name: 'plantName',
                            decoration: const InputDecoration(
                              labelText: "Plant Name",
                              icon: Icon(Icons.local_florist_outlined),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                          const SizedBox(height: 10),
                          FormBuilderTextField(
                            readOnly: true,
                            name: 'plantNumber',
                            initialValue: no,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              labelText: "No. of Plants",
                              icon: Icon(Icons.format_list_numbered),
                            ),
                          ),
                          const SizedBox(height: 10),
                          FormBuilderTextField(
                            readOnly: true,
                            name: 'plantNumber',
                            initialValue: date,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              labelText: 'Date',
                              icon: Icon(Icons.date_range),
                            ),
                          ),
                          const SizedBox(height: 10),
                          FormBuilderSlider(
                            //enabled: false,
                            attribute: 'plantEstimated',
                            //validator: FormBuilderValidators.compose([
                            //FormBuilderValidators.min(context, 1),
                            //]),
                            min: 1.0,
                            max: 12.0,
                            initialValue: estimate,
                            divisions: 11,
                            label: 'Weeks',
                            activeColor: Colors.red,
                            inactiveColor: Colors.pink[100],
                            decoration: const InputDecoration(
                              labelText: 'Estimated Harvest Date (weeks)',
                              icon: const Icon(Icons.timelapse),
                            ),
                          ),
                          const SizedBox(height: 10),
                          FormBuilderTextField(
                            readOnly: true,
                            name: 'HarvestDate',
                            initialValue: harvest,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              labelText: 'Estimated Harvest Date',
                              icon: Icon(Icons.date_range),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
