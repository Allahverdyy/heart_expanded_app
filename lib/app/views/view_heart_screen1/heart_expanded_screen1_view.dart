import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:heart_expanded_app/app/views/widgets/body_container_widgets.dart';
import 'package:heart_expanded_app/core/constants/colors_constants.dart';
import 'package:heart_expanded_app/core/constants/images_constants.dart';
import 'package:heart_expanded_app/app/views/widgets/appbar_expanded_widget.dart';
import 'package:heart_expanded_app/app/views/widgets/first_button_widget.dart';
import 'package:heart_expanded_app/app/views/widgets/second_button_widget.dart';
import 'package:heart_expanded_app/app/views/widgets/third_button_widget.dart';

@RoutePage()
class HeartScreenOneView extends StatelessWidget {
  const HeartScreenOneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AppBarExpandedWidgets(
            title: 'DART VE FLUTTER',
            appBarColors: <Color>[
              blueteam1,
              blueteam2,
              blueteam3,
              blueteam4,
            ],
          ),
          Expanded(
              flex: 9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 3,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.90,
                        color: Colors.white,
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Image.asset(
                              flutter,
                              width: MediaQuery.sizeOf(context).width,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              child: Container(
                                margin:
                                    const EdgeInsets.fromLTRB(15, 15, 15, 15),
                                child: const FittedBox(
                                  fit: BoxFit.fill,
                                  alignment: Alignment.topCenter,
                                  child: Row(
                                    children: <Widget>[
                                      BodyContainerWidget(
                                        containercolor: <Color>[
                                          blueteam2,
                                          blueteam3,
                                          blueteam4,
                                        ],
                                        paragraph: <Widget>[
                                          Padding(
                                              padding:
                                                  EdgeInsetsDirectional.only(
                                                      top: 95)),
                                          Center(
                                            child: Text(
                                              textAlign: TextAlign.center,
                                              'Dart ve Flutter Nedir?',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 35),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Text(
                                            textAlign: TextAlign.center,
                                            'Hazirlayanlar : \nNurhayat - Abdulsamed',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                      BodyContainerWidget(
                                        containercolor: <Color>[
                                          blueteam2,
                                          blueteam3,
                                          blueteam4,
                                        ],
                                        paragraph: <Widget>[
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 35)),
                                          Text(
                                            'Dart Nedir',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 30),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'Dart, Google tarafından geliştirilen bir programlama dilidir. Modern, nesne tabanlı ve açık kaynaklı bir dil olarak, hem web uygulamaları hem de mobil uygulamalar gibi farklı platformlarda kullanılabilir. ',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                      BodyContainerWidget(
                                        containercolor: <Color>[
                                          blueteam2,
                                          blueteam3,
                                          blueteam4,
                                        ],
                                        paragraph: <Widget>[
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 85)),
                                          Text(
                                            "Dart, hızlı performansı, güçlü tip kontrolü ve kullanımı kolay bir sözdizimi ile öne çıkar. Dart, Flutter'ın arkasındaki programlama dilidir ve Flutter'ın geliştirme sürecinde kullanılır.",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                      BodyContainerWidget(
                                        containercolor: <Color>[
                                          blueteam2,
                                          blueteam3,
                                          blueteam4,
                                        ],
                                        paragraph: <Widget>[
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 35)),
                                          Text(
                                            'Flutter Nedir',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 30),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Google tarafından geliştirilen bir kullanıcı arayüzü (UI) yazılım geliştirme kitidir.Flutter, tek bir kod tabanıyla Android, iOS, Windows, Mac, Linux ve web gibi farklı platformlarda çalışabilen yüksek performanslı ve şık mobil uygulamalar oluşturmanızı sağlar.",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                      BodyContainerWidget(
                                        containercolor: <Color>[
                                          blueteam2,
                                          blueteam3,
                                          blueteam4,
                                        ],
                                        paragraph: <Widget>[
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 80)),
                                          Text(
                                            "Flutter'ın en önemli özelliklerinden biri, platforma özgü bileşenler yerine kendi widget'larını kullanmasıdır. Bu, uygulamaların daha hızlı çalışmasını ve daha tutarlı bir görünüm sunmasını sağlar.",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              width:
                                  MediaQuery.sizeOf(context).width * 3 / 5 - 5,
                              height: 75,
                              child: ElevatedButton.icon(
                                icon: const Icon(
                                  Icons.rocket,
                                  size: 50,
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(blueteam4),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          side: const BorderSide(
                                              color: blueteam4))),
                                  // shadowColor:
                                  //     MaterialStatePropertyAll(Colors.amber),
                                ),
                                onPressed: () {},
                                label: const Text(
                                  'Hadi Başlayalım',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                  const Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          FirstButtonWidget(
                            firstButtonBg: <Color>[
                              blueteam1,
                              blueteam2,
                              blueteam3,
                              blueteam4,
                            ],
                            imageColor: Colors.white,
                          ),
                          SecondButtonWidget(
                            imageColor: blueteam3,
                          ),
                          ThirdButtonWidget(
                            imageColor: blueteam3,
                          )
                        ],
                      ))
                ],
              ))
        ],
      ),
    );
  }
}
