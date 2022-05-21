import 'package:agri_cure/Controllers/WeatherProvider.dart';
import 'package:agri_cure/Controllers/WeatherProviderNew.dart';
import 'package:agri_cure/Helpers/SizeConfig.dart';
import 'package:agri_cure/Helpers/TextSizes.dart';
import 'package:agri_cure/Models/WeatherModel.dart';
import 'package:agri_cure/Theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class WeatherScreenNew extends StatefulWidget {
  const WeatherScreenNew({Key? key}) : super(key: key);

  @override
  _WeatherScreenNewState createState() => _WeatherScreenNewState();
}

class _WeatherScreenNewState extends State<WeatherScreenNew> {

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
      body: Consumer<WeatherProviderNew>(
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



              if (weatherProvider.singleWeatherMain !=null )
                Text("${(weatherProvider.singleWeatherMain!.temp! - 273.15).toStringAsFixed(2)} °C", style: TextSizes.primaryColor12pxw800.copyWith(
                      fontSize: 22
                  ),),


              if (weatherProvider.singleWeatherDetails !=null )
              Text("Weather Condition: ${weatherProvider.singleWeatherDetails!.description}", style: TextSizes.black12pxw500.copyWith(
                  fontSize: 18
              ),),




              Spacer(flex: 1,),


             Row(
               children: [
                 Text("Weather forecast up to next 40 days",style: TextSizes.primaryColor12pxw500,),
               ],
             ),
             SizedBox(height: 10,),
             if (weatherProvider.multiDaysWeatherList.isNotEmpty)
               Container(
                height: SizeConfig.safeBlockVertical*20,
                width: SizeConfig.screenWidth,
                child:weatherProvider.fetchingDaysData ?
                Center(child: CircularProgressIndicator(),):
                ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (ctx,index)=>Container(width: 10,),
                  itemCount: weatherProvider.multiDaysWeatherList.length,
                  itemBuilder: (ctx,index)
                  =>_buildUpcommingDayElement(index+1, weatherProvider,weatherProvider.multiDaysWeatherList[index], index),
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
    final weatherProvider = Provider.of<WeatherProviderNew>(context,listen: false);
    await weatherProvider.fetchSingleDayWeather("lahore");
    await weatherProvider.fetchMultiDaysWeatherData("lahore");

  }

  void submitTextfield(String data) async{
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {

      final weatherProvider = Provider.of<WeatherProviderNew>(context,listen: false);
      await weatherProvider.fetchSingleDayWeather(data);
      await weatherProvider.fetchMultiDaysWeatherData(data);

    });
  }

  _buildUpcommingDayElement(int daysFromNow,WeatherProviderNew _weatherProvider,
  ListItem item,int index){
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
            'High:  ${(item.main.tempMax! - 273.15).toStringAsFixed(2)} °C',
            style: TextSizes.black12pxw400.copyWith(fontSize: 10),
          ),

          SizedBox(height: 5,),
          Text(
            'Low: ${(item.main.tempMin! - 273.15).toStringAsFixed(2) } °C',
            style: TextSizes.black12pxw400.copyWith(fontSize: 10),
          ),

          SizedBox(height: 5,),

          Text(
               item.weather[0].description,
            style: TextSizes.black12pxw600.copyWith(fontSize: 10),
          ),
        ],
      ),
    );
  }



}
