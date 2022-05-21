

import 'dart:io';

import 'package:agri_cure/Theme/theme.dart';
import 'package:agri_cure/Utils/Constants.dart';
import 'package:agri_cure/Views/ScanResult.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tflite/tflite.dart';


class DiseaseIdentificationProvider extends ChangeNotifier {
   XFile? _imageFile;
   File? _croppedFile;
   bool runningModel = false;


   ImagePicker _imagePicker = ImagePicker();


   void cameraPressed() async {
      final XFile? file = await _imagePicker.pickImage(
          source: ImageSource.camera
      );
      _croppedFile = await cropImage(file!.path);


      if (_croppedFile != null ){
        runModelOnImage(_croppedFile!);
      }

   }

   void galleryPressed() async{

     final XFile? file = await _imagePicker.pickImage(
         source: ImageSource.gallery
     );
     _croppedFile = await cropImage(file!.path);


     if (_croppedFile != null ){
       runModelOnImage(_croppedFile!);
     }
   }


   Future<File?> cropImage(String imgFilePath) async {
      File? croppedFile = await ImageCropper().cropImage(
          sourcePath: imgFilePath,
          aspectRatioPresets: [
             CropAspectRatioPreset.square,
             CropAspectRatioPreset.ratio3x2,
             CropAspectRatioPreset.original,
             CropAspectRatioPreset.ratio4x3,
             CropAspectRatioPreset.ratio16x9
          ],
          androidUiSettings: AndroidUiSettings(
              toolbarTitle: 'Cropper',
              statusBarColor: Colors.white,
              toolbarColor: primaryColor,
              toolbarWidgetColor: Colors.white,
              initAspectRatio: CropAspectRatioPreset.original,
              lockAspectRatio: false),
          iosUiSettings: IOSUiSettings(
             minimumAspectRatio: 1.0,
          )
      );
      return croppedFile;
   }
   loadInsectsModel() async{
     String modelName = "assets/models/model_unquant_old.tflite";
     String labels = "assets/models/labels.txt";

     String? res = await Tflite.loadModel(
         model: modelName,
         labels: labels,
         numThreads: 1, // defaults to 1
         isAsset: true, // defaults to true, set to false to load resources outside assets
         useGpuDelegate: false // defaults to false, set to true to use GPU delegate
     );

     print("Load insect model response: $res");
   }


   runModelOnImage(File croppedFile) async{


     try{
       var results= await Tflite.runModelOnImage(path: croppedFile.path,
           imageMean: 0.0,   // defaults to 117.0
           imageStd: 255.0,  // defaults to 1.0
           numResults: 2,    // defaults to 5
           threshold: 0.2,   // defaults to 0.1
           asynch: true
       );


       if(results!=null){

         //print("Found results : ${results[0]}");

         String name="trico";
         double confidence=70.1;
         print("Res : $results");
         if( results.isNotEmpty){
           name= results[0]['label'];

           confidence= results[0]['confidence'];


           print("Confidence: $confidence");

           
           Navigator.push(navigatorKey!.currentContext!, PageTransition(child: ScanResult(image: _croppedFile,
           name: name,
           ),
               duration: Duration(milliseconds: 500),
               type: PageTransitionType.rightToLeft));
         }
         else {
           print("results null");
         }




       }

     } catch(e){
       debugPrint("Exception on running tflite model: $e");
     }
   }
}