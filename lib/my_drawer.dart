import 'package:flutter/material.dart';

// ignore: camel_case_types
class My_Drawer extends StatefulWidget {
  const My_Drawer({super.key});

  @override
  State<My_Drawer> createState() => _My_DrawerState();
}

// ignore: camel_case_types
class _My_DrawerState extends State<My_Drawer> {
  final List<String> name = <String>[
    "Giriş Yap",
    "Olan Biten",
    "Bugün Ne Pişirsem",
    "Keşfet",
    "Öne Çıkan Tarifler",
    "Soru-Cevap",
    "Yazarlar",
    "Tarif Ara",
    "E-Psta ve Bildirim Ayarları",
    "Tarifler",
    "Videolar",
    "Menüler",
    "Blog",
    "Listeler",
    "Kaç kalori",
    "Uygulamayı Paylaş",
    "Uygulamayı Puanla",
    "Hata Bildir",
    "İletişim",
  ];
  final List<IconData> icons = <IconData>[
    Icons.vpn_key,
    Icons.newspaper_rounded,
    Icons.fastfood,
    Icons.vpn_key,
    Icons.newspaper_rounded,
    Icons.fastfood,
    Icons.vpn_key,
    Icons.newspaper_rounded,
    Icons.fastfood,
    Icons.vpn_key,
    Icons.newspaper_rounded,
    Icons.fastfood,
    Icons.vpn_key,
    Icons.newspaper_rounded,
    Icons.fastfood,
    Icons.fastfood,
    Icons.share,
    Icons.newspaper_rounded,
    Icons.error_outline,
  ];
  final List<String> title = <String>[
    "Kategoriler",
    "Diğer",
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: name.length + 1,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Image.asset(
              'assets/images/nyt_logo.png',
              fit: BoxFit.cover,
            );
          } else if (index == 1 || index == 8) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton.icon(
                    icon: Icon(
                      icons[index - 1],
                      color: Color(0xFF808080),
                    ),
                    label: Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        name[index - 1],
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            );
          } else if (index == 9 || index == 13) {
            // 2. ve 3. grup
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Divider(),
                Text(
                  title[index == 9 ? 0 : 1], // title
                  style: TextStyle(
                    color: Colors.black38,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton.icon(
                    icon: Icon(
                      icons[index - 1],
                      color: Color(0xFF808080),
                    ),
                    label: Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        name[index - 1],
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            );
          } else {
            // Other
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton.icon(
                    icon: Icon(
                      icons[index - 1],
                      color: Color(0xFF808080),
                    ),
                    label: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        name[index - 1],
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
//Column(
//   children: <Widget>[
//     Image.asset('assets/images/nyt_logo.svg'),
//     ListView.separated(
//       padding: const EdgeInsets.all(8),
//       itemCount: name.length,
//       itemBuilder: (BuildContext context, int index) {
//         return Container(
//           height: 50,
//           color: Colors.black45,
//           child: Center(child: Text('Entry ${name[index]}')),
//         );
//       },
//       separatorBuilder: (BuildContext context, int index) =>
//           const Divider(),
//     ),
//   ],
// ),
