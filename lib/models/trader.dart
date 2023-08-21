import 'package:freezed_annotation/freezed_annotation.dart';

part 'trader.freezed.dart';
part 'trader.g.dart';

@freezed
class Trader with _$Trader {
  const factory Trader({
    required String companyName,
    required String traderSurName,
    required String traderPersonalName,
    @Freezed(fromJson: true) @Default([]) List<String> constractionImages,
    @Default('') String traderImage,
    @Default('') String detail,

    // ここから共通化してないものを書く
  }) = _Trader;
  factory Trader.fromJson(Map<String, dynamic> json) => _$TraderFromJson(json);
}
