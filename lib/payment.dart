import 'package:flutter/material.dart';



class PaymentMethod extends StatefulWidget {
  const PaymentMethod({ Key? key }) : super(key: key);

  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shipping"),
        centerTitle: true,
      ),
      body:Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Icon(Icons.payment,color: Colors.purple,),
                SizedBox(width: 10,),
                Text("Payment Methode",style: TextStyle(color: Colors.purple,fontSize: 20,fontWeight: FontWeight.bold))
              ],
            ),
            Container(
              height: 80,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 40,vertical: 30),
                child: ElevatedButton.icon(
                    onPressed: () {
                      //Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>ScanScreen()));
                   
                    },
                    label: Text("   Paypal",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),),
                    icon: Icon(Icons.topic_outlined,size: 30),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      elevation: 10,
                      shadowColor: Colors.white,
                    ),),
              ),
              Container(
              height: 80,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 40),
                child: ElevatedButton.icon(
                    onPressed: () {
                      //Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>ScanScreen()));
                    },
                    label: Text("   ccp",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),),
                    icon: Icon(Icons.topic_outlined,size: 30),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      elevation: 10,
                      shadowColor: Colors.white,
                    ),),
              ),
          ],
        ),
      )
    );
  }
}