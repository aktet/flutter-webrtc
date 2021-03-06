import 'package:webrtc/webrtc.dart';
import 'package:flutter/services.dart';

class RTCDataChannelInit {
  bool ordered;
  int maxPacketLifeTime;
  int maxRetransmits;
  String protocol;
  bool negotiated;
  int id = 0;
  Map<String, dynamic> toMap() {
    return {
      'ordered': ordered,
      'maxPacketLifeTime': maxPacketLifeTime,
      'maxRetransmits': maxRetransmits,
      'protocol': protocol,
      'negotiated': negotiated,
      'id': id
    };
  }
}

enum RTCDataChannelState {
  RTCDataChannelConnecting,
  RTCDataChannelOpen,
  RTCDataChannelClosing,
  RTCDataChannelClosed,
}

class RTCDataChannel {
  String _peerConnectionId;
  String _label;
  int _dataChannelId;
  MethodChannel _channel = WebRTC.methodChannel();

  RTCDataChannel(this._peerConnectionId, this._label, this._dataChannelId);

  void send(dynamic data) {
    //"dataChannelSendMessage"
  }

  void close() {
    //"dataChannelClose"
  }
}
