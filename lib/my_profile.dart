
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Personal Profile',

              style: TextStyle(
            color: Colors.white,
                fontWeight: FontWeight.bold,
        ),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton<int>(
              itemBuilder: (context) =>[
                 PopupMenuItem(
                   value: 1,
                     child: Text('Share Mobile Number'),
                 ),
                PopupMenuItem(
                  value: 2,
                    child: Text('Share EmailId'),
                ),
                PopupMenuItem(
                  value: 3,
                    child: Text('share Address'),
                ),
                PopupMenuItem(
                  value: 4,
                    child: Text('Share ALl'),
                ),
              ],
    onSelected : (value){
    if(value==1){
    _ShareMobileNumber();
    }
    if(value==2){
      _ShareEmailId();
    }
    if(value==3){
      _ShareAddress();
    }
    if(value==4){
      _ShareAll();
    }
    }
          ),
        ],

      ),
      body: SafeArea(
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: const EdgeInsets.all(5),
                child: Text(
                  'Surendhiran Muthaiah',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.grey,
                  ),
                  title: Text('+91 98947 85234',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                  title: Text(
                    'surendhiran734@gmail.com',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                child: ListTile(
                  leading: Icon(
                    Icons.location_city,
                    color: Colors.grey,
                  ),
                  title: Text(
                    'No. 3/12b,Sathapuli,\nAlagapuri(po),\nSivagangai(dis)',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  _ShareMobileNumber(){
    Share.share('6374190127');
    print('6374190127');
  }

  _ShareEmailId(){
    Share.share('surendhiran734@gmail.com');
    print('surendhiran734@gmail.com');
  }

  _ShareAddress(){
    Share.share('No. 3/12b,Sathapuli\n,Alagapuri(po)\n,Sivagangai(dis)');
  }

  _ShareAll(){
    Share.share('6374190127,\nsurendhiran734@gmail.com,\nNo. 3/12b,Sathapuli,\nAlagapuri(po),\nSivagangai(dis)\n');
  }

}



















