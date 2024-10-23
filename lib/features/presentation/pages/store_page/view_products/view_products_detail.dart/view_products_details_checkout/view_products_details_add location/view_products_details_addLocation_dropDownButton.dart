import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

class ViewProductsDetailsAddLocationDropDownButton extends StatelessWidget {
  FocusNode searchFocusNode = FocusNode();
  FocusNode textFieldFocusNode = FocusNode();
  ViewProductsDetailsAddLocationDropDownButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black.withOpacity(0.3))),
      child: DropDownTextField(
        clearOption: false,
        textFieldFocusNode: textFieldFocusNode,
        // searchFocusNode: searchFocusNode,
        // searchAutofocus: true,
        dropDownItemCount: 8,
        searchShowCursor: false,
        enableSearch: false,
        searchKeyboardType: TextInputType.number,
        dropDownList: const [
          DropDownValueModel(name: 'name1', value: "value1"),
          DropDownValueModel(
              name: 'name2',
              value: "value2",
              toolTipMsg:
                  "DropDownButton is a widget that we can use to select one unique value from a set of values"),
          DropDownValueModel(name: 'name3', value: "value3"),
          DropDownValueModel(
              name: 'name4',
              value: "value4",
              toolTipMsg:
                  "DropDownButton is a widget that we can use to select one unique value from a set of values"),
          DropDownValueModel(name: 'name5', value: "value5"),
          DropDownValueModel(name: 'name6', value: "value6"),
          DropDownValueModel(name: 'name7', value: "value7"),
          DropDownValueModel(name: 'name8', value: "value8"),
        ],
        onChanged: (val) {},
      ),
    );
    //
  }
}
