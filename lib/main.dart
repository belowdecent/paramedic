import 'package:flutter/material.dart';
import 'pages/algorithms.dart' as algorithms;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, WidgetBuilder> routes = {
      '/': (context) => const Menu(),
    };

    void buildRoutes(Map<String, StatelessWidget> pages) {
      routes.addAll(pages.map<String, WidgetBuilder>((key, value) {
        return MapEntry(key, (context) => value);
      }));
    }

    buildRoutes(algorithms.pages);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routes: routes,
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget tile({
      required String title,
      required String algoRouteName,
    }) {
      return ListTile(
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14.0),
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: algoRouteName == '' ? Colors.grey : Colors.black,
            ),
          ),
        ),
        onTap: algoRouteName == ''
            ? null
            : () => Navigator.pushNamed(context, algoRouteName),
      );
    }

    List<Widget> menu = [
      tile(
        title: 'Порядок оказания скорой (неотложной) медицинской помощи',
        algoRouteName: '/emergency',
      ),
      tile(
        title: 'Первичный осмотр пациента (ABCD)',
        algoRouteName: '/eval_abcd',
      ),
      tile(
        title: 'Острая дыхательная недостаточность',
        algoRouteName: '/respiratory_failure',
      ),
      tile(
        title: 'Внезапная смерть, сердечно-легочная реанимация',
        algoRouteName: '/death',
      ),
      tile(
        title: 'Гиповолемический шок',
        algoRouteName: '/hypovolemic',
      ),
      tile(
        title: 'Фибрилляция желудочков (ФЖ), желудочковая тахикардия(ЖТ)',
        algoRouteName: '/fibrillation',
      ),
      tile(
        title: 'Асистолия',
        algoRouteName: '/asystole',
      ),
      tile(
        title: 'Электромеханическая диссоциация',
        algoRouteName: '/emd',
      ),
      tile(
        title: 'Постреанимационная поддержка',
        algoRouteName: '/post',
      ),
      tile(
        title: 'Пароксизмальная тахикардия с узким комплексом QRS',
        algoRouteName: '/tachycardia_narrow',
      ),
      tile(
        title: 'Пароксизмальная тахикардия с широким комплексом QRS',
        algoRouteName: '/tachycardia_wide',
      ),
      tile(
        title: 'Желудочковая экстрасистолия (злокачественная)',
        algoRouteName: '/extrasystole',
      ),
      tile(
        title: 'Брадиаритмии',
        algoRouteName: '/bradyarrhythmias',
      ),
      tile(
        title: 'Пароксизмальная мерцательная аритмия',
        algoRouteName: '/a_fib',
      ),
      tile(
        title: 'Острый коронарный синдром',
        algoRouteName: '/acs',
      ),
      tile(
        title: 'Кардиогенный шок',
        algoRouteName: '/cardioshock',
      ),
      tile(
        title: 'Отек легких',
        algoRouteName: '/lung',
      ),
      tile(
        title: 'Тромбоэмболия легочной артерии',
        algoRouteName: '/pe',
      ),
      tile(
        title: 'Расслаивающая аневризма аорты',
        algoRouteName: '/ad',
      ),
      tile(
        title: 'Острый тромбоз артерий и глубоких вен',
        algoRouteName: '/thrombosis',
      ),
      tile(
        title: 'Гипертонический криз',
        algoRouteName: '/hypertensive',
      ),
      tile(
        title: 'Обморок',
        algoRouteName: '/faint',
      ),
      tile(
        title: 'Приступ бронхиальной астмы',
        algoRouteName: '/asthma',
      ),
      tile(
        title: 'Пневмония',
        algoRouteName: '',
      ),
      tile(
        title: 'Стеноз гортани',
        algoRouteName: '',
      ),
      tile(
        title: 'Обструкция дыхательных путей инородным телом',
        algoRouteName: '',
      ),
      tile(
        title: 'Кома неясного генеза',
        algoRouteName: '',
      ),
      tile(
        title: 'Комы при сахарном диабете',
        algoRouteName: '',
      ),
      tile(
        title: 'Судорожный синдром',
        algoRouteName: '',
      ),
      tile(
        title: 'Острое нарушение мозгового кровообращения',
        algoRouteName: '',
      ),
      tile(
        title: 'Гипертермия',
        algoRouteName: '',
      ),
      tile(
        title: 'Высокопатогенный грипп',
        algoRouteName: '',
      ),
      tile(
        title: 'Менингиальная инфекция',
        algoRouteName: '',
      ),
      tile(
        title: 'Острые кишечные инфекции',
        algoRouteName: '',
      ),
      tile(
        title: 'Острый инфекционный гепатит',
        algoRouteName: '',
      ),
      tile(
        title: 'Почечная колика',
        algoRouteName: '',
      ),
      tile(
        title: 'Носовое кровотечение',
        algoRouteName: '',
      ),
      tile(
        title: 'Острая хирургическая патология органов брюшной полости',
        algoRouteName: '',
      ),
      tile(
        title: 'Черепно-мозговая травма',
        algoRouteName: '',
      ),
      tile(
        title: 'Травма позвоночника',
        algoRouteName: '',
      ),
      tile(
        title: 'Травмы конечностей',
        algoRouteName: '',
      ),
      tile(
        title: 'Травмы груди',
        algoRouteName: '',
      ),
      tile(
        title: 'Травмы живота',
        algoRouteName: '',
      ),
      tile(
        title: 'Политравма',
        algoRouteName: '',
      ),
      tile(
        title: 'Ожоги',
        algoRouteName: '',
      ),
      tile(
        title: 'Тепловой удар',
        algoRouteName: '',
      ),
      tile(
        title: 'Гипотермия',
        algoRouteName: '',
      ),
      tile(
        title: 'Утопление',
        algoRouteName: '',
      ),
      tile(
        title: 'Отравление неизвестным ядом',
        algoRouteName: '',
      ),
      tile(
        title: 'Аллергическая реакция',
        algoRouteName: '',
      ),
      tile(
        title: 'Неотложные состояния в акушерстве и гинекологии',
        algoRouteName: '',
      ),
      tile(
        title: 'Острый реактивный психоз',
        algoRouteName: '',
      ),
      tile(
        title: 'Действия бригады СНМП при ДТП',
        algoRouteName: '',
      ),
      tile(
        title: 'Острое психотическое возбуждение',
        algoRouteName: '',
      ),
      tile(
        title: 'Суицидальное поведение',
        algoRouteName: '',
      ),
      tile(
        title: 'Вертеброгенный болевой синдром',
        algoRouteName: '',
      ),
      tile(
        title: 'Мигрень',
        algoRouteName: '',
      ),
      tile(
        title: 'Длительное сдавление мягких тканей',
        algoRouteName: '',
      ),
      tile(
        title: 'Отморожения',
        algoRouteName: '',
      ),
      tile(
        title: 'Поражение электрическим током',
        algoRouteName: '',
      ),
      tile(
        title: 'Странгуляционная асфиксия',
        algoRouteName: '',
      ),
      tile(
        title: 'Острые психотические расстройства при употреблении ПАВ',
        algoRouteName: '',
      ),
      tile(
        title: 'Побочные эффекты и осложнения психофармакотерапии',
        algoRouteName: '',
      ),
      tile(
        title: 'Острые желудочно-кишечные кровотечения',
        algoRouteName: '',
      ),
      tile(
        title: 'Кровотечение в послеродовом периоде',
        algoRouteName: '',
      ),
      tile(
        title: 'Травма половых органов (женщины)',
        algoRouteName: '',
      ),
      tile(
        title: 'Роды',
        algoRouteName: '',
      ),
      tile(
        title: 'Заглоточный абсцесс',
        algoRouteName: '',
      ),
      tile(
        title: 'Кровотечение из глотки',
        algoRouteName: '',
      ),
      tile(
        title: 'Перелом костей носа и околоносовых пазух',
        algoRouteName: '',
      ),
      tile(
        title: 'Кровотечение из уха',
        algoRouteName: '',
      ),
      tile(
        title: 'Ожоги и травмы глаза, века, конъюнктивы',
        algoRouteName: '',
      ),
      tile(
        title: 'Заболевания глаза, века',
        algoRouteName: '',
      ),
      tile(
        title: 'Инородное тело верхних дыхательных путей, уха',
        algoRouteName: '',
      ),
      tile(
        title: 'Алкогольный абстинентный синдром',
        algoRouteName: '',
      ),
      tile(
        title: 'Острая задержка мочи',
        algoRouteName: '',
      ),
      tile(
        title: 'Респираторная поддержка',
        algoRouteName: '',
      ),
      tile(
        title: 'Алкогольная интоксикация',
        algoRouteName: '',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Алгоритмы'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => menu[index],
        separatorBuilder: (context, index) => const Divider(
          height: 0.0,
        ),
        itemCount: menu.length,
      ),
    );
  }
}
