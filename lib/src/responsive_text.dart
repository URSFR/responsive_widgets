import 'package:flutter/material.dart';

class ResponsiveText extends StatelessWidget {
  final TextStyle textStyle;
  final String text;
  final bool considerHeight;
  const ResponsiveText({
    super.key, this.textStyle = const TextStyle(fontSize: 14), required this.text, this.considerHeight=false,
  });
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    if(considerHeight==false){
      return Text(text,style: textStyle,
          textScaleFactor: (size.width/textStyle.fontSize!)/30
      );
    }
    else{
      return Text(text,style: textStyle,
          textScaleFactor: ((size.width*size.height/610)/textStyle.fontSize!)/30
      );
    }

  }
}


