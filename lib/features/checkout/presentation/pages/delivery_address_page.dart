import 'package:delivery_app/core/theme/app_spacing.dart';
import 'package:delivery_app/core/widgets/custom_text_field.dart';
import 'package:delivery_app/features/checkout/data/mock_checkout_data.dart';
import 'package:delivery_app/features/checkout/presentation/models/delivery_address_editor_mode.dart';
import 'package:delivery_app/features/checkout/presentation/providers/checkout_delivery_address_provider.dart';
import 'package:delivery_app/features/checkout/presentation/providers/delivery_address_map_selection_port_provider.dart';
import 'package:delivery_app/features/checkout/presentation/widgets/delivery_address_map_section.dart';
import 'package:delivery_app/l10n/app_localizations.dart';
import 'package:delivery_app/shared/domain/entities/delivery_address.dart';
import 'package:delivery_app/shared/domain/value_objects/geo_location.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

/// Full-screen delivery address form (mock persistence via Riverpod).
class DeliveryAddressPage extends ConsumerStatefulWidget {
  const DeliveryAddressPage({super.key, required this.mode});

  final DeliveryAddressEditorMode mode;

  @override
  ConsumerState<DeliveryAddressPage> createState() =>
      _DeliveryAddressPageState();
}

class _DeliveryAddressPageState extends ConsumerState<DeliveryAddressPage> {
  final _formKey = GlobalKey<FormState>();
  final _line1Controller = TextEditingController();
  final _buildingController = TextEditingController();
  final _apartmentController = TextEditingController();
  final _floorController = TextEditingController();
  final _notesController = TextEditingController();

  bool _seeded = false;
  late DeliveryAddress _seed;
  late GeoLocation _deliveryPoint;
  late bool _pinConfirmed;

  @override
  void dispose() {
    _line1Controller.dispose();
    _buildingController.dispose();
    _apartmentController.dispose();
    _floorController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_seeded) return;
    _seeded = true;

    final l10n = AppLocalizations.of(context);
    _seed = switch (widget.mode) {
      DeliveryAddressEditorMode.add => MockCheckoutData.newAddressDraft(
          city: l10n.deliveryAddressDemoCityValue,
          area: l10n.deliveryAddressDemoAreaValue,
        ),
      DeliveryAddressEditorMode.edit =>
        ref.read(checkoutDeliveryAddressProvider),
    };

    _line1Controller.text = _seed.line1;
    _buildingController.text = _seed.buildingNumber ?? '';
    _apartmentController.text = _seed.apartmentNumber ?? '';
    _floorController.text = _seed.floorNumber ?? '';
    _notesController.text = _seed.deliveryNotes ?? '';
    _deliveryPoint = _seed.deliveryPoint;
    _pinConfirmed = _seed.isDeliveryPointConfirmed;
  }

  String? _trimOrNull(String raw) {
    final t = raw.trim();
    return t.isEmpty ? null : t;
  }

  Future<void> _onChooseMap() async {
    HapticFeedback.selectionClick();
    final port = ref.read(deliveryAddressMapSelectionPortProvider);
    final next = await port.pickDeliveryPoint(
      context,
      initial: _deliveryPoint,
    );
    if (!mounted || next == null) return;
    setState(() {
      _deliveryPoint = next;
      _pinConfirmed = true;
    });
  }

  void _onSave() {
    final l10n = AppLocalizations.of(context);
    if (!(_formKey.currentState?.validate() ?? false)) return;

    HapticFeedback.mediumImpact();

    final line1 = _line1Controller.text.trim();
    final saved = _seed.copyWith(
      line1: line1,
      city: l10n.deliveryAddressDemoCityValue,
      area: l10n.deliveryAddressDemoAreaValue,
      buildingNumber: _trimOrNull(_buildingController.text),
      apartmentNumber: _trimOrNull(_apartmentController.text),
      floorNumber: _trimOrNull(_floorController.text),
      deliveryNotes: _trimOrNull(_notesController.text),
      deliveryPoint: _deliveryPoint,
      isDeliveryPointConfirmed: _pinConfirmed,
    );

    ref.read(checkoutDeliveryAddressProvider.notifier).replace(saved);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(l10n.deliveryAddressSnackbarSaved)),
    );
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final bottomInset = MediaQuery.paddingOf(context).bottom;

    final title = switch (widget.mode) {
      DeliveryAddressEditorMode.add => l10n.deliveryAddressTitleAdd,
      DeliveryAddressEditorMode.edit => l10n.deliveryAddressTitleEdit,
    };

    return Scaffold(
      backgroundColor: scheme.surface,
      appBar: AppBar(title: Text(title)),
      body: Form(
        key: _formKey,
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          slivers: [
            SliverPadding(
              padding: EdgeInsetsDirectional.fromSTEB(
                AppSpacing.lg,
                AppSpacing.md,
                AppSpacing.lg,
                AppSpacing.sm,
              ),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  Text(
                    l10n.deliveryAddressDetectedCityLabel,
                    style: textTheme.labelLarge?.copyWith(
                      color: scheme.onSurfaceVariant,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: AppSpacing.xs),
                  Text(
                    l10n.deliveryAddressDemoCityValue,
                    style: textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: AppSpacing.md),
                  Text(
                    l10n.deliveryAddressDetectedAreaLabel,
                    style: textTheme.labelLarge?.copyWith(
                      color: scheme.onSurfaceVariant,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: AppSpacing.xs),
                  Text(
                    l10n.deliveryAddressDemoAreaValue,
                    style: textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: AppSpacing.lg),
                  DeliveryAddressMapSection(
                    currentPoint: _deliveryPoint,
                    isPointConfirmed: _pinConfirmed,
                    onChooseOnMap: _onChooseMap,
                  ),
                  SizedBox(height: AppSpacing.lg),
                  CustomTextField(
                    controller: _line1Controller,
                    labelText: l10n.deliveryAddressFullAddressLabel,
                    hintText: l10n.deliveryAddressFullAddressHint,
                    maxLines: 3,
                    minLines: 2,
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return l10n.deliveryAddressStreetRequired;
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: AppSpacing.md),
                  CustomTextField(
                    controller: _buildingController,
                    labelText: l10n.checkoutBuildingNumber,
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(height: AppSpacing.md),
                  CustomTextField(
                    controller: _apartmentController,
                    labelText: l10n.checkoutApartmentNumber,
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(height: AppSpacing.md),
                  CustomTextField(
                    controller: _floorController,
                    labelText: l10n.checkoutFloorNumber,
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(height: AppSpacing.md),
                  CustomTextField(
                    controller: _notesController,
                    labelText: l10n.checkoutDeliveryNotes,
                    maxLines: 4,
                    minLines: 2,
                    textInputAction: TextInputAction.done,
                  ),
                  SizedBox(height: 96 + bottomInset),
                ]),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Material(
        elevation: 12,
        color: scheme.surface,
        surfaceTintColor: scheme.surfaceTint,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(
              AppSpacing.lg,
              AppSpacing.md,
              AppSpacing.lg,
              AppSpacing.md,
            ),
            child: SizedBox(
              width: double.infinity,
              height: AppSpacing.minTapTarget,
              child: FilledButton(
                onPressed: _onSave,
                child: Text(
                  l10n.deliveryAddressSave,
                  style: textTheme.titleMedium?.copyWith(
                    color: scheme.onPrimary,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
