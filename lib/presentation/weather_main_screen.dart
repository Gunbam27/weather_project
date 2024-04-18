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
        title: Text('오늘 등산 할까?'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('오늘의 추천 산'),
                Text('비 안오는 산을 보여드려요'),
                SizedBox(
                  height: 4,
                ),
                SizedBox(
                  width: 300,
                  height: 120,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          height: 120,
                          child: GridView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              mainAxisSpacing: 10,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                width: 100,
                                height: 100,
                                child: Image.network(
                                  'https://i.namu.wiki/i/P7vX7Kc991lJWwAVvLZI-8XysC7o69iW8yl6shqbxaXXRxOn18Y6Yqr4HJfyTs3EDhntuFgPBo9a52Xn3WQM2gnwC0plxA04tkaYES_NcY2Ja2JHpnQVH9siNB4MJQysjAKFY3X4U1-ivstwVubp-Q.webp',
                                  fit: BoxFit.contain,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
            SizedBox(
              height: 530,
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  InkWell(
                    onTap: () {
                      viewModel.showList(15, 32).then((value) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                WeatherDetailScreen(hourly: viewModel.hourly),
                          ),
                        );
                      });
                    },
                    child: Column(
                      children: [
                        Image.asset(Mountain.HALLA.img),
                        Text(Mountain.HALLA.title),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      viewModel.showList(15, 32).then((value) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                WeatherDetailScreen(hourly: viewModel.hourly),
                          ),
                        );
                      });
                    },
                    child: Column(
                      children: [
                        Image.asset(Mountain.SEORAK.img),
                        Text(Mountain.SEORAK.title),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      viewModel.showList(15, 32).then((value) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                WeatherDetailScreen(hourly: viewModel.hourly),
                          ),
                        );
                      });
                    },
                    child: Column(
                      children: [
                        Image.asset(Mountain.BUKHAN.img),
                        Text(Mountain.BUKHAN.title),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      viewModel.showList(15, 32).then((value) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                WeatherDetailScreen(hourly: viewModel.hourly),
                          ),
                        );
                      });
                    },
                    child: Column(
                      children: [
                        Image.asset(Mountain.DOBONG.img),
                        Text(Mountain.DOBONG.title),
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

// InkWell(
// onTap: () {
// viewModel.showList(15, 32).then((value) {
// Navigator.of(context).push(
// MaterialPageRoute(
// builder: (context) =>
// WeatherDetailScreen(hourly: viewModel.hourly),
// ),
// );
// });
// },
// child: Image.network(
// "https://i.namu.wiki/i/P7vX7Kc991lJWwAVvLZI-8XysC7o69iW8yl6shqbxaXXRxOn18Y6Yqr4HJfyTs3EDhntuFgPBo9a52Xn3WQM2gnwC0plxA04tkaYES_NcY2Ja2JHpnQVH9siNB4MJQysjAKFY3X4U1-ivstwVubp-Q.webp"),
// )
