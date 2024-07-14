import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowImage extends StatefulWidget {
  const ShowImage({super.key});

  @override
  State<ShowImage> createState() => _ShowImageState();
}



class _ShowImageState extends State<ShowImage> {
  String URl='';
  String text='';
  void ShowBloc(){

    setState((){
URl='asset/images/bulb.png';
text='';
    });}
    void ShowCircle(){
      setState(() {
        URl='asset/images/idea (1).png';
        text='';

      });
  }
  void ShowText(){
    setState(() {
      URl='';
      text='the text';
    });}
    void Reset(){
      setState(() {
        URl='';
        text='';
      });
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100,),

            if (URl.isNotEmpty)Image.asset(URl,width: 100,height: 100,),
            if (text.isNotEmpty)Text(text),
            Spacer(),
            ElevatedButton(onPressed: (){
              ShowBloc();
            }, child: Text('show bloc')),
            ElevatedButton(onPressed: (){
              ShowCircle();
            }, child: Text('show cirle')),
            ElevatedButton(onPressed: (){
              ShowText();
            }, child: Text('show text')),
            ElevatedButton(onPressed: (){
              Reset();
            }, child: Text('show reset')),


          ],
        ),
      ),
    );
  }
}
