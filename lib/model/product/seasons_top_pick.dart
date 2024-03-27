import 'dart:convert';

class SeasonsTopPick {
	String? id;
	String? productName;
	String? price;
	String? imageUrl;

	SeasonsTopPick({this.id, this.productName, this.price, this.imageUrl});

	factory SeasonsTopPick.fromHeaderCategoryId1CategoryNameRechargeImageUrlAssetsImagesRechargePngId2CategoryNameTravelImageUrlAssetsImagesTravelPngId3CategoryNameTwoWheelerImageUrlAssetsImagesTwowheelersPngId4CategoryNamePersonalLoansImageUrlAssetsImagesPersonalloansPngId5CategoryNameInsuranceImageUrlAssetsImagesInsurancePngId6CategoryNameMedicineImageUrlAssetsImagesMedicinePngId7CategoryNamePhoneCashImageUrlAssetsImagesPhonecashPngMainCategoryId1CategoryNameFashionImageUrlAssetsImagesFashionPngId2CategoryNameMobilesImageUrlAssetsImagesMobilephonesPngId3CategoryNameSmartGadgetsImageUrlAssetsImagesWatchPngId4CategoryNameElectronicsImageUrlAssetsImagesElectronicsPngId5CategoryNameHomeEssentialsImageUrlAssetsImagesHomeessentialsPngId6CategoryNameBeautyGroomingImageUrlAssetsImagesBeautygroomingPngId7CategoryNameAppliancesImageUrlAssetsImagesAppliancesPngId8CategoryNameToysBabyImageUrlAssetsImagesToysPngId9CategoryNameSportsFitnessImageUrlAssetsImagesSportsPngId10CategoryNameAutoAccessoriesImageUrlAssetsImagesAutoPngId11CategoryNameFoodHealthcareImageUrlAssetsImagesFoodPngId12CategoryNameFurnitureImageUrlAssetsImagesFurniturePngPopularId1ProductNameFastTrackRevolltPriceJust1799ImageUrlAssetsImagesWatchPngId2ProductNameEnergySavingFansPriceFrom1899ImageUrlAssetsImagesFansPngId3ProductNameGentleCarePriceUpto60OffImageUrlAssetsImagesBeautyproductsPngSeasonsTopPickId1ProductNameMenSTShirtsPriceMin50OffImageUrlAssetsImagesTshirtPngId2ProductNameTrackSuitPriceMin50OffImageUrlAssetsImagesTracksuitPngId3ProductNameMenSShirtPriceMin50OffImageUrlAssetsImagesShirtPngId4ProductNameWatchStrapPriceMin50OffImageUrlAssetsImagesWatchstrapPngSponsoredId1ProductNameNanoPowerbankPriceSplPrice1299ImageUrlAssetsImagesPowerbankPngId2ProductName183BtCallingPriceJust1199ImageUrlAssetsImagesBtcallingPngId3ProductNameEncQuadMicPriceJust899ImageUrlAssetsImagesQuadmicPngId4ProductNameRuggesSneakerPriceMin50OffImageUrlAssetsImagesRuggedsnearkerPngId5ProductNameJawDroppingDealPriceUpto70OffImageUrlAssetsImagesDropdealPngId6ProductNameOutdoorShoesPriceMin30OffImageUrlAssetsImagesOutdoorshowsPngHealthWellnessId1ProductNameMenShoesPriceMin70OffImageUrlAssetsImagesMenslipperPngId4ProductNameMenSlippersPriceMin70OffImageUrlAssetsImagesSlipperPngId3ProductNameDryFruitsPriceMin50OffImageUrlAssetsImagesDryfruitsPngId4ProductNameMouthWashPriceMin30OffImageUrlAssetsImagesMouthwashPngInDemandId1ProductNameGownPriceUpto70OffImageUrlAssetsImagesGownPngId2ProductNameWddingSareesPriceUnder499ImageUrlAssetsImagesWeddingdressPngId3ProductNameEthnicWearPriceFrom199ImageUrlAssetsImagesEthnicswearPngId4ProductNameGrabOrGonePriceUnder799ImageUrlAssetsImagesGrabPngWildestCollectionId1ProductNameKitchenPriceSpecialOfferImageUrlAssetsImagesKitchenPngId2ProductNamePrintedSareesPriceUnder399ImageUrlAssetsImagesPrinteddressPngId3ProductNameTrendyKurtisPriceFrom199ImageUrlAssetsImagesTrendykurtisPngId4ProductNameTrendyKurtisPriceUnder799ImageUrlAssetsImagesTrendykurtisPng(Map<String, dynamic> data) {
		return SeasonsTopPick(
			id: data['id'] as String?,
			productName: data['productName'] as String?,
			price: data['price'] as String?,
			imageUrl: data['image-url'] as String?,
		);
	}



