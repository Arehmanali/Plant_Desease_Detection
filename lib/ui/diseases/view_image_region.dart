import 'dart:async';
import 'dart:io';

import 'package:agricure/app_theme.dart';
import 'package:agricure/data/diseases/classifier.dart';
import 'package:agricure/data/diseases/disease_detection_model.dart';
import 'package:agricure/ui/diseases/diagnosis.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';

class ViewImageRegion extends StatefulWidget {
  const ViewImageRegion({required this.diagnosis});

  final Diagnosis diagnosis;

  @override
  _ViewImageRegionState createState() => _ViewImageRegionState();
}

class _ViewImageRegionState extends State<ViewImageRegion> {
  late PickedFile _image;
  late File plantImage;
  dynamic _pickImageError;
  late Classifier _classifier;
  var logger = Logger();
  late Category _category;

  void _onImageButtonPressed(ImageSource source,
      {required BuildContext context}) async {
    try {
      final pickedFile = await ImagePicker().getImage(source: source);
      _image = pickedFile;
      final File _plantImage = File(_image.path);
      File? croppedFile = await ImageCropper.cropImage(
        sourcePath: _plantImage.path,
        aspectRatioPresets: [
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.ratio16x9,
        ],
        androidUiSettings: const AndroidUiSettings(
          toolbarTitle: 'Cropper',
          toolbarColor: Colors.deepOrange,
          toolbarWidgetColor: Colors.white,
          initAspectRatio: CropAspectRatioPreset.original,
          lockAspectRatio: false,
        ),
        iosUiSettings: const IOSUiSettings(minimumAspectRatio: 1.0),
      );
      plantImage = croppedFile!;
      _predict(_plantImage);
    } catch (e) {
      setState(() {
        _pickImageError = e;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _classifier = DiseaseDetectionModel() as Classifier;
  }

  void _predict(File image) async {
    img.Image imageInput = img.decodeImage(image.readAsBytesSync());
    var prediction = _classifier.predict(imageInput);

    setState(() {
      _category = prediction;
    });

    if (_category.score > 0.5) {
      Future.delayed(
        Duration.zero,
        () => widget.diagnosis.update(
            _category.label, (_category.score * 100).toStringAsFixed(2)),
      );
    } else {
      Future.delayed(
        Duration.zero,
        () => widget.diagnosis.update('Healthy', ''),
      );
    }
  }

  void _cancelImage() {
    setState(() {
      plantImage = null as File;
    });
    Future.delayed(
      Duration.zero,
      () => widget.diagnosis.update('Disease', ''),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            height: 224.0,
            width: 224.0,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 20),
              borderRadius: BorderRadius.circular(18),
              color: Colors.white,
            ),
            child: Center(
              child: plantImage == null
                  ? const Text(
                      'No image selected',
                      textAlign: TextAlign.center,
                      style: AppTheme.bodyText1,
                    )
                  : Image.file(
                      plantImage,
                      height: 224.0,
                      width: 225.0,
                      fit: BoxFit.fill,
                    ),
            ),
          ),
          SizedBox(
            height: 90.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildButton(
                  const Icon(Icons.add_a_photo_outlined),
                  () => _onImageButtonPressed(
                    ImageSource.camera,
                    context: context,
                  ),
                ),
                _buildButton(
                  const Icon(Icons.image_outlined),
                  () => _onImageButtonPressed(
                    ImageSource.gallery,
                    context: context,
                  ),
                ),
                _buildButton(
                  const Icon(Icons.image_not_supported_outlined),
                  () => _cancelImage(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(Icon icon, VoidCallback callback) {
    return ClipOval(
      child: Material(
        color: Colors.white,
        child: InkWell(
          splashColor: Colors.lightGreenAccent[100],
          child: SizedBox(
            width: 56,
            height: 56,
            child: icon,
          ),
          onTap: callback,
        ),
      ),
    );
  }
}
