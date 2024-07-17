

import 'package:ambulance_service/sign/sign_in.dart';
import 'package:flutter/material.dart';

import '../widgets/contact_us.dart';
import 'call_now.dart';
import 'faq.dart';
import 'hospitals.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   var selected = "Services";
   var selected1 = "Hospitals";
   String? _selectedPage;
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        appBar: AppBar(
          title: Image.asset('lib/images/Picture1.jpg',height: 100,width: 100,),
          actions: [
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>const SignIn()));
            }, child: const Text("login as admin",style: TextStyle(color: Colors.black,),)),
            MaterialButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const CallNow()));
            },color: Colors.deepOrangeAccent,child: const Text("Call Now"),),
            const SizedBox(width: 10),
            MaterialButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ContactUs()));
            },color: Colors.deepOrangeAccent,child: const Text("Book us"),),
            const SizedBox(width: 10,),



          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(

                color: Colors.red,
                width: double.infinity,
                height: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(

                    children: [

                      MaterialButton(onPressed: (){}, child: const Text("Home"),),

                      DropdownButtonHideUnderline(
                        child: DropdownButton<String>(

                          hint: const Text("Service",style: TextStyle(color: Colors.black),),
                          value: _selectedPage,
                          onChanged: (newValue) {
                            setState(() {

                              // Navigate to the selected page using Navigator
                              Navigator.pushNamed(context, newValue!);
                            });
                          },
                          items: <DropdownMenuItem<String>>[
                            const DropdownMenuItem<String>(
                              value: '/page1',
                              child: Text("Ac Ambulance"),
                            ),
                            const DropdownMenuItem<String>(
                              value: '/page2',
                              child: Text('Freezer Ambulance'),
                            ),
                            const DropdownMenuItem<String>(
                              value: '/page3',
                              child: Text('Icu Ambulance'),
                            ),
                            const DropdownMenuItem<String>(
                              value: '/page4',
                              child: Text('Air Ambulance'),
                            ),

                          ],
                        ),
                      ),
                      MaterialButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const HomePage()));
                      }, child: const Text("About us"),),
                      MaterialButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const CallNow()));
                      }, child: const Text("Contact us"),),
                      MaterialButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Hospitals()));
                      }, child: const Text("Hospitals"),),

                    ],
                  ),
                ),
                

              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.black54,

                  ]
                )),

                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0,top: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(" --24 Hours Ambulance Service",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                      const Text(" Best Ambulance \n Service in Bangladesh ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35),),
                      const Text("You can now get to the hospital faster than ever with our online ambulance service in Dhaka, BangladeshOur online ambulance service is available 24-hours a day and 7-days a week. We will pick up your loved ones and bring them to the hospital as fast as possible. We are always ready for any kind of pandemic situation.",style: TextStyle(color: Colors.white),),
                      const SizedBox(height: 40,),
                      Center(child: MaterialButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const CallNow()));
                      },shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(120)),color: Colors.deepOrangeAccent,child: const Text("Call Now"),)),
                      Center(child: MaterialButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ContactUs()));
                      },color: Colors.deepOrangeAccent,shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(120)),child: const Text("Book us"),)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: Row(

                    children: [
                      const Expanded(flex:1,child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 30,left: 20),
                            child: Text("Know Who we Are",style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          Text("About Emergency Ambulance Service",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                          Text("Emergency Ambulance",style: TextStyle(fontWeight: FontWeight.bold),),
                          Row(children: [
                            Text("Service",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(" is one of the most"),
                          ],),
                          Text("reliable and fastest emergency services in Bangladesh. We provide round the clock emergency ambulance service in Dhaka city and all over the country  to patients in need. Whether you are suffering from a heart attack, require an urgent blood transfusion, or have been hit by a car, the ambulance service can get you to the hospital quickly and safely. The ambulance service is accessible 24 hours a day, 7 days a week.\n\nDo not hesitate to call our emergency services if you are in need of urgent care or simply want a reliable and fast way to get your loved ones to a hospital swiftly.")

                        ],
                      )),
                      Expanded(flex:1,child: Image.asset("lib/images/ambulance_logo.jpg"))
                    ],
                  ),

                ),
              ),
              Container(

                decoration: const BoxDecoration(gradient: LinearGradient(
                    colors: [
                      Colors.black,
                      Colors.black54,

                    ]
                )),

                child: Column(
                  children: [
                       Row(
                         children: [
                           const Padding(
                             padding: EdgeInsets.only(top: 28.0,left: 10),
                             child: Column(
                               children: [
                                 Text("We Can Get You To The\nHospital Quickly And Safely",style: TextStyle(color: Colors.white,fontSize: 22)),
                                 Text("Ambulance BD24 isa unique service\nthat offers something different from\ntraditional ambulances. It's not just \nabout getting to the hospital\n quickly,but also about getting you there \nin the safest possible way.",style: TextStyle(color: Colors.white),)
                               ],
                             ),
                           ),

                           Padding(
                             padding: const EdgeInsets.only(top:28,),
                             child: Column(
                               children: [
                                 MaterialButton(onPressed: (){
                                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const HomePage()));
                                 },color:Colors.orangeAccent,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)), child: const Text("Learn More",style: TextStyle(color: Colors.white),)),
                               ],
                             ),
                           )

                         ],
                       ),


                  ],
                ),
              ),
              Container(
                color: Colors.white,

                width: double.infinity,
                child: Column(

                  children: [
                    const SizedBox(height: 10,),
                    const Text("Online Emergency Ambulance Service In Bangladesh",style: TextStyle(fontSize: 16),),
                    const Padding(
                      padding: EdgeInsets.only(left: 68.0,right: 68),
                      child: Divider(thickness: 3,color: Colors.black,),
                    ),
                    Container(
                      child: Column(
                        children: [
                             const Text("Ambulance BD 24 has brought you the best quality online ambulance service in Dhaka. Be it pandemic or other adverse situations. we are ready to transport the patient to the hospital or home. We value your lives and we will not let anyone die without getting proper treatment.During the pandemic situation, we have noticed that people are dying before getting admitted to the hospitals. So that, we have taken the initiative to launch our online ambulance service in all over Bangladesh , Mirpur, Mohakhali and as well as other rural areas so that people can easily access emergency ambulance services in Bangladesh. We provide 24 hour emergency ambulance services to people and acute illnesses as well as pregnancy.Ambulance BD 24 gives the 24 hour service in Bangladesh. We Provide AC and Non AC Ambulance, Freezing Ambulance and ICO Ambulance services all over Bangladesh. So if you need an emergency ambulance service  then simply call us to get services. "),


                          Image.asset("lib/images/service_contact.png"),
                          const SizedBox(height: 10,),
                          const Text("OUR EMERGENCY AMBULANCE SERVICES",style: TextStyle(fontSize: 18),),
                          const Text("We are giving full medical support ambulance service in BD",style: TextStyle(fontSize: 11),),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(

                width: double.infinity,
                child: Column(
                  children: [
                   Row(
                     children: [
                       Expanded(flex: 1,child: Image.asset("lib/images/ac_ambulance_service.jpg"),),
                       Expanded(flex: 1,child: Column(children: [
                         const Text("Freezer Ambulance"),
                         const Padding(
                           padding: EdgeInsets.all(3.0),
                           child: Text("We also provide Freezing Ambulance to carry dead bodies from one place to another. It is very important to keep a dead body safe.",style: TextStyle(fontSize: 11),),
                         ),
                         MaterialButton(onPressed: (){
                           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const HomePage()));
                         },color: Colors.lightBlue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),child:const Text("Learn more"),),
                       ],),),
                       Expanded(flex: 1,child: Image.asset("lib/images/icu_ambulance_service.jpg"),),

                     ],
                   ),
                    Row(
                      children: [
                        Expanded(flex: 1,child: Column(children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 28.0),
                            child: Text("Ac & Non Ac Ambulance"),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Text("Ambulance BD provides AC Ambulance service. So patients can go anywhere safely at any time. We are 24 hours ready to give services to the patients.",style: TextStyle(fontSize: 11),),
                          ),
                          MaterialButton(onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const HomePage()));
                          },color: Colors.lightBlue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),child:const Text("Learn more"),),
                        ],),),
                        Expanded(flex: 1,child: Image.asset("lib/images/freezing_ambulace_service.jpg"),),
                        Expanded(flex: 1,child: Column(children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 18.0),
                            child: Text("ICU,CCU, PICU Ambulance"),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Text("Ambulance BD is also providing ICU, CCU, PICU, NICU ambulance services in Bangladesh. we give special life support in that ambulance. ",style: TextStyle(fontSize: 11),),
                          ),
                          MaterialButton(onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const HomePage()));
                          },color: Colors.lightBlue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),child:const Text("Learn more"),),
                        ],),),
                      ],
                    ),
                  ],
                ),
              ),
              Container(

                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(child:Column(
                      children: [
                        const Text("Low Cost Ambulance Service In Dhaka",style: TextStyle(fontWeight: FontWeight.bold),),
                        const Divider(thickness: 2,),
                        Container(
                          child: const Text("Ambulance BD 24 provides Low Cost Ambulance Service in Dhaka. Dhaka is the capital of Bangladesh. It is a densely populated city with over 15 million people living there. The cost of living in Dhaka is very high and the population density makes it difficult for people to find affordable transportation.Ambulance BD 24 of  has started a low cost ambulance service to help alleviate these problems.This service will provide transport to patients who need medical attention from any part of Dhaka city, 24 hours a day, 365 days a year, regardless of their financial status or health condition. .The service will be able to transport patients to any hospital in Dhaka city for treatment. Healthcare is one of the most important services that people in Bangladesh lack. The low cost ambulance service will help alleviate the health crisis in Bangladesh and provide this important service for its citizens."),
                        )
                      ],
                    )),
                    Expanded(child: Image.asset("lib/images/background_of_ambulance_service.jpg")),

                  ],
                ),
              ),
              Container(
                width: double.infinity,
                child: Column(

                children: [
                  const Text("We Have Advanced Facilities",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  const Padding(
                    padding: EdgeInsets.only(left: 150.0,right: 150),
                    child: Divider(thickness: 2,color: Colors.black,),
                  ),
                  Row(
                    children: [
                      const Expanded(child: Padding(
                        padding: EdgeInsets.only(left: 3.0),
                        child: Text("Advanced life support facilities in the ambulance are essential for the patient’s health and safety during transportation. The advanced features of ambulances include defibrillation, oxygen supply, automatic external defibrillator (AED), cardiac monitor, pulse oximeter, electrocardiogram (ECG), intravenous therapy, pain management system and more.\n\nAmbulance BD 24 provides basic life supports in all of the ambulances. In addition, we provide advanced life support systems in our several ambulances. We provide cardiac monitoring systems along with intravenous cannulation facilities also. Dhaka is the busiest city in Bangladesh. It is very difficult to reach the hospitals quickly by beating the traffic.\n\nOur experienced drivers of emergency ambulance service will help you reach the hospitals as early as possible. All our ambulances are fully furnished with clean beds for patients, stretchers, oxygen cylinders, wheelchairs along other essential equipment. Our online ambulance services also provide comfortable seats for the companions of the patients. Moreover, our ambulances have air conditioners that make it more comfortable for the patients."),
                      )),
                      Expanded(child: Image.asset("lib/images/Advance_facilities_of_our_ambulance.png"))
                    ],
                  ),
                  const Text("Emergency Medical Ambulance Service Features",style: TextStyle(fontWeight: FontWeight.bold),),
                  Row(
                    children: [
                      Expanded(

                          child: Padding(

                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(

                              colors: [

                                Colors.white,
                                Colors.black12.withOpacity(.1)
                              ]
                            )
                          ),
                          child: const Column(children: [
                            Icon(Icons.emergency,size: 40,),
                            Text("Online Booking",style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("We are also available online. Just make sure of a booking. Send us your location with details. Our ambulance service will get you soon")
                          ],),
                        ),
                      )),
                      Expanded(flex:1,child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(

                                colors: [

                                  Colors.white,
                                  Colors.black12.withOpacity(.1)
                                ]
                            )
                        ),
                        child: const Column(children: [
                          Icon(Icons.access_time,size: 40,),
                          Text("Quick Response",style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("We are always active for you at any time, anywhere, any situation. Just call us. We will serve you with a quick responsible ambulance service.")

                        ],),
                      )),
                      Expanded(child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(

                                colors: [

                                  Colors.white,
                                  Colors.black12.withOpacity(.1)
                                ]
                            )
                        ),
                        child: const Column(children: [
                          Icon(Icons.add_road_sharp,size: 40,),
                          Text("Fare Rate",style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("Our ambulance service has not a specific fare rate. Actually it depends on the destination. That’s why it’s not a certain charge. You can trus us.")
                        ],),
                      ))
                    ],
                  )
                ],
              ),),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  width: double.infinity,
                  color: Colors.black12.withOpacity(.01),
                  child: const Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(child: Text("Ambulance Service FAQs",style: TextStyle(fontSize: 20),)),
                      Text("Here are some frequent asked questions, that people ask frequently and these will help you much"),
                      SizedBox(height: 20,),
                      Text("How Do I Call An Ambulance In Dhaka?",style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 10,),
                      Text("The easiest way is to call us on our 24/7 emergency hotline. Number : 01761-198103 You can also find the ambulance service's contact number on our website, or you can simply search for it on Google."),
                      SizedBox(height: 20,),
                      Text("Can I Reserve An Ambulance Service Via Just A Phone Calls?",style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 10,),
                      Text("Ans: Obviously, You can ensure an ambulance service with just a phone call. Just inform us of the details. Such as ambulance type, location, patients conditions, departure time, etc."),
                      SizedBox(height: 20,),
                      Text("How Much Time Do You Need To Send An Ambulance Service To Us?",style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 10,),
                      Text("Ans: Actually It depends on traffic situations in Dhaka city. But we always try to send an ambulance with just a few times like 10-15 min. Outside of Dhaka we server our ambulance service with a few times."),
                      SizedBox(height: 20,),
                      Text("Can I Book An Ambulance Service In Online Through Your Website?",style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 10,),
                      Text("Ans: Click on the book now on our websites. Here you have to add some details of you and your patient's condition. After submit we will contact with you via this number +8801637448834"),
                      SizedBox(height: 20,),
                      Text("Can I Get Your Ambulance Service Outside Of Bangladesh?",style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 10,),
                      Text("Ans: For your kind information, It's not possible to provide our ambulance service outside of Bangladesh. But We can provide our ambulance service in Bangladesh to India by air ambulance. You can check our air ambulance service terms & conditions."),
                      SizedBox(height: 20,),
                      Text("What Do You Mean By Emergency Ambulance Service ?",style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 10,),
                      Text("Ans: We are providing emergency ambulance service in Bangladesh. so that means it means it means if patients need any emergency service then we will arrange every kind or emergency services"),
                      SizedBox(height: 20,),
                      Text("Do You Have 24/7 Coverage?",style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 10,),
                      Text("Yes, we have round-the-clock emergency ambulance service in Dhaka city and all over the country."),
                    ],
                  ),
                ),
              ),

              Container(
                decoration: const BoxDecoration(gradient: LinearGradient(
                    colors: [
                      Colors.black,
                      Colors.black54,

                    ]
                )),
                width: double.infinity,
                child: Row(
                  children: [
                    const Expanded(child: Column(
                      children: [
                        Text("About us",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                        Text("Ambulance BD 24 gives the 24/7 service in Bangladesh. We Provide AC and Non AC Ambulance, Freezing Ambulance, ICO Ambulance services all over Bangladesh with Low cost.\n\n\n\n\n\n\n\n\n",style: TextStyle(color: Colors.white),)
                      ],
                    )),
                    const Expanded(child: Column(
                      children: [
                        Text("Contact Info",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                        Text("Address: Mohakhali,\nDhaka 1212,Bangldesh.\nCall Us: 01637448834\nEmail: info@ambulancebd24.com\nMon – Fri: 9:00 AM – 5:00 PM\n\n\n\n\n\n\n\n\n\n\n\n",style: TextStyle(color: Colors.white),)
                      ],
                    )),
                    const Expanded(child: Column(
                      children: [
                        Text("Our Service",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                        Text(style: TextStyle(color: Colors.white),"Home\nServices:\nAc Ambulance\nFreezer Ambulance\nICU Ambulance\nAir Ambulance\nNICU Ambulance Service\nAbout Us\nBlog\nContact Us\nLocations\nChittagong\nKhulna\nBarisal\nBenapole\nNoakhali\nJessore\nKushtia\nRajshahi\nGopalganj")
                      ],
                    )),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Konw More",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>const Faq()));
                        }, child: const Text("Privacy Policy",style: TextStyle(color: Colors.white),)),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>const Faq()));
                        }, child: const Text("Disclaimer",style: TextStyle(color: Colors.white),)),
                        TextButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_)=>const Faq()));
                        }, child: const Text("Terms and Conditions",style: TextStyle(color: Colors.white),)),
                        const Text("\n\n\n\n\n\n\n\n\n\n\n\n\n\n")


                      ],
                    ))

                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
