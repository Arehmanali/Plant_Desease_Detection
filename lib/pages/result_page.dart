import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:agricure/pdf/pdf_gen.dart';
import 'package:agricure/services/http.dart';
import 'package:agricure/widgets/login_button.dart';

class ResultPage extends StatefulWidget {
  final String disease, plant, remedy;

  const ResultPage(
      {Key? key,
      required this.disease,
      required this.plant,
      required this.remedy})
      : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  var isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Your Crop Analysis Report"),
          backgroundColor: Colors.green),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 1,
            ),
            Container(
              height: 300,
              width: 350,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.greenAccent.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(
                    flex: 2,
                  ),
                  Text("Plant Name: " + widget.plant,
                      style: const TextStyle(fontSize: 18)),
                  const Spacer(
                    flex: 1,
                  ),
                  widget.disease == "healthy"
                      ? const Text("Your Plant is Healthy!!",
                          style: TextStyle(fontSize: 18))
                      : Text("Disease detected: " + widget.disease,
                          style: const TextStyle(fontSize: 18)),
                  const Spacer(flex: 1),
                  widget.disease == "healthy"
                      ? Container()
                      : const Text("Possible remedy: ",
                          style: TextStyle(fontSize: 18)),
                  const SizedBox(height: 2),
                  widget.disease == "healthy"
                      ? Container()
                      : Text(widget.remedy,
                          style: const TextStyle(
                              fontSize: 14, fontStyle: FontStyle.italic)),
                  const Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            LoginButton(
                title: "Send Alert",
                onTap: () async {
                  await sendAlerts(
                      plant: widget.plant, disease: widget.disease);
                  Get.snackbar(
                    "Success!",
                    "The Alert has been sent to everyone",
                    backgroundColor: Colors.white,
                    duration: const Duration(seconds: 8),
                  );
                }),
            const SizedBox(
              height: 10,
            ),
            LoginButton(
                title: "Make Report",
                onTap: () async {
                  setState(() {
                    isLoading = true;
                  });
                  bool result = await makeReport(
                    plant: widget.plant,
                    disease: widget.disease,
                    remedy: widget.remedy,
                  );
                  setState(() {
                    isLoading = false;
                  });
                  // ignore: avoid_print
                  print(result);

                  // if (result) {
                  //   Get.snackbar(
                  //     "Success!",
                  //     "The Crop Analysis Report has been generated and saved to Downloads folder",
                  //     backgroundColor: Colors.white,
                  //     duration: Duration(seconds: 16),
                  //   );
                  // }
                }),
            isLoading
                ? const Expanded(
                    flex: 1, child: Center(child: CircularProgressIndicator()))
                : const Spacer(
                    flex: 1,
                  )
          ],
        ),
      ),
    );
  }
}