	Map<String, dynamic> toHeaderCategoryId1CategoryNameRechargeImageUrlAssetsImagesRechargePngId2CategoryNameTravelImageUrlAssetsImagesTravelPngId3CategoryNameTwoWheelerImageUrlAssetsImagesTwowheelersPngId4CategoryNamePersonalLoansImageUrlAssetsImagesPersonalloansPngId5CategoryNameInsuranceImageUrlAssetsImagesInsurancePngId6CategoryNameMedicineImageUrlAssetsImagesMedicinePngId7CategoryNamePhoneCashImageUrlAssetsImagesPhonecashPngMainCategoryId1CategoryNameFashionImageUrlAssetsImagesFashionPngId2CategoryNameMobilesImageUrlAssetsImagesMobilephonesPngId3CategoryNameSmartGadgetsImageUrlAssetsImagesWatchPngId4CategoryNameElectronicsImageUrlAssetsImagesElectronicsPngId5CategoryNameHomeEssentialsImageUrlAssetsImagesHomeessentialsPngId6CategoryNameBeautyGroomingImageUrlAssetsImagesBeautygroomingPngId7CategoryNameAppliancesImageUrlAssetsImagesAppliancesPngId8CategoryNameToysBabyImageUrlAssetsImagesToysPngId9CategoryNameSportsFitnessImageUrlAssetsImagesSportsPngId10CategoryNameAutoAccessoriesImageUrlAssetsImagesAutoPngId11CategoryNameFoodHealthcareImageUrlAssetsImagesFoodPngId12CategoryNameFurnitureImageUrlAssetsImagesFurniturePngPopularId1ProductNameFastTrackRevolltPriceJust1799ImageUrlAssetsImagesWatchPngId2ProductNameEnergySavingFansPriceFrom1899ImageUrlAssetsImagesFansPngId3ProductNameGentleCarePriceUpto60OffImageUrlAssetsImagesBeautyproductsPngSeasonsTopPickId1ProductNameMenSTShirtsPriceMin50OffImageUrlAssetsImagesTshirtPngId2ProductNameTrackSuitPriceMin50OffImageUrlAssetsImagesTracksuitPngId3ProductNameMenSShirtPriceMin50OffImageUrlAssetsImagesShirtPngId4ProductNameWatchStrapPriceMin50OffImageUrlAssetsImagesWatchstrapPngSponsoredId1ProductNameNanoPowerbankPriceSplPrice1299ImageUrlAssetsImagesPowerbankPngId2ProductName183BtCallingPriceJust1199ImageUrlAssetsImagesBtcallingPngId3ProductNameEncQuadMicPriceJust899ImageUrlAssetsImagesQuadmicPngId4ProductNameRuggesSneakerPriceMin50OffImageUrlAssetsImagesRuggedsnearkerPngId5ProductNameJawDroppingDealPriceUpto70OffImageUrlAssetsImagesDropdealPngId6ProductNameOutdoorShoesPriceMin30OffImageUrlAssetsImagesOutdoorshowsPngHealthWellnessId1ProductNameMenShoesPriceMin70OffImageUrlAssetsImagesMenslipperPngId4ProductNameMenSlippersPriceMin70OffImageUrlAssetsImagesSlipperPngId3ProductNameDryFruitsPriceMin50OffImageUrlAssetsImagesDryfruitsPngId4ProductNameMouthWashPriceMin30OffImageUrlAssetsImagesMouthwashPngInDemandId1ProductNameGownPriceUpto70OffImageUrlAssetsImagesGownPngId2ProductNameWddingSareesPriceUnder499ImageUrlAssetsImagesWeddingdressPngId3ProductNameEthnicWearPriceFrom199ImageUrlAssetsImagesEthnicswearPngId4ProductNameGrabOrGonePriceUnder799ImageUrlAssetsImagesGrabPngWildestCollectionId1ProductNameKitchenPriceSpecialOfferImageUrlAssetsImagesKitchenPngId2ProductNamePrintedSareesPriceUnder399ImageUrlAssetsImagesPrinteddressPngId3ProductNameTrendyKurtisPriceFrom199ImageUrlAssetsImagesTrendykurtisPngId4ProductNameTrendyKurtisPriceUnder799ImageUrlAssetsImagesTrendykurtisPng() {
		return {
			'id': id,
			'productName': productName,
			'price': price,
			'image-url': imageUrl,		};
	}

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SeasonsTopPick].
	factory SeasonsTopPick.fromJson(String data) {
		return SeasonsTopPick.fromHeaderCategoryId1CategoryNameRechargeImageUrlAssetsImagesRechargePngId2CategoryNameTravelImageUrlAssetsImagesTravelPngId3CategoryNameTwoWheelerImageUrlAssetsImagesTwowheelersPngId4CategoryNamePersonalLoansImageUrlAssetsImagesPersonalloansPngId5CategoryNameInsuranceImageUrlAssetsImagesInsurancePngId6CategoryNameMedicineImageUrlAssetsImagesMedicinePngId7CategoryNamePhoneCashImageUrlAssetsImagesPhonecashPngMainCategoryId1CategoryNameFashionImageUrlAssetsImagesFashionPngId2CategoryNameMobilesImageUrlAssetsImagesMobilephonesPngId3CategoryNameSmartGadgetsImageUrlAssetsImagesWatchPngId4CategoryNameElectronicsImageUrlAssetsImagesElectronicsPngId5CategoryNameHomeEssentialsImageUrlAssetsImagesHomeessentialsPngId6CategoryNameBeautyGroomingImageUrlAssetsImagesBeautygroomingPngId7CategoryNameAppliancesImageUrlAssetsImagesAppliancesPngId8CategoryNameToysBabyImageUrlAssetsImagesToysPngId9CategoryNameSportsFitnessImageUrlAssetsImagesSportsPngId10CategoryNameAutoAccessoriesImageUrlAssetsImagesAutoPngId11CategoryNameFoodHealthcareImageUrlAssetsImagesFoodPngId12CategoryNameFurnitureImageUrlAssetsImagesFurniturePngPopularId1ProductNameFastTrackRevolltPriceJust1799ImageUrlAssetsImagesWatchPngId2ProductNameEnergySavingFansPriceFrom1899ImageUrlAssetsImagesFansPngId3ProductNameGentleCarePriceUpto60OffImageUrlAssetsImagesBeautyproductsPngSeasonsTopPickId1ProductNameMenSTShirtsPriceMin50OffImageUrlAssetsImagesTshirtPngId2ProductNameTrackSuitPriceMin50OffImageUrlAssetsImagesTracksuitPngId3ProductNameMenSShirtPriceMin50OffImageUrlAssetsImagesShirtPngId4ProductNameWatchStrapPriceMin50OffImageUrlAssetsImagesWatchstrapPngSponsoredId1ProductNameNanoPowerbankPriceSplPrice1299ImageUrlAssetsImagesPowerbankPngId2ProductName183BtCallingPriceJust1199ImageUrlAssetsImagesBtcallingPngId3ProductNameEncQuadMicPriceJust899ImageUrlAssetsImagesQuadmicPngId4ProductNameRuggesSneakerPriceMin50OffImageUrlAssetsImagesRuggedsnearkerPngId5ProductNameJawDroppingDealPriceUpto70OffImageUrlAssetsImagesDropdealPngId6ProductNameOutdoorShoesPriceMin30OffImageUrlAssetsImagesOutdoorshowsPngHealthWellnessId1ProductNameMenShoesPriceMin70OffImageUrlAssetsImagesMenslipperPngId4ProductNameMenSlippersPriceMin70OffImageUrlAssetsImagesSlipperPngId3ProductNameDryFruitsPriceMin50OffImageUrlAssetsImagesDryfruitsPngId4ProductNameMouthWashPriceMin30OffImageUrlAssetsImagesMouthwashPngInDemandId1ProductNameGownPriceUpto70OffImageUrlAssetsImagesGownPngId2ProductNameWddingSareesPriceUnder499ImageUrlAssetsImagesWeddingdressPngId3ProductNameEthnicWearPriceFrom199ImageUrlAssetsImagesEthnicswearPngId4ProductNameGrabOrGonePriceUnder799ImageUrlAssetsImagesGrabPngWildestCollectionId1ProductNameKitchenPriceSpecialOfferImageUrlAssetsImagesKitchenPngId2ProductNamePrintedSareesPriceUnder399ImageUrlAssetsImagesPrinteddressPngId3ProductNameTrendyKurtisPriceFrom199ImageUrlAssetsImagesTrendykurtisPngId4ProductNameTrendyKurtisPriceUnder799ImageUrlAssetsImagesTrendykurtisPng(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [SeasonsTopPick] to a JSON string.
	String toJson() => json.encode(toHeaderCategoryId1CategoryNameRechargeImageUrlAssetsImagesRechargePngId2CategoryNameTravelImageUrlAssetsImagesTravelPngId3CategoryNameTwoWheelerImageUrlAssetsImagesTwowheelersPngId4CategoryNamePersonalLoansImageUrlAssetsImagesPersonalloansPngId5CategoryNameInsuranceImageUrlAssetsImagesInsurancePngId6CategoryNameMedicineImageUrlAssetsImagesMedicinePngId7CategoryNamePhoneCashImageUrlAssetsImagesPhonecashPngMainCategoryId1CategoryNameFashionImageUrlAssetsImagesFashionPngId2CategoryNameMobilesImageUrlAssetsImagesMobilephonesPngId3CategoryNameSmartGadgetsImageUrlAssetsImagesWatchPngId4CategoryNameElectronicsImageUrlAssetsImagesElectronicsPngId5CategoryNameHomeEssentialsImageUrlAssetsImagesHomeessentialsPngId6CategoryNameBeautyGroomingImageUrlAssetsImagesBeautygroomingPngId7CategoryNameAppliancesImageUrlAssetsImagesAppliancesPngId8CategoryNameToysBabyImageUrlAssetsImagesToysPngId9CategoryNameSportsFitnessImageUrlAssetsImagesSportsPngId10CategoryNameAutoAccessoriesImageUrlAssetsImagesAutoPngId11CategoryNameFoodHealthcareImageUrlAssetsImagesFoodPngId12CategoryNameFurnitureImageUrlAssetsImagesFurniturePngPopularId1ProductNameFastTrackRevolltPriceJust1799ImageUrlAssetsImagesWatchPngId2ProductNameEnergySavingFansPriceFrom1899ImageUrlAssetsImagesFansPngId3ProductNameGentleCarePriceUpto60OffImageUrlAssetsImagesBeautyproductsPngSeasonsTopPickId1ProductNameMenSTShirtsPriceMin50OffImageUrlAssetsImagesTshirtPngId2ProductNameTrackSuitPriceMin50OffImageUrlAssetsImagesTracksuitPngId3ProductNameMenSShirtPriceMin50OffImageUrlAssetsImagesShirtPngId4ProductNameWatchStrapPriceMin50OffImageUrlAssetsImagesWatchstrapPngSponsoredId1ProductNameNanoPowerbankPriceSplPrice1299ImageUrlAssetsImagesPowerbankPngId2ProductName183BtCallingPriceJust1199ImageUrlAssetsImagesBtcallingPngId3ProductNameEncQuadMicPriceJust899ImageUrlAssetsImagesQuadmicPngId4ProductNameRuggesSneakerPriceMin50OffImageUrlAssetsImagesRuggedsnearkerPngId5ProductNameJawDroppingDealPriceUpto70OffImageUrlAssetsImagesDropdealPngId6ProductNameOutdoorShoesPriceMin30OffImageUrlAssetsImagesOutdoorshowsPngHealthWellnessId1ProductNameMenShoesPriceMin70OffImageUrlAssetsImagesMenslipperPngId4ProductNameMenSlippersPriceMin70OffImageUrlAssetsImagesSlipperPngId3ProductNameDryFruitsPriceMin50OffImageUrlAssetsImagesDryfruitsPngId4ProductNameMouthWashPriceMin30OffImageUrlAssetsImagesMouthwashPngInDemandId1ProductNameGownPriceUpto70OffImageUrlAssetsImagesGownPngId2ProductNameWddingSareesPriceUnder499ImageUrlAssetsImagesWeddingdressPngId3ProductNameEthnicWearPriceFrom199ImageUrlAssetsImagesEthnicswearPngId4ProductNameGrabOrGonePriceUnder799ImageUrlAssetsImagesGrabPngWildestCollectionId1ProductNameKitchenPriceSpecialOfferImageUrlAssetsImagesKitchenPngId2ProductNamePrintedSareesPriceUnder399ImageUrlAssetsImagesPrinteddressPngId3ProductNameTrendyKurtisPriceFrom199ImageUrlAssetsImagesTrendykurtisPngId4ProductNameTrendyKurtisPriceUnder799ImageUrlAssetsImagesTrendykurtisPng());
}
