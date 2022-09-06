import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../constants.dart';

class ServiceCardBackWidget extends StatelessWidget {
  const ServiceCardBackWidget(
      {Key? key, required this.serviceDesc, required this.serviceTitle})
      : super(key: key);

  final String serviceDesc;
  final String serviceTitle;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          serviceDesc,
          style: const TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 12,
              height: 1.5,
              fontWeight: FontWeight.w600,
              color: Colors.black54),
        ),
        const Divider(
          color: Colors.black38,
        ),
        SizedBox(
          height: size.height * 0.04,
          width: size.width * 0.35,
          child: MaterialButton(
            color: const Color(0xffC0392B),
            onPressed: () => showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: const Text(
                        "Hire Me!",
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Back",style: TextStyle(
                            color:  Color(0xffC0392B),fontWeight: FontWeight.w700
                          ),),
                        )
                      ],
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MaterialButton(
                            height: 40.0,
                            onPressed: () => openURL(
                              'https://api.whatsapp.com/send?phone=923142994566',
                            ),
                            color: const Color(0xff34CB62),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  FontAwesomeIcons.whatsapp,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: size.width * 0.05,
                                ),
                                const Text(
                                  'WhatsApp',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          MaterialButton(
                            height: 40.0,
                            onPressed: () => openURL(
                              'https://www.upwork.com/freelancers/~0197b0f6aaeba9675f',
                            ),
                            color: const Color(0xff13A800),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.network(
                                  'https://img.icons8.com/ios-filled/50/000000/upwork.png',
                                  height: 35.0,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: size.width * 0.05,
                                ),
                                const Text('Upwork',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
            child: Text(
              'HIRE ME!',
              style: TextStyle(
                  fontFamily: 'Poppins-Bold',
                  color: Colors.white,
                  fontSize: 16),
            ),
          ),
        )
      ],
    );
  }
}
