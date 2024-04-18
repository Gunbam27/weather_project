import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/domain/model/mountain_enum.dart';
import 'package:weather_app/presentation/weather_detail_screen.dart';
import 'package:weather_app/presentation/weather_view_model.dart';

class WeatherMainScreen extends StatelessWidget {
  const WeatherMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<WeatherViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '오늘 등산 할까?',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('오늘의 추천 산',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 4,
                ),
                Text(
                  '한국에서 가장 아름다운 산을 소개합니다.',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 100,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: Mountain.values
                          .map(
                            (mountain) => Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(4),
                                child: Image.asset(
                                  mountain.img,
                                  width: 120,
                                  height: 120,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
              ],
            ),
            Text('어디로 가고 싶으신가요?',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 460,
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  InkWell(
                    onTap: () {
                      viewModel
                          .showList(Mountain.HALLA.lat, Mountain.HALLA.lng)
                          .then((value) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => WeatherDetailScreen(
                                hourly: viewModel.hourly,
                                mountain: Mountain.HALLA),
                          ),
                        );
                      });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(Mountain.HALLA.img)),
                        SizedBox(
                          height: 4,
                        ),
                        Text(Mountain.HALLA.title,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      viewModel
                          .showList(Mountain.SEORAK.lat, Mountain.SEORAK.lng)
                          .then((value) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => WeatherDetailScreen(
                                hourly: viewModel.hourly,
                                mountain: Mountain.SEORAK),
                          ),
                        );
                      });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(Mountain.SEORAK.img)),
                        SizedBox(
                          height: 4,
                        ),
                        Text(Mountain.SEORAK.title,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      viewModel
                          .showList(Mountain.BUKHAN.lat, Mountain.BUKHAN.lng)
                          .then((value) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => WeatherDetailScreen(
                                hourly: viewModel.hourly,
                                mountain: Mountain.BUKHAN),
                          ),
                        );
                      });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(Mountain.BUKHAN.img)),
                        SizedBox(
                          height: 4,
                        ),
                        Text(Mountain.BUKHAN.title,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      viewModel
                          .showList(Mountain.DOBONG.lat, Mountain.DOBONG.lng)
                          .then((value) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => WeatherDetailScreen(
                                hourly: viewModel.hourly,
                                mountain: Mountain.DOBONG),
                          ),
                        );
                      });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(Mountain.DOBONG.img)),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          Mountain.DOBONG.title,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// child: GridView.builder(
//   shrinkWrap: true,
//   scrollDirection: Axis.horizontal,
//   gridDelegate:
//       SliverGridDelegateWithFixedCrossAxisCount(
//     crossAxisCount: 1,
//     mainAxisSpacing: 10,
//   ),
//   itemBuilder: (BuildContext context, int index) {
//     return Container(
//       width: 100,
//       height: 100,
//       child: Image.network(
//         'https://i.namu.wiki/i/P7vX7Kc991lJWwAVvLZI-8XysC7o69iW8yl6shqbxaXXRxOn18Y6Yqr4HJfyTs3EDhntuFgPBo9a52Xn3WQM2gnwC0plxA04tkaYES_NcY2Ja2JHpnQVH9siNB4MJQysjAKFY3X4U1-ivstwVubp-Q.webp',
//         fit: BoxFit.contain,
//       ),
//     );
//   },
// ),
