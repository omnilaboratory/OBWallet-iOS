import 'package:flutter/material.dart';

class NumberControllerWidget extends StatefulWidget {
  //input box height(高度)
  final double height;
  //button width (按钮的宽度)
  final double iconWidth;
  //The number displayed in the default input box(默认输入框显示的数量)
  final String numText;
  //Click the plus sign callback quantity(点击加号回调 数量)
  final ValueChanged addValueChanged;
  //Click the minus sign callback quantity(点击减号回调 数量)
  final ValueChanged removeValueChanged;
  //Click any of the plus and minus signs to call back quantity(点击加减号任意一个回调 数量)
  final ValueChanged updateValueChanged;

  const NumberControllerWidget({
    super.key,
    this.height = 34,
    this.iconWidth = 34,
    this.numText = '0',
    required this.addValueChanged,
    required this.removeValueChanged,
    required this.updateValueChanged,
  });

  @override
  State<NumberControllerWidget> createState() => _NumberControllerWidgetState();
}

class _NumberControllerWidgetState extends State<NumberControllerWidget> {
  var textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    textController.text = widget.numText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 0.5, color: const Color(0xFFE6E6E6))),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          iconButton(icon: Icons.remove, isAdd: false),
          Expanded(
            flex: 1,
            child: TextField(
              controller: textController,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF333333),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              enableInteractiveSelection: false,
              decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.only(left: 0, top: 2, bottom: 2, right: 0),
                border: OutlineInputBorder(
                  gapPadding: 0,
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
              ),
            ),
          ),
          iconButton(icon: Icons.add, isAdd: true),
        ],
      ),
    );
  }

  Widget iconButton({required IconData icon, required bool isAdd}) {
    return SizedBox(
      width: widget.iconWidth,
      child: IconButton(
        padding: const EdgeInsets.all(0),
        icon: Icon(icon),
        onPressed: () {
          var num = int.parse(textController.text);
          if (!isAdd && num == 0) return;
          if (isAdd) {
            num++;
            if (widget.addValueChanged != null) {
              widget.addValueChanged(num);
            }
          } else {
            num--;
            if (widget.removeValueChanged != null) {
              widget.removeValueChanged(num);
            }
          }
          textController.text = '$num';
          if (widget.updateValueChanged != null) {
            widget.updateValueChanged(num);
          }
        },
      ),
    );
  }
}
