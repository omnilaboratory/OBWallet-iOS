//
//  Generated code. Do not modify.
//  source: user/country.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CurrencyCode extends $pb.ProtobufEnum {
  static const CurrencyCode UNKNOWNCurrency = CurrencyCode._(0, _omitEnumNames ? '' : 'UNKNOWNCurrency');
  static const CurrencyCode CNY = CurrencyCode._(1, _omitEnumNames ? '' : 'CNY');
  static const CurrencyCode USD = CurrencyCode._(2, _omitEnumNames ? '' : 'USD');
  static const CurrencyCode GBP = CurrencyCode._(3, _omitEnumNames ? '' : 'GBP');
  static const CurrencyCode HKD = CurrencyCode._(4, _omitEnumNames ? '' : 'HKD');
  static const CurrencyCode CHF = CurrencyCode._(5, _omitEnumNames ? '' : 'CHF');
  static const CurrencyCode SGD = CurrencyCode._(6, _omitEnumNames ? '' : 'SGD');
  static const CurrencyCode SEK = CurrencyCode._(7, _omitEnumNames ? '' : 'SEK');
  static const CurrencyCode DKK = CurrencyCode._(8, _omitEnumNames ? '' : 'DKK');
  static const CurrencyCode NOK = CurrencyCode._(9, _omitEnumNames ? '' : 'NOK');
  static const CurrencyCode JPY = CurrencyCode._(10, _omitEnumNames ? '' : 'JPY');
  static const CurrencyCode CAD = CurrencyCode._(11, _omitEnumNames ? '' : 'CAD');
  static const CurrencyCode AUD = CurrencyCode._(12, _omitEnumNames ? '' : 'AUD');
  static const CurrencyCode EUR = CurrencyCode._(13, _omitEnumNames ? '' : 'EUR');
  static const CurrencyCode MOP = CurrencyCode._(14, _omitEnumNames ? '' : 'MOP');
  static const CurrencyCode PHP = CurrencyCode._(15, _omitEnumNames ? '' : 'PHP');
  static const CurrencyCode THB = CurrencyCode._(16, _omitEnumNames ? '' : 'THB');
  static const CurrencyCode NZD = CurrencyCode._(17, _omitEnumNames ? '' : 'NZD');
  static const CurrencyCode KRW = CurrencyCode._(18, _omitEnumNames ? '' : 'KRW');
  static const CurrencyCode RUB = CurrencyCode._(19, _omitEnumNames ? '' : 'RUB');
  static const CurrencyCode MYR = CurrencyCode._(20, _omitEnumNames ? '' : 'MYR');
  static const CurrencyCode TWD = CurrencyCode._(21, _omitEnumNames ? '' : 'TWD');
  static const CurrencyCode INR = CurrencyCode._(22, _omitEnumNames ? '' : 'INR');

  static const $core.List<CurrencyCode> values = <CurrencyCode> [
    UNKNOWNCurrency,
    CNY,
    USD,
    GBP,
    HKD,
    CHF,
    SGD,
    SEK,
    DKK,
    NOK,
    JPY,
    CAD,
    AUD,
    EUR,
    MOP,
    PHP,
    THB,
    NZD,
    KRW,
    RUB,
    MYR,
    TWD,
    INR,
  ];

  static final $core.Map<$core.int, CurrencyCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CurrencyCode? valueOf($core.int value) => _byValue[value];

  const CurrencyCode._($core.int v, $core.String n) : super(v, n);
}

