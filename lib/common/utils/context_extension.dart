import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension ContextExtenson on BuildContext {
  AppLocalizations get getString => AppLocalizations.of(this)!;
}