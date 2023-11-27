//
//  Generated code. Do not modify.
//  source: user/country.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use currencyCodeDescriptor instead')
const CurrencyCode$json = {
  '1': 'CurrencyCode',
  '2': [
    {'1': 'UNKNOWNCurrency', '2': 0},
    {'1': 'CNY', '2': 1},
    {'1': 'USD', '2': 2},
    {'1': 'GBP', '2': 3},
    {'1': 'HKD', '2': 4},
    {'1': 'CHF', '2': 5},
    {'1': 'SGD', '2': 6},
    {'1': 'SEK', '2': 7},
    {'1': 'DKK', '2': 8},
    {'1': 'NOK', '2': 9},
    {'1': 'JPY', '2': 10},
    {'1': 'CAD', '2': 11},
    {'1': 'AUD', '2': 12},
    {'1': 'EUR', '2': 13},
    {'1': 'MOP', '2': 14},
    {'1': 'PHP', '2': 15},
    {'1': 'THB', '2': 16},
    {'1': 'NZD', '2': 17},
    {'1': 'KRW', '2': 18},
    {'1': 'RUB', '2': 19},
    {'1': 'MYR', '2': 20},
    {'1': 'TWD', '2': 21},
    {'1': 'INR', '2': 22},
  ],
};

/// Descriptor for `CurrencyCode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List currencyCodeDescriptor = $convert.base64Decode(
    'CgxDdXJyZW5jeUNvZGUSEwoPVU5LTk9XTkN1cnJlbmN5EAASBwoDQ05ZEAESBwoDVVNEEAISBw'
    'oDR0JQEAMSBwoDSEtEEAQSBwoDQ0hGEAUSBwoDU0dEEAYSBwoDU0VLEAcSBwoDREtLEAgSBwoD'
    'Tk9LEAkSBwoDSlBZEAoSBwoDQ0FEEAsSBwoDQVVEEAwSBwoDRVVSEA0SBwoDTU9QEA4SBwoDUE'
    'hQEA8SBwoDVEhCEBASBwoDTlpEEBESBwoDS1JXEBISBwoDUlVCEBMSBwoDTVlSEBQSBwoDVFdE'
    'EBUSBwoDSU5SEBY=');

