// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:belajar_firebase_dua/bagian_user/data/kebersihan.dart';
// import 'package:belajar_firebase_dua/bagian_user/mainn.dart';
import 'package:belajar_firebase_dua/bagian_user/screen/kebersihan/kebersihan_detail.dart';

//import '../data/cake.dart';

// //coba
// CollectionReference tblCatatan =
//     FirebaseFirestore.instance.collection("tabelCatatan");

// //Menampilkan data dari data base
// class Database {
//   static Stream<QuerySnapshot> getData(String judul) {
//     //Menampilkan semua data dari data base
//     if (judul == "")
//       return tblCatatan.snapshots();
//     //Menampilkan data yang di cari dari data base berdasarkan judul /  id
//     else
//       return tblCatatan
//           // .where("judulCat",isEqualTo: judul)
//           .orderBy("judulCat")
//           .startAt([judul]).endAt([judul + '\uf8ff']).snapshots();
//   }
// }
// //coba

class KebersihanPage extends StatelessWidget {
  //final String kirimdata;
  const KebersihanPage({
    Key? key,
  }) : super(key: key);

// //isi data
// Stream<QuerySnapshot<Object?>> onSearch() {
//     setState(() {});
//     return Database.getData(_searchText.text);
//   }
// //isi data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFAF8),
      body:

//bahan
          Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: SizedBox(
              //height: 200,
              height: double.infinity,
              //width: 200,
              //alignment: FractionalOffset.center,
              child: StreamBuilder<QuerySnapshot>(
                stream: Database.getData(),
                //initialData: initialData,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return const Text('ERROR');
                  } else if (snapshot.hasData || snapshot.data != null) {
                    return ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        // scrollDirection: Axis.vertical,
                        // shrinkWrap: true,
                        itemBuilder: (context, index) {
                          DocumentSnapshot dsData = snapshot.data!.docs[index];
                          String lvJudul = dsData['judulCat'];
                          String lvIsi = dsData['isiCat'];
                          //_jumlah = snapshot.data!.docs.length;
                          return ListTile(
                            onTap: () {
                              // final dtBaru = itemCatatan(
                              //     itemJudul: lvJudul, itemIsi: lvIsi);
                              // // Database.ubahData(item: dtBaru);
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             detData(dataDet: dtBaru)));
                            },
                            onLongPress: () {
                              // Database.hapusData(judulhapus: lvJudul);
                            },
                            title: Text(lvJudul),
                            subtitle: Text(lvIsi),
                          );
                        },
                        separatorBuilder: (context, index) => const SizedBox(
                              height: 8.0,
                            ),
                        itemCount: snapshot.data!.docs.length);
                  }
                  return Center(
                    child: const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Colors.pinkAccent,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //   crossAxisCount: 1,
              //   // crossAxisSpacing: 8.sp,
              //   // mainAxisSpacing: 8.sp,
              //   // childAspectRatio: 0.7.sp,
              // ),
              itemBuilder: (context, index) {
                //return _buildCard(listKebersihan[index], context);

                return _buildCard(listKebersihan[index], context);
              },
              itemCount: listKebersihan.length,
            ),

            // color: Colors.orangeAccent,
            // child: FlutterLogo(
            //   size: 60.0,
            // ),
          ),
        ],
      ),
