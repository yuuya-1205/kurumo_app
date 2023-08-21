// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trader.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Trader _$$_TraderFromJson(Map<String, dynamic> json) => _$_Trader(
      companyName: json['companyName'] as String,
      traderSurName: json['traderSurName'] as String,
      traderPersonalName: json['traderPersonalName'] as String,
      constractionImages: (json['constractionImages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      traderImage: json['traderImage'] as String? ?? '',
      detail: json['detail'] as String? ?? '',
    );

Map<String, dynamic> _$$_TraderToJson(_$_Trader instance) => <String, dynamic>{
      'companyName': instance.companyName,
      'traderSurName': instance.traderSurName,
      'traderPersonalName': instance.traderPersonalName,
      'constractionImages': instance.constractionImages,
      'traderImage': instance.traderImage,
      'detail': instance.detail,
    };
