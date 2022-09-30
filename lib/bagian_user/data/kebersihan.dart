//Uji Coba
import 'package:belajar_firebase_dua/bagian_user/mainn.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

//Uji Coba
// class TesData extends StatelessWidget {
//   const TesData({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder<QuerySnapshot>(
//         stream: Database.getData(),
//         builder: (context, snapshot) {
//           if (snapshot.hasError) {
//             return const Text('ERROR');
//           } else if (snapshot.hasData || snapshot.data != null) {
//             return ListView.separated(
//                 itemBuilder: (context, index) {
//                   DocumentSnapshot dsData = snapshot.data!.docs[index];
//                   String lvJudul = dsData['judulCat'];
//                   String lvIsi = dsData['isiCat'];
//                   // print(lvJudul);
//                   // print(lvIsi);

//                   //_jumlah = snapshot.data!.docs.length;
//                   return ListTile(
//                     onTap: () {
//                       // final dtBaru = itemCatatan(
//                       //     itemJudul: lvJudul, itemIsi: lvIsi);
//                       // // Database.ubahData(item: dtBaru);
//                       // Navigator.push(
//                       //     context,
//                       //     MaterialPageRoute(
//                       //         builder: (context) =>
//                       //             detData(dataDet: dtBaru)));
//                     },
//                     onLongPress: () {
//                       // Database.hapusData(judulhapus: lvJudul);
//                     },
//                     title: Text(lvJudul),
//                     subtitle: Text(lvIsi),
//                   );
//                 },
//                 separatorBuilder: (context, index) => const SizedBox(
//                       height: 8.0,
//                     ),
//                 itemCount: snapshot.data!.docs.length);
//           }
//           return Center(
//             child: const CircularProgressIndicator(
//               valueColor: AlwaysStoppedAnimation<Color>(
//                 Colors.pinkAccent,
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
//Uji Coba

class Kebersihan {
  final int id;
  final String name;
  final String price;
  final String imageUrl;
  // final bool isFavorite;
  // final String subMenu;
  // final String itemJudul;
  // final String itemIsi;

  Kebersihan({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    // required this.isFavorite,
    // required this.subMenu,
    // required itemJudul,
    // required itemIsi})
    // : super(itemJudul: itemJudul, itemIsi: itemIsi);
  });
}

final List<Kebersihan> listKebersihan = [
  Kebersihan(
    id: 1,
    name: 'Molto',
    price: '1.000',
    imageUrl: 'assets/kebersihan/moltosaset.jpg',

// FirebaseFirestore.instance
//         .collection("tabelCatatan")
//         .snapshots()
//         .listen((event) {
//       for (var element in event.docs) {
//         element.data()['judulCat'];
//       }
//     }),

    // itemJudul: null,
    // itemIsi: null,

    // isFavorite: true,
    // subMenu: 'cake_box',
  ),
  Kebersihan(
    id: 2,
    name: 'Pepsodent',
    price: '8.000',
    imageUrl: 'assets/kebersihan/pepsodent.jpg',
    // itemJudul: null,
    // itemIsi: null,
    // isFavorite: false,
    // subMenu: 'cake_box',
  ),
  Kebersihan(
    id: 3,
    name: 'Rinso',
    price: '2.000',
    imageUrl: 'assets/kebersihan/rinsosaset.jpg',

    // itemJudul: null,
    // itemIsi: null,
    // isFavorite: true,
    // subMenu: 'cake_box',
  ),
  Kebersihan(
    id: 4,
    name: 'Sabun Dav',
    price: '3.000',
    imageUrl: 'assets/kebersihan/sabundav.jpg',

    // itemJudul: null,
    // itemIsi: null,
    // isFavorite: true,
    // subMenu: 'cake_box',
  ),
  Kebersihan(
    id: 5,
    name: 'Sabun Lux',
    price: '3.000',
    imageUrl: 'assets/kebersihan/sabunlux.jpg',

    // itemJudul: null,
    // itemIsi: null,
    // isFavorite: false,
    // subMenu: 'cake_box',
  ),
  Kebersihan(
    id: 6,
    name: 'Shampo Pentin',
    price: '500',
    imageUrl: 'assets/kebersihan/sampopentinsaset.jpg',

    // itemJudul: null,
    // itemIsi: null,
    // isFavorite: false,
    // subMenu: 'cake_box',
  ),
];
