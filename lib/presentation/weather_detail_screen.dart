import 'package:flutter/material.dart';
import 'package:weather_app/domain/model/hourly.dart';

class WeatherDetailScreen extends StatefulWidget {
  final Future<Hourly> hourly;
  const WeatherDetailScreen({super.key, required this.hourly});

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
        title: Text('북한산'),
      ),
      body: FutureBuilder(
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
                    Text('주간날씨'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(
                                child: Column(
                                  children: [
                                    Text(
                                      snapshot.data!.time[0],
                                    ),
                                    Text(
                                      snapshot.data!.temperature[0].toString(),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 70,
                                child: Column(
                                  children: [
                                    Text('날짜'),
                                    Icon(Icons.wb_cloudy_rounded),
                                    Text('온도'),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 70,
                                child: Column(
                                  children: [
                                    Text('날짜'),
                                    Icon(Icons.wb_cloudy_rounded),
                                    Text('온도'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Image.network(
                            "https://i.namu.wiki/i/P7vX7Kc991lJWwAVvLZI-8XysC7o69iW8yl6shqbxaXXRxOn18Y6Yqr4HJfyTs3EDhntuFgPBo9a52Xn3WQM2gnwC0plxA04tkaYES_NcY2Ja2JHpnQVH9siNB4MJQysjAKFY3X4U1-ivstwVubp-Q.webp",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                            "백두산(白頭山)은 한반도에서 가장 높은 산이다.[8] 북한과 중국의 국경에 있는 화산으로 화산의 분류 체계에 따르면 성층화산, 활화산, 초화산에 속한다.  봉우리는 총 16개이고 최고봉은 해발 2,744m인 병사봉(兵使峰)으로 북한에 속해 있으며, 북한에서는 이를 장군봉으로 부른다(명칭 문단 참조). 따라서 중국을 통해 관광이 가능한 남한 사람은 정상에 오를 수는 없고 천지 너머에서 바라볼 수만 있다. 각 봉우리 정상 사이에는 칼데라 호수인 천지를 품었다. 백두산의 천지와 주변 수계는 압록강, 두만강, 송화강의 발원지이기도 하다.  전통적인 풍수지리에서는 한반도의 '조종산(祖宗山)', 즉 모든 산맥의 시작점으로 여겨지며, 특히 근대 이후에는 민족의 영산(靈山)으로 자리매김하여 남북한 양쪽에서 특별한 의미를 가진 상징물이 되었다. 분단 이후에도 행정구역이나 교육[9] 등 공식적인 부문에서는 남북 모두 백두산을 자국의 산으로 간주한다.")
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
    );
  }
}