//bahan

      //     Padding(
      //   padding: EdgeInsets.only(
      //     bottom: 80.sp,
      //   ),
      //   child: GridView.builder(
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 1,
      //       crossAxisSpacing: 8.sp,
      //       mainAxisSpacing: 8.sp,
      //       childAspectRatio: 0.7.sp,
      //     ),
      //     itemBuilder: (context, index) {
      //       //return _buildCard(listKebersihan[index], context);

      //       return _buildCard(listKebersihan[index], context);
      //     },
      //     itemCount: listKebersihan.length,
      //   ),
      // ),
    );
  }

  Widget _buildCard(
    Kebersihan kebersihan,
    context,
    //itemCatatan itemcat,
  ) {
    return Padding(
      padding: EdgeInsets.all(0.sp),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return KebersihanDetail(
              kebersihanassetPath: kebersihan.imageUrl,
              // kebersihancookieprice: kebersihan.itemIsi,
              // kebersihancookiename: kebersihan.itemJudul,
              kebersihancookieprice: kebersihan.price,
              kebersihancookiename: kebersihan.name,
            );
          }));
        },
        // child: ListView(
        //   //physics: const NeverScrollableScrollPhysics(),
        //   children: [
        // Padding(
        //   padding: EdgeInsets.only(
        //     right: 0.sp,
        //     top: 0.sp,
        //   ),
        //   // child: Row(
        //   //   mainAxisAlignment: MainAxisAlignment.end,
        //   //   children: [
        //   //     minuman.isFavorite
        //   //         ? const Icon(
        //   //             Icons.favorite,
        //   //             color: Color(0xFFEF7532),
        //   //           )
        //   //         : const Icon(
        //   //             Icons.favorite_border,
        //   //             color: Color(0xFFEF7532),
        //   //           )
        //   //   ],
        //   // ),
        // ),
        child: Container(
          height: 70.h,
          width: 70.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            image: DecorationImage(
              image: AssetImage(kebersihan.imageUrl),
              fit: BoxFit.contain,
            ),
          ),
        ),
        //SizedBox(height: 8.h),

        //Uji coba
        // Container(
        //   width: MediaQuery.of(context).size.width,
        //   child:
        // StreamBuilder<QuerySnapshot>(
        //     stream: FirebaseFirestore.instance
        //         .collection("tabelCatatan")
        //         .snapshots(),
        //     builder: (context, snapshot) {
        //       // DocumentSnapshot dsData = snapshot.data!.docs[index];
        //       if (!snapshot.hasData)
        //         return Center(child: CircularProgressIndicator());
        //       return ItemBarang(listBarang: snapshot.data!.docs);
        //     }),
        // // ),
        // Center(),
        //Uji coba

        // Center(
        //     // child: Text(
        //     //   //'$kirimdata',
        //     //   'Rp ${kebersihan.price}',
        //     //   //'Rp ${kebersihan.itemIsi}',
        //     //   style: TextStyle(
        //     //       color: const Color(0xFFCC8053),
        //     //       fontFamily: 'Varela',
        //     //       fontSize: 16.sp),
        //     // ),
        //     ),
        // Center(
        //     // child: Text(
        //     //   kebersihan.name,
        //     //   // kebersihan.itemJudul,
        //     //   overflow: TextOverflow.ellipsis,
        //     //   style: TextStyle(
        //     //       color: const Color(0xFF575E67),
        //     //       fontFamily: 'Varela',
        //     //       fontSize: 14.sp),
        //     // ),
        //     ),

        // Padding(
        //   padding: EdgeInsets.all(8.0.sp),
        //   child: Container(
        //     color: const Color(0xFFEBEBEB),
        //     height: 1.0.sp,
        //   ),
        // ),
        // Padding(
        //   padding: EdgeInsets.symmetric(horizontal: 4.sp),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Row(
        //         children: [
        //           Icon(
        //             Icons.chat,
        //             color: const Color(0xFFD17E50),
        //             size: 16.sp,
        //           ),
        //           SizedBox(
        //             width: 8.sp,
        //           ),
        //           Text(
        //             'Chat',
        //             style: TextStyle(
        //                 fontFamily: 'Varela',
        //                 color: const Color(0xFFD17E50),
        //                 fontSize: 12.sp),
        //           ),
        //         ],
        //       ),
        //       SizedBox(
        //         width: 16.h,
        //       ),
        //       // Row(
        //       //   children: [
        //       //     Icon(
        //       //       Icons.remove_circle_outline,
        //       //       color: const Color(0xFFD17E50),
        //       //       size: 16.sp,
        //       //     ),
        //       //     SizedBox(
        //       //       width: 8.w,
        //       //     ),
        //       //     Text(
        //       //       '3',
        //       //       style: TextStyle(
        //       //           fontFamily: 'Varela',
        //       //           color: const Color(0xFFD17E50),
        //       //           fontWeight: FontWeight.bold,
        //       //           fontSize: 12.sp),
        //       //     ),
        //       //     SizedBox(
        //       //       width: 8.w,
        //       //     ),
        //       //     Icon(
        //       //       Icons.add_circle_outline,
        //       //       color: const Color(0xFFD17E50),
        //       //       size: 16.sp,
        //       //     ),
        //       //   ],
        //       // ),
        //     ],
        //   ),
        // ),
        // ],
      ),
    );
    // );
  }
}

//Coba lagi
// class ItemBarang extends StatelessWidget {
//   final List<DocumentSnapshot> listBarang;

//   const ItemBarang({
//     Key? key,
//     required this.listBarang,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         itemCount: listBarang == null ? 0 : listBarang.length,
//         itemBuilder: ((context, index) {
//           // DocumentSnapshot dsData = snapshot.data!.docs[index];
//           //                 String lvJudul = dsData['judulCat'];
//           String kodeBarang = listBarang[index].data().toString();
//           return Text(kodeBarang);
//           // print(kodeBarang);
//         }));
//   }
// }
//Coba lagi

// Coba
//Coneksi data base
CollectionReference tblCatatan =
    FirebaseFirestore.instance.collection("tabelMakanan");

//Menampilkan data dari data base
class Database {
  static Stream<QuerySnapshot> getData() {
    return tblCatatan.snapshots();
  }
}

class DatabaseKebersihan extends StatelessWidget {
  const DatabaseKebersihan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: Database.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Text('ERROR');
          } else if (snapshot.hasData || snapshot.data != null) {
            return ListView.separated(
                itemBuilder: (context, index) {
                  DocumentSnapshot dsData = snapshot.data!.docs[index];
                  String lvJudul = dsData['judulCat'];
                  String lvIsi = dsData['isiCat'];
                  //_jumlah = snapshot.data!.docs.length;
                  return ListTile(
                    onTap: () {
                      // final dtBaru = itemCatatan(
                      //     itemJudul: lvJudul, itemIsi: lvIsi);
                      // // Database.ubahData(item: dtBaru);
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) =>
                      //             detData(dataDet: dtBaru)));
                    },
                    onLongPress: () {
                      // Database.hapusData(judulhapus: lvJudul);
                    },
                    title: Text(lvJudul),
                    subtitle: Text(lvIsi),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                      height: 8.0,
                    ),
                itemCount: snapshot.data!.docs.length);
          }
          return Center(
            child: const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Colors.pinkAccent,
              ),
            ),
          );
        },
      ),
    );
  }
}
// Coba
