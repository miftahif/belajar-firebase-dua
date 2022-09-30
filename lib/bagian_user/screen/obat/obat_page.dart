import 'package:belajar_firebase_dua/bagian_user/data/obat.dart';
import 'package:belajar_firebase_dua/bagian_user/screen/obat/obat_detail.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_cakery_shop_ui/data/minuman.dart';
// import 'package:flutter_cakery_shop_ui/data/obat.dart';
//import 'package:flutter_cakery_shop_ui/screen/cakery_detail.dart';
//import 'package:flutter_cakery_shop_ui/screen/makanan/makanan_detail.dart';
// import 'package:flutter_cakery_shop_ui/screen/obat/obat_detail.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//import '../data/cake.dart';

class ObatPage extends StatelessWidget {
  const ObatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFAF8),
      body: Padding(
        padding: EdgeInsets.only(
          bottom: 80.sp,
        ),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.sp,
            mainAxisSpacing: 8.sp,
            childAspectRatio: 0.7.sp,
          ),
          itemBuilder: (context, index) {
            return _buildCard(listObat[index], context);
          },
          itemCount: listObat.length,
        ),
      ),
    );
  }

  Widget _buildCard(
    Obat obat,
    context,
  ) {
    return Padding(
      padding: EdgeInsets.all(4.sp),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return ObatDetail(
              obatassetPath: obat.imageUrl,
              obatcookieprice: obat.price,
              obatcookiename: obat.name,
            );
          }));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0.r),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0,
              )
            ],
            color: Colors.white,
          ),
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: 8.sp,
                  top: 8.sp,
                ),
                // child: Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     minuman.isFavorite
                //         ? const Icon(
                //             Icons.favorite,
                //             color: Color(0xFFEF7532),
                //           )
                //         : const Icon(
                //             Icons.favorite_border,
                //             color: Color(0xFFEF7532),
                //           )
                //   ],
                // ),
              ),
              Container(
                height: 85.h,
                width: 85.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  image: DecorationImage(
                    image: AssetImage(obat.imageUrl),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Center(
                child: Text(
                  'Rp ${obat.price}',
                  style: TextStyle(
                      color: const Color(0xFFCC8053),
                      fontFamily: 'Varela',
                      fontSize: 16.sp),
                ),
              ),
              Center(
                child: Text(
                  obat.name,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: const Color(0xFF575E67),
                      fontFamily: 'Varela',
                      fontSize: 14.sp),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0.sp),
                child: Container(
                  color: const Color(0xFFEBEBEB),
                  height: 1.0.sp,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.chat,
                          color: const Color(0xFFD17E50),
                          size: 16.sp,
                        ),
                        SizedBox(
                          width: 8.sp,
                        ),
                        Text(
                          'Chat',
                          style: TextStyle(
                              fontFamily: 'Varela',
                              color: const Color(0xFFD17E50),
                              fontSize: 12.sp),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 16.h,
                    ),
                    // Row(
                    //   children: [
                    //     Icon(
                    //       Icons.remove_circle_outline,
                    //       color: const Color(0xFFD17E50),
                    //       size: 16.sp,
                    //     ),
                    //     SizedBox(
                    //       width: 8.w,
                    //     ),
                    //     Text(
                    //       '3',
                    //       style: TextStyle(
                    //           fontFamily: 'Varela',
                    //           color: const Color(0xFFD17E50),
                    //           fontWeight: FontWeight.bold,
                    //           fontSize: 12.sp),
                    //     ),
                    //     SizedBox(
                    //       width: 8.w,
                    //     ),
                    //     Icon(
                    //       Icons.add_circle_outline,
                    //       color: const Color(0xFFD17E50),
                    //       size: 16.sp,
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Coba
//Coneksi data base
CollectionReference tblCatatan =
    FirebaseFirestore.instance.collection("tabelCatatan");

//Menampilkan data dari data base
class Database {
  static Stream<QuerySnapshot> getData() {
    return tblCatatan.snapshots();
  }
}

class DatabaseObat extends StatelessWidget {
  const DatabaseObat({Key? key}) : super(key: key);

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
