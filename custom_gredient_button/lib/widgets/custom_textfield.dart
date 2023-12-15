class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final String? obscureCharacter;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const CustomTextField({Key? key,
    required this.controller,
    required this.keyboardType,
    this.obscureText = false,
    this.obscureCharacter = '*',
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,

}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: height * 0.024),
      child: SizedBox(
        height: height * 0.065,
        width: width,
        child: TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText!,
          obscuringCharacter: obscureCharacter!,
          style: urbanistLight.copyWith(
            fontSize: 14.0,
            color: AppColors.blackDarkColor,
          ),
          decoration: InputDecoration(
            fillColor: AppColors.whiteColor,
            hintText: hintText,
            hintStyle: urbanistLight.copyWith(
              fontSize: 14.0,
              color: AppColors.secondaryColor,
            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: const BorderSide(
                color: AppColors.borderColor,
                width: 1.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: const BorderSide(
                color: AppColors.primaryColor,
                width: 1.0,
              ),
            ),
            contentPadding: const EdgeInsets.only(top: 12.0),
          ),
        ),
      ),
    );
  }
}
