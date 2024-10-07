import 'package:flutter/material.dart';
import 'package:new_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Padding(
        padding: const EdgeInsets.only(
          top: 80,
        ),
        child: Center(
          child: Image.network(
              'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/06c98206-325a-4c5f-9f58-5b3e09dd16b3/dgrgigj-136d4803-4648-466b-9226-10a4e257cab4.png/v1/fit/w_619,h_720/spongebob_squarepants_png_render__44_by_thxfan2022_dgrgigj-375w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NzIwIiwicGF0aCI6IlwvZlwvMDZjOTgyMDYtMzI1YS00YzVmLTlmNTgtNWIzZTA5ZGQxNmIzXC9kZ3JnaWdqLTEzNmQ0ODAzLTQ2NDgtNDY2Yi05MjI2LTEwYTRlMjU3Y2FiNC5wbmciLCJ3aWR0aCI6Ijw9NjE5In1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.aFyowXjtRxwUshMwLUqHVuPDDDpUMyhcgAQvl25bztg'),
        ),
      ),
      const Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          'pack longer deal agree series',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Text(
          'together with dropped purple range different farmer tobacco race inch appropriate tall',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
      FilledButton(
          onPressed: () => {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const HomePage();
                }))
              },
          child: const Text('Get Started'))
    ]));
  }
}
