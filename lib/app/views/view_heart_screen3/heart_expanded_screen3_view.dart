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
class HeartScreenThreeView extends StatelessWidget {
  const HeartScreenThreeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AppBarExpandedWidgets(
            title: 'FLUTTER BLOC CUBIT',
            appBarColors: <Color>[
              greenteam1,
              greenteam2,
              greenteam3,
              greenteam4,
              greenteam5,
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
                              flutterBloc,
                              width: MediaQuery.sizeOf(context).width,
                              height: MediaQuery.sizeOf(context).height/8,
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
                                          greenteam2,
                                          greenteam3,
                                          greenteam4,
                                        ],
                                        paragraph: <Widget>[
                                          Padding(
                                              padding:
                                                  EdgeInsetsDirectional.only(
                                                      top: 95)),
                                          Center(
                                            child: Text(
                                              textAlign: TextAlign.center,
                                              'Bloc Cubit Nedir ?',
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
                                          greenteam2,
                                          greenteam3,
                                          greenteam4,
                                        ],
                                        paragraph: <Widget>[
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 35)),
                                          Text(
                                            'Bloc Cubit Nedir',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 30),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                             "Cubit ve Bloc, Flutter'da kullanılan durum yönetimi (state management) paketleridir ve uygulamalarda veri akışını yönetmek için kullanılırlar.",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                      BodyContainerWidget(
                                        containercolor: <Color>[
                                          greenteam2,
                                          greenteam4,
                                          greenteam4,
                                        ],
                                        paragraph: <Widget>[
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 85)),
                                          Text(
                                            "Cubit, temelde bir durum yöneticisi sınıfıdır. Cubit, bir durumu temsil eder ve bu durumu değiştirmek ve güncellemek için kullanılır. Cubit, birbirini takip eden durumları sağlar ve bu durumlar arasında geçiş yapılmasını kolaylaştırır.",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                      BodyContainerWidget(
                                        containercolor: <Color>[
                                          greenteam2,
                                          greenteam3,
                                          greenteam4,
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
                                            " Cubit, genellikle daha küçük uygulamalarda veya basit durum yönetimi ihtiyaçlarında tercih edilen bir yapıdır, çünkü daha büyük projelerde Bloc veya Provider gibi daha kapsamlı durum yönetim çözümleri kullanılabilir.",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                      BodyContainerWidget(
                                        containercolor: <Color>[
                                          greenteam2,
                                          greenteam3,
                                          greenteam4,
                                        ],
                                        paragraph: <Widget>[
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 80)),
                                          Text(
                                            "Bloc ise, Cubit'in genişletilmiş bir versiyonudur ve BloC (Business Logic Component) olarak da adlandırılır. Bloc, Cubit'in özelliklerini daha da genişletir ve ayrıca olayların (event) işlenmesi ve yanıtların (state) sağlanması için kullanılır. ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                      BodyContainerWidget(
                                        containercolor: <Color>[
                                          greenteam2,
                                          greenteam3,
                                          greenteam4,
                                        ],
                                        paragraph: <Widget>[
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 80)),
                                          Text(
                                            "Bloc, daha karmaşık uygulamalarda veya durum yönetiminin daha fazla kontrol gerektirdiği durumlarda tercih edilir. Bloc, uygulama mantığı ve veri akışı arasında ayrım yapmanıza olanak tanır ve genellikle akış tabanlı (stream-based) bir yaklaşım kullanır.",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                       BodyContainerWidget(
                                        containercolor: <Color>[
                                          greenteam2,
                                          greenteam3,
                                          greenteam4,
                                        ],
                                        paragraph: <Widget>[
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 80)),
                                          Text(
                                            "Her iki yapı da, uygulamalarda durum yönetimini kolaylaştırır ve kodun daha okunabilir, sürdürülebilir ve test edilebilir olmasını sağlar. Cubit ve Bloc, Flutter topluluğunda yaygın olarak kullanılan ve popüler olan durum yönetimi çözümleridir.",
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
                                      const MaterialStatePropertyAll(greenteam2),
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
                            imageColor: greenteam2,
                          ),
                          SecondButtonWidget(
                            imageColor: greenteam2,
                          ),
                          ThirdButtonWidget(
                            thirdButtonBg: <Color>[
                              greenteam1,
                              greenteam2,
                              greenteam3,
                              greenteam4,
                              greenteam5,
                            ],
                            imageColor: Colors.white,
                          ),
                        ],
                      ))
                ],
              ))
        ],
      ),
    );
  }
}
