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
            height: 223,
            child: Column(
              children: [
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.person, color: Colors.grey),
                    SizedBox(width: 8),
                    Column(
                      children: [
                        Text(
                          'キャクオ タロウ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 8,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '客尾 太郎',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
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

                /// TODO: 地図のリストを表示する
                Container(
                  margin: const EdgeInsets.only(left: 22, right: 22),
                  color: backgroudWhith,
                  width: 358,
                  height: 82,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.place, color: Colors.grey),
                          Column(
                            children: [
                              Text(
                                '〒100-8111',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                '東京都 千代田区 千代田\n1-1-1',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 11),
                          Container(
                            color: Colors.grey,
                            width: 80,
                            height: 80,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 38),
          Container(
            color: backgroudWhith,
            width: 358,
            height: 38,
            child: Row(
              children: [
                Icon(Icons.access_time, color: Colors.grey),
                const SizedBox(width: 15),
                Text('2023/06/12 (月)　12:00 -'),
                const SizedBox(width: 15),
                SizedBox(
                    width: 121, child: Button(text: '出張希望', onPressed: () {})),
              ],
            ),
          ),
          const SizedBox(height: 38),
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
                      width: 250,
                      child: Text(
                        'トヨタ ライズ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Noto Sans JP',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      width: 250,
                      child: Text(
                        '1.5 ハイブリッド GRスポーツ CVT',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Noto Sans JP',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
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
          const SizedBox(height: 38),
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
          const SizedBox(height: 34),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
