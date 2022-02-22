import 'package:agricure/ui/diseases/diagnosis.dart';
import 'package:agricure/ui/diseases/disease_card.dart';
import 'package:agricure/ui/diseases/view_image_region.dart';
import 'package:agricure/ui/widgets/tab_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DiseaseDetectionPage extends TabPage {
  DiseaseDetectionPage({Key? key, required String pageTitle})
      : super(pageTitle: pageTitle);

  @override
  _DiseaseDetectionPageState createState() {
    return _DiseaseDetectionPageState();
  }
}

class _DiseaseDetectionPageState extends TabPageState<DiseaseDetectionPage> {
  final Diagnosis _diagnosis = Diagnosis();

  @override
  void initState() {
    tabListView.add(ViewImageRegion(diagnosis: _diagnosis));
    tabListView.add(const DiseaseCard());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Diagnosis>.value(
      value: _diagnosis,
      child: super.build(context),
    );
  }
}
