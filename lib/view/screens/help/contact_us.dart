import 'package:flutter/material.dart';

class ContactUs {
  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 2.4,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(14),
              topLeft: Radius.circular(14),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextWidget(
                  title: 'Contact Us',
                ),
                const ContactWidget(
                  img: 'assets/icons/ntc.png',
                  contact: '01-5970050',
                ),
                const ContactWidget(
                  img: 'assets/icons/ncell.png',
                  contact: '9801523050',
                ),
                const SizedBox(
                  height: 30,
                ),
                const TextWidget(
                  title: 'Socials Links',
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SocialWidget(
                        onTap: () {},
                        title: 'Facebook',
                        icons: 'assets/icons/facebook.png',
                      ),
                      SocialWidget(
                        onTap: () {},
                        title: 'Instagram',
                        icons: 'assets/icons/insta.png',
                      ),
                      SocialWidget(
                        onTap: () {},
                        title: 'Youtube',
                        icons: 'assets/icons/youtube.png',
                      ),
                      SocialWidget(
                        onTap: () {},
                        title: 'Twiter',
                        icons: 'assets/icons/twitter.png',
                      ),
                      SocialWidget(
                        onTap: () {},
                        title: 'LinkedIn',
                        icons: 'assets/icons/linkedin.png',
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                ButtonWidget(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  title: 'Close',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class SocialWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final String icons;
  const SocialWidget({
    super.key,
    required this.title,
    required this.onTap,
    required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Image.asset(
            icons,
            height: 30,
            width: 30,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String title;
  const TextWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.start,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const ButtonWidget({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 15,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class ContactWidget extends StatelessWidget {
  final String img;
  final String contact;
  const ContactWidget({
    super.key,
    required this.img,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          img,
          height: 40,
          width: 40,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          contact,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
