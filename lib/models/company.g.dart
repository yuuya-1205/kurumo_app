// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Company _$$_CompanyFromJson(Map<String, dynamic> json) => _$_Company(
      companyName: json['companyName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      postCode: json['postCode'] as String,
      address: json['address'] as String,
      buildingName: json['buildingName'] as String,
    );

Map<String, dynamic> _$$_CompanyToJson(_$_Company instance) =>
    <String, dynamic>{
      'companyName': instance.companyName,
      'phoneNumber': instance.phoneNumber,
      'postCode': instance.postCode,
      'address': instance.address,
      'buildingName': instance.buildingName,
    };
