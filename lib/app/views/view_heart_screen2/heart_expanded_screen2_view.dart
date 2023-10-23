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
class HeartScreenTwoView extends StatelessWidget {
  const HeartScreenTwoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AppBarExpandedWidgets(
            title: 'FLUTTER FIREBASE',
            appBarColors: <Color>[
              amberteam1,
              amberteam2,
              amberteam3,
              amberteam4,
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
                              flutterFirebase,
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
                                          amberteam2,
                                          amberteam3,
                                          amberteam3,
                                        ],
                                        paragraph: <Widget>[
                                          Padding(
                                              padding:
                                                  EdgeInsetsDirectional.only(
                                                      top: 95)),
                                          Center(
                                            child: Text(
                                              textAlign: TextAlign.center,
                                              'Firebase Nedir ?',
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
                                          amberteam2,
                                          amberteam3,
                                          amberteam3,
                                        ],
                                        paragraph: <Widget>[
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 35)),
                                          Text(
                                            'Firebase Nedir',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 30),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'Firebase, Google tarafından sunulan bir bulut tabanlı mobil ve web uygulama geliştirme platformudur. Geliştiricilere uygulama geliştirme sürecini kolaylaştıran çeşitli hizmetler sunar. ',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                      BodyContainerWidget(
                                        containercolor: <Color>[
                                          amberteam2,
                                          amberteam3,
                                          amberteam3,
                                        ],
                                        paragraph: <Widget>[
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 85)),
                                          Text(
                                            "Firebase, kullanıcı kimlik doğrulama, veritabanı yönetimi, sunucu tarafı mantığı, depolama, analitik, test etme ve hatta mesajlaşma gibi bir dizi hizmeti içerir.Firebase'in en önemli özelliklerinden biri gerçek zamanlı veritabanıdır.",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                      BodyContainerWidget(
                                        containercolor: <Color>[
                                          amberteam2,
                                          amberteam3,
                                          amberteam3,
                                        ],
                                        paragraph: <Widget>[
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 80)),
                                          // Text(
                                          //   ' ',
                                          //   style: TextStyle(
                                          //       color: Colors.white,
                                          //       fontSize: 30),
                                          // ),
                                          // SizedBox(
                                          //   height: 10,
                                          // ),
                                          Text(
                                            "Firebase Realtime Database, uygulamaların anlık veri senkronizasyonunu sağlayarak kullanıcılar arasında hızlı güncellemelerin paylaşılmasına ve çevrimiçi/çevrimdışı veri senkronizasyonuna olanak tanır.",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                      BodyContainerWidget(
                                        containercolor: <Color>[
                                          amberteam2,
                                          amberteam3,
                                          amberteam3,
                                        ],
                                        paragraph: <Widget>[
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 80)),
                                          Text(
                                            "Firebase'in analitik hizmeti, uygulamaların kullanım istatistiklerini izlemesine ve analiz etmesine olanak tanır. Bu, kullanıcı davranışını anlamak, kullanıcı deneyimini iyileştirmek ve pazarlama stratejilerini optimize etmek için önemli bir araçtır.",
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
                                      MaterialStatePropertyAll(amberteam3),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          side: const BorderSide(
                                              color: blueteam1))),
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
                            imageColor: amberteam3,
                          ),
                          SecondButtonWidget(secondButtonBg: <Color>[
                            amberteam1,
                            amberteam2,
                            amberteam3,
                            amberteam4,
                          ], imageColor: Colors.white),
                          ThirdButtonWidget(
                            imageColor: amberteam3,
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
