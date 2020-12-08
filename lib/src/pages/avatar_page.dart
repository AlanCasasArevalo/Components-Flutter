import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRMRxccQHwSsO7fbstR-6Da2s9r2vkVWnIKA&usqp=CAU'),
              radius: 25,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.greenAccent,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://larepublica.pe/resizer/gGcBSqmfhqzCGiZFE6j6i5AR5tk=/1250x735/top/smart/arc-anglerfish-arc2-prod-gruporepublica.s3.amazonaws.com/public/FM5VZUEPTRFM5FN44D4NWVBOOU.jpg'),
          placeholder: AssetImage('assets/loading.gif'),
          fadeInDuration: Duration(
            milliseconds: 200
          ),
        ),
      ),
    );
  }
}
