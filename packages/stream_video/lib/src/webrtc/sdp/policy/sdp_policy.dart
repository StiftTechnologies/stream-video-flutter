import 'package:equatable/equatable.dart';

import '../sdp.dart';

class SdpPolicy with EquatableMixin {
  const SdpPolicy({
    this.spdEditingEnabled = true,
    this.mungingEnabled = false,
    this.munging = _defaultMunging,
  });

  final bool spdEditingEnabled;
  final bool mungingEnabled;
  final SdpMunging munging;

  SdpPolicy copyWith({
    bool? spdEditingEnabled,
    bool? mungingEnabled,
    SdpMunging? munging,
  }) {
    return SdpPolicy(
      spdEditingEnabled: spdEditingEnabled ?? this.spdEditingEnabled,
      mungingEnabled: mungingEnabled ?? this.mungingEnabled,
      munging: munging ?? this.munging,
    );
  }

  @override
  bool? get stringify => true;

  @override
  List<Object?> get props => [spdEditingEnabled, mungingEnabled, munging];

  @override
  String toString() {
    return 'SdpPolicy{spdEditingEnabled: $spdEditingEnabled, mungingEnabled: $mungingEnabled, munging: $munging}';
  }
}

typedef SdpMunging = void Function(SdpType sdpType, List<SdpLine> sdpLines);

void _defaultMunging(SdpType sdpType, List<SdpLine> sdpLines) {
  /* no op */
}
