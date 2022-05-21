import 'package:agri_cure/Controllers/WeatherProvider.dart';
import 'package:agri_cure/Helpers/SizeConfig.dart';
import 'package:agri_cure/Helpers/TextSizes.dart';
import 'package:agri_cure/Theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {

  final TextEditingController _cityNameController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      getData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryScreenBg,
      body: Consumer<WeatherProvider>(
        builder:(ctx,weatherProvider,child)=>

          weatherProvider.fetchingData?Center(
            child: CircularProgressIndicator(),
          )  :Container(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*4),
          child: Column(
            children: [
                SizedBox(height: SizeConfig.safeBlockVertical*3,),

                Text("Weather", style: TextSizes.primaryColor18pxw700,),


              SizedBox(height: SizeConfig.safeBlockVertical*3,),

              TextField(
                controller: _cityNameController,
                onSubmitted: (input){
                  submitTextfield(input);
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search,color: Colors.black12,),
                  hintText: "Search the city",
                  hintStyle: TextSizes.black12px,
                ),
              ),


              SizedBox(height: SizeConfig.safeBlockVertical*4,),


              Text("${weatherProvider.city}", style: TextSizes.primaryColor12pxw800.copyWith(
                fontSize: 32
              ),),

              SizedBox(height: SizeConfig.safeBlockVertical*7,),



              Text("${weatherProvider.temperature} °C", style: TextSizes.primaryColor12pxw800.copyWith(
                      fontSize: 22
                  ),),



              Text("Weather Condition: ${weatherProvider.weatherState}", style: TextSizes.black12pxw500.copyWith(
                  fontSize: 18
              ),),




              Spacer(flex: 1,),


             if (weatherProvider.minTemperatureForecast.isNotEmpty)
               Container(
                height: SizeConfig.safeBlockVertical*20,
                width: SizeConfig.screenWidth,
                child:weatherProvider.fetchingDaysData ?
                Center(child: CircularProgressIndicator(),):
                ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (ctx,index)=>Container(width: 10,),
                  itemCount: weatherProvider.minTemperatureForecast.length,
                  itemBuilder: (ctx,index)
                  =>_buildUpcommingDayElement(index+1, weatherProvider, index),
                ),
              ),




              Spacer(flex: 1,),



            ],
          ),
        ),
      ),
    );
  }

  void getData() async{
    final weatherProvider = Provider.of<WeatherProvider>(context,listen: false);
    weatherProvider.fetchWeatherData();
    await weatherProvider.fetchLocationDay();

  }

  void submitTextfield(String data) async{
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {

      final weatherProvider = Provider.of<WeatherProvider>(context,listen: false);
      await weatherProvider.fetchLocationData(data);
      await weatherProvider.fetchWeatherData();
      await weatherProvider.fetchLocationDay();

    });
  }

  _buildUpcommingDayElement(int daysFromNow,WeatherProvider _weatherProvider,int index){
    var now = new DateTime.now();
    var oneDayFromNow = now.add(new Duration(days: daysFromNow));

    return Container(
      width: SizeConfig.screenWidth*0.3,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.black12,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            new DateFormat.E().format(oneDayFromNow),
            style: TextSizes.black14pxw600,
          ),
          Text(
            new DateFormat.MMMd().format(oneDayFromNow),
            style: TextSizes.black12pxw500,
          ),

          SizedBox(height: 5,),

          Text(
            'High: ' + _weatherProvider.maxTemperatureForecast[index].toString() + ' °C',
            style: TextSizes.black12pxw400.copyWith(fontSize: 10),
          ),

          SizedBox(height: 5,),
          Text(
            'Low: ' + _weatherProvider.minTemperatureForecast[index].toString() + ' °C',
            style: TextSizes.black12pxw400.copyWith(fontSize: 10),
          ),

          SizedBox(height: 5,),

          Text(
              _weatherProvider.weatherStateForecast[index],
            style: TextSizes.black12pxw600.copyWith(fontSize: 10),
          ),
        ],
      ),
    );
  }



}
