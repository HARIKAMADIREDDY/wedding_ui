import 'package:flutter/material.dart';
class fourth extends StatefulWidget {
  const fourth({super.key});

  @override
  State<fourth> createState() => _fourthState();
}

class _fourthState extends State<fourth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        //elevation: 4,
        title: Text('Order Review'),
        leading: IconButton(
          onPressed: (){},
           icon:Icon(Icons.arrow_back)
           ),
           
      ),
      body: Card(
        elevation: 4,
        color: Colors.white,
        child: Column(
          children: [
      
        Column(
        children: [
          Row(
                mainAxisAlignment: MainAxisAlignment.start,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network('https://cdn-icons-png.flaticon.com/512/6474/6474446.png',
                  height: 20,),
                 const  SizedBox(width: 18,),
                 const  Text('Millet Breakfast',
                  style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
                  ),
                   SizedBox(width: 260,),
               const   Text('Edit',
                 style: TextStyle(
                  color: Color.fromARGB(255, 227, 63, 118),
                  fontSize: 16
                 ),
                 ),
                
                ],
              ),
              SizedBox(height:10,),
             const  Row(children: [
                Icon(Icons.person),
                Text('265',
                style: TextStyle(color: Colors.black45),),
                SizedBox(width: 20,),
                  Icon(Icons.calendar_today),
                  Text('11/09/2024',
                  style: TextStyle(color: Colors.black45),
                  ),
                  SizedBox(width: 40),

                  Icon(Icons.access_time,
                  color: Colors.black26,),
                  Text('12:30 AM-02:30',
                  style: TextStyle(color: Colors.black45),
                  ),
                 
              ],),
              Divider(thickness:0.4 ,),
             const  Row(
                children: [
                  SizedBox(width: 10,),
                  Text('Hide selected items'),
                  SizedBox(width: 300),
                  Icon(Icons.keyboard_arrow_up,
                  color: Colors.black12,),

                ],

              ),
              Divider(thickness: 1,),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('Subtotal',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(width: 8,),
                      Text('₹24,600',
                      style: TextStyle(
                        color: Colors.black26,
                       decoration: TextDecoration.lineThrough
                      ),),
                      SizedBox(width: 10,),
                      Text('₹22,200',
                      style: TextStyle(
                       fontWeight: FontWeight.bold,
                        ),),
                        SizedBox(width:260),
                        Icon(Icons.keyboard_arrow_right,
                        color: Colors.black26,)
                  
                    ],
                  ),
                  Text('Incl,taxes and charges',
                  style: TextStyle(
                    color: Colors.black26
                  ),
                  )
                ],
              ),
    
        ],
      
      ),
      SizedBox(height: 20,),
      Card(
        
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            SizedBox(width: 10,),
            Container(
              height: 30,
              color: Colors.purple,
              child:const  Row(
                
                children: [
                  SizedBox(width: 20,),
                
                  Text('🥳',
                  //style: TextStyle(color: Colors.amberAccent),
                   style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 10,),
                  Text('Hurray! You saved',
                  style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 10,),
                  Text('₹17,130/-',
                  style: TextStyle(color: Colors.amber),),
                  SizedBox(width: 10,),
                  Text('on total order',
                   style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
           const Row(children: [
              SizedBox(width: 10,),
              Text('Total'),
              SizedBox(width: 350,),
              Text('₹24,600')
            ],),
            const  Row(children: [
              SizedBox(width: 10,),
              Text('Dynamic pricing discount'),
               Text('♦️',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.amber
                    ),
                    
                    ),
              SizedBox(width: 200,),
              Text('-₹8,000',
              style: TextStyle(color: Colors.black26),)
            ],),
            Row(
      children: List.generate(20, (index) {
        // Create a dash (small box) and gap alternatively
        return index.isEven
            ? Container(
                width: 40,
                height: 1,
                color: Colors.black26,
              )
            : SizedBox(width: 8);  // Gap between dashes
      }),
      



    ),
   const  Row(
      children: [
        SizedBox(width: 10,),
        Text('To Pay',
        style: TextStyle(fontWeight: FontWeight.bold),),
        SizedBox(width: 350,),
        Text('₹41,800',
        style: TextStyle(fontWeight: FontWeight.bold),)
      ],
    )
             
            
          ],
          
        ),
      ),
      Spacer(),
            Row(
              children: [
               const  Column(
                  children: [
                    Text('To Pay',
                    style: TextStyle(color: Colors.black26),),
                     Text('₹90,500',
                    style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(width: 300,),
                ElevatedButton(
                  onPressed:() {
                    
                  },
                  style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    minimumSize: Size(50, 50)
                
                
                  ),
                   child: Text('Order Review',
                   style: TextStyle(
                    color: Colors.white
                   ),
                   )
                   ),
              ],
            )
        
        
          ],
        )
        ),
        
    
        



    );
  }
}