import 'package:flutter/material.dart';

class SweetNavBar extends StatelessWidget {
  /// The index of the current selected item.
  final int currentIndex;

  /// A function that takes an int and returns nothing.
  final ValueChanged<int>? onTap;

  /// A list of BoxShadow objects.
  final List<BoxShadow>? boxShadow;

  /// A list of SweetNavBarItem objects.
  final List<SweetNavBarItem> items;

  /// A property of the SweetNavBar class. It is used to set the gradient of the padding of the
  /// SweetNavBar.
  final LinearGradient? paddingGradientColor;

  /// A nullable double.
  final double? borderRadius;

  /// A nullable double.
  final double? height;

  /// A nullable EdgeInsets object.
  final EdgeInsets? padding;

  /// A nullable color.
  final Color? backgroundColor;

  /// Used to set the background color of the padding of the SweetNavBar.
  final Color? paddingBackgroundColor;

  /// A nullable boolean.
  final bool? showUnselectedLabels;

  /// A nullable boolean.
  final bool? showSelectedLabels;

  /// A constructor.
  const SweetNavBar({
    required this.currentIndex,
    required this.items,
    Key? key,
    this.onTap,
    this.borderRadius,
    this.height,
    this.boxShadow,
    this.padding,
    this.backgroundColor,
    this.showUnselectedLabels,
    this.showSelectedLabels,
    this.paddingBackgroundColor,
    this.paddingGradientColor,
  }) : super(key: key);
  @override

  /// A function that returns a widget.
  ///
  /// Args:
  ///   context (BuildContext): The current context of the widget.
  Widget build(BuildContext context) {
    return Container(
      /// Checking if the padding is null, if it is, it will use the default padding.
      padding: padding ?? const EdgeInsets.all(10.0),

      /// Setting the color and gradient of the padding of the SweetNavBar.

      decoration: BoxDecoration(
        color: paddingBackgroundColor,
        gradient: paddingGradientColor,
      ),
      child: Container(
        /// Checking if the height is null, if it is, it will use the default height 60.
        height: height != null
            ? height! <= 60
                ? 60
                : height
            : 60,

        /// Setting the background color, border radius, and box shadow of the SweetNavBar.
        decoration: BoxDecoration(
          /// Checking if the backgroundColor is null, if it is, it will use the default color
          /// white.
          color: backgroundColor ?? Colors.white,
          borderRadius: BorderRadius.circular(borderRadius ?? 30),

          /// Checking if the boxShadow is null, if it is, it will use the default boxShadow.
          boxShadow: boxShadow ??
              [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 5))
              ],
        ),

        /// A property of the Clip class. It is used to clip the child of the widget.
        clipBehavior: Clip.antiAliasWithSaveLayer,

        /// Creating a BottomNavigationBar widget.
        child: BottomNavigationBar(
          /// A function that takes an int and returns nothing.
          onTap: onTap,

          /// Checking if the backgroundColor is null, if it is, it will use the default color white.
          backgroundColor: backgroundColor ?? Colors.white,

          /// Checking if the showUnselectedLabels is null, if it is, it will use the default value false.
          showUnselectedLabels: showUnselectedLabels ?? false,

          /// Setting the color of the selected item.
          selectedItemColor: Colors.white,

          /// Checking if the showSelectedLabels is null, if it is, it will use the default value false.
          showSelectedLabels: showSelectedLabels ?? false,

          /// A property of the BottomNavigationBar class. It is used to set the items of the BottomNavigationBar.
          items: items,

          /// Setting the current index of the SweetNavBar.
          currentIndex: currentIndex,
        ),
      ),
    );
  }

  /// A function that returns a ShaderMask widget.
  static ShaderMask sweetIcon(
      {required List<Color> iconColors,
      Alignment? begin,
      Alignment? end,
      required Widget icon}) {
    return ShaderMask(

        /// Creating a shader for the icon provided.
        shaderCallback: (rect) => LinearGradient(
                colors: iconColors,
                begin: begin ?? Alignment.topCenter,
                end: end ?? Alignment.bottomCenter)
            .createShader(rect),
        child: icon);
  }
}

/// It's a class that extends the BottomNavigationBarItem class and adds a required icon parameter
class SweetNavBarItem implements BottomNavigationBarItem {
  /// Used to set the active icon of the SweetNavBarItem.
  final Widget? sweetActive;

  /// A property of the SweetNavBarItem class. It is used to set the icon of the SweetNavBarItem.
  final Widget sweetIcon;

  /// Used to set the background color of the SweetNavBarItem.
  final Color? sweetBackground;

  /// Used to set the colors of the icon of the SweetNavBarItem.
  final List<Color>? iconColors;

  /// A nullable string.
  final String? sweetLabel;

  /// A nullable Alignment object.
  final Alignment? begin;
  late final bool isGradiant;

  /// A nullable Alignment object.
  final Alignment? end;

  /// A nullable string.
  final String? sweetTooltip;

  /// A constructor.
  SweetNavBarItem({
    this.iconColors,
    this.begin,
    this.end,
    this.isGradiant = true,
    required this.sweetIcon,
    this.sweetActive,
    this.sweetBackground,
    this.sweetLabel,
    this.sweetTooltip,
  });
  @override

  /// Returning a widget.
  /// Checking if the sweetActive is null, if it is, it will use the sweetIcon.
  Widget get activeIcon => isGradiant
      ? gradiant(icon: sweetActive ?? sweetIcon)
      : sweetActive ?? sweetIcon;

  @override

  /// Returning the background color of the SweetNavBarItem.
  Color? get backgroundColor => sweetBackground;

  @override

  /// Returning a widget.
  /// Creating a ShaderMask widget.
  Widget get icon => isGradiant ? gradiant(icon: sweetIcon) : sweetIcon;

  @override

  /// A getter. It is used to get the value of the sweetLabel variable.
  String? get label => sweetLabel;

  @override

  /// A getter. It is used to get the value of the sweetTooltip variable.
  String? get tooltip => sweetTooltip;

  /// It returns a widget that is a gradient icon.
  ///
  /// Args:
  ///   icon (Widget): The icon you want to display.
  Widget gradiant({required Widget icon}) => SweetNavBar.sweetIcon(
      iconColors: iconColors ?? [Colors.pinkAccent, Colors.deepPurple],
      icon: icon);
}
