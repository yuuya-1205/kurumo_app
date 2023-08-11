import 'package:flutter/material.dart';
import 'package:kurumo_app/views/components/button.dart';

class ProvisionalReservationDetail extends StatelessWidget {
  const ProvisionalReservationDetail({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      settings: const RouteSettings(
        name: '/provisional_reservation_detail',
      ),
      builder: (_) => const ProvisionalReservationDetail(),
    );
  }

  @override
  Widget build(BuildContext context) {
    const backgroudWhith = Colors.white;
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text('仮予約詳細'),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 22, right: 22),
            color: backgroudWhith,
            width: 358,
            height: 250,
            child: Column(
              children: [
                SizedBox(height: 8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(Icons.person, color: Colors.grey),
                    SizedBox(width: 8),
                    Container(
                      width: 150,
                      height: 45,
                      child: Column(
                        children: [
                          Container(
                            width: 150,
                            height: 19,
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'キャクオ タロウ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 8,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '客尾 太郎',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(width: 9),
                              Container(
                                width: 68,
                                height: 19,
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    'さん',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 8,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 8),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.phone, color: Colors.grey),
                    SizedBox(width: 8),
                    Text(
                      '080-1234-5678',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                Row(
                  children: [
                    Icon(Icons.email, color: Colors.grey),
                    SizedBox(width: 8),
                    Text(
                      'mail@example.com',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),

                /// TODO: 地図のリストを表示する
                Container(
                  color: backgroudWhith,
                  width: 358,
                  height: 82,
                  child: Row(
                    children: [
                      Container(
                          alignment: Alignment.topLeft,
                          width: 20,
                          child: Icon(Icons.place, color: Colors.grey)),
                      const SizedBox(width: 15),
                      Container(
                        child: Column(
                          children: [
                            SizedBox(width: 8),
                            Container(
                              width: 180,
                              child: Text(
                                '〒100-8111',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Container(
                              width: 180,
                              child: Text(
                                '東京都 千代田区 千代田\n1-1-1',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            const SizedBox(width: 15),
                          ],
                        ),
                      ),
                      const SizedBox(width: 11),
                      Container(
                        color: Colors.grey,
                        width: 80,
                        height: 80,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 38),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '予約日時',
                style: TextStyle(
                  color: Color(0xFF98999B),
                  fontSize: 8,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          const SizedBox(height: 6),
          Container(
            color: backgroudWhith,
            width: 358,
            height: 38,
            child: Row(
              children: [
                Icon(Icons.schedule, color: Colors.grey),
                SizedBox(width: 15),
                Text(
                  '2023/06/12 (月)　12:00 -',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  width: 69,
                  height: 20,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: ShapeDecoration(
                    color: Color(0xFFF9B44C),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '出張希望',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Noto Sans JP',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 19),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'ヒアリング詳細',
                style: TextStyle(
                  color: Color(0xFF909090),
                  fontSize: 8,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          const SizedBox(height: 6),
          Container(
            color: backgroudWhith,
            width: 358,
            height: 38,
            child: Row(
              children: [
                Icon(Icons.directions_car, color: Colors.grey),
                SizedBox(width: 15),
                Text(
                  '普通自動車 (二列)',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
          Container(
            color: backgroudWhith,
            width: 358,
            height: 50,
            child: Row(
              children: [
                Icon(Icons.star, color: Colors.grey),
                SizedBox(width: 15),
                Column(
                  children: [
                    Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'トヨタ ライズ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Noto Sans JP',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '1.5 ハイブリッド GRスポーツ CVT',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Noto Sans JP',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: backgroudWhith,
            width: 358,
            height: 38,
            child: Row(
              children: [
                Icon(Icons.directions_car, color: Colors.grey),
                SizedBox(width: 15),
                Text(
                  'Clazzio クラッツィオ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 34),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '見積額',
                style: TextStyle(
                  color: Color(0xFF909090),
                  fontSize: 8,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          const SizedBox(height: 6),
          Container(
            color: backgroudWhith,
            width: 358,
            height: 137,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '二列車',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Text(
                      '¥ 13,000',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '神奈川、東京、大阪市内',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Text(
                      '¥ 5,000',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Divider(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Button(
                            backgroundColor: Color(0xFFD8DADD),
                            text: 'お断りする',
                            onPressed: () {}),
                      ),
                      const SizedBox(width: 8),
                      Flexible(
                        child: Button(
                            backgroundColor: Color(0xFF1FA1CA),
                            text: '予約確定',
                            onPressed: () {}),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
