use foodbank;
 DROP IF TABLE EXISTS fb_agency;
CREATE TABLE fb_agency (
	/*Network Partner Monitoring Form */
	Agency_id int NOT NULL PRIMARY KEY,
	AgencyCounty varchar(255),
	AgencyNumber int default "0",
	TodaysDate date,
	DateOfLastMonitor date,
	AgencyName varchar(255),
	ParentAgencyName varchar(255),
	ParentAgencyNumber int,
	ContactName varchar(255),
	ContactPhoneNumber varchar(30),
	DirectorName varchar(255),
	DirectorPhoneNumber varchar(30),
	AddtionalContactName varchar(255),
	AdditonalContactPhoneNumber varchar(30),
	PrimaryEmail varchar(255),
	DateofMostRecentFoodSafteyTraining date,
	TEOF_NorIll_HasCurrentVarificationOfTaxExemptStatusOnFile tinyint,
	TEOF_IRS_Varification tinyint,
	DateOfIRSVarification date,
	EmergencyFoodProgram tinyint,
	DateOFContract date,

	MealProgram varchar(255),
    /*Forms*/
	AgencyMembershipAgreementandLiabilityRelease varchar(255), /*store url*/
	IllinoisFoodSanitationLicense tinyint,
	HealthDepartentPermitandInspection tinyint,
	PestControl tinyint

 );

CREATE TABLE fb_interview (
	Agency_id int, /*this links the interview to a particular agency*/
	Intrw_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	PersonInterview varchar(255),
	DaysOfOperation varchar(255), /*Need to know if "days' (varchar) or dates (date) */
	TimeOfOperationStart time,
	TimeOfOperationStop time,
	IsYourOrgRequiredToHaveASingleAudit tinyint,
	DoesTheAgencyAppearToBeHandicappedAccessible tinyint,

	/*Part III: Food Safety, Storage and Inventory*/
	DoesTheLocalHealthDepartmentRequireAPermit tinyint,
	IfYesProvideDateOfLastInspection date,
	IfYesProvideCopyOfPermitOfLastInspectionScore int, /*What to do for conditional variables*/
	IsThereACleaningScheduleEstablishedAndPosted tinyint,
	PestControlRoutine tinyint,
	PestControlCompany varchar(255),
	PestControlLastVisit date,
	IsAllFoodStoredAtLocation tinyint,
	IfNoWhereIsFoodStored varchar(255), /*What to do fro conditional variables*/
	IsAllFoodStoredSixInchesOffFloor tinyint,
	RefrigeratorTempBetween35and40F tinyint,
	RefrigeratorTemp int,
	FreezerTemp0orBelow tinyint,
	FreezerTemp int,
	WorkingThermometersInStorageAreas tinyint,
	ThermometerTempsInProperRange tinyint,
	TempLogsMaintainedAndPosted tinyint,

	/*Emergency Food Program EEP Information*/
	DiscriminationComplaintsInPastYear tinyint,
	HaveComplaintsBeenForwardedToFoodBank tinyint,
	TotalCasesOfEFP_TANFProductInInventory int,
	DoesThePartnerOperateAnotherProgram tinyint,
	IsFoodSeperatedandTrackedForTheTwoProgram tinyint,
	DoesProgramHaveEFPSiteManualOnSite tinyint,
	VisibleSignsPostedAnnouncingOperationHours tinyint,
	AJFAPosterVisible tinyint,
	Religiousorganization tinyint,
	WrittenNoticeOfBeneficiaryRightPosterVisible tinyint,
	ClientsOfferedAReferralToANonReligousEFPFeedingProgram tinyint,
	/*Program Procedures*/
	DocumentsRequiredFromClient tinyint,
	TypesOfDocumentsRequested varchar(255),
	PurposeForRequestingDocumentation varchar(255),
	AreHouseHoldsAllowedToReceiveFoodAtLeastOnceEvery30days tinyint,
	AreClientsRequiredToObtainReferralFromOutsideAgency tinyint,
	/*Signature Documents*/
	DoesPantryHaveOtherFoodsToDistricuteWithGovCommodities tinyint,
	PostersVisible tinyint,
	AreDHS_TANFSignaturesDocumentsUsed tinyint,
	SignatureSheetsForCorrectYears tinyint,
	IsFoodBankNameOnSheet tinyint,
	IsDateOnSignatureSheet tinyint,
	DoesReciptientSignTheirName tinyint,
	ClientAddressRecorded tinyint,
	HouseholdSizeRecorded tinyint,
	NumOfChildren18andUnderRecordedInTheTANFBox tinyint,

	/*Questions if proxy forms are used*/
	AreProxyFormsForCorrectYear tinyint,
	ProxyFormContainsOriginalSignatureOfRecipient tinyint,
	DesignatedProxySignTheProxyFormInPresebceOfPantryPersonnel tinyint,

	/*Violations/Concerns */
	VioloationCommentsFromAgencyStaff varchar(255),

	/*Comments/Accolades*/
	AccoladesCommentsFromAgencyStaff varchar(255),
	AgencyNeeds_Volunteers tinyint,
	AgencyNeeds_Equiptment tinyint,
	AgencyNeeds_Funding tinyint,
	AgencyNeeds_Training tinyint,
	DigitalSignNIFBRep varchar(255), /*possibly jpg of sig? - URL of JPG?*/
	DateOfDSNIFBRep date,
	DigitalSignAgencyRep varchar(255), /*Same^*/
	DataOfDSAgencyRep date,
 /* composite primary key*/
	CONSTRAINT fb_interview_fk_agency
	FOREIGN KEY (Agency_id) REFERENCES fb_agency(Agency_id) /* this creates a FK constraint*/
);