class CountryCode extends $pb.ProtobufEnum {
  static const CountryCode UNKNOWNISO = CountryCode._(0, _omitEnumNames ? '' : 'UNKNOWNISO');
  static const CountryCode AF = CountryCode._(1, _omitEnumNames ? '' : 'AF');
  static const CountryCode AL = CountryCode._(2, _omitEnumNames ? '' : 'AL');
  static const CountryCode DZ = CountryCode._(3, _omitEnumNames ? '' : 'DZ');
  static const CountryCode AS = CountryCode._(4, _omitEnumNames ? '' : 'AS');
  static const CountryCode AD = CountryCode._(5, _omitEnumNames ? '' : 'AD');
  static const CountryCode AO = CountryCode._(6, _omitEnumNames ? '' : 'AO');
  static const CountryCode AI = CountryCode._(7, _omitEnumNames ? '' : 'AI');
  static const CountryCode AQ = CountryCode._(8, _omitEnumNames ? '' : 'AQ');
  static const CountryCode AG = CountryCode._(9, _omitEnumNames ? '' : 'AG');
  static const CountryCode AR = CountryCode._(10, _omitEnumNames ? '' : 'AR');
  static const CountryCode AM = CountryCode._(11, _omitEnumNames ? '' : 'AM');
  static const CountryCode AW = CountryCode._(12, _omitEnumNames ? '' : 'AW');
  static const CountryCode AU = CountryCode._(13, _omitEnumNames ? '' : 'AU');
  static const CountryCode AT = CountryCode._(14, _omitEnumNames ? '' : 'AT');
  static const CountryCode AZ = CountryCode._(15, _omitEnumNames ? '' : 'AZ');
  static const CountryCode BS = CountryCode._(16, _omitEnumNames ? '' : 'BS');
  static const CountryCode BH = CountryCode._(17, _omitEnumNames ? '' : 'BH');
  static const CountryCode BD = CountryCode._(18, _omitEnumNames ? '' : 'BD');
  static const CountryCode BB = CountryCode._(19, _omitEnumNames ? '' : 'BB');
  static const CountryCode BY = CountryCode._(20, _omitEnumNames ? '' : 'BY');
  static const CountryCode BE = CountryCode._(21, _omitEnumNames ? '' : 'BE');
  static const CountryCode BZ = CountryCode._(22, _omitEnumNames ? '' : 'BZ');
  static const CountryCode BJ = CountryCode._(23, _omitEnumNames ? '' : 'BJ');
  static const CountryCode BM = CountryCode._(24, _omitEnumNames ? '' : 'BM');
  static const CountryCode BT = CountryCode._(25, _omitEnumNames ? '' : 'BT');
  static const CountryCode BO = CountryCode._(26, _omitEnumNames ? '' : 'BO');
  static const CountryCode BA = CountryCode._(27, _omitEnumNames ? '' : 'BA');
  static const CountryCode BW = CountryCode._(28, _omitEnumNames ? '' : 'BW');
  static const CountryCode BR = CountryCode._(29, _omitEnumNames ? '' : 'BR');
  static const CountryCode IO = CountryCode._(30, _omitEnumNames ? '' : 'IO');
  static const CountryCode VG = CountryCode._(31, _omitEnumNames ? '' : 'VG');
  static const CountryCode BN = CountryCode._(32, _omitEnumNames ? '' : 'BN');
  static const CountryCode BG = CountryCode._(33, _omitEnumNames ? '' : 'BG');
  static const CountryCode BF = CountryCode._(34, _omitEnumNames ? '' : 'BF');
  static const CountryCode MM = CountryCode._(35, _omitEnumNames ? '' : 'MM');
  static const CountryCode BI = CountryCode._(36, _omitEnumNames ? '' : 'BI');
  static const CountryCode KH = CountryCode._(37, _omitEnumNames ? '' : 'KH');
  static const CountryCode CM = CountryCode._(38, _omitEnumNames ? '' : 'CM');
  static const CountryCode CA = CountryCode._(39, _omitEnumNames ? '' : 'CA');
  static const CountryCode CV = CountryCode._(40, _omitEnumNames ? '' : 'CV');
  static const CountryCode KY = CountryCode._(41, _omitEnumNames ? '' : 'KY');
  static const CountryCode CF = CountryCode._(42, _omitEnumNames ? '' : 'CF');
  static const CountryCode TD = CountryCode._(43, _omitEnumNames ? '' : 'TD');
  static const CountryCode CL = CountryCode._(44, _omitEnumNames ? '' : 'CL');
  static const CountryCode CN = CountryCode._(45, _omitEnumNames ? '' : 'CN');
  static const CountryCode CX = CountryCode._(46, _omitEnumNames ? '' : 'CX');
  static const CountryCode CC = CountryCode._(47, _omitEnumNames ? '' : 'CC');
  static const CountryCode CO = CountryCode._(48, _omitEnumNames ? '' : 'CO');
  static const CountryCode KM = CountryCode._(49, _omitEnumNames ? '' : 'KM');
  static const CountryCode CG = CountryCode._(50, _omitEnumNames ? '' : 'CG');
  static const CountryCode CD = CountryCode._(51, _omitEnumNames ? '' : 'CD');
  static const CountryCode CK = CountryCode._(52, _omitEnumNames ? '' : 'CK');
  static const CountryCode CR = CountryCode._(53, _omitEnumNames ? '' : 'CR');
  static const CountryCode HR = CountryCode._(54, _omitEnumNames ? '' : 'HR');
  static const CountryCode CU = CountryCode._(55, _omitEnumNames ? '' : 'CU');
  static const CountryCode CW = CountryCode._(56, _omitEnumNames ? '' : 'CW');
  static const CountryCode CY = CountryCode._(57, _omitEnumNames ? '' : 'CY');
  static const CountryCode CZ = CountryCode._(58, _omitEnumNames ? '' : 'CZ');
  static const CountryCode DK = CountryCode._(59, _omitEnumNames ? '' : 'DK');
  static const CountryCode DJ = CountryCode._(60, _omitEnumNames ? '' : 'DJ');
  static const CountryCode DM = CountryCode._(61, _omitEnumNames ? '' : 'DM');
  static const CountryCode DO = CountryCode._(62, _omitEnumNames ? '' : 'DO');
  static const CountryCode TL = CountryCode._(63, _omitEnumNames ? '' : 'TL');
  static const CountryCode EC = CountryCode._(64, _omitEnumNames ? '' : 'EC');
  static const CountryCode EG = CountryCode._(65, _omitEnumNames ? '' : 'EG');
  static const CountryCode SV = CountryCode._(66, _omitEnumNames ? '' : 'SV');
  static const CountryCode GQ = CountryCode._(67, _omitEnumNames ? '' : 'GQ');
  static const CountryCode ER = CountryCode._(68, _omitEnumNames ? '' : 'ER');
  static const CountryCode EE = CountryCode._(69, _omitEnumNames ? '' : 'EE');
  static const CountryCode ET = CountryCode._(70, _omitEnumNames ? '' : 'ET');
  static const CountryCode FK = CountryCode._(71, _omitEnumNames ? '' : 'FK');
  static const CountryCode FO = CountryCode._(72, _omitEnumNames ? '' : 'FO');
  static const CountryCode FJ = CountryCode._(73, _omitEnumNames ? '' : 'FJ');
  static const CountryCode FI = CountryCode._(74, _omitEnumNames ? '' : 'FI');
  static const CountryCode FR = CountryCode._(75, _omitEnumNames ? '' : 'FR');
  static const CountryCode PF = CountryCode._(76, _omitEnumNames ? '' : 'PF');
  static const CountryCode GA = CountryCode._(77, _omitEnumNames ? '' : 'GA');
  static const CountryCode GM = CountryCode._(78, _omitEnumNames ? '' : 'GM');
  static const CountryCode GE = CountryCode._(79, _omitEnumNames ? '' : 'GE');
  static const CountryCode DE = CountryCode._(80, _omitEnumNames ? '' : 'DE');
  static const CountryCode GH = CountryCode._(81, _omitEnumNames ? '' : 'GH');
  static const CountryCode GI = CountryCode._(82, _omitEnumNames ? '' : 'GI');
  static const CountryCode GR = CountryCode._(83, _omitEnumNames ? '' : 'GR');
  static const CountryCode GL = CountryCode._(84, _omitEnumNames ? '' : 'GL');
  static const CountryCode GD = CountryCode._(85, _omitEnumNames ? '' : 'GD');
  static const CountryCode GU = CountryCode._(86, _omitEnumNames ? '' : 'GU');
  static const CountryCode GT = CountryCode._(87, _omitEnumNames ? '' : 'GT');
  static const CountryCode GG = CountryCode._(88, _omitEnumNames ? '' : 'GG');
  static const CountryCode GN = CountryCode._(89, _omitEnumNames ? '' : 'GN');
  static const CountryCode GW = CountryCode._(90, _omitEnumNames ? '' : 'GW');
  static const CountryCode GY = CountryCode._(91, _omitEnumNames ? '' : 'GY');
  static const CountryCode HT = CountryCode._(92, _omitEnumNames ? '' : 'HT');
  static const CountryCode HN = CountryCode._(93, _omitEnumNames ? '' : 'HN');
  static const CountryCode HK = CountryCode._(94, _omitEnumNames ? '' : 'HK');
  static const CountryCode HU = CountryCode._(95, _omitEnumNames ? '' : 'HU');
  static const CountryCode IS = CountryCode._(96, _omitEnumNames ? '' : 'IS');
  static const CountryCode IN = CountryCode._(97, _omitEnumNames ? '' : 'IN');
  static const CountryCode ID = CountryCode._(98, _omitEnumNames ? '' : 'ID');
  static const CountryCode IR = CountryCode._(99, _omitEnumNames ? '' : 'IR');
  static const CountryCode IQ = CountryCode._(100, _omitEnumNames ? '' : 'IQ');
  static const CountryCode IE = CountryCode._(101, _omitEnumNames ? '' : 'IE');
  static const CountryCode IM = CountryCode._(102, _omitEnumNames ? '' : 'IM');
  static const CountryCode IL = CountryCode._(103, _omitEnumNames ? '' : 'IL');
  static const CountryCode IT = CountryCode._(104, _omitEnumNames ? '' : 'IT');
  static const CountryCode CI = CountryCode._(105, _omitEnumNames ? '' : 'CI');
  static const CountryCode JM = CountryCode._(106, _omitEnumNames ? '' : 'JM');
  static const CountryCode JP = CountryCode._(107, _omitEnumNames ? '' : 'JP');
  static const CountryCode JE = CountryCode._(108, _omitEnumNames ? '' : 'JE');
  static const CountryCode JO = CountryCode._(109, _omitEnumNames ? '' : 'JO');
  static const CountryCode KZ = CountryCode._(110, _omitEnumNames ? '' : 'KZ');
  static const CountryCode KE = CountryCode._(111, _omitEnumNames ? '' : 'KE');
  static const CountryCode KI = CountryCode._(112, _omitEnumNames ? '' : 'KI');
  static const CountryCode XK = CountryCode._(113, _omitEnumNames ? '' : 'XK');
  static const CountryCode KW = CountryCode._(114, _omitEnumNames ? '' : 'KW');
  static const CountryCode KG = CountryCode._(115, _omitEnumNames ? '' : 'KG');
  static const CountryCode LA = CountryCode._(116, _omitEnumNames ? '' : 'LA');
  static const CountryCode LV = CountryCode._(117, _omitEnumNames ? '' : 'LV');
  static const CountryCode LB = CountryCode._(118, _omitEnumNames ? '' : 'LB');
  static const CountryCode LS = CountryCode._(119, _omitEnumNames ? '' : 'LS');
  static const CountryCode LR = CountryCode._(120, _omitEnumNames ? '' : 'LR');
  static const CountryCode LY = CountryCode._(121, _omitEnumNames ? '' : 'LY');
  static const CountryCode LI = CountryCode._(122, _omitEnumNames ? '' : 'LI');
  static const CountryCode LT = CountryCode._(123, _omitEnumNames ? '' : 'LT');
  static const CountryCode LU = CountryCode._(124, _omitEnumNames ? '' : 'LU');
  static const CountryCode MO = CountryCode._(125, _omitEnumNames ? '' : 'MO');
  static const CountryCode MK = CountryCode._(126, _omitEnumNames ? '' : 'MK');
  static const CountryCode MG = CountryCode._(127, _omitEnumNames ? '' : 'MG');
  static const CountryCode MW = CountryCode._(128, _omitEnumNames ? '' : 'MW');
  static const CountryCode MY = CountryCode._(129, _omitEnumNames ? '' : 'MY');
  static const CountryCode MV = CountryCode._(130, _omitEnumNames ? '' : 'MV');
  static const CountryCode ML = CountryCode._(131, _omitEnumNames ? '' : 'ML');
  static const CountryCode MT = CountryCode._(132, _omitEnumNames ? '' : 'MT');
  static const CountryCode MH = CountryCode._(133, _omitEnumNames ? '' : 'MH');
  static const CountryCode MR = CountryCode._(134, _omitEnumNames ? '' : 'MR');
  static const CountryCode MU = CountryCode._(135, _omitEnumNames ? '' : 'MU');
  static const CountryCode YT = CountryCode._(136, _omitEnumNames ? '' : 'YT');
  static const CountryCode MX = CountryCode._(137, _omitEnumNames ? '' : 'MX');
  static const CountryCode FM = CountryCode._(138, _omitEnumNames ? '' : 'FM');
  static const CountryCode MD = CountryCode._(139, _omitEnumNames ? '' : 'MD');
  static const CountryCode MC = CountryCode._(140, _omitEnumNames ? '' : 'MC');
  static const CountryCode MN = CountryCode._(141, _omitEnumNames ? '' : 'MN');
  static const CountryCode ME = CountryCode._(142, _omitEnumNames ? '' : 'ME');
  static const CountryCode MS = CountryCode._(143, _omitEnumNames ? '' : 'MS');
  static const CountryCode MA = CountryCode._(144, _omitEnumNames ? '' : 'MA');
  static const CountryCode MZ = CountryCode._(145, _omitEnumNames ? '' : 'MZ');
  static const CountryCode NA = CountryCode._(146, _omitEnumNames ? '' : 'NA');
  static const CountryCode NR = CountryCode._(147, _omitEnumNames ? '' : 'NR');
  static const CountryCode NP = CountryCode._(148, _omitEnumNames ? '' : 'NP');
  static const CountryCode NL = CountryCode._(149, _omitEnumNames ? '' : 'NL');
  static const CountryCode AN = CountryCode._(150, _omitEnumNames ? '' : 'AN');
  static const CountryCode NC = CountryCode._(151, _omitEnumNames ? '' : 'NC');
  static const CountryCode NZ = CountryCode._(152, _omitEnumNames ? '' : 'NZ');
  static const CountryCode NI = CountryCode._(153, _omitEnumNames ? '' : 'NI');
  static const CountryCode NE = CountryCode._(154, _omitEnumNames ? '' : 'NE');
  static const CountryCode NG = CountryCode._(155, _omitEnumNames ? '' : 'NG');
  static const CountryCode NU = CountryCode._(156, _omitEnumNames ? '' : 'NU');
  static const CountryCode MP = CountryCode._(157, _omitEnumNames ? '' : 'MP');
  static const CountryCode KP = CountryCode._(158, _omitEnumNames ? '' : 'KP');
  static const CountryCode NO = CountryCode._(159, _omitEnumNames ? '' : 'NO');
  static const CountryCode OM = CountryCode._(160, _omitEnumNames ? '' : 'OM');
  static const CountryCode PK = CountryCode._(161, _omitEnumNames ? '' : 'PK');
  static const CountryCode PW = CountryCode._(162, _omitEnumNames ? '' : 'PW');
  static const CountryCode PS = CountryCode._(163, _omitEnumNames ? '' : 'PS');
  static const CountryCode PA = CountryCode._(164, _omitEnumNames ? '' : 'PA');
  static const CountryCode PG = CountryCode._(165, _omitEnumNames ? '' : 'PG');
  static const CountryCode PY = CountryCode._(166, _omitEnumNames ? '' : 'PY');
  static const CountryCode PE = CountryCode._(167, _omitEnumNames ? '' : 'PE');
  static const CountryCode PH = CountryCode._(168, _omitEnumNames ? '' : 'PH');
  static const CountryCode PN = CountryCode._(169, _omitEnumNames ? '' : 'PN');
  static const CountryCode PL = CountryCode._(170, _omitEnumNames ? '' : 'PL');
  static const CountryCode PT = CountryCode._(171, _omitEnumNames ? '' : 'PT');
  static const CountryCode PR = CountryCode._(172, _omitEnumNames ? '' : 'PR');
  static const CountryCode QA = CountryCode._(173, _omitEnumNames ? '' : 'QA');
  static const CountryCode RE = CountryCode._(174, _omitEnumNames ? '' : 'RE');
  static const CountryCode RO = CountryCode._(175, _omitEnumNames ? '' : 'RO');
  static const CountryCode RU = CountryCode._(176, _omitEnumNames ? '' : 'RU');
  static const CountryCode RW = CountryCode._(177, _omitEnumNames ? '' : 'RW');
  static const CountryCode BL = CountryCode._(178, _omitEnumNames ? '' : 'BL');
  static const CountryCode WS = CountryCode._(179, _omitEnumNames ? '' : 'WS');
  static const CountryCode SM = CountryCode._(180, _omitEnumNames ? '' : 'SM');
  static const CountryCode ST = CountryCode._(181, _omitEnumNames ? '' : 'ST');
  static const CountryCode SA = CountryCode._(182, _omitEnumNames ? '' : 'SA');
  static const CountryCode SN = CountryCode._(183, _omitEnumNames ? '' : 'SN');
  static const CountryCode RS = CountryCode._(184, _omitEnumNames ? '' : 'RS');
  static const CountryCode SC = CountryCode._(185, _omitEnumNames ? '' : 'SC');
  static const CountryCode SL = CountryCode._(186, _omitEnumNames ? '' : 'SL');
  static const CountryCode SG = CountryCode._(187, _omitEnumNames ? '' : 'SG');
  static const CountryCode SX = CountryCode._(188, _omitEnumNames ? '' : 'SX');
  static const CountryCode SK = CountryCode._(189, _omitEnumNames ? '' : 'SK');
  static const CountryCode SI = CountryCode._(190, _omitEnumNames ? '' : 'SI');
  static const CountryCode SB = CountryCode._(191, _omitEnumNames ? '' : 'SB');
  static const CountryCode SO = CountryCode._(192, _omitEnumNames ? '' : 'SO');
  static const CountryCode ZA = CountryCode._(193, _omitEnumNames ? '' : 'ZA');
  static const CountryCode KR = CountryCode._(194, _omitEnumNames ? '' : 'KR');
  static const CountryCode SS = CountryCode._(195, _omitEnumNames ? '' : 'SS');
  static const CountryCode ES = CountryCode._(196, _omitEnumNames ? '' : 'ES');
  static const CountryCode LK = CountryCode._(197, _omitEnumNames ? '' : 'LK');
  static const CountryCode SH = CountryCode._(198, _omitEnumNames ? '' : 'SH');
  static const CountryCode KN = CountryCode._(199, _omitEnumNames ? '' : 'KN');
  static const CountryCode LC = CountryCode._(200, _omitEnumNames ? '' : 'LC');
  static const CountryCode MF = CountryCode._(201, _omitEnumNames ? '' : 'MF');
  static const CountryCode PM = CountryCode._(202, _omitEnumNames ? '' : 'PM');
  static const CountryCode VC = CountryCode._(203, _omitEnumNames ? '' : 'VC');
  static const CountryCode SD = CountryCode._(204, _omitEnumNames ? '' : 'SD');
  static const CountryCode SR = CountryCode._(205, _omitEnumNames ? '' : 'SR');
  static const CountryCode SJ = CountryCode._(206, _omitEnumNames ? '' : 'SJ');
  static const CountryCode SZ = CountryCode._(207, _omitEnumNames ? '' : 'SZ');
  static const CountryCode SE = CountryCode._(208, _omitEnumNames ? '' : 'SE');
  static const CountryCode CH = CountryCode._(209, _omitEnumNames ? '' : 'CH');
  static const CountryCode SY = CountryCode._(210, _omitEnumNames ? '' : 'SY');
  static const CountryCode TW = CountryCode._(211, _omitEnumNames ? '' : 'TW');
  static const CountryCode TJ = CountryCode._(212, _omitEnumNames ? '' : 'TJ');
  static const CountryCode TZ = CountryCode._(213, _omitEnumNames ? '' : 'TZ');
  static const CountryCode TH = CountryCode._(214, _omitEnumNames ? '' : 'TH');
  static const CountryCode TG = CountryCode._(215, _omitEnumNames ? '' : 'TG');
  static const CountryCode TK = CountryCode._(216, _omitEnumNames ? '' : 'TK');
  static const CountryCode TO = CountryCode._(217, _omitEnumNames ? '' : 'TO');
  static const CountryCode TT = CountryCode._(218, _omitEnumNames ? '' : 'TT');
  static const CountryCode TN = CountryCode._(219, _omitEnumNames ? '' : 'TN');
  static const CountryCode TR = CountryCode._(220, _omitEnumNames ? '' : 'TR');
  static const CountryCode TM = CountryCode._(221, _omitEnumNames ? '' : 'TM');
  static const CountryCode TC = CountryCode._(222, _omitEnumNames ? '' : 'TC');
  static const CountryCode TV = CountryCode._(223, _omitEnumNames ? '' : 'TV');
  static const CountryCode AE = CountryCode._(224, _omitEnumNames ? '' : 'AE');
  static const CountryCode UG = CountryCode._(225, _omitEnumNames ? '' : 'UG');
  static const CountryCode GB = CountryCode._(226, _omitEnumNames ? '' : 'GB');
  static const CountryCode UA = CountryCode._(227, _omitEnumNames ? '' : 'UA');
  static const CountryCode UY = CountryCode._(228, _omitEnumNames ? '' : 'UY');
  static const CountryCode US = CountryCode._(229, _omitEnumNames ? '' : 'US');
  static const CountryCode UZ = CountryCode._(230, _omitEnumNames ? '' : 'UZ');
  static const CountryCode VU = CountryCode._(231, _omitEnumNames ? '' : 'VU');
  static const CountryCode VA = CountryCode._(232, _omitEnumNames ? '' : 'VA');
  static const CountryCode VE = CountryCode._(233, _omitEnumNames ? '' : 'VE');
  static const CountryCode VN = CountryCode._(234, _omitEnumNames ? '' : 'VN');
  static const CountryCode VI = CountryCode._(235, _omitEnumNames ? '' : 'VI');
  static const CountryCode WF = CountryCode._(236, _omitEnumNames ? '' : 'WF');
  static const CountryCode EH = CountryCode._(237, _omitEnumNames ? '' : 'EH');
  static const CountryCode YE = CountryCode._(238, _omitEnumNames ? '' : 'YE');
  static const CountryCode ZM = CountryCode._(239, _omitEnumNames ? '' : 'ZM');
  static const CountryCode ZW = CountryCode._(240, _omitEnumNames ? '' : 'ZW');

