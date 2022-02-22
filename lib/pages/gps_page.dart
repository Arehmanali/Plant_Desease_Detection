import 'package:flutter/material.dart';
import 'package:agricure/gps/gps_util.dart';
import 'package:geolocator/geolocator.dart';
import 'package:agricure/remote_services/http.dart';

class GPSPage extends StatelessWidget {
  const GPSPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Location Sharing"),
        backgroundColor: Colors.green,
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: const Text(
                    "Dummy text about gps sharing",
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        Position coordinates = await determinePosition();
                        double latitude = coordinates.latitude;
                        double longitude = coordinates.longitude;
                        coordinatePOST(latitude, longitude);
                        //Go to next page
                      },
                      child: Container(
                        child: const Text("Agree"),
                        padding: const EdgeInsets.all(10),
                      ),
                    ),
                    Container(
                      width: 40,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        //Go to next page
                      },
                      child: const Text("Disagree"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
