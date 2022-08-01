import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Wearning(),
    );
  }
}

class Wearning extends StatelessWidget {
  const Wearning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff0B1E2D),
        title: Row(
          children: [
            Icon(Icons.arrow_back_ios_new),
            SizedBox(
              width: 34,
            ),
            Text(
              'Изменить ФИО',
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xff0B1E2D),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 61,
          left: 28,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomFavorite(
              title: 'Имя',
              subtitle: 'Имя',
            ),
            SizedBox(
              height: 10,
            ),
            CustomFavorite(
              title: 'Фамилия',
              subtitle: 'Фамилия',
            ),
            SizedBox(height: 10),
            CustomFavorite(
              title: 'Отчество',
              subtitle: 'Отчество',
            ),
            SizedBox(height: 338),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                primary: const Color(0xff22A2BD),
                fixedSize: const Size(319, 48),
              ),
              onPressed: () {},
              child: const Text(
                "Сохранить",
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomFavorite extends StatelessWidget {
  final String title;
  final String subtitle;
  const CustomFavorite({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var keyboardType2 = false;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8507,
          height: MediaQuery.of(context).size.height * 0.0591,
          child: TextField(
            style: const TextStyle(
              color: Colors.red,
            ),
            obscureText: true,
            keyboardType: TextInputType.none,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12),
              ),
              filled: true,
              fillColor: Color(0xff152A3A),
              hintText: subtitle,
              hintStyle: const TextStyle(
                color: Color(0xff5B6975),
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
