import 'package:flutter/material.dart';
class third extends StatefulWidget {
  const third({super.key});

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
 // int totalGuests=120;
    double sliderValue=1200;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Fill Details'),
        leading: IconButton(
          onPressed: (){
            
          }, 
          icon: Icon(Icons.arrow_back),
        
          ),
        
      ),
      body: Column(
       
        children: [
          
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network('https://cdn-icons-png.flaticon.com/512/6474/6474446.png',
              height: 20,),
             const  SizedBox(width: 6,),
             const  Text('South Indian Breakfast',
              style: TextStyle(color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20),
              ),
             const  SizedBox(width: 6,),
              const Icon(Icons.edit)
            ],
          ),
          Card(
            elevation: 2.0,
          
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: "Occasion",
                border: OutlineInputBorder(),
              ),
              items: ["Birthday", "Wedding", "Corporate"]
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ))
                  .toList(),
              onChanged: (value) {},
            ),
            SizedBox(height: 20),
            // Date and Time Picker
            Text('Date and Time',
            style: TextStyle(fontWeight: FontWeight.bold ),),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Date",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.calendar_today,
                      color: Colors.purple,),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Time",
                      
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.access_time,
                       color: Colors.purple,),
                    ),
                  ),
                ),
              ],
            ),






        ],
       ),
          ),
            SizedBox(height: 20),
            Card(
              elevation: 2,
              child: Column(
              children: [
          
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Price Per Plate:',
                style: TextStyle(fontWeight: FontWeight.bold),
                
                ),
                SizedBox(width: 140,),
                Text('20%',
                style: TextStyle(
                  color: Colors.green,
                  
                  ),
                 ),
                 SizedBox(width: 0,),
                  Icon(Icons.arrow_downward_sharp),
                  SizedBox(width: 40,),

                Text('₹299',
                style: TextStyle(
                  decoration: TextDecoration.lineThrough
                ),
                ),
                SizedBox(width: 80,),
                Text('₹240',
                style: TextStyle(fontWeight: FontWeight.bold),
                
                ), ],  ),
                Divider(thickness: 0.5,),
                  Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Guests ',
                style: TextStyle(fontWeight: FontWeight.bold),
                
                ),
                SizedBox(width: 140,),
                IconButton(

                  icon: Icon(Icons.remove,
                  color: Colors.deepPurple,),
                  onPressed: (){},
                  ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(4)
                  ),
                  padding: EdgeInsets.all(16),
                  child: Text('120',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                   
                    
                    ),
                   ),
                ),
                 SizedBox(width: 0,),
                 IconButton(

                  icon: Icon(Icons.add,
                  color: Colors.deepPurple,),
                  onPressed: (){
                  Color.fromARGB(9, 218, 23, 221);
                  },
                  ),

                  
                
                 ],  ),
                 Divider(thickness: 0.5,),
                 Row(
                  children: [
                    Expanded
                    (child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 10.0,
                          elevation: 1.0
                        
                        ),
                        overlayShape: RoundSliderOverlayShape(
                          overlayRadius: 20.0
                        ),
                      ),
                      child:Slider(
                        value: sliderValue,
                        min: 20,
                        max: 1500,
                        label:sliderValue.toStringAsFixed(0) ,
                        onChanged: (value) {
                          setState(() {
                            sliderValue=value;
                          });
                        },
                        ) ,
                      
                      )
                    )
                  ],
                 
                 ),
               const  Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 20,),
                    Text('10'),
                    SizedBox(width: 10,),
                    Text('(min)'),

                    SizedBox(width:350),
                    Text('1500')
                  ],
                ),
               const Row(
                  children: [
                    SizedBox(width: 20,),
                    Text('♦️',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.amber
                    ),
                    
                    ),
                     Text('DYNAMIC PRICING',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.deepPurple
                    ),
                    
                    ),
                     Text('More guests, more savings',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black26
                    ),
                    
                    )
                  ],
                ),
              ],
            ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed:() {
                
              },
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                minimumSize: Size(500, 50)


              ),
               child: const Text('Order Review',
               style: TextStyle(
                color: Colors.white
               ),
               )
               )
        
  ],
  
  
              
      ),
     
      



    );
  }
}