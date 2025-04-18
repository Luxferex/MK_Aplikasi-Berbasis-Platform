import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Part 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyhomePage(title: 'Demo Layout part 1'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyhomePage extends StatefulWidget {
  const MyhomePage({super.key, required this.title});

  final String title;

  @override
  State<MyhomePage> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  final data = const [
    {"tgl": "02/03/2022", "nilai": 150},
    {"tgl": "01/02/2022", "nilai": 140},
    {"tgl": "12/01/2022", "nilai": 170},
    {"tgl": "11/12/2021", "nilai": 110},
    {"tgl": "10/11/2021", "nilai": 180},
    {"tgl": "09/10/2021", "nilai": 190},
    {"tgl": "08/09/2021", "nilai": 160},
    {"tgl": "07/08/2021", "nilai": 155},
    {"tgl": "06/07/2021", "nilai": 145},
    {"tgl": "05/06/2021", "nilai": 140},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "welcome,",
                        style: TextStyle(
                            color: Color(0XFF7387F0),
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.25),
                      ),
                      Text(
                        "1301220221 - Georgio Armando",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0XFF4B4B4B)),
                      )
                    ],
                  ),
                  const CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/images/test.jpg"))
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 35),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Color(0XFF4839EB), Color(0XFF7367F0)]),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Status Tes TOEFL Anda:",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "LULUS",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.25),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Listening\n     80',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          'Structure\n     80',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          'Reading\n     80',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Container(
              child: Text(
                'Riwayat Tes',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.25),
              ),
            ),
            Container(
              height: 300,
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Tangal tes:\nNilai:',
                            style: TextStyle(fontSize: 20, color: Colors.blue),
                          ),
                          Text(
                            '${data[index]["tgl"]}\n${data[index]["nilai"].toString()}',
                            style: TextStyle(fontSize: 20, color: Colors.blue),
                          ),
                        ],
                      ),
                      SizedBox(height: 10)
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
