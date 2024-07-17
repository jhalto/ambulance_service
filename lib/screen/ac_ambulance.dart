import 'package:ambulance_service/screen/page_view.dart';
import 'package:flutter/material.dart';

import '../widgets/contact_us.dart';
import 'call_now.dart';

class AcAmbulance extends StatelessWidget {
  const AcAmbulance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                      const Text(" Best Ac Ambulance \n Service in Bangladesh ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35),),
                      const Text("Ambulance BD 24 is the best Ac ambulance service provider in Dhaka, Bangladesh. We offer Ac Ambulance Service in Dhaka for you and your family's safety as well as our top quality services. All of our specially trained drivers are fully licensed, trained, and bonded with the highest level of knowledge. We are experts in providing emergency ambulance services, urgent care, or non-emergency transport services to all the major cities in Bangladesh.",style: TextStyle(color: Colors.white),),
                      const SizedBox(height: 25,),
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
              Container(

                child: Row(
                  children: [
                    const Expanded(child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("Ac Ambulance In Bangladesh",style: TextStyle(fontSize: 25)),
                          Divider(thickness: 2,),
                          Text("Do you need ac ambulance in Bangladesh? Emergency Ambulance Service will help you to get all the emergency services. We know that life is very unpredictable. Ac Ambulance provides 24/7 medical and emergency transportation support. We provide the best support in the shortest possible time.We provide all types of emergency or urgent ac ambulance services. Our services include the situation of pregnancy or severe illness. We always meet the medical requirements of patients in emergency situations.")
                        ],
                      ),
                    )),
                    Expanded(child: Image.asset("lib/images/ac_ambulance_service.jpg")),

                  ],
                ),
              ),
              Container(
                color: Colors.black12.withOpacity(.05),
                child: Column(
                  children: [
                    const Text("Ac Ambulance Number",style: TextStyle(fontSize: 25),),
                    const SizedBox(height: 5,),
                    const Text("The Ac Ambulance Number in Bangladesh is +8801761198103"),
                    const SizedBox(height: 5,),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Reach our number +8801761198103 . We are just a call away whenever you or your relatives require us in extreme situations. You can reach us by calling us on the AC ambulance number. Our team of professionals as well as medical practitioners are highly specialized. The whole team holds expertise in providing basic services. Our team ensures that needful services are provided to each and every person who requires them. You must focus on these criteria while booking an ac ambulance in Bangladesh. "),
                    ),
                    const SizedBox(height: 15,),
                    MaterialButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const CallNow()));
                    },color: Colors.lightBlue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),child: const Text("Call Now"),),
                    const SizedBox(height: 15,)
                  ],
                ),
              ),
              Container(
                child: const Column(
                  children: [
                    SizedBox(height: 10,),
                    Text("Advantages Of AC Ambulance",style: TextStyle(fontSize: 25),),
                    Padding(
                      padding: EdgeInsets.only(left: 170.0,right: 170.0),
                      child: Divider(thickness: 3,color: Colors.blue,),
                      
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("There are many benefits to using an AC ambulance service in Dhaka, Bangladesh. Not only is it faster and more comfortable for patients, but the AC ambulances also have state-of-the-art technology that allows them to provide superior care. Additionally, the ambulances are equipped with oxygen and defibrillator machines, allowing them to help patients in case of a cardiac emergency.\n\nMaintaining safety and security of the patients are the basic foundation of AC ambulance services. We maintain the different heating and cooling standards to provide the patient most appropriate one. In Bangladesh, Our weather is too hot. So patients need Ac ambulance service in emergency cases.\n\nThe ac ambulance provides extra comfort to the patients. This is why the ac ambulance in Bangladesh that we provide has the greatest advantage. Apart from this, our team provides basic aid to the patient in the AC ambulance itself. We ensure that no harm is there due to delay in time. Besides this, We also Provide normal NON Ac ambulance service. "),
                    )

                  ],
                ),
              ),
              Container(
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(height: 15,),
                      Text("Emergency AC Ambulance Service In Dhaka",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10),
                      Text("Respiratory support, first aid kit, extra seating for the patient's family, drug administration and infusion system are available in the ac ambulance. Our proper and effective intervention leads to the speedy recovery of the patient. you must focus on this types while choice ac ambulance in Bangladesh.\nEmergency Ambulance Service has a well-maintained mini setup. We ensure that all the basic requirements are available in emergency situations. All these services are available at super affordable rates. ")

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
                          Text(" Need Ac Ambulance In Bangladesh",style: TextStyle(fontSize: 25)),
                          Divider(thickness: 2,),
                          Text("We always serve quality services to our clients. We are renowned because we provide the 24/7 availability facility provided to the patients in all of the districts. so if you need ac ambulance in Bangladesh.\n\nYou just need to dial the AC ambulance number to get our help. Our service team is always eager and ready to support you and your acquaintances in times of emergency.\n\nWe aim to serve mankind. We take great pleasure in saving lives and reducing the suffering of our patients. Ac ambulance provides excellent ambulance service and medical care all over Bangladesh. ")
                        ],
                      ),
                    )),
                    Expanded(child: Image.asset("lib/images/Ac_Ambulance2.png")),

                  ],
                ),
              ),
              Container(
                color: Colors.black12.withOpacity(.05),
                child: const Column(
                  children: [
                    SizedBox(height: 10,),
                    Text("AC Ambulance Seervice in dhaka",style: TextStyle(fontSize: 25),),
                    Padding(
                      padding: EdgeInsets.only(left: 170.0,right: 170.0),
                      child: Divider(thickness: 3,color: Colors.blue,),

                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("A city of over 20 million people, Dhaka is one of the busiest and most densely populated cities in the world. With a population density of more than 10,000 people per square kilometer, it’s no wonder that ambulance services can be scarce and expensive. To make matters worse, Dhaka is also one of the most congested cities in the world. This makes getting to an emergency location difficult, if not impossible.\n\nFortunately, there is an AC ambulance service in Dhaka named Ambulance BD 24 that strives to provide quick and efficient medical care to those who need it most. The AC ambulance service was started in 2010 by a group of volunteers who wanted to provide aid to those who couldn’t afford traditional medical expenses or weren’t able to get timely treatment due to the city’s congestion.\n\nSince its inception, the we have expanded our services to include transport for patients who are unable to walk or ride in wheelchairs due to their condition. In addition to providing basic medical care, the AC ambulance service also provides transportation to nearby hospitals as well as home healthcare services for patients who are unable to leave their homes.\n\nThe AC ambulance service is a vital resource for residents of Dhaka who need fast and reliable medical assistance when they’re unable to get it elsewhere. If you or someone you know needs help during an emergency situation, be sure to call us for AC ambulance service!"),
                    )

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Location Of Ac Ambulance In Bangladesh",style: TextStyle(fontSize: 20),),
                      SizedBox(height: 5,),
                      Text("Our Ac ambulance pick up points available in 5  different places in Dhaka. Mohakhali, Mirpur, Uttora, Gulshan , Motijheel is our pick up point. Most of the places in Dhaka that we are cover now. because of this five pick up points. our driver is the best and experienced so we can reach any place in Dhaka in a short time.\n\nDo a Phone call to our number and tell us in details about your service then we will reach to you as soon as possible. please note that Most of the pickup points are nearest hospital areas. So when we need emergency services to change destination then please let us know. we will try our best to give the best services.")

                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("How To Choose The Right AC Ambulance",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      const Padding(
                        padding: EdgeInsets.only(right:320.0,),
                        child: Divider(thickness: 3,color: Colors.blue,),
                      ),
                      const Text("When searching for an ambulance service in Dhaka, you need to be aware of the different types of ambulance services that are available. AC ambulance services are the most common type in Bangladesh and offer a number of benefits over traditional ambulances. But you need to select the best one, so in the right side we have given 4 points. These points are available at Ambulance BD 24. Besides we have article on this topic you may read that."),
                      const SizedBox(height: 10,),
                      const Text("Here Are Four Things To Consider When Choosing An AC Ambulance In Dhaka",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      const SizedBox(height: 15,),
                      Container(
                        height: 220,
                       child: const PageViewDetails(),
                      )
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
                        TextButton(onPressed: (){}, child: const Text("Privacy Policy",style: TextStyle(color: Colors.white),)),
                        TextButton(onPressed: (){}, child: const Text("Disclaimer",style: TextStyle(color: Colors.white),)),
                        TextButton(onPressed: (){}, child: const Text("Terms and Conditions",style: TextStyle(color: Colors.white),)),
                        const Text("\n\n\n\n\n\n\n\n\n\n\n\n\n\n")


                      ],
                    ))

                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