  static const $core.List<CountryCode> values = <CountryCode> [
    UNKNOWNISO,
    AF,
    AL,
    DZ,
    AS,
    AD,
    AO,
    AI,
    AQ,
    AG,
    AR,
    AM,
    AW,
    AU,
    AT,
    AZ,
    BS,
    BH,
    BD,
    BB,
    BY,
    BE,
    BZ,
    BJ,
    BM,
    BT,
    BO,
    BA,
    BW,
    BR,
    IO,
    VG,
    BN,
    BG,
    BF,
    MM,
    BI,
    KH,
    CM,
    CA,
    CV,
    KY,
    CF,
    TD,
    CL,
    CN,
    CX,
    CC,
    CO,
    KM,
    CG,
    CD,
    CK,
    CR,
    HR,
    CU,
    CW,
    CY,
    CZ,
    DK,
    DJ,
    DM,
    DO,
    TL,
    EC,
    EG,
    SV,
    GQ,
    ER,
    EE,
    ET,
    FK,
    FO,
    FJ,
    FI,
    FR,
    PF,
    GA,
    GM,
    GE,
    DE,
    GH,
    GI,
    GR,
    GL,
    GD,
    GU,
    GT,
    GG,
    GN,
    GW,
    GY,
    HT,
    HN,
    HK,
    HU,
    IS,
    IN,
    ID,
    IR,
    IQ,
    IE,
    IM,
    IL,
    IT,
    CI,
    JM,
    JP,
    JE,
    JO,
    KZ,
    KE,
    KI,
    XK,
    KW,
    KG,
    LA,
    LV,
    LB,
    LS,
    LR,
    LY,
    LI,
    LT,
    LU,
    MO,
    MK,
    MG,
    MW,
    MY,
    MV,
    ML,
    MT,
    MH,
    MR,
    MU,
    YT,
    MX,
    FM,
    MD,
    MC,
    MN,
    ME,
    MS,
    MA,
    MZ,
    NA,
    NR,
    NP,
    NL,
    AN,
    NC,
    NZ,
    NI,
    NE,
    NG,
    NU,
    MP,
    KP,
    NO,
    OM,
    PK,
    PW,
    PS,
    PA,
    PG,
    PY,
    PE,
    PH,
    PN,
    PL,
    PT,
    PR,
    QA,
    RE,
    RO,
    RU,
    RW,
    BL,
    WS,
    SM,
    ST,
    SA,
    SN,
    RS,
    SC,
    SL,
    SG,
    SX,
    SK,
    SI,
    SB,
    SO,
    ZA,
    KR,
    SS,
    ES,
    LK,
    SH,
    KN,
    LC,
    MF,
    PM,
    VC,
    SD,
    SR,
    SJ,
    SZ,
    SE,
    CH,
    SY,
    TW,
    TJ,
    TZ,
    TH,
    TG,
    TK,
    TO,
    TT,
    TN,
    TR,
    TM,
    TC,
    TV,
    AE,
    UG,
    GB,
    UA,
    UY,
    US,
    UZ,
    VU,
    VA,
    VE,
    VN,
    VI,
    WF,
    EH,
    YE,
    ZM,
    ZW,
  ];

