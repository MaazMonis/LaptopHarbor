import 'package:laptopharbor/src/model/categorical.dart';
import 'package:laptopharbor/src/model/numerical.dart';

class ProductSizeType {
  List<Numerical>? numerical;
  List<Categorical>? categorical;

  ProductSizeType({this.numerical, this.categorical});
}
