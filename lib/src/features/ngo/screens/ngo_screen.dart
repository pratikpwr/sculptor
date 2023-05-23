import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:sculptor/src/core/extensions/context_extension.dart';

import '../../../widgets/glassmorhic_widget.dart';

class NGOScreen extends StatelessWidget {
  const NGOScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassMorphicBackground(
      child: SingleChildScrollView(
        child: Container(
          child: Image.network(

            "https://img.freepik.com/free-vector/gradient-pastel-color-background_52683-84063.jpg?w=1060&t=st=1684777286~exp=1684777886~hmac=46272d9709dbb11b51f153aedc888aba65e3bce5734bed0475082fcfc670465d",
            height: context.screenHeight,
            width: context.screenWidth,
            fit: BoxFit.cover,
          ).blur(blur: 25),
        ),
      ),
    );
  }
}
// https://img.freepik.com/premium-vector/abstract-medical-banner-background-template-design-with-concept-idea-healthcare-technology-innovation-medicine-health-science-research-medical-pattern-website-header-web-banner_181182-15741.jpg?w=1380

// https://i.pinimg.com/564x/89/19/c9/8919c92decd3a68ff9f307de73bee4f8.jpg