  static final $core.Map<$core.int, CountryCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CountryCode? valueOf($core.int value) => _byValue[value];

  const CountryCode._($core.int v, $core.String n) : super(v, n);
}

class CountryISOCode1 extends $pb.ProtobufEnum {
  static const CountryISOCode1 UNKNOWN = CountryISOCode1._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const CountryISOCode1 AFG = CountryISOCode1._(1, _omitEnumNames ? '' : 'AFG');
  static const CountryISOCode1 ALB = CountryISOCode1._(2, _omitEnumNames ? '' : 'ALB');
  static const CountryISOCode1 DZA = CountryISOCode1._(3, _omitEnumNames ? '' : 'DZA');
  static const CountryISOCode1 ASM = CountryISOCode1._(4, _omitEnumNames ? '' : 'ASM');
  static const CountryISOCode1 AND = CountryISOCode1._(5, _omitEnumNames ? '' : 'AND');
  static const CountryISOCode1 AGO = CountryISOCode1._(6, _omitEnumNames ? '' : 'AGO');
  static const CountryISOCode1 AIA = CountryISOCode1._(7, _omitEnumNames ? '' : 'AIA');
  static const CountryISOCode1 ATA = CountryISOCode1._(8, _omitEnumNames ? '' : 'ATA');
  static const CountryISOCode1 ATG = CountryISOCode1._(9, _omitEnumNames ? '' : 'ATG');
  static const CountryISOCode1 ARG = CountryISOCode1._(10, _omitEnumNames ? '' : 'ARG');
  static const CountryISOCode1 ARM = CountryISOCode1._(11, _omitEnumNames ? '' : 'ARM');
  static const CountryISOCode1 ABW = CountryISOCode1._(12, _omitEnumNames ? '' : 'ABW');
  static const CountryISOCode1 AUS = CountryISOCode1._(13, _omitEnumNames ? '' : 'AUS');
  static const CountryISOCode1 AUT = CountryISOCode1._(14, _omitEnumNames ? '' : 'AUT');
  static const CountryISOCode1 AZE = CountryISOCode1._(15, _omitEnumNames ? '' : 'AZE');
  static const CountryISOCode1 BHS = CountryISOCode1._(16, _omitEnumNames ? '' : 'BHS');
  static const CountryISOCode1 BHR = CountryISOCode1._(17, _omitEnumNames ? '' : 'BHR');
  static const CountryISOCode1 BGD = CountryISOCode1._(18, _omitEnumNames ? '' : 'BGD');
  static const CountryISOCode1 BRB = CountryISOCode1._(19, _omitEnumNames ? '' : 'BRB');
  static const CountryISOCode1 BLR = CountryISOCode1._(20, _omitEnumNames ? '' : 'BLR');
  static const CountryISOCode1 BEL = CountryISOCode1._(21, _omitEnumNames ? '' : 'BEL');
  static const CountryISOCode1 BLZ = CountryISOCode1._(22, _omitEnumNames ? '' : 'BLZ');
  static const CountryISOCode1 BEN = CountryISOCode1._(23, _omitEnumNames ? '' : 'BEN');
  static const CountryISOCode1 BMU = CountryISOCode1._(24, _omitEnumNames ? '' : 'BMU');
  static const CountryISOCode1 BTN = CountryISOCode1._(25, _omitEnumNames ? '' : 'BTN');
  static const CountryISOCode1 BOL = CountryISOCode1._(26, _omitEnumNames ? '' : 'BOL');
  static const CountryISOCode1 BIH = CountryISOCode1._(27, _omitEnumNames ? '' : 'BIH');
  static const CountryISOCode1 BWA = CountryISOCode1._(28, _omitEnumNames ? '' : 'BWA');
  static const CountryISOCode1 BRA = CountryISOCode1._(29, _omitEnumNames ? '' : 'BRA');
  static const CountryISOCode1 IOT = CountryISOCode1._(30, _omitEnumNames ? '' : 'IOT');
  static const CountryISOCode1 VGB = CountryISOCode1._(31, _omitEnumNames ? '' : 'VGB');
  static const CountryISOCode1 BRN = CountryISOCode1._(32, _omitEnumNames ? '' : 'BRN');
  static const CountryISOCode1 BGR = CountryISOCode1._(33, _omitEnumNames ? '' : 'BGR');
  static const CountryISOCode1 BFA = CountryISOCode1._(34, _omitEnumNames ? '' : 'BFA');
  static const CountryISOCode1 MMR = CountryISOCode1._(35, _omitEnumNames ? '' : 'MMR');
  static const CountryISOCode1 BDI = CountryISOCode1._(36, _omitEnumNames ? '' : 'BDI');
  static const CountryISOCode1 KHM = CountryISOCode1._(37, _omitEnumNames ? '' : 'KHM');
  static const CountryISOCode1 CMR = CountryISOCode1._(38, _omitEnumNames ? '' : 'CMR');
  static const CountryISOCode1 CAN = CountryISOCode1._(39, _omitEnumNames ? '' : 'CAN');
  static const CountryISOCode1 CPV = CountryISOCode1._(40, _omitEnumNames ? '' : 'CPV');
  static const CountryISOCode1 CYM = CountryISOCode1._(41, _omitEnumNames ? '' : 'CYM');
  static const CountryISOCode1 CAF = CountryISOCode1._(42, _omitEnumNames ? '' : 'CAF');
  static const CountryISOCode1 TCD = CountryISOCode1._(43, _omitEnumNames ? '' : 'TCD');
  static const CountryISOCode1 CHL = CountryISOCode1._(44, _omitEnumNames ? '' : 'CHL');
  static const CountryISOCode1 CHN = CountryISOCode1._(45, _omitEnumNames ? '' : 'CHN');
  static const CountryISOCode1 CXR = CountryISOCode1._(46, _omitEnumNames ? '' : 'CXR');
  static const CountryISOCode1 CCK = CountryISOCode1._(47, _omitEnumNames ? '' : 'CCK');
  static const CountryISOCode1 COL = CountryISOCode1._(48, _omitEnumNames ? '' : 'COL');
  static const CountryISOCode1 COM = CountryISOCode1._(49, _omitEnumNames ? '' : 'COM');
  static const CountryISOCode1 COG = CountryISOCode1._(50, _omitEnumNames ? '' : 'COG');
  static const CountryISOCode1 COD = CountryISOCode1._(51, _omitEnumNames ? '' : 'COD');
  static const CountryISOCode1 COK = CountryISOCode1._(52, _omitEnumNames ? '' : 'COK');
  static const CountryISOCode1 CRI = CountryISOCode1._(53, _omitEnumNames ? '' : 'CRI');
  static const CountryISOCode1 HRV = CountryISOCode1._(54, _omitEnumNames ? '' : 'HRV');
  static const CountryISOCode1 CUB = CountryISOCode1._(55, _omitEnumNames ? '' : 'CUB');
  static const CountryISOCode1 CUW = CountryISOCode1._(56, _omitEnumNames ? '' : 'CUW');
  static const CountryISOCode1 CYP = CountryISOCode1._(57, _omitEnumNames ? '' : 'CYP');
  static const CountryISOCode1 CZE = CountryISOCode1._(58, _omitEnumNames ? '' : 'CZE');
  static const CountryISOCode1 DNK = CountryISOCode1._(59, _omitEnumNames ? '' : 'DNK');
  static const CountryISOCode1 DJI = CountryISOCode1._(60, _omitEnumNames ? '' : 'DJI');
  static const CountryISOCode1 DMA = CountryISOCode1._(61, _omitEnumNames ? '' : 'DMA');
  static const CountryISOCode1 DOM = CountryISOCode1._(62, _omitEnumNames ? '' : 'DOM');
  static const CountryISOCode1 TLS = CountryISOCode1._(63, _omitEnumNames ? '' : 'TLS');
  static const CountryISOCode1 ECU = CountryISOCode1._(64, _omitEnumNames ? '' : 'ECU');
  static const CountryISOCode1 EGY = CountryISOCode1._(65, _omitEnumNames ? '' : 'EGY');
  static const CountryISOCode1 SLV = CountryISOCode1._(66, _omitEnumNames ? '' : 'SLV');
  static const CountryISOCode1 GNQ = CountryISOCode1._(67, _omitEnumNames ? '' : 'GNQ');
  static const CountryISOCode1 ERI = CountryISOCode1._(68, _omitEnumNames ? '' : 'ERI');
  static const CountryISOCode1 EST = CountryISOCode1._(69, _omitEnumNames ? '' : 'EST');
  static const CountryISOCode1 ETH = CountryISOCode1._(70, _omitEnumNames ? '' : 'ETH');
  static const CountryISOCode1 FLK = CountryISOCode1._(71, _omitEnumNames ? '' : 'FLK');
  static const CountryISOCode1 FRO = CountryISOCode1._(72, _omitEnumNames ? '' : 'FRO');
  static const CountryISOCode1 FJI = CountryISOCode1._(73, _omitEnumNames ? '' : 'FJI');
  static const CountryISOCode1 FIN = CountryISOCode1._(74, _omitEnumNames ? '' : 'FIN');
  static const CountryISOCode1 FRA = CountryISOCode1._(75, _omitEnumNames ? '' : 'FRA');
  static const CountryISOCode1 PYF = CountryISOCode1._(76, _omitEnumNames ? '' : 'PYF');
  static const CountryISOCode1 GAB = CountryISOCode1._(77, _omitEnumNames ? '' : 'GAB');
  static const CountryISOCode1 GMB = CountryISOCode1._(78, _omitEnumNames ? '' : 'GMB');
  static const CountryISOCode1 GEO = CountryISOCode1._(79, _omitEnumNames ? '' : 'GEO');
  static const CountryISOCode1 DEU = CountryISOCode1._(80, _omitEnumNames ? '' : 'DEU');
  static const CountryISOCode1 GHA = CountryISOCode1._(81, _omitEnumNames ? '' : 'GHA');
  static const CountryISOCode1 GIB = CountryISOCode1._(82, _omitEnumNames ? '' : 'GIB');
  static const CountryISOCode1 GRC = CountryISOCode1._(83, _omitEnumNames ? '' : 'GRC');
  static const CountryISOCode1 GRL = CountryISOCode1._(84, _omitEnumNames ? '' : 'GRL');
  static const CountryISOCode1 GRD = CountryISOCode1._(85, _omitEnumNames ? '' : 'GRD');
  static const CountryISOCode1 GUM = CountryISOCode1._(86, _omitEnumNames ? '' : 'GUM');
  static const CountryISOCode1 GTM = CountryISOCode1._(87, _omitEnumNames ? '' : 'GTM');
  static const CountryISOCode1 GGY = CountryISOCode1._(88, _omitEnumNames ? '' : 'GGY');
  static const CountryISOCode1 GIN = CountryISOCode1._(89, _omitEnumNames ? '' : 'GIN');
  static const CountryISOCode1 GNB = CountryISOCode1._(90, _omitEnumNames ? '' : 'GNB');
  static const CountryISOCode1 GUY = CountryISOCode1._(91, _omitEnumNames ? '' : 'GUY');
  static const CountryISOCode1 HTI = CountryISOCode1._(92, _omitEnumNames ? '' : 'HTI');
  static const CountryISOCode1 HND = CountryISOCode1._(93, _omitEnumNames ? '' : 'HND');
  static const CountryISOCode1 HKG = CountryISOCode1._(94, _omitEnumNames ? '' : 'HKG');
  static const CountryISOCode1 HUN = CountryISOCode1._(95, _omitEnumNames ? '' : 'HUN');
  static const CountryISOCode1 ISL = CountryISOCode1._(96, _omitEnumNames ? '' : 'ISL');
  static const CountryISOCode1 IND = CountryISOCode1._(97, _omitEnumNames ? '' : 'IND');
  static const CountryISOCode1 IDN = CountryISOCode1._(98, _omitEnumNames ? '' : 'IDN');
  static const CountryISOCode1 IRN = CountryISOCode1._(99, _omitEnumNames ? '' : 'IRN');
  static const CountryISOCode1 IRQ = CountryISOCode1._(100, _omitEnumNames ? '' : 'IRQ');
  static const CountryISOCode1 IRL = CountryISOCode1._(101, _omitEnumNames ? '' : 'IRL');
  static const CountryISOCode1 IMN = CountryISOCode1._(102, _omitEnumNames ? '' : 'IMN');
  static const CountryISOCode1 ISR = CountryISOCode1._(103, _omitEnumNames ? '' : 'ISR');
  static const CountryISOCode1 ITA = CountryISOCode1._(104, _omitEnumNames ? '' : 'ITA');
  static const CountryISOCode1 CIV = CountryISOCode1._(105, _omitEnumNames ? '' : 'CIV');
  static const CountryISOCode1 JAM = CountryISOCode1._(106, _omitEnumNames ? '' : 'JAM');
  static const CountryISOCode1 JPN = CountryISOCode1._(107, _omitEnumNames ? '' : 'JPN');
  static const CountryISOCode1 JEY = CountryISOCode1._(108, _omitEnumNames ? '' : 'JEY');
  static const CountryISOCode1 JOR = CountryISOCode1._(109, _omitEnumNames ? '' : 'JOR');
  static const CountryISOCode1 KAZ = CountryISOCode1._(110, _omitEnumNames ? '' : 'KAZ');
  static const CountryISOCode1 KEN = CountryISOCode1._(111, _omitEnumNames ? '' : 'KEN');
  static const CountryISOCode1 KIR = CountryISOCode1._(112, _omitEnumNames ? '' : 'KIR');
  static const CountryISOCode1 XKX = CountryISOCode1._(113, _omitEnumNames ? '' : 'XKX');
  static const CountryISOCode1 KWT = CountryISOCode1._(114, _omitEnumNames ? '' : 'KWT');
  static const CountryISOCode1 KGZ = CountryISOCode1._(115, _omitEnumNames ? '' : 'KGZ');
  static const CountryISOCode1 LAO = CountryISOCode1._(116, _omitEnumNames ? '' : 'LAO');
  static const CountryISOCode1 LVA = CountryISOCode1._(117, _omitEnumNames ? '' : 'LVA');
  static const CountryISOCode1 LBN = CountryISOCode1._(118, _omitEnumNames ? '' : 'LBN');
  static const CountryISOCode1 LSO = CountryISOCode1._(119, _omitEnumNames ? '' : 'LSO');
  static const CountryISOCode1 LBR = CountryISOCode1._(120, _omitEnumNames ? '' : 'LBR');
  static const CountryISOCode1 LBY = CountryISOCode1._(121, _omitEnumNames ? '' : 'LBY');
  static const CountryISOCode1 LIE = CountryISOCode1._(122, _omitEnumNames ? '' : 'LIE');
  static const CountryISOCode1 LTU = CountryISOCode1._(123, _omitEnumNames ? '' : 'LTU');
  static const CountryISOCode1 LUX = CountryISOCode1._(124, _omitEnumNames ? '' : 'LUX');
  static const CountryISOCode1 MAC = CountryISOCode1._(125, _omitEnumNames ? '' : 'MAC');
  static const CountryISOCode1 MKD = CountryISOCode1._(126, _omitEnumNames ? '' : 'MKD');
  static const CountryISOCode1 MDG = CountryISOCode1._(127, _omitEnumNames ? '' : 'MDG');
  static const CountryISOCode1 MWI = CountryISOCode1._(128, _omitEnumNames ? '' : 'MWI');
  static const CountryISOCode1 MYS = CountryISOCode1._(129, _omitEnumNames ? '' : 'MYS');
  static const CountryISOCode1 MDV = CountryISOCode1._(130, _omitEnumNames ? '' : 'MDV');
  static const CountryISOCode1 MLI = CountryISOCode1._(131, _omitEnumNames ? '' : 'MLI');
  static const CountryISOCode1 MLT = CountryISOCode1._(132, _omitEnumNames ? '' : 'MLT');
  static const CountryISOCode1 MHL = CountryISOCode1._(133, _omitEnumNames ? '' : 'MHL');
  static const CountryISOCode1 MRT = CountryISOCode1._(134, _omitEnumNames ? '' : 'MRT');
  static const CountryISOCode1 MUS = CountryISOCode1._(135, _omitEnumNames ? '' : 'MUS');
  static const CountryISOCode1 MYT = CountryISOCode1._(136, _omitEnumNames ? '' : 'MYT');
  static const CountryISOCode1 MEX = CountryISOCode1._(137, _omitEnumNames ? '' : 'MEX');
  static const CountryISOCode1 FSM = CountryISOCode1._(138, _omitEnumNames ? '' : 'FSM');
  static const CountryISOCode1 MDA = CountryISOCode1._(139, _omitEnumNames ? '' : 'MDA');
  static const CountryISOCode1 MCO = CountryISOCode1._(140, _omitEnumNames ? '' : 'MCO');
  static const CountryISOCode1 MNG = CountryISOCode1._(141, _omitEnumNames ? '' : 'MNG');
  static const CountryISOCode1 MNE = CountryISOCode1._(142, _omitEnumNames ? '' : 'MNE');
  static const CountryISOCode1 MSR = CountryISOCode1._(143, _omitEnumNames ? '' : 'MSR');
  static const CountryISOCode1 MAR = CountryISOCode1._(144, _omitEnumNames ? '' : 'MAR');
  static const CountryISOCode1 MOZ = CountryISOCode1._(145, _omitEnumNames ? '' : 'MOZ');
  static const CountryISOCode1 NAM = CountryISOCode1._(146, _omitEnumNames ? '' : 'NAM');
  static const CountryISOCode1 NRU = CountryISOCode1._(147, _omitEnumNames ? '' : 'NRU');
  static const CountryISOCode1 NPL = CountryISOCode1._(148, _omitEnumNames ? '' : 'NPL');
  static const CountryISOCode1 NLD = CountryISOCode1._(149, _omitEnumNames ? '' : 'NLD');
  static const CountryISOCode1 ANT = CountryISOCode1._(150, _omitEnumNames ? '' : 'ANT');
  static const CountryISOCode1 NCL = CountryISOCode1._(151, _omitEnumNames ? '' : 'NCL');
  static const CountryISOCode1 NZL = CountryISOCode1._(152, _omitEnumNames ? '' : 'NZL');
  static const CountryISOCode1 NIC = CountryISOCode1._(153, _omitEnumNames ? '' : 'NIC');
  static const CountryISOCode1 NER = CountryISOCode1._(154, _omitEnumNames ? '' : 'NER');
  static const CountryISOCode1 NGA = CountryISOCode1._(155, _omitEnumNames ? '' : 'NGA');
  static const CountryISOCode1 NIU = CountryISOCode1._(156, _omitEnumNames ? '' : 'NIU');
  static const CountryISOCode1 MNP = CountryISOCode1._(157, _omitEnumNames ? '' : 'MNP');
  static const CountryISOCode1 PRK = CountryISOCode1._(158, _omitEnumNames ? '' : 'PRK');
  static const CountryISOCode1 NOR = CountryISOCode1._(159, _omitEnumNames ? '' : 'NOR');
  static const CountryISOCode1 OMN = CountryISOCode1._(160, _omitEnumNames ? '' : 'OMN');
  static const CountryISOCode1 PAK = CountryISOCode1._(161, _omitEnumNames ? '' : 'PAK');
  static const CountryISOCode1 PLW = CountryISOCode1._(162, _omitEnumNames ? '' : 'PLW');
  static const CountryISOCode1 PSE = CountryISOCode1._(163, _omitEnumNames ? '' : 'PSE');
  static const CountryISOCode1 PAN = CountryISOCode1._(164, _omitEnumNames ? '' : 'PAN');
  static const CountryISOCode1 PNG = CountryISOCode1._(165, _omitEnumNames ? '' : 'PNG');
  static const CountryISOCode1 PRY = CountryISOCode1._(166, _omitEnumNames ? '' : 'PRY');
  static const CountryISOCode1 PER = CountryISOCode1._(167, _omitEnumNames ? '' : 'PER');
  static const CountryISOCode1 PHL = CountryISOCode1._(168, _omitEnumNames ? '' : 'PHL');
  static const CountryISOCode1 PCN = CountryISOCode1._(169, _omitEnumNames ? '' : 'PCN');
  static const CountryISOCode1 POL = CountryISOCode1._(170, _omitEnumNames ? '' : 'POL');
  static const CountryISOCode1 PRT = CountryISOCode1._(171, _omitEnumNames ? '' : 'PRT');
  static const CountryISOCode1 PRI = CountryISOCode1._(172, _omitEnumNames ? '' : 'PRI');
  static const CountryISOCode1 QAT = CountryISOCode1._(173, _omitEnumNames ? '' : 'QAT');
  static const CountryISOCode1 REU = CountryISOCode1._(174, _omitEnumNames ? '' : 'REU');
  static const CountryISOCode1 ROU = CountryISOCode1._(175, _omitEnumNames ? '' : 'ROU');
  static const CountryISOCode1 RUS = CountryISOCode1._(176, _omitEnumNames ? '' : 'RUS');
  static const CountryISOCode1 RWA = CountryISOCode1._(177, _omitEnumNames ? '' : 'RWA');
  static const CountryISOCode1 BLM = CountryISOCode1._(178, _omitEnumNames ? '' : 'BLM');
  static const CountryISOCode1 WSM = CountryISOCode1._(179, _omitEnumNames ? '' : 'WSM');
  static const CountryISOCode1 SMR = CountryISOCode1._(180, _omitEnumNames ? '' : 'SMR');
  static const CountryISOCode1 STP = CountryISOCode1._(181, _omitEnumNames ? '' : 'STP');
  static const CountryISOCode1 SAU = CountryISOCode1._(182, _omitEnumNames ? '' : 'SAU');
  static const CountryISOCode1 SEN = CountryISOCode1._(183, _omitEnumNames ? '' : 'SEN');
  static const CountryISOCode1 SRB = CountryISOCode1._(184, _omitEnumNames ? '' : 'SRB');
  static const CountryISOCode1 SYC = CountryISOCode1._(185, _omitEnumNames ? '' : 'SYC');
  static const CountryISOCode1 SLE = CountryISOCode1._(186, _omitEnumNames ? '' : 'SLE');
  static const CountryISOCode1 SGP = CountryISOCode1._(187, _omitEnumNames ? '' : 'SGP');
  static const CountryISOCode1 SXM = CountryISOCode1._(188, _omitEnumNames ? '' : 'SXM');
  static const CountryISOCode1 SVK = CountryISOCode1._(189, _omitEnumNames ? '' : 'SVK');
  static const CountryISOCode1 SVN = CountryISOCode1._(190, _omitEnumNames ? '' : 'SVN');
  static const CountryISOCode1 SLB = CountryISOCode1._(191, _omitEnumNames ? '' : 'SLB');
  static const CountryISOCode1 SOM = CountryISOCode1._(192, _omitEnumNames ? '' : 'SOM');
  static const CountryISOCode1 ZAF = CountryISOCode1._(193, _omitEnumNames ? '' : 'ZAF');
  static const CountryISOCode1 KOR = CountryISOCode1._(194, _omitEnumNames ? '' : 'KOR');
  static const CountryISOCode1 SSD = CountryISOCode1._(195, _omitEnumNames ? '' : 'SSD');
  static const CountryISOCode1 ESP = CountryISOCode1._(196, _omitEnumNames ? '' : 'ESP');
  static const CountryISOCode1 LKA = CountryISOCode1._(197, _omitEnumNames ? '' : 'LKA');
  static const CountryISOCode1 SHN = CountryISOCode1._(198, _omitEnumNames ? '' : 'SHN');
  static const CountryISOCode1 KNA = CountryISOCode1._(199, _omitEnumNames ? '' : 'KNA');
  static const CountryISOCode1 LCA = CountryISOCode1._(200, _omitEnumNames ? '' : 'LCA');
  static const CountryISOCode1 MAF = CountryISOCode1._(201, _omitEnumNames ? '' : 'MAF');
  static const CountryISOCode1 SPM = CountryISOCode1._(202, _omitEnumNames ? '' : 'SPM');
  static const CountryISOCode1 VCT = CountryISOCode1._(203, _omitEnumNames ? '' : 'VCT');
  static const CountryISOCode1 SDN = CountryISOCode1._(204, _omitEnumNames ? '' : 'SDN');
  static const CountryISOCode1 SUR = CountryISOCode1._(205, _omitEnumNames ? '' : 'SUR');
  static const CountryISOCode1 SJM = CountryISOCode1._(206, _omitEnumNames ? '' : 'SJM');
  static const CountryISOCode1 SWZ = CountryISOCode1._(207, _omitEnumNames ? '' : 'SWZ');
  static const CountryISOCode1 SWE = CountryISOCode1._(208, _omitEnumNames ? '' : 'SWE');
  static const CountryISOCode1 CHE = CountryISOCode1._(209, _omitEnumNames ? '' : 'CHE');
  static const CountryISOCode1 SYR = CountryISOCode1._(210, _omitEnumNames ? '' : 'SYR');
  static const CountryISOCode1 TWN = CountryISOCode1._(211, _omitEnumNames ? '' : 'TWN');
  static const CountryISOCode1 TJK = CountryISOCode1._(212, _omitEnumNames ? '' : 'TJK');
  static const CountryISOCode1 TZA = CountryISOCode1._(213, _omitEnumNames ? '' : 'TZA');
  static const CountryISOCode1 THA = CountryISOCode1._(214, _omitEnumNames ? '' : 'THA');
  static const CountryISOCode1 TGO = CountryISOCode1._(215, _omitEnumNames ? '' : 'TGO');
  static const CountryISOCode1 TKL = CountryISOCode1._(216, _omitEnumNames ? '' : 'TKL');
  static const CountryISOCode1 TON = CountryISOCode1._(217, _omitEnumNames ? '' : 'TON');
  static const CountryISOCode1 TTO = CountryISOCode1._(218, _omitEnumNames ? '' : 'TTO');
  static const CountryISOCode1 TUN = CountryISOCode1._(219, _omitEnumNames ? '' : 'TUN');
  static const CountryISOCode1 TUR = CountryISOCode1._(220, _omitEnumNames ? '' : 'TUR');
  static const CountryISOCode1 TKM = CountryISOCode1._(221, _omitEnumNames ? '' : 'TKM');
  static const CountryISOCode1 TCA = CountryISOCode1._(222, _omitEnumNames ? '' : 'TCA');
  static const CountryISOCode1 TUV = CountryISOCode1._(223, _omitEnumNames ? '' : 'TUV');
  static const CountryISOCode1 ARE = CountryISOCode1._(224, _omitEnumNames ? '' : 'ARE');
  static const CountryISOCode1 UGA = CountryISOCode1._(225, _omitEnumNames ? '' : 'UGA');
  static const CountryISOCode1 GBR = CountryISOCode1._(226, _omitEnumNames ? '' : 'GBR');
  static const CountryISOCode1 UKR = CountryISOCode1._(227, _omitEnumNames ? '' : 'UKR');
  static const CountryISOCode1 URY = CountryISOCode1._(228, _omitEnumNames ? '' : 'URY');
  static const CountryISOCode1 USA = CountryISOCode1._(229, _omitEnumNames ? '' : 'USA');
  static const CountryISOCode1 UZB = CountryISOCode1._(230, _omitEnumNames ? '' : 'UZB');
  static const CountryISOCode1 VUT = CountryISOCode1._(231, _omitEnumNames ? '' : 'VUT');
  static const CountryISOCode1 VAT = CountryISOCode1._(232, _omitEnumNames ? '' : 'VAT');
  static const CountryISOCode1 VEN = CountryISOCode1._(233, _omitEnumNames ? '' : 'VEN');
  static const CountryISOCode1 VNM = CountryISOCode1._(234, _omitEnumNames ? '' : 'VNM');
  static const CountryISOCode1 VIR = CountryISOCode1._(235, _omitEnumNames ? '' : 'VIR');
  static const CountryISOCode1 WLF = CountryISOCode1._(236, _omitEnumNames ? '' : 'WLF');
  static const CountryISOCode1 ESH = CountryISOCode1._(237, _omitEnumNames ? '' : 'ESH');
  static const CountryISOCode1 YEM = CountryISOCode1._(238, _omitEnumNames ? '' : 'YEM');
  static const CountryISOCode1 ZMB = CountryISOCode1._(239, _omitEnumNames ? '' : 'ZMB');
  static const CountryISOCode1 ZWE = CountryISOCode1._(240, _omitEnumNames ? '' : 'ZWE');