CREATE TABLE meal_program_information (
	meal_id int primary key auto_increment,
	Intrw_id int,

	MP_SoupKitchen tinyint,
	MP_GroupHome tinyint,
	MP_Shelter_TransitionalLiving tinyint,
	MP_DayCare tinyint,
	MP_YouthProgramAfterSchool tinyint,
	MonthlyServiceData tinyint,
	NumberOfMealsServerdLastMonth int,
	DoesFoodBankHaveSafeHandlingCertification tinyint,
	SafeHandlingCertName varchar(255),
	SafeHandlingCertDate date,
	FeesDonationsMembershipsRequired tinyint,
	FeesDonationMembershipsExplaination varchar(255),
	FundingSource varchar(255),
	SafeHandlingCertPostedInKitchen tinyint,
	DaysOfOperationPostedVisible tinyint,
	RequirementsForFoodAssistance varchar(255),
	AverageNumberOfServed int,
	GRPHOME_NumOfResidents int,
	GRPHOME_NumOfMealsServed int,
	GRPHOME_WhoParticipatedInMealPrograms varchar(255),
	SCHL_NumOfFreeLunches int,
	SCHL_NumOfReducedLunches int,
	SCHL_LunchFee int,
	SCHL_ReducedLunchFee int
);
CREATE TABLE grocery_program_information (
	grocery_id int primary key auto_increment,
	Intrw_id int,

	GP_FoodPantry tinyint, /*tinyint*/
	GP_Seasonal tinyint,
	GP_MobilePantry tinyint,
	GP_Backpack tinyint,
	DistMthd_ChoicePantry tinyint,
	DistMthd_Traditional tinyint,
	DistMthd_Combination tinyint,
	DistMthd_Other tinyint,
	DistMthd_OtherMethod varchar(255),
	HowOftenDoesHouseholdReceiveFood varchar(255),
	AvgNumOfServedPerMonth int,
	AvgNumOfHouseHoldsServedPerMonth int,
	AvgAmntOfFoodPerHouseInLBORDays int,
	DesignatedGeographicalServiceArea tinyint,
	MemberAttendedFoodSafetyClass tinyint,
	MemberName varchar(255),
	SafetyClassDate date,
	FeesDonationsMembershipsRequired tinyint,
	FeesDonationMembershipsExplaination varchar(255),
	FundingSources varchar(255),
	DaysOfOperationPostedVisible tinyint,
	RequirementsForFoodAssistance varchar(255),
	ClientParticipationTracking tinyint,
	IntakeDoneInConfidential tinyint,
	FoodDeliveredToClients tinyint
);
CREATE TABLE direct_connect_program (
	dc_id int primary key,
    	Intrw_id int,

	ColdFoodProcess varchar(255),
	CopiesOfPickupPapers tinyint,
	SampleTempsDocumentedAtTimeOfPickUpandDelivery tinyint,
	TempControlledDevicesForFoodTransport tinyint
);
/*
CREATE TABLE emergency_food_program_EEP_information ( //this should be with interview -->COMMENTED OUT UNTIL RESPONSE FROM NI-FOODBANK
    Intrw_id int,
	DiscriminationComplaintsInPastYear tinyint,
	HaveComplaintsBeenForwardedToFoodBank tinyint,
	TotalCasesOfEFP_TANFProductInInventory int,
	DoesThePartnerOperateAnotherProgram tinyint,
	IsFoodSeperatedandTrackedForTheTwoProgram tinyint,
	DoesProgramHaveEFPSiteManualOnSite tinyint,
	VisibleSignsPostedAnnouncingOperationHours tinyint,
	AJFAPosterVisible tinyint,
	Religiousorganization tinyint,
	WrittenNoticeOfBeneficiaryRightPosterVisible tinyint,
	ClientsOfferedAReferralToANonReligousEFPFeedingProgram tinyint,
	/*Program Procedures*/ /*
	DocumentsRequiredFromClient tinyint,
	TypesOfDocumentsRequested varchar(255),
	PurposeForRequestingDocumentation varchar(255),
	AreHouseHoldsAllowedToReceiveFoodAtLeastOnceEvery30days tinyint,
	AreClientsRequiredToObtainReferralFromOutsideAgency tinyint,
	/*Signature Documents*/ /*
	DoesPantryHaveOtherFoodsToDistricuteWithGovCommodities tinyint,
	PostersVisible tinyint,
	AreDHS_TANFSignaturesDocumentsUsed tinyint,
	SignatureSheetsForCorrectYears tinyint,
	IsFoodBankNameOnSheet tinyint,
	IsDateOnSignatureSheet tinyint,
	DoesReciptientSignTheirName tinyint,
	ClientAddressRecorded tinyint,
	HouseholdSizeRecorded tinyint,
	NumOfChildren18andUnderRecordedInTheTANFBox tinyint,
	/*Questions if proxy forms are used*//*
	AreProxyFormsForCorrectYear tinyint,
	ProxyFormContainsOriginalSignatureOfRecipient tinyint,
	DesignatedProxySignTheProxyFormInPresebceOfPantryPersonnel tinyint
); */
Contact GitHub API Training Shop Blog About
© 2016 GitHub, Inc. Terms Privacy Security Status Help