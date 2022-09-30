import 'package:belajar_firebase_dua/bagian_user/home.dart';
import 'package:belajar_firebase_dua/firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_cakery_shop_ui/home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// import 'package:belajar_firebase_dua/dataclass.dart';
// import 'package:belajar_firebase_dua/dbservices.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyUser());
}

class MyUser extends StatelessWidget {
  const MyUser({super.key});

  // _MyUserState createState() => _MyUserState();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const Home(),
        );
      },
    );
  }
}

// class _MyUserState {
// final _searcText = TextEditingController();

//   @override
//   void dispose() {
//     _searcText.dispose();
//     super.dispose();
//   }

//   @override
//   void initState() {
//     _searcText.addListener(onSearch);
//     super.initState();
//   }

//   Stream<QuerySnapshot<Object?>> onSearch() {
//     setState(() {});
//     return Database.getData(_searcText.text);
//   }
// }

//Coneksi data base
CollectionReference tblCatatan =
    FirebaseFirestore.instance.collection("tabelCatatan");

//Menampilkan data dari data base
class Database {
  static Stream<QuerySnapshot> getData() {
    return tblCatatan.snapshots();

    // //Menampilkan semua data dari data base
    // if (judul == "")
    //   return tblCatatan.snapshots();
    // //Menampilkan data yang di cari dari data base berdasarkan judul /  id
    // else
    //   return tblCatatan
    //       // .where("judulCat",isEqualTo: judul)
    //       .orderBy("judulCat")
    //       .startAt([judul]).endAt([judul + '\uf8ff']).snapshots();
  }
}
//Coneksi data base

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
// //Coneksi data base
