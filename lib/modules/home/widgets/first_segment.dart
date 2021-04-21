import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ordo_test/commons/widgets/ad_card.dart';
import 'package:ordo_test/commons/widgets/app_bar_replace.dart';
import 'package:ordo_test/commons/widgets/frequently_search_card.dart';
import 'package:ordo_test/commons/widgets/promo_card.dart';
import 'package:ordo_test/commons/widgets/section_header.dart';
import 'package:ordo_test/commons/widgets/top_menu_child.dart';

class HomeFirstSegment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBarReplace(),
        Expanded(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 90.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TopMenuChild(MdiIcons.evStation, 'Elektronik',
                          Colors.blue, Colors.blue[100]),
                      TopMenuChild(MdiIcons.fuel, 'Minyak Bekas', Colors.pink,
                          Colors.pink[100]),
                      TopMenuChild(MdiIcons.sack, 'Plastik', Colors.green,
                          Colors.green[100]),
                      TopMenuChild(MdiIcons.wardrobe, 'Lainnya', Colors.pink,
                          Colors.pink[100]),
                      TopMenuChild(MdiIcons.inbox, 'Index', Colors.blue,
                          Colors.blue[100])
                    ],
                  ),
                ),
                Container(
                  height: 110,
                  width: Get.size.width,
                  child: ListView(
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: AdCard('assets/Tri-promo-joox-gojek.jpeg'),
                      ),
                      AdCard('assets/ms_visual-06.jpeg'),
                      AdCard('assets/1601869460-refoctnew_cover.png'),
                      AdCard('assets/shopee-1010.jpeg')
                    ],
                  ),
                ),
                SectionHeader('Promosi'),
                Container(
                  height: 110,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: PromoCard(
                            'assets/ipad.jpeg', 'Elektronik', '15 Brands'),
                      ),
                      PromoCard(
                          'assets/minyak.jpeg', 'Minyak Bekas', '150+ Liter'),
                      PromoCard('assets/plastik.jpeg', 'Plastik', '100+ Kg'),
                    ],
                  ),
                ),
                SectionHeader('Pencarian Terkini'),
                Container(
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: FrequentlySearchCard(
                            'assets/smartphone bekas.jpeg',
                            'Smartphone Bekas',
                            'Rp 3.000.000'),
                      ),
                      FrequentlySearchCard('assets/minyak_bekas.jpeg',
                          'Minyak Bekas', 'Rp 10.000'),
                      FrequentlySearchCard('assets/plastik_bekas.jpeg',
                          'Plastik Bekas', 'Rp 3.000')
                    ],
                  ),
                ),
              ],
            ),
          ),
        ))
      ],
    );
  }
}
