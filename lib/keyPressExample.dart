import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KeyPressExample extends StatefulWidget {
  const KeyPressExample({super.key});

  @override
  _KeyPressExampleState createState() => _KeyPressExampleState();
}

class _KeyPressExampleState extends State<KeyPressExample> {
  final FocusNode _focusNode = FocusNode();
  
  @override
  void initState() {
    super.initState();
    _focusNode.requestFocus();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  void _handleKeyEvent(KeyEvent event) {
    if (event is KeyDownEvent) {
      // Handle key down events
      print('Key pressed: ${event.logicalKey}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardListener(
      focusNode: _focusNode,
      onKeyEvent: _handleKeyEvent,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Key Press Example'),
        ),
        body: Center(
          child: Text('Press any key and check the console.'),
        ),
      ),
    );
  }
}
