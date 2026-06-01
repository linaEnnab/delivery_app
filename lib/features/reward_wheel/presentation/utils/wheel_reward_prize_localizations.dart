import 'package:delivery_app/features/reward_wheel/domain/wheel_reward_kind.dart';
import 'package:delivery_app/l10n/app_localizations.dart';

String wheelRewardPrizeTitle(AppLocalizations l10n, WheelRewardKind k) =>
    switch (k) {
      WheelRewardKind.freeCola => l10n.rewardWheelPrizeFreeColaTitle,
      WheelRewardKind.freeFries => l10n.rewardWheelPrizeFreeFriesTitle,
      WheelRewardKind.mealDiscount50 =>
        l10n.rewardWheelPrizeMealDiscount50Title,
      WheelRewardKind.freeDelivery => l10n.rewardWheelPrizeFreeDeliveryTitle,
      WheelRewardKind.loyaltyPoints25 => l10n.rewardWheelPrizeLoyalty25Title,
      WheelRewardKind.loyaltyPoints50 => l10n.rewardWheelPrizeLoyalty50Title,
    };

String wheelRewardPrizeDescription(AppLocalizations l10n, WheelRewardKind k) =>
    switch (k) {
      WheelRewardKind.freeCola => l10n.rewardWheelPrizeFreeColaDescription,
      WheelRewardKind.freeFries => l10n.rewardWheelPrizeFreeFriesDescription,
      WheelRewardKind.mealDiscount50 =>
        l10n.rewardWheelPrizeMealDiscount50Description,
      WheelRewardKind.freeDelivery =>
        l10n.rewardWheelPrizeFreeDeliveryDescription,
      WheelRewardKind.loyaltyPoints25 =>
        l10n.rewardWheelPrizeLoyalty25Description,
      WheelRewardKind.loyaltyPoints50 =>
        l10n.rewardWheelPrizeLoyalty50Description,
    };
