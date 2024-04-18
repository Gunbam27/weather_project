

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/domain/model/hourly.dart';
import 'package:weather_app/domain/model/mountain_enum.dart';

class WeatherDetailScreen extends StatefulWidget {
  final Future<Hourly> hourly;

  final Mountain mountain;

  const WeatherDetailScreen(
      {super.key, required this.hourly, required this.mountain});

  @override
  State<WeatherDetailScreen> createState() => _WeatherDetailScreenState();
}

class _WeatherDetailScreenState extends State<WeatherDetailScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.mountain.title),
      ),
      body: Center(
        child: FutureBuilder(
          future: widget.hourly,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Container(
                height: 800,
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('주간날씨', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      SizedBox(height: 8,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                7,
                                (index) {
                                  return Padding(
                                    padding: EdgeInsets.only(right: 24),
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(color: Color(0xFFf2f2f2), borderRadius: BorderRadius.circular(8)),
                                          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 2.0, bottom: 2.0),
                                          child: Text(snapshot.data!.time[index * 24].substring(5, snapshot.data!.time[0].length - 6),style: TextStyle(color: Colors.black87,fontSize: 12, fontWeight: FontWeight.bold),),
                                        ),
                                        SizedBox(height: 10,),
                                        Icon(color: Color(0xFF424242),
                                            snapshot.data!.weatherCode[index * 24 ] < 4
                                                ? Icons.sunny : snapshot.data!.weatherCode[index * 24 ] < 61
                                                ? Icons.cloud : snapshot.data!.weatherCode[index * 24 ] < 83
                                                ? Icons.ac_unit : Icons.cloudy_snowing,
                                        ),
                                        SizedBox(height: 8,),
                                        Text('${snapshot.data!.temperature[index * 24].toString()}°C', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black87),),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                height: 189,
                                widget.mountain.img,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text('혹시 알고 있었나요?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                          SizedBox(height: 8,),
                          Text(widget.mountain.text),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
