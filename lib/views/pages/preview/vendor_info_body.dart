import 'package:flutter/material.dart';
import 'package:kurumo_app/themes.dart';
import 'package:kurumo_app/views/components/photo_preview.dart';
import 'package:kurumo_app/views/components/rating_stares.dart';
import 'package:kurumo_app/views/pages/preview/price_list.dart';
import 'package:kurumo_app/views/pages/preview/vendor_info.dart';

class VendorInfoBody extends StatefulWidget {
  const VendorInfoBody({Key? key}) : super(key: key);

  @override
  State<VendorInfoBody> createState() => _VendorInfoBodyState();
}

class _VendorInfoBodyState extends State<VendorInfoBody> {
  final vendorName = 'C&cover シーアンドカバー';
  final descriptionText =
      '初めてご利用なさる方も安心してお任せください！\n遠方の方でも気軽にご利用いただけるように、C&coverでは関東、関西圏なら何処へでも出張対応を行うことができます。';
  final phoneNumber = '080-1234-5678';
  final address = '東京都港区南青山1-1-1';
  final paymentMethod = 'カード,現金 可\n電子マネー 不可';

  final List<Image> images = [
    Image.asset(
      'assets/images/no_image.png',
    ),
    Image.asset(
      'assets/images/no_image.png',
    ),
    Image.asset(
      'assets/images/no_image.png',
    ),
    Image.asset(
      'assets/images/no_image.png',
    ),
  ];

  final List<Menu> priceList = [
    Menu(title: '軽自動車', price: '10000'),
    Menu(title: '二列車', price: '13000'),
    Menu(title: '三列車', price: '15000'),
    Menu(title: '外車', price: '3000'),
    Menu(
        title: 'シートカバー取り外し',
        price: '10000~',
        description: '※ シートカバー取り外しのみは行なっておりません。'),
  ];

  final List<Menu> optionPriceList = [
    Menu(title: '神奈川,東京,大阪市内', price: '5000'),
    Menu(title: '県外', price: '応相談'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Themes.grayColor[200],
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const RatingStars(rate: 4.5,),
                    const SizedBox(height: 8),
                    Text(
                      vendorName,
                      maxLines: 3,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Text(
                descriptionText,
                style: const TextStyle(
                  fontSize: 12,
                  height: 1.6,
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              '施工事例',
              style: TextStyle(
                color: Themes.grayColor[600],
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            photoPreview(images, context),
            const SizedBox(
              height: 32,
            ),
            Text(
              '基本料金表(税抜き)',
              style: TextStyle(
                color: Themes.grayColor[600],
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            PriceList(menuList: priceList),
            const SizedBox(
              height: 32,
            ),
            Text(
              'オプション料金(税抜き)',
              style: TextStyle(
                color: Themes.grayColor[600],
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            PriceList(menuList: optionPriceList),
            const SizedBox(
              height: 32,
            ),
            Text(
              '店舗情報',
              style: TextStyle(
                color: Themes.grayColor[600],
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            VendorInfo(
              phoneNumber: phoneNumber,
              address: address,
              paymentMethod: paymentMethod,
            ),
            const SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