  static const $core.List<CountryISOCode1> values = <CountryISOCode1> [
    UNKNOWN,
    AFG,
    ALB,
    DZA,
    ASM,
    AND,
    AGO,
    AIA,
    ATA,
    ATG,
    ARG,
    ARM,
    ABW,
    AUS,
    AUT,
    AZE,
    BHS,
    BHR,
    BGD,
    BRB,
    BLR,
    BEL,
    BLZ,
    BEN,
    BMU,
    BTN,
    BOL,
    BIH,
    BWA,
    BRA,
    IOT,
    VGB,
    BRN,
    BGR,
    BFA,
    MMR,
    BDI,
    KHM,
    CMR,
    CAN,
    CPV,
    CYM,
    CAF,
    TCD,
    CHL,
    CHN,
    CXR,
    CCK,
    COL,
    COM,
    COG,
    COD,
    COK,
    CRI,
    HRV,
    CUB,
    CUW,
    CYP,
    CZE,
    DNK,
    DJI,
    DMA,
    DOM,
    TLS,
    ECU,
    EGY,
    SLV,
    GNQ,
    ERI,
    EST,
    ETH,
    FLK,
    FRO,
    FJI,
    FIN,
    FRA,
    PYF,
    GAB,
    GMB,
    GEO,
    DEU,
    GHA,
    GIB,
    GRC,
    GRL,
    GRD,
    GUM,
    GTM,
    GGY,
    GIN,
    GNB,
    GUY,
    HTI,
    HND,
    HKG,
    HUN,
    ISL,
    IND,
    IDN,
    IRN,
    IRQ,
    IRL,
    IMN,
    ISR,
    ITA,
    CIV,
    JAM,
    JPN,
    JEY,
    JOR,
    KAZ,
    KEN,
    KIR,
    XKX,
    KWT,
    KGZ,
    LAO,
    LVA,
    LBN,
    LSO,
    LBR,
    LBY,
    LIE,
    LTU,
    LUX,
    MAC,
    MKD,
    MDG,
    MWI,
    MYS,
    MDV,
    MLI,
    MLT,
    MHL,
    MRT,
    MUS,
    MYT,
    MEX,
    FSM,
    MDA,
    MCO,
    MNG,
    MNE,
    MSR,
    MAR,
    MOZ,
    NAM,
    NRU,
    NPL,
    NLD,
    ANT,
    NCL,
    NZL,
    NIC,
    NER,
    NGA,
    NIU,
    MNP,
    PRK,
    NOR,
    OMN,
    PAK,
    PLW,
    PSE,
    PAN,
    PNG,
    PRY,
    PER,
    PHL,
    PCN,
    POL,
    PRT,
    PRI,
    QAT,
    REU,
    ROU,
    RUS,
    RWA,
    BLM,
    WSM,
    SMR,
    STP,
    SAU,
    SEN,
    SRB,
    SYC,
    SLE,
    SGP,
    SXM,
    SVK,
    SVN,
    SLB,
    SOM,
    ZAF,
    KOR,
    SSD,
    ESP,
    LKA,
    SHN,
    KNA,
    LCA,
    MAF,
    SPM,
    VCT,
    SDN,
    SUR,
    SJM,
    SWZ,
    SWE,
    CHE,
    SYR,
    TWN,
    TJK,
    TZA,
    THA,
    TGO,
    TKL,
    TON,
    TTO,
    TUN,
    TUR,
    TKM,
    TCA,
    TUV,
    ARE,
    UGA,
    GBR,
    UKR,
    URY,
    USA,
    UZB,
    VUT,
    VAT,
    VEN,
    VNM,
    VIR,
    WLF,
    ESH,
    YEM,
    ZMB,
    ZWE,
  ];

  static final $core.Map<$core.int, CountryISOCode1> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CountryISOCode1? valueOf($core.int value) => _byValue[value];

  const CountryISOCode1._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