@$core.Deprecated('Use countryCodeDescriptor instead')
const CountryCode$json = {
  '1': 'CountryCode',
  '2': [
    {'1': 'UNKNOWNISO', '2': 0},
    {'1': 'AF', '2': 1},
    {'1': 'AL', '2': 2},
    {'1': 'DZ', '2': 3},
    {'1': 'AS', '2': 4},
    {'1': 'AD', '2': 5},
    {'1': 'AO', '2': 6},
    {'1': 'AI', '2': 7},
    {'1': 'AQ', '2': 8},
    {'1': 'AG', '2': 9},
    {'1': 'AR', '2': 10},
    {'1': 'AM', '2': 11},
    {'1': 'AW', '2': 12},
    {'1': 'AU', '2': 13},
    {'1': 'AT', '2': 14},
    {'1': 'AZ', '2': 15},
    {'1': 'BS', '2': 16},
    {'1': 'BH', '2': 17},
    {'1': 'BD', '2': 18},
    {'1': 'BB', '2': 19},
    {'1': 'BY', '2': 20},
    {'1': 'BE', '2': 21},
    {'1': 'BZ', '2': 22},
    {'1': 'BJ', '2': 23},
    {'1': 'BM', '2': 24},
    {'1': 'BT', '2': 25},
    {'1': 'BO', '2': 26},
    {'1': 'BA', '2': 27},
    {'1': 'BW', '2': 28},
    {'1': 'BR', '2': 29},
    {'1': 'IO', '2': 30},
    {'1': 'VG', '2': 31},
    {'1': 'BN', '2': 32},
    {'1': 'BG', '2': 33},
    {'1': 'BF', '2': 34},
    {'1': 'MM', '2': 35},
    {'1': 'BI', '2': 36},
    {'1': 'KH', '2': 37},
    {'1': 'CM', '2': 38},
    {'1': 'CA', '2': 39},
    {'1': 'CV', '2': 40},
    {'1': 'KY', '2': 41},
    {'1': 'CF', '2': 42},
    {'1': 'TD', '2': 43},
    {'1': 'CL', '2': 44},
    {'1': 'CN', '2': 45},
    {'1': 'CX', '2': 46},
    {'1': 'CC', '2': 47},
    {'1': 'CO', '2': 48},
    {'1': 'KM', '2': 49},
    {'1': 'CG', '2': 50},
    {'1': 'CD', '2': 51},
    {'1': 'CK', '2': 52},
    {'1': 'CR', '2': 53},
    {'1': 'HR', '2': 54},
    {'1': 'CU', '2': 55},
    {'1': 'CW', '2': 56},
    {'1': 'CY', '2': 57},
    {'1': 'CZ', '2': 58},
    {'1': 'DK', '2': 59},
    {'1': 'DJ', '2': 60},
    {'1': 'DM', '2': 61},
    {'1': 'DO', '2': 62},
    {'1': 'TL', '2': 63},
    {'1': 'EC', '2': 64},
    {'1': 'EG', '2': 65},
    {'1': 'SV', '2': 66},
    {'1': 'GQ', '2': 67},
    {'1': 'ER', '2': 68},
    {'1': 'EE', '2': 69},
    {'1': 'ET', '2': 70},
    {'1': 'FK', '2': 71},
    {'1': 'FO', '2': 72},
    {'1': 'FJ', '2': 73},
    {'1': 'FI', '2': 74},
    {'1': 'FR', '2': 75},
    {'1': 'PF', '2': 76},
    {'1': 'GA', '2': 77},
    {'1': 'GM', '2': 78},
    {'1': 'GE', '2': 79},
    {'1': 'DE', '2': 80},
    {'1': 'GH', '2': 81},
    {'1': 'GI', '2': 82},
    {'1': 'GR', '2': 83},
    {'1': 'GL', '2': 84},
    {'1': 'GD', '2': 85},
    {'1': 'GU', '2': 86},
    {'1': 'GT', '2': 87},
    {'1': 'GG', '2': 88},
    {'1': 'GN', '2': 89},
    {'1': 'GW', '2': 90},
    {'1': 'GY', '2': 91},
    {'1': 'HT', '2': 92},
    {'1': 'HN', '2': 93},
    {'1': 'HK', '2': 94},
    {'1': 'HU', '2': 95},
    {'1': 'IS', '2': 96},
    {'1': 'IN', '2': 97},
    {'1': 'ID', '2': 98},
    {'1': 'IR', '2': 99},
    {'1': 'IQ', '2': 100},
    {'1': 'IE', '2': 101},
    {'1': 'IM', '2': 102},
    {'1': 'IL', '2': 103},
    {'1': 'IT', '2': 104},
    {'1': 'CI', '2': 105},
    {'1': 'JM', '2': 106},
    {'1': 'JP', '2': 107},
    {'1': 'JE', '2': 108},
    {'1': 'JO', '2': 109},
    {'1': 'KZ', '2': 110},
    {'1': 'KE', '2': 111},
    {'1': 'KI', '2': 112},
    {'1': 'XK', '2': 113},
    {'1': 'KW', '2': 114},
    {'1': 'KG', '2': 115},
    {'1': 'LA', '2': 116},
    {'1': 'LV', '2': 117},
    {'1': 'LB', '2': 118},
    {'1': 'LS', '2': 119},
    {'1': 'LR', '2': 120},
    {'1': 'LY', '2': 121},
    {'1': 'LI', '2': 122},
    {'1': 'LT', '2': 123},
    {'1': 'LU', '2': 124},
    {'1': 'MO', '2': 125},
    {'1': 'MK', '2': 126},
    {'1': 'MG', '2': 127},
    {'1': 'MW', '2': 128},
    {'1': 'MY', '2': 129},
    {'1': 'MV', '2': 130},
    {'1': 'ML', '2': 131},
    {'1': 'MT', '2': 132},
    {'1': 'MH', '2': 133},
    {'1': 'MR', '2': 134},
    {'1': 'MU', '2': 135},
    {'1': 'YT', '2': 136},
    {'1': 'MX', '2': 137},
    {'1': 'FM', '2': 138},
    {'1': 'MD', '2': 139},
    {'1': 'MC', '2': 140},
    {'1': 'MN', '2': 141},
    {'1': 'ME', '2': 142},
    {'1': 'MS', '2': 143},
    {'1': 'MA', '2': 144},
    {'1': 'MZ', '2': 145},
    {'1': 'NA', '2': 146},
    {'1': 'NR', '2': 147},
    {'1': 'NP', '2': 148},
    {'1': 'NL', '2': 149},
    {'1': 'AN', '2': 150},
    {'1': 'NC', '2': 151},
    {'1': 'NZ', '2': 152},
    {'1': 'NI', '2': 153},
    {'1': 'NE', '2': 154},
    {'1': 'NG', '2': 155},
    {'1': 'NU', '2': 156},
    {'1': 'MP', '2': 157},
    {'1': 'KP', '2': 158},
    {'1': 'NO', '2': 159},
    {'1': 'OM', '2': 160},
    {'1': 'PK', '2': 161},
    {'1': 'PW', '2': 162},
    {'1': 'PS', '2': 163},
    {'1': 'PA', '2': 164},
    {'1': 'PG', '2': 165},
    {'1': 'PY', '2': 166},
    {'1': 'PE', '2': 167},
    {'1': 'PH', '2': 168},
    {'1': 'PN', '2': 169},
    {'1': 'PL', '2': 170},
    {'1': 'PT', '2': 171},
    {'1': 'PR', '2': 172},
    {'1': 'QA', '2': 173},
    {'1': 'RE', '2': 174},
    {'1': 'RO', '2': 175},
    {'1': 'RU', '2': 176},
    {'1': 'RW', '2': 177},
    {'1': 'BL', '2': 178},
    {'1': 'WS', '2': 179},
    {'1': 'SM', '2': 180},
    {'1': 'ST', '2': 181},
    {'1': 'SA', '2': 182},
    {'1': 'SN', '2': 183},
    {'1': 'RS', '2': 184},
    {'1': 'SC', '2': 185},
    {'1': 'SL', '2': 186},
    {'1': 'SG', '2': 187},
    {'1': 'SX', '2': 188},
    {'1': 'SK', '2': 189},
    {'1': 'SI', '2': 190},
    {'1': 'SB', '2': 191},
    {'1': 'SO', '2': 192},
    {'1': 'ZA', '2': 193},
    {'1': 'KR', '2': 194},
    {'1': 'SS', '2': 195},
    {'1': 'ES', '2': 196},
    {'1': 'LK', '2': 197},
    {'1': 'SH', '2': 198},
    {'1': 'KN', '2': 199},
    {'1': 'LC', '2': 200},
    {'1': 'MF', '2': 201},
    {'1': 'PM', '2': 202},
    {'1': 'VC', '2': 203},
    {'1': 'SD', '2': 204},
    {'1': 'SR', '2': 205},
    {'1': 'SJ', '2': 206},
    {'1': 'SZ', '2': 207},
    {'1': 'SE', '2': 208},
    {'1': 'CH', '2': 209},
    {'1': 'SY', '2': 210},
    {'1': 'TW', '2': 211},
    {'1': 'TJ', '2': 212},
    {'1': 'TZ', '2': 213},
    {'1': 'TH', '2': 214},
    {'1': 'TG', '2': 215},
    {'1': 'TK', '2': 216},
    {'1': 'TO', '2': 217},
    {'1': 'TT', '2': 218},
    {'1': 'TN', '2': 219},
    {'1': 'TR', '2': 220},
    {'1': 'TM', '2': 221},
    {'1': 'TC', '2': 222},
    {'1': 'TV', '2': 223},
    {'1': 'AE', '2': 224},
    {'1': 'UG', '2': 225},
    {'1': 'GB', '2': 226},
    {'1': 'UA', '2': 227},
    {'1': 'UY', '2': 228},
    {'1': 'US', '2': 229},
    {'1': 'UZ', '2': 230},
    {'1': 'VU', '2': 231},
    {'1': 'VA', '2': 232},
    {'1': 'VE', '2': 233},
    {'1': 'VN', '2': 234},
    {'1': 'VI', '2': 235},
    {'1': 'WF', '2': 236},
    {'1': 'EH', '2': 237},
    {'1': 'YE', '2': 238},
    {'1': 'ZM', '2': 239},
    {'1': 'ZW', '2': 240},
  ],
};

