// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class WifiModel {
  String? status;
  String? updated_at;
  String? lastSeen;
  String? mac;
  String? name;
  String? description;
  String? deviceGps;
  String? favorite;
  String? pause;

  //ws
  String? key;
  double? traffic;
  double? history;
  String? alert_level;
  String? timestamp;

  WifiModel({
    this.status,
    this.updated_at,
    this.lastSeen,
    this.mac,
    this.name,
    this.description,
    this.deviceGps,
    this.favorite,
    this.pause,

    //ws
    this.key,
    this.traffic,
    this.history,
    this.alert_level,
    this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'updated_at': updated_at,
      'lastSeen': lastSeen,
      'mac': mac,
      'name': name,
      'description': description,
      'deviceGps': deviceGps,
      'favorite': favorite,
      'pause': pause,

      //ws
      'key': key,
      'traffic': traffic,
      'history': history,
      'alert_level': alert_level,
      'alert_level': timestamp,
    };
  }

  factory WifiModel.fromMap(Map<String, dynamic> map) {
    return WifiModel(
      status: map['status'] != null && map['status'] != null ? map['status'] as String : null,
      updated_at: map['updated_at'] != null && map['updated_at'] != null ? map['updated_at'] as String : null,
      lastSeen: map['lastSeen'] != null && map['lastSeen'] != null ? map['lastSeen'] as String : null,
      mac: map['mac'] != null && map['mac'] != null ? map['mac'] as String : null,
      name: map['name'] != null && map['name'] != null ? map['name'] as String : null,
      description: map['description'] != null && map['description'] != null ? map['description'] as String : null,
      deviceGps: map['deviceGps'] != null && map['deviceGps'] != null ? map['deviceGps'] as String : null,
      favorite: map['favorite'] != null && map['favorite'] != null ? map['favorite'] as String : null,
      pause: map['pause'] != null && map['pause'] != null ? map['pause'] as String : null,

      //ws
      key: map['key'] != null && map['key'] != null ? map['key'] as String : null,
      traffic: map['traffic'] != null && map['traffic'] != 'NaN' ? map['traffic'] as double : null,
      history: map['history'] != null && map['history'] != 'NaN' ? map['history'] as double : null,
      alert_level: map['alert_level'] != null && map['alert_level'] != null ? map['alert_level'] as String : null,
      timestamp: map['timestamp'] != null && map['timestamp'] != null ? map['timestamp'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory WifiModel.fromJson(String source) {
    return WifiModel.fromMap(json.decode(source) as Map<String, dynamic>);
  }

  static List<WifiModel> fromJsonArray(String source) {
    final List<dynamic> jsonArray = json.decode(source) as List<dynamic>;
    return jsonArray.map((json) => WifiModel.fromMap(json as Map<String, dynamic>)).toList();
  }



 

  @override
  String toString() {
    return 'WifiModel(status: $status, updated_at: $updated_at, lastSeen: $lastSeen, mac: $mac, name: $name, description: $description, deviceGps: $deviceGps, favorite: $favorite, pause: $pause, key: $key, traffic: $traffic, history: $history, alert_level: $alert_level, timestamp: $timestamp)';
  }
}
