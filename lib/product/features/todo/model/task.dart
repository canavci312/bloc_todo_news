import 'dart:convert';

class TodoTask {
  final String name;
  final int timestamp;
  TodoTask({
    required this.name,
    required this.timestamp,
  });

  TodoTask copyWith({
    int? id,
    String? name,
    int? timestamp,
  }) {
    return TodoTask(
      name: name ?? this.name,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'timestamp': timestamp,
    };
  }

  factory TodoTask.fromMap(Map<String, dynamic> map) {
    return TodoTask(
      name: map['name'] ?? '',
      timestamp: map['timestamp']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory TodoTask.fromJson(String source) => TodoTask.fromMap(json.decode(source));

  @override
  String toString() => 'TodoTask(name: $name, timestamp: $timestamp)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is TodoTask &&
      other.name == name &&
      other.timestamp == timestamp;
  }

  @override
  int get hashCode =>  name.hashCode ^ timestamp.hashCode;
}
