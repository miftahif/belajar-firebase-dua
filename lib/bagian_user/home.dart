import 'package:belajar_firebase_dua/bagian_user/data/kebersihan.dart';
import 'package:belajar_firebase_dua/bagian_user/screen/kebersihan/kebersihan_page.dart';
import 'package:belajar_firebase_dua/bagian_user/screen/makanan/makanan_page.dart';
import 'package:belajar_firebase_dua/bagian_user/screen/minuman/minuman_page.dart';
import 'package:belajar_firebase_dua/bagian_user/screen/obat/obat_page.dart';
import 'package:belajar_firebase_dua/bagian_user/screen/rokok/rokok_page.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_cakery_shop_ui/screen/kebersihan/kebersihan_page.dart';
//import 'package:flutter_cakery_shop_ui/screen/cakery_page.dart';
// import 'package:flutter_cakery_shop_ui/screen/makanan/makanan_page.dart';
// import 'package:flutter_cakery_shop_ui/screen/minuman/minuman_page.dart';
// import 'package:flutter_cakery_shop_ui/screen/obat/obat_page.dart';
// import 'package:flutter_cakery_shop_ui/screen/rokok/rokok_page.dart';
// import 'package:flutter_cakery_shop_ui/widget/navbar_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFF545D68),
          ),
          onPressed: () {},
        ),
        title: Text(
          'Warung',
          style: TextStyle(
            fontFamily: 'Varela',
            fontSize: 24.0.sp,
            color: const Color(0xFF545D68),
          ),
        ),
        // actions: [
        //   IconButton(
        //     icon: const Icon(
        //       Icons.notifications_none,
        //       color: Color(0xFF545D68),
        //     ),
        //     onPressed: () {},
        //   ),
        // ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.sp),
        children: [
          SizedBox(height: 8.0.h),
          Text('Warung Bu Ani',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 30.0.sp,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 8.0.h),
          //Bagian Kategori atas
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: const Color(0xFFC88D67),
              isScrollable: true,
              labelPadding: const EdgeInsets.only(right: 15),
              unselectedLabelColor: const Color(0xFFCDCDCD),
              //isScrollable: true,
              // tabs: tabs,
              tabs: [
                Tab(
                  child: Text('Makanan',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 20.0.sp,
                      )),
                ),
                Tab(
                  child: Text('Minuman',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 20.0.sp,
                      )),
                ),
                Tab(
                  child: Text('Obat',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 20.0.sp,
                      )),
                ),
                Tab(
                  child: Text('Rokok',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 20.0.sp,
                      )),
                ),
                Tab(
                  child: Text('Alat Kebersihan',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 20.0.sp,
                      )),
                )
              ]),
          SizedBox(
            height: MediaQuery.of(context).size.height - 100.0.h,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: const [
                //MakananPage(),
                //MinumanPage(),
                //ObatPage(),
                //RokokPage(),
                //KebersihanPage(),
                DatabaseMakanan(),
                DatabaseMinuman(),
                DatabaseObat(),
                DatabaseRokok(),
                // DatabaseKebersihan(),
                KebersihanPage(),
              ],
            ),
          )
        ],
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: const Color(0xFFF17532),
      //   child: const Icon(Icons.fastfood),
      // ),
      // bottomNavigationBar: const NavbarWidget(),
    );
  }
}
