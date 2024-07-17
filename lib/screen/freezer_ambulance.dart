
import 'package:flutter/material.dart';

import '../widgets/contact_us.dart';
import 'call_now.dart';
import 'faq.dart';


class FreezerAmbulance extends StatefulWidget {
  const FreezerAmbulance({Key? key}) : super(key: key);

  @override
  State<FreezerAmbulance> createState() => _FreezerAmbulanceState();
}

class _FreezerAmbulanceState extends State<FreezerAmbulance> {
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
                      const Text("Best Freezer Ambulance Service in Bangladesh ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35),),
                      const Text("Emergency Ambulance Service offer the Best Freezing Ambulance Service in Dhaka, Bangladesh. We provide for you the cheapest and quickest way to an organized, clean funeral service. We help transporting your dead body to the desired location with absolute professionalism and care, so you can rest easy after death.",style: TextStyle(color: Colors.white),),
                      const SizedBox(height: 15,),
                      Center(child: MaterialButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const CallNow()));
                      },shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(120)),color: Colors.deepOrangeAccent,child: const Text("Call Now"),)),
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
                          Text("Freezer Ambulance In Bangladesh",style: TextStyle(fontSize: 25)),
                          Divider(thickness: 2,),
                          Text("Do you need freezer ambulance in Bangladesh? Emergency Ambulance Service Provide the best Freezer Ambulance Service in Dhaka, Bangladesh. The dead bodies start decomposing if they are not kept in lower temperatures. The corpse may start to decompose and smell bad if it takes more time to transport. We provide a freezing ambulance that keeps the dead body or the corpse fresh. In the end, we are focusing on this service to keep the dead bodies safe. Because we know the importance of keeping a dead body freeze. Our experienced drivers are very good at their work. without thinking anything you can take our freezing services. we will give you the best result.")
                        ],
                      ),
                    )),
                    Expanded(child: Image.asset("lib/images/freezer-ambulance-service3.jpg")),

                  ],
                ),
              ),
              Container(
                color: Colors.black12.withOpacity(.05),
                child: Column(
                  children: [
                    const Text("Our Freezing Ambulance Services",style: TextStyle(fontSize: 25),),

                    const SizedBox(height: 5,),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("The inaccessibility of ambulance services to the location of an incident can cause delays and adversely affect the lives of those in need. In such cases, an ambulance equipped with geo-location technology could greatly enhance the response time and effectiveness of emergency medical services. This could enable non-ambulatory patients or those with special needs to receive timely medical care.\n\nIn order to prevent decomposition, corpses require a cool environment. Our experts recognized this need and as a result, we have introduced a new ambulance facility that offers freezing capabilities. This ensures that corpses can be transported without decomposing, reducing bureaucratic costs and enabling patients to receive timely medical attention, even in remote or high-altitude areas.\n\nThe time it takes to respond to an emergency can greatly impact the outcome for the patient. In situations where an ambulance is not readily available, every second counts. To address this, we are introducing a new emergency ambulance service that provides prompt and reliable assistance, removing any barriers that might prevent individuals from receiving care immediately.\n\nWith the introduction of our new ambulance services, we strive to ensure that everyone receives timely and top-notch medical care, regardless of their location or circumstances."),
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
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(height: 15,),
                      Text("Emergency Freezer Ambulance Service In Dhaka",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10),
                      Text("Respiratory support, first aid kit, extra seating for the patient's family, drug administration and infusion system are available in the ac ambulance. Our proper and effective intervention leads to the speedy recovery of the patient. you must focus on this types while choice ac ambulance in Bangladesh.\nEmergency Ambulance Service has a well-maintained mini setup. We ensure that all the basic requirements are available in emergency situations. All these services are available at super affordable rates. ")

                    ],
                  ),
                ),
              ),
              Container(

                child: const Row(
                  children: [
                    Expanded(child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("Advantages Of The Freezing Facility",style: TextStyle(fontSize: 25)),
                          Divider(thickness: 2,),
                          Text("The freezer ambulance provided by us carries a frozen box. We provided this facility to keep the dead body fresh for several hours or a day. We keep the corpse at the lowest temperature of about 6 to 7 degrees to avoid decomposition of the dead bodies.\n\nWe provide best ambulance services that are higher in the terms of quality and lower in the terms of cost. A well-measured temperature that is appropriate for the corpse is set.\n\nMany people avail of our trustworthy services for keeping the dead body of their loved ones free from germs or viruses. Our professional team keeps self-observation over every task.")
                        ],
                      ),
                    )),
                    Expanded(child: Column(
                      children: [
                        Text("You need to check up on some important things while you are hiring for a freezer ambulance. You are telling you why our services are the best ambulance service in Dhaka",style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text("•   The freezing system is directly imported from Japan"),
                        SizedBox(height: 5,),
                        Text("•   High quality steel scatters to keep the dead body"),
                        SizedBox(height: 5,),
                        Text("•   The richness has four weeks"),
                        SizedBox(height: 5,),
                        Text("•   There is a good arrangement of glass to keep the body left side of the ambulance"),
                        SizedBox(height: 5,),
                        Text("•   We have a computer monitor system that helps us to monitor the body and all the system"),
                        SizedBox(height: 5,),
                        Text("•   The lighting system is good to see the dead body inside through our monitor system"),
                        
                      ],
                    )),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.black12.withOpacity(.05),
                  child: const Column(
                    children: [
                      SizedBox(height: 10,),
                      Text("Plight Of Our Freezing Ambulance Service",style: TextStyle(fontSize: 25),),
                      Padding(
                        padding: EdgeInsets.only(right: 300.0),
                        child: Divider(thickness: 3,color: Colors.blue,),

                      ),
                      Text("•  24/7 Customer Care. No Matter What Time Of The Day, We'll Be There For You With A Prompt Solution",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("A person's health condition may deteriorate rapidly, and when this happens, prompt medical attention is needed. But, what happens if the situation arises in the middle of the night? If you don't have a car or need to travel for some reason, it can be a real hassle to get your loved one to the hospital or doctor's office. We provide 24/7 freezing ambulance service - even at 2 AM when the phone might not ring as often. Our expert operators are ready to dispatch an ambulance at any time of day to provide prompt medical care for your"),
                      ),
                      Text("•  A Courteous And Expert Driver To Take You Destined Place",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("There is a lot of importance when it comes to having skilled, courteous and expert drivers for an ambulance. Design a safe journey by hiring our skilled ambulance drivers who are armed with all the skills to get you to the hospital in the shortest time possible."),
                      ),
                      Text("•  A Pristine Car That's Well-Maintained And Hygienic So Your Ride Is Always Comfortable",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("We understand that it's hard to maintain hygiene, but when it comes to giving your dead loved ones a dignified send-off, it's worth it. After all, they deserve respect — they're your family! So we keep our ambulance as clean and hygienic as possible with Savlon and Dettol, Sanitizer."),
                      ),
                      Text("•  Reasonable Prices, No Hidden Charges And A Transparent Billing Policy",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("We at Ambulance Service in Bangladesh understand that the cost of an ambulance service can be a problem for the impoverished and the middle class. When ambulance service is needed the most, we often receive calls from our customers who are unaware of the charges. It is a very difficult, if not impossible task to find out who's charging what these days. That's why at Ambulance BD 24 we make every effort to keep our rates as low as possible and never present hidden or unexpected charges for our customers."),
                      ),
                      Text("•  We Have A Presence In Multiple Cities In Bangladesh, So No Matter Where You Are, We're Never Far Away",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("No matter where you are in Bangladesh, you can rely on us to provide you a safe, broadly accessible service. We are present across multiple cities and continents to ensure that your businesses can grow and thrive. Our nationwide operations ensure that time is not a constraint for our clients anywhere in the country. With our regional offices, we offer a great service, with quick responses to any enquiry irrespective of time or place."),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    const Expanded(child: Column(
                      children: [
                        Text("Qualities Of Our Freezer Ambulances",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        Text("Our freezing ambulance holds various qualities including high-quality steel stretchers for carrying the body. Apart from this, we have made proper glass arrangements that enable us to see the body from the left side.\n\nOne of the things that we take care of is hygiene. After the duty is accomplished, our staff clean the ambulance by using antiseptics as well as sanitisers.No one cannot affect others people from a dead body. we all are taking care of this matter.")
                      ],
                    )),
                    Expanded(child: Image.asset("lib/images/Freezing-Ambulance2.png"))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("How To Get Freezer Ambulances Service",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,),
                      Text("It’s very easy to get our freezing ambulance service. In Dhaka, we have more than five pickup points. They are Mohakhali, Mirpur, Gulshan, Uttara, Mogbazar. So we can easily reach every nearest hospital. You can simply call us to get our services or can fill-up the form from the homepage. we always taking care of everything. Most of the time hospital area is covered by us. we can help you to go anywhere all over in Bangladesh. You can also check us in Map. we are also available there. We are happy to help a needed person. We also provide Ac Ambulance Service, Icu Ambulance service, and NICU Ambulance Service in the same location.")

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: const BoxDecoration(gradient: LinearGradient(
                      colors: [
                        Colors.black,
                        Colors.black54,

                      ]
                  )),

                  child: const Column(
                    children: [
                      Text("Freezer Ambulance Phone Number",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                      SizedBox(height: 10,),
                      Text("Our services of freezing ambulances are available twenty-four hours a day that can be availed any time by calling on the  ambulance phone number. Please Note Down Our number  +8801761198103 ",style: TextStyle(color: Colors.white),)
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
                        const Text("Know More",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
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
