import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:peerdart/peerdart.dart';
import 'package:uuid/uuid.dart';

class TextSendPage extends StatefulWidget {
  // final Peer peer;

  TextSendPage({
    super.key,
  });

  @override
  _TextSendPageState createState() => _TextSendPageState();
}

class _TextSendPageState extends State<TextSendPage> {
  final _textEditingController = TextEditingController();
  RTCPeerConnection? _peerConnection;
  RTCDataChannel? _dataChannel;

  @override
  void initState() {
    super.initState();

    _createPeerConnection();
  }

  Future<void> _createPeerConnection() async {
    final configuration = <String, dynamic>{
      'iceServers': [
        {'url': 'stun:stun.l.google.com:19302'},
      ],
    };

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Text Send'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _textEditingController,
                decoration: InputDecoration(
                  hintText: 'Type your message here...',
                ),
              ),
              SizedBox(height: 16),
              // ElevatedButton(
              //   onPressed: const Text('data'),
              //   child: Text('Send'),
              // ),
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
