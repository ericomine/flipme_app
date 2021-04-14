import 'dart:convert';

class WealthSummaryModel {
  final int id;
  final double cdi;
  final double gain;
  final double profitabiliy;
  final double total;
  final bool hasHistory;

  WealthSummaryModel(
    this.id,
    this.cdi,
    this.gain,
    this.profitabiliy,
    this.total,
    this.hasHistory,
  );

  WealthSummaryModel copyWith({
    int? id,
    double? cdi,
    double? gain,
    double? profitabiliy,
    double? total,
    bool? hasHistory,
  }) {
    return WealthSummaryModel(
      id ?? this.id,
      cdi ?? this.cdi,
      gain ?? this.gain,
      profitabiliy ?? this.profitabiliy,
      total ?? this.total,
      hasHistory ?? this.hasHistory,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'cdi': cdi,
      'gain': gain,
      'profitabiliy': profitabiliy,
      'total': total,
      'hasHistory': hasHistory,
    };
  }

  factory WealthSummaryModel.fromMap(Map<String, dynamic> map) {
    return WealthSummaryModel(
      map['id'],
      map['cdi'],
      map['gain'],
      map['profitabiliy'],
      map['total'],
      map['hasHistory'],
    );
  }

  String toJson() => json.encode(toMap());

  factory WealthSummaryModel.fromJson(String source) =>
      WealthSummaryModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'WealthSummaryModel(id: $id, cdi: $cdi, gain: $gain, profitabiliy: $profitabiliy, total: $total, hasHistory: $hasHistory)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is WealthSummaryModel &&
        other.id == id &&
        other.cdi == cdi &&
        other.gain == gain &&
        other.profitabiliy == profitabiliy &&
        other.total == total &&
        other.hasHistory == hasHistory;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        cdi.hashCode ^
        gain.hashCode ^
        profitabiliy.hashCode ^
        total.hashCode ^
        hasHistory.hashCode;
  }
}
