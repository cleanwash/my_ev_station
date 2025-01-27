class ChargerModel {
  final String statNm;
  final String statId;
  final String chgerId;
  final String chgerType;
  final String addr;
  final double lat;
  final double lng;
  final String useTime;
  final String busiNm;
  final String stat;
  final String output;
  final String method;
  final String parkingFree;
  final String limitYn;
  final String delYn;

  ChargerModel({
    required this.statNm,
    required this.statId,
    required this.chgerId,
    required this.chgerType,
    required this.addr,
    required this.lat,
    required this.lng,
    required this.useTime,
    required this.busiNm,
    required this.stat,
    required this.output,
    required this.method,
    this.parkingFree = '',
    this.limitYn = '',
    this.delYn = '',
  });

  factory ChargerModel.fromJson(Map<String, dynamic> json) {
    return ChargerModel(
      statNm: json['statNm'] ?? '',
      statId: json['statId'] ?? '',
      chgerId: json['chgerId'] ?? '',
      chgerType: json['chgerType'] ?? '',
      addr: json['addr'] ?? '',
      lat: double.tryParse(json['lat'] ?? '0') ?? 0.0,
      lng: double.tryParse(json['lng'] ?? '0') ?? 0.0,
      useTime: json['useTime'] ?? '',
      busiNm: json['busiNm'] ?? '',
      stat: json['stat'] ?? '',
      output: json['output'] ?? '',
      method: json['method'] ?? '',
      parkingFree: json['parkingFree'] ?? '',
      limitYn: json['limitYn'] ?? '',
      delYn: json['delYn'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'statNm': statNm,
      'statId': statId,
      'chgerId': chgerId,
      'chgerType': chgerType,
      'addr': addr,
      'lat': lat,
      'lng': lng,
      'useTime': useTime,
      'busiNm': busiNm,
      'stat': stat,
      'output': output,
      'method': method,
      'parkingFree': parkingFree,
      'limitYn': limitYn,
      'delYn': delYn,
    };
  }

  ChargerModel copyWith({
    String? statNm,
    String? statId,
    String? chgerId,
    String? chgerType,
    String? addr,
    double? lat,
    double? lng,
    String? useTime,
    String? busiNm,
    String? stat,
    String? output,
    String? method,
    String? parkingFree,
    String? limitYn,
    String? delYn,
  }) {
    return ChargerModel(
      statNm: statNm ?? this.statNm,
      statId: statId ?? this.statId,
      chgerId: chgerId ?? this.chgerId,
      chgerType: chgerType ?? this.chgerType,
      addr: addr ?? this.addr,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
      useTime: useTime ?? this.useTime,
      busiNm: busiNm ?? this.busiNm,
      stat: stat ?? this.stat,
      output: output ?? this.output,
      method: method ?? this.method,
      parkingFree: parkingFree ?? this.parkingFree,
      limitYn: limitYn ?? this.limitYn,
      delYn: delYn ?? this.delYn,
    );
  }

  @override
  String toString() {
    return 'ChargerModel(statNm: $statNm, statId: $statId, chgerId: $chgerId, chgerType: $chgerType, addr: $addr, lat: $lat, lng: $lng, useTime: $useTime, busiNm: $busiNm, stat: $stat, output: $output, method: $method, parkingFree: $parkingFree, limitYn: $limitYn, delYn: $delYn)';
  }
}

// 충전기 타입과 상태를 위한 extension
extension ChargerTypeExtension on String {
  String get chargerTypeDescription {
    switch (this) {
      case '01':
        return 'DC차데모';
      case '02':
        return 'AC완속';
      case '03':
        return 'DC차데모+AC3상';
      case '04':
        return 'DC콤보';
      case '05':
        return 'DC차데모+DC콤보';
      case '06':
        return 'DC차데모+AC3상+DC콤보';
      case '07':
        return 'AC3상';
      default:
        return '알 수 없음';
    }
  }
}

extension ChargerStatusExtension on String {
  String get statusDescription {
    switch (this) {
      case '1':
        return '통신이상';
      case '2':
        return '충전대기';
      case '3':
        return '충전중';
      case '4':
        return '운영중지';
      case '5':
        return '점검중';
      case '9':
        return '상태미확인';
      default:
        return '알 수 없음';
    }
  }
}
