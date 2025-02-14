// ignore_for_file: public_member_api_docs, sort_constructors_first, no_leading_underscores_for_local_identifiers
import 'dart:convert';

class ApiData {
  String? no;

  ///최상위화면에서 그룹으로 묶는 용도
  String? gno;
  String? location;
  String? idno;
  double? lat;
  double? longi;

  ///fixed1
  String? url;

  ///fixed2
  String? url2;

  ///rotary1
  String? url3;

  /// cctv,cpoll,land,wifi,bunjun
  String? type;
  String? favorite;
  String? status;
  String? alert;

  ApiData({
    required this.no,
    required this.gno,
    required this.location,
    required this.idno,
    required this.lat,
    required this.longi,
    required this.url,
    required this.url2,
    required this.url3,
    required this.type,
    required this.favorite,
    required this.status,
    required this.alert,
  });

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['no'] = no;
    _data['gno'] = gno;
    _data['location'] = location;
    _data['idno'] = idno;
    _data['lat'] = lat;
    _data['longi'] = longi;
    _data['url'] = url;
    _data['url2'] = url2;
    _data['url3'] = url3;
    _data['type'] = type;
    _data['favorite'] = favorite;
    _data['status'] = status;
    _data['alert'] = alert;
    return _data;
  }

  factory ApiData.fromJson(Map<String, dynamic> json) {
    return ApiData(
      no: json['no'],
      gno: json['gno'],
      location: json['location'],
      idno: json['idno'],
      lat: double.tryParse(json['lat']),
      longi: double.tryParse(json['longi']),
      url: json['url'],
      url2: json['url2'],
      url3: json['url3'],
      type: json['type'],
      favorite: json['favorite'],
      status: json['status'],
      alert: json['alert'],
    );
  }

  @override
  String toString() {
    return 'ApiData(no: $no, gno: $gno, location: $location, idno: $idno, lat: $lat, longi: $longi, url: $url, url2: $url2, url3: $url3, type: $type, favorite: $favorite, status: $status, alert: $alert)';
  }
}

class ApiResult {
  bool? isSuccess;
  dynamic data;
  final String? errorMsg;

  ApiResult({
    required this.isSuccess,
    required this.data,
    this.errorMsg,
  });

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['IsSuccess'] = isSuccess;
    _data['Data'] = data;
    _data['ErrorMsg'] = errorMsg;
    return _data;
  }

  @override
  String toString() {
    return 'ApiResult(isSuccess: $isSuccess, data: $data, errorMsg: $errorMsg)';
  }

  factory ApiResult.fromJson(Map<String, dynamic> json) {
    return ApiResult(
      isSuccess: json['IsSuccess'],
      data: json['Data'],
      errorMsg: json['ErrorMsg'],
    );
  }

  static List<ApiResult> fromJsonArray(String source) {
    final List<dynamic> jsonArray = json.decode(source) as List<dynamic>;
    return jsonArray.map((json) => ApiResult.fromJson(json as Map<String, dynamic>)).toList();
  }
}
