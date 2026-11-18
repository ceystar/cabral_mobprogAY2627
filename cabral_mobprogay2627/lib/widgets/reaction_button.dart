import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import 'custom_text.dart';

class ReactionButton extends StatefulWidget {
  final int initialLikes;
  const ReactionButton({super.key, this.initialLikes = 0});

  @override
  State<ReactionButton> createState() => _ReactionButtonState();
}

class _ReactionButtonState extends State<ReactionButton> {
  String? _selected;

  final Map<String, String> _reactions = {
    'Like': '👍',
    'Love': '❤️',
    'Haha': '😆',
    'Wow': '😮',
    'Sad': '😢',
    'Angry': '😡',
  };

  void _showReactions() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: _reactions.entries.map((entry) {
                return InkWell(
                  onTap: () {
                    setState(() => _selected = entry.key);
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Text(
                      entry.value,
                      style: const TextStyle(fontSize: 28),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool hasReacted = _selected != null;
    final int count = widget.initialLikes + (hasReacted ? 1 : 0);

    return InkWell(
      onTap: () {
        setState(() => _selected = hasReacted ? null : 'Like');
      },
      onLongPress: _showReactions,
      child: Padding(
        padding: EdgeInsets.all(ScreenUtil().setSp(8)),
        child: Row(
          children: [
            hasReacted
                ? Text(_reactions[_selected]!,
                    style: const TextStyle(fontSize: 20))
                : const Icon(Icons.thumb_up_outlined, color: FB_DARK_PRIMARY),
            SizedBox(width: ScreenUtil().setWidth(5)),
            CustomText(
              text: hasReacted ? '$_selected ($count)' : '$count',
              fontSize: ScreenUtil().setSp(12),
              color: hasReacted ? FB_PRIMARY : FB_DARK_PRIMARY,
            ),
          ],
        ),
      ),
    );
  }
}
