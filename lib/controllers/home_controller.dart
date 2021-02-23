import 'package:blaja_app/common/resources.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  int _selectedIndex = 0;
  String _imgString = Resources.instance.bgHomeImage;

  updateHome() {
    update();
  }

  updateSelectedIndex(int index)
  {
    _selectedIndex = index;
  }

  int get selectedIndex => _selectedIndex;

  String get imgString => _imgString;

  set setImgString(String value) {
    _imgString = value;
  }
}
