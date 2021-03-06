import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'src/enum_has_value_generator.dart';

Builder enumHasValueBuilder(BuilderOptions options) =>
    PartBuilder([EnumHasValueGenerator()], ".value.g.dart");
