import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'rtc_video_dimension.dart';
import 'rtc_video_encoding.dart';

@immutable
class RtcVideoParameters
    with EquatableMixin
    implements Comparable<RtcVideoParameters> {
  const RtcVideoParameters({
    this.description,
    required this.dimension,
    required this.encoding,
  });

  final String? description;
  final RtcVideoDimension dimension;
  final RtcVideoEncoding encoding;

  RtcVideoParameters copyWith({
    String? description,
    RtcVideoDimension? dimension,
    RtcVideoEncoding? encoding,
  }) {
    return RtcVideoParameters(
      description: description ?? this.description,
      dimension: dimension ?? this.dimension,
      encoding: encoding ?? this.encoding,
    );
  }

  @override
  List<Object?> get props => [dimension, encoding, description];

  @override
  bool? get stringify => true;

  @override
  int compareTo(RtcVideoParameters other) {
    // compare by dimension's area
    final result = dimension.area.compareTo(other.dimension.area);
    // if dimensions have equal area, compare by encoding
    if (result == 0) {
      return encoding.compareTo(other.encoding);
    }

    return result;
  }
}

extension RtcVideoParametersPresets on RtcVideoParameters {
  static const int k1080pBitrate = 2700000;
  static const int k720pBitrate = 1250000;
  static const int k540pBitrate = 700000;
  static const int k360pBitrate = 400000;
  static const int k180pBitrate = 140000;

  // 16:9 Presets
  static const h1080_16x9 = RtcVideoParameters(
    dimension: RtcVideoDimensionPresets.h1080_169,
    encoding: RtcVideoEncoding(
      maxBitrate: k1080pBitrate,
      maxFramerate: 30,
      quality: RtcVideoQuality.high,
    ),
  );

  static const h720_16x9 = RtcVideoParameters(
    dimension: RtcVideoDimensionPresets.h720_169,
    encoding: RtcVideoEncoding(
      maxBitrate: k720pBitrate,
      maxFramerate: 30,
      quality: RtcVideoQuality.high,
    ),
  );

  static const h540_16x9 = RtcVideoParameters(
    dimension: RtcVideoDimensionPresets.h540_169,
    encoding: RtcVideoEncoding(
      maxBitrate: k540pBitrate,
      maxFramerate: 30,
      quality: RtcVideoQuality.mid,
    ),
  );

  static const h360_16x9 = RtcVideoParameters(
    dimension: RtcVideoDimensionPresets.h360_169,
    encoding: RtcVideoEncoding(
      maxBitrate: k360pBitrate,
      maxFramerate: 30,
      quality: RtcVideoQuality.lowUnspecified,
    ),
  );

  static const h180_16x9 = RtcVideoParameters(
    dimension: RtcVideoDimensionPresets.h180_169,
    encoding: RtcVideoEncoding(
      maxBitrate: k180pBitrate,
      maxFramerate: 30,
      quality: RtcVideoQuality.lowUnspecified,
    ),
  );

  // 4:3 Presets
  static const h1080_4x3 = RtcVideoParameters(
    dimension: RtcVideoDimensionPresets.h1080_43,
    encoding: RtcVideoEncoding(
      maxBitrate: (k1080pBitrate * 0.75) ~/ 1,
      maxFramerate: 30,
      quality: RtcVideoQuality.high,
    ),
  );

  static const h720_4x3 = RtcVideoParameters(
    dimension: RtcVideoDimensionPresets.h720_43,
    encoding: RtcVideoEncoding(
      maxBitrate: (k720pBitrate * 0.75) ~/ 1,
      maxFramerate: 30,
      quality: RtcVideoQuality.high,
    ),
  );

  static const h540_4x3 = RtcVideoParameters(
    dimension: RtcVideoDimensionPresets.h540_43,
    encoding: RtcVideoEncoding(
      maxBitrate: (k540pBitrate * 0.75) ~/ 1,
      maxFramerate: 30,
      quality: RtcVideoQuality.mid,
    ),
  );

  static const h360_4x3 = RtcVideoParameters(
    dimension: RtcVideoDimensionPresets.h360_43,
    encoding: RtcVideoEncoding(
      maxBitrate: (k360pBitrate * 0.75) ~/ 1,
      maxFramerate: 30,
      quality: RtcVideoQuality.lowUnspecified,
    ),
  );

  static const h180_4x3 = RtcVideoParameters(
    dimension: RtcVideoDimensionPresets.h180_43,
    encoding: RtcVideoEncoding(
      maxBitrate: (k180pBitrate * 0.75) ~/ 1,
      maxFramerate: 30,
      quality: RtcVideoQuality.lowUnspecified,
    ),
  );
}
