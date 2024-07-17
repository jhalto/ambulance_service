import 'package:flutter/material.dart';

import '../widgets/contact_us.dart';
import 'call_now.dart';
import 'faq.dart';


class IcuAmbulance extends StatefulWidget {
  const IcuAmbulance({Key? key}) : super(key: key);

  @override
  State<IcuAmbulance> createState() => _IcuAmbulanceState();
}

class _IcuAmbulanceState extends State<IcuAmbulance> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        appBar: AppBar(
          title: Image.asset('lib/images/Picture1.jpg',height: 100,width: 100,),
          actions: [
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
                      const Text("Best ICU Ambulance Service in Bangladesh ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35),),
                      const Text("Emergency Ambulance Service has ICU Ambulance services. Most of the time emergency patients need ICU/CCU services when they are in a critical situation. In that case, we provide the ICU ambulance service to them. Our ICU ambulance system is very advanced and modern. Patients will get all the important medical support. We also arrange a specialist doctor 24/7 for ICU services. Our service is available in Dhaka, Bangladesh.",style: TextStyle(color: Colors.white),),
                      const SizedBox(height: 15,),
                      Center(child: MaterialButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const CallNow()));
                      },child: const Text("Call Now"),shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(120)),color: Colors.deepOrangeAccent,)),
                      Center(child: MaterialButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ContactUs()));
                      },child: const Text("Book us"),color: Colors.deepOrangeAccent,shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(120)),)),
                      const SizedBox(height: 10,)
                    ],
                  ),
                ),
              ),
              Container(

                child: Row(
                  children: [
                    const Expanded(child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("ICU Ambulance In Bangladesh",style: TextStyle(fontSize: 25)),
                          Divider(thickness: 2,),
                          Text("We are an ICU ambulance service provider that has a prominent name throughout Bangladesh. We provide various types of ambulance services everywhere in Bangladesh. One such ambulance is the ICU ambulance service.\n\nWe provide seamless unconditional services. We ensure the welfare of the patients. Our priority is to ensure the safety of the patients. We also ensure that they get medical aid as soon as possible.\n\nWe prioritize transporting the injured to the nearby hospital quickly. Our ICU ambulance service can be found anywhere in the whole of Bangladesh easily just by calling on the ICU ambulance phone number.")
                        ],
                      ),
                    )),
                    Expanded(child: Column(
                      children: [
                        Image.asset("lib/images/ICU-Ambulance-Service-1.jpg"),
                        const SizedBox(height: 50,),
                        MaterialButton(onPressed: (){
                             Navigator.push(context, MaterialPageRoute(builder: (_)=>const ContactUs()));
                        },child: const Text("Book us"),color: Colors.lightBlue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),)
                      ],
                    )),

                  ],
                ),
              ),
              Container(
                color: Colors.black12.withOpacity(.05),
                child: const Column(
                  children: [
                    Text("Advantages Of ICU Ambulances",style: TextStyle(fontSize: 25),),

                    SizedBox(height: 5,),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("ICU ambulances are used to transport patients who need constant monitoring and care. The task of the ICU ambulance is to carry the patients who are severely injured to the hospital. We have established a hospital-like ICU setup in the ICU ambulance.\n\nWe are always ready to serve the patients with all the preparations at top-notch. We have ICU ambulances available that initiate the basic treatment of critical patients.\n\nWe ensure the patients are under observation till the time they are admitted to the nearby hospitals. Our medical technicians diagnose the patients for critical conditions like critical asthma. Our ICU ambulances are equipped with advanced medical equipment, such as blood pressure monitors, electrocardiogram monitors, and ventilators. This allows the paramedics to monitor the critical condition of the patient and provide them with immediate care in case of an emergency."),
                    ),
                    SizedBox(height: 15,),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Some Of The Advantages Of ICU Ambulances Are:",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text("•   We Are Equipped With Advanced Life Support Equipment"),
                    SizedBox(height: 5,),
                    Text("•   We Have A Specialized Staff That Is Trained For Emergency Medical Care"),
                    SizedBox(height: 5,),
                    Text("•   We Have The Latest Medical Technology Available"),
                    SizedBox(height: 5,),
                    Text("•   We Have A 24-Hour Emergency Unit"),
                    SizedBox(height: 5,),
                    Text("•   We Have An Intensive Care Unit"),
                    SizedBox(height: 5,),
                    Text("•   We Have A Cardiac Lab And HD X-Ray Equipmen"),

                  ],
                )),
              ),
              Container(
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(height: 15,),
                      Text("Advantages Of ICU Ambulances",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10),
                      Text("ICU ambulances are used to transport patients who need constant monitoring and care. The task of the ICU ambulance is to carry the patients who are severely injured to the hospital. We have established a hospital-like ICU setup in the ICU ambulance.\n\nWe are always ready to serve the patients with all the preparations at top-notch. We have ICU ambulances available that initiate the basic treatment of critical patients.\n\nWe ensure the patients are under observation till the time they are admitted to the nearby hospitals. Our medical technicians diagnose the patients for critical conditions like critical asthma. Our ICU ambulances are equipped with advanced medical equipment, such as blood pressure monitors, electrocardiogram monitors, and ventilators. This allows the paramedics to monitor the critical condition of the patient and provide them with immediate care in case of an emergency.")

                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Reliable ICU Ambulance Services",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Text("We are chosen for the reliable and faithful services. The ambulance that we provide is very clean. Our ICU ambulance is handled by a team of experts and medical practitioners.\n\nApart from that, all the necessary equipment is present in our ambulance to take care of the patient in an appropriate manner. We have hired a highly professional team. They are well trained and to them, their patient is the utmost priority.\n\nOur ICU ambulance services are available twenty hours that can be availed any time by calling on the ICU ambulance phone number."),
                      Padding(
                        padding: EdgeInsets.only(left: 38.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 30,),
                            Text("•  Quick pick up"),
                            Text("•  Fast action "),
                            Text("•  Emergency facilities"),
                            Text("•  Specialist doctor"),
                            Text("•  Modern technology"),


                          ],),
                      )
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("How To Get Our Service",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,),
                      Text("Our ICU Ambulance service is the best Service in Dhaka. If you need Emergency Ambulance services then you call Us    +8801761198103 or you can book us through our app. Then you can submit our form to get our services. We have more than 5 picks up points in Dhaka. So will reach to you as soon As possible . We will try to reach you from the nearest pickup point. Our point is the nearest hospital. so if you need to change hospital then our service is best for you. In this emergency situation, we try to give the fastest service to the patients .So that is why our services are the best in Dhaka."),

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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("About us",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                        Text("Ambulance BD 24 gives the 24/7 service in Bangladesh. We Provide AC and Non AC Ambulance, Freezing Ambulance, ICO Ambulance services all over Bangladesh with Low cost.\n\n\n\n\n\n\n\n\n",style: TextStyle(color: Colors.white),)
                      ],
                    )),
                    const Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Contact Info",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                        Text("Address: Mohakhali,\nDhaka 1212,Bangldesh.\nCall Us: 01761198103\nEmail: info@ambulancebd24.com\nMon – Fri: 9:00 AM – 5:00 PM\n\n\n\n\n\n\n\n\n\n\n\n",style: TextStyle(color: Colors.white),)
                      ],
                    )),
                    const Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
        )
    ));
  }
}
