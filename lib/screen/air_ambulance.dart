import 'package:flutter/material.dart';

import '../widgets/contact_us.dart';
import 'call_now.dart';
import 'faq.dart';


class AirAmbulance extends StatefulWidget {
  const AirAmbulance({Key? key}) : super(key: key);

  @override
  State<AirAmbulance> createState() => _AirAmbulanceState();
}

class _AirAmbulanceState extends State<AirAmbulance> {
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
                      const Text("Best Air Ambulance Service in Bangladesh ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35),),
                      const Text("Providing emergency medical care has become a critical part of modern living. Patients can be transported to or from medical institutions via air ambulance services supplied by planes and helicopters. Regardless of the patient's condition, our team offers complete pre-hospital as well as emergency care. ",style: TextStyle(color: Colors.white),),
                      const SizedBox(height: 15,),
                      Center(child: MaterialButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const CallNow()));
                      },child: const Text("Call Now"),shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(120)),color: Colors.deepOrangeAccent,)),
                      Center(child: MaterialButton(onPressed: (){

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
                          Text("Air Ambulance In Dhaka",style: TextStyle(fontSize: 25)),
                          Divider(thickness: 2,),
                          Text("Air ambulance service in Dhaka has begun rescuing victims from the battlefield as well as serving civilians by using its exclusive services. An air ambulance is a massive help because it can move faster and reach a larger area than a normal ambulance. It is mostly utilized for the purpose of reaching a greater distance in a shorter time period.\n\nAn air ambulance is fully equipped to safely transport patients from one location to another. A mobile lab is also available in case a problem arises that necessitates clinical services. Additionally, the medical personnel on the air ambulance will keep patients fully updated on their current conditions at all times.")
                        ],
                      ),
                    )),
                    Expanded(child: Column(
                      children: [
                        Image.asset("lib/images/Air-Ambulance-Service-in-Dhaka.jpg"),
                        const SizedBox(height: 50,),
                        MaterialButton(onPressed: (){

                        },child: const Text("Contact us"),color: Colors.lightBlue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),)
                      ],
                    )),

                  ],
                ),
              ),
              Container(
                color: Colors.black12.withOpacity(.05),
                child: const Column(
                  children: [
                    Text("Benefits Of Air Ambulance Services",style: TextStyle(fontSize: 25),),

                    SizedBox(height: 5,),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Going long distances by car can be very stressful for all patients. If a patient has been in a critical state and needs immediate medical assistance, the only option is an air ambulance. There is everything a patient needs in an air ambulance for immediate and temporary medical treatment onboard.\n\nWhile conventional ambulances can carry a limited number of healthcare resources and restrict the presence of family members, air ambulance services include aeromedical professionals who have proper training."),
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

                    SizedBox(height: 10,),
                    Text("•   Air Ambulance Services Can Provide Timely Medical Care And Transportation For Patients In Remote Or Difficult-To-Reach Locations.",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text("•   Air Ambulance Services Can Transport Patients With A Wide Variety Of Medical Conditions, Including Critical And Life-Threatening Conditions",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text("•   Air Ambulance Services Can Provide Care And Transportation For Patients Who Are Unable To Be Transported By Ground Ambulance Due To Their Medical Condition",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text("•   Air Ambulance Services Can Provide Care And Transportation For Patients Who Require Specialized Medical Care That Is Not Available At Their Local Hospital",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text("•   Air Ambulance Services Can Provide Care And Transportation For Patients Who Require Immediate Medical Attention But Do Not Require Hospitalization",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text("•   Air Ambulance Services Can Provide Care And Transportation For Patients Who Are Discharged From The Hospital But Require Ongoing Medical Care",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text("•   Air Ambulance Services Can Provide Care And Transportation For Patients Who Require Medical Evacuation From Their Current Location",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text("•   Air Ambulance Services Can Provide Care And Transportation For Patients Who Are Pregnant Or Have Other Medical Conditions That Make Ground Ambulance Transportation Difficult Or Dangerous",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text("•   Air Ambulance Services Can Provide Care And Transportation For Patients Who Need To Be Transported To A Different Hospital For Treatment",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text("•   Air Ambulance Services Can Provide Care And Transportation For Patients Who Need To Be Transported To A Different City Or Country For Treatment",style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                )),
              ),
              Container(
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(height: 15,),
                      Text("Our Best Air Ambulance Services",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10),
                      Text("The air ambulance’s compartment is equipped with humidity, pressure, as well as ambience controls along with all the latest medical technology. Due to the advanced emergency treatment and care facilities provided by air ambulance services in Dhaka, lives can be saved as well as additional medical degradation can be avoided by opting for air ambulance services.\n\nAnother key benefit of the air ambulance service is timeliness. It has been observed that air ambulances are more likely to reach the accident spot or hospitals quicker than normal")

                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(child: Text("Why Choose Us?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                      const Text("Our air ambulance services have the benefit of having well-maintained emergency helicopters, as well as pilots who have undergone extensive training. As a result, there will be fewer technical difficulties on the ride. We take care of all the requirements of patients in advance.\n\nur air ambulance service is budget-friendly and it charges a minimum amount in order to make our services affordable. We provide the best air ambulance services in Dhaka that has all the arrangements with no additional fees.\n\nAnother key benefit of the air ambulance service is timeliness. It has been observed that air ambulances are more likely to reach the accident spot or hospitals quicker than normal\n\nOur air ambulance service is available 24/7 in Dhaka. Therefore, you can easily book our services by calling on the air ambulance number. We have hired fully trained and dependable medical professionals who have helped us provide the best air ambulance services in Dhaka."),
                      Center(child: MaterialButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const CallNow()));
                      },child: const Text("Call Now"),color: Colors.blue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),)),
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
                        Text("Address: Mohakhali,\nDhaka 1212,Bangldesh.\nCall Us: 01919339689\nEmail: info@ambulancebd24.com\nMon – Fri: 9:00 AM – 5:00 PM\n\n\n\n\n\n\n\n\n\n\n\n",style: TextStyle(color: Colors.white),)
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