/// Descriptor for `CountryCode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List countryCodeDescriptor = $convert.base64Decode(
    'CgtDb3VudHJ5Q29kZRIOCgpVTktOT1dOSVNPEAASBgoCQUYQARIGCgJBTBACEgYKAkRaEAMSBg'
    'oCQVMQBBIGCgJBRBAFEgYKAkFPEAYSBgoCQUkQBxIGCgJBURAIEgYKAkFHEAkSBgoCQVIQChIG'
    'CgJBTRALEgYKAkFXEAwSBgoCQVUQDRIGCgJBVBAOEgYKAkFaEA8SBgoCQlMQEBIGCgJCSBAREg'
    'YKAkJEEBISBgoCQkIQExIGCgJCWRAUEgYKAkJFEBUSBgoCQloQFhIGCgJCShAXEgYKAkJNEBgS'
    'BgoCQlQQGRIGCgJCTxAaEgYKAkJBEBsSBgoCQlcQHBIGCgJCUhAdEgYKAklPEB4SBgoCVkcQHx'
    'IGCgJCThAgEgYKAkJHECESBgoCQkYQIhIGCgJNTRAjEgYKAkJJECQSBgoCS0gQJRIGCgJDTRAm'
    'EgYKAkNBECcSBgoCQ1YQKBIGCgJLWRApEgYKAkNGECoSBgoCVEQQKxIGCgJDTBAsEgYKAkNOEC'
    '0SBgoCQ1gQLhIGCgJDQxAvEgYKAkNPEDASBgoCS00QMRIGCgJDRxAyEgYKAkNEEDMSBgoCQ0sQ'
    'NBIGCgJDUhA1EgYKAkhSEDYSBgoCQ1UQNxIGCgJDVxA4EgYKAkNZEDkSBgoCQ1oQOhIGCgJESx'
    'A7EgYKAkRKEDwSBgoCRE0QPRIGCgJETxA+EgYKAlRMED8SBgoCRUMQQBIGCgJFRxBBEgYKAlNW'
    'EEISBgoCR1EQQxIGCgJFUhBEEgYKAkVFEEUSBgoCRVQQRhIGCgJGSxBHEgYKAkZPEEgSBgoCRk'
    'oQSRIGCgJGSRBKEgYKAkZSEEsSBgoCUEYQTBIGCgJHQRBNEgYKAkdNEE4SBgoCR0UQTxIGCgJE'
    'RRBQEgYKAkdIEFESBgoCR0kQUhIGCgJHUhBTEgYKAkdMEFQSBgoCR0QQVRIGCgJHVRBWEgYKAk'
    'dUEFcSBgoCR0cQWBIGCgJHThBZEgYKAkdXEFoSBgoCR1kQWxIGCgJIVBBcEgYKAkhOEF0SBgoC'
    'SEsQXhIGCgJIVRBfEgYKAklTEGASBgoCSU4QYRIGCgJJRBBiEgYKAklSEGMSBgoCSVEQZBIGCg'
    'JJRRBlEgYKAklNEGYSBgoCSUwQZxIGCgJJVBBoEgYKAkNJEGkSBgoCSk0QahIGCgJKUBBrEgYK'
    'AkpFEGwSBgoCSk8QbRIGCgJLWhBuEgYKAktFEG8SBgoCS0kQcBIGCgJYSxBxEgYKAktXEHISBg'
    'oCS0cQcxIGCgJMQRB0EgYKAkxWEHUSBgoCTEIQdhIGCgJMUxB3EgYKAkxSEHgSBgoCTFkQeRIG'
    'CgJMSRB6EgYKAkxUEHsSBgoCTFUQfBIGCgJNTxB9EgYKAk1LEH4SBgoCTUcQfxIHCgJNVxCAAR'
    'IHCgJNWRCBARIHCgJNVhCCARIHCgJNTBCDARIHCgJNVBCEARIHCgJNSBCFARIHCgJNUhCGARIH'
    'CgJNVRCHARIHCgJZVBCIARIHCgJNWBCJARIHCgJGTRCKARIHCgJNRBCLARIHCgJNQxCMARIHCg'
    'JNThCNARIHCgJNRRCOARIHCgJNUxCPARIHCgJNQRCQARIHCgJNWhCRARIHCgJOQRCSARIHCgJO'
    'UhCTARIHCgJOUBCUARIHCgJOTBCVARIHCgJBThCWARIHCgJOQxCXARIHCgJOWhCYARIHCgJOSR'
    'CZARIHCgJORRCaARIHCgJORxCbARIHCgJOVRCcARIHCgJNUBCdARIHCgJLUBCeARIHCgJOTxCf'
    'ARIHCgJPTRCgARIHCgJQSxChARIHCgJQVxCiARIHCgJQUxCjARIHCgJQQRCkARIHCgJQRxClAR'
    'IHCgJQWRCmARIHCgJQRRCnARIHCgJQSBCoARIHCgJQThCpARIHCgJQTBCqARIHCgJQVBCrARIH'
    'CgJQUhCsARIHCgJRQRCtARIHCgJSRRCuARIHCgJSTxCvARIHCgJSVRCwARIHCgJSVxCxARIHCg'
    'JCTBCyARIHCgJXUxCzARIHCgJTTRC0ARIHCgJTVBC1ARIHCgJTQRC2ARIHCgJTThC3ARIHCgJS'
    'UxC4ARIHCgJTQxC5ARIHCgJTTBC6ARIHCgJTRxC7ARIHCgJTWBC8ARIHCgJTSxC9ARIHCgJTSR'
    'C+ARIHCgJTQhC/ARIHCgJTTxDAARIHCgJaQRDBARIHCgJLUhDCARIHCgJTUxDDARIHCgJFUxDE'
    'ARIHCgJMSxDFARIHCgJTSBDGARIHCgJLThDHARIHCgJMQxDIARIHCgJNRhDJARIHCgJQTRDKAR'
    'IHCgJWQxDLARIHCgJTRBDMARIHCgJTUhDNARIHCgJTShDOARIHCgJTWhDPARIHCgJTRRDQARIH'
    'CgJDSBDRARIHCgJTWRDSARIHCgJUVxDTARIHCgJUShDUARIHCgJUWhDVARIHCgJUSBDWARIHCg'
    'JURxDXARIHCgJUSxDYARIHCgJUTxDZARIHCgJUVBDaARIHCgJUThDbARIHCgJUUhDcARIHCgJU'
    'TRDdARIHCgJUQxDeARIHCgJUVhDfARIHCgJBRRDgARIHCgJVRxDhARIHCgJHQhDiARIHCgJVQR'
    'DjARIHCgJVWRDkARIHCgJVUxDlARIHCgJVWhDmARIHCgJWVRDnARIHCgJWQRDoARIHCgJWRRDp'
    'ARIHCgJWThDqARIHCgJWSRDrARIHCgJXRhDsARIHCgJFSBDtARIHCgJZRRDuARIHCgJaTRDvAR'
    'IHCgJaVxDwAQ==');

