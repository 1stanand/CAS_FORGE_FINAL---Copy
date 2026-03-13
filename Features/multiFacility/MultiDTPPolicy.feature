@AuthoredBy-shruti.srivastava1
@ReviewedBy-
@TechReviewedBy-
@UIChange
@ImplementedBy-anjali.gupta
#EpicID- CAS-253108
#StoryID- CAS-256577
@CAS-256577
# Pre-Requisites

#Lob configured - Yes
#This is applicable for product type  - Multi Facility
# DTP is configured with split type limit and  tranche type as multi
# Core banking flag is disabled


@DevTrack
@GA-9.0
  #${ApplicantType:["indiv" ,"nonindiv"]}
  #${ProductType:["MULF"]
  #${ApplicationStage : ["DDE" ,"Credit approval" , "FDE"]}

Feature: Multi LAN Multi Tranche Feature in corporate loan


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0



  Scenario Outline: Enabled tabs
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to Deal and Facility tab for "<ApplicationStage>"
    When user clicks on "<Tab>" for FacilityType "<FacilityType>"
    Then the "<Tab>" should be visible in enabled mode

    Examples:
      | ApplicationStage   | ProductType   | Tab             | FacilityType     | ApplicantType   |
      | <ApplicationStage> | <ProductType> | Stock details   | Cash Credit      | <ApplicantType> |
      | <ApplicationStage> | <ProductType> | Bill details    | Bill Discounting | <ApplicantType> |



  #${FacilityType:["Consumer Vehicle" , "Commercial equipment" , "Commercial Vehicle"]
  Scenario Outline: Disabled tabs
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to Deal and Facility tab for "<ApplicationStage>"
    When user opens facility of FacilityType "<FacilityType>"
    Then the "<Tab>" should not be visible

    Examples:
      | ApplicationStage   | ProductType   | Tab                 | FacilityType         | ApplicantType   |
      | <ApplicationStage> | <ProductType> | Asset details       | <Facility Type>      | <ApplicantType> |
      | <ApplicationStage> | <ProductType> | Property details    | LAP                  | <ApplicantType> |

    #${FacilityType:["Cash credit , bill discounting ,LAP , Consumer Vehicle , Commercial equipment , Commercial Vehicle"]
  Scenario Outline: Validation removal
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to Deal and Facility tab for "<ApplicationStage>"
    When user reads data from the excel file "<DealAndFacilityDetailsWB>" under sheet "<DealAndFacilityDetailsSheet>" and row <DealAndFacilityDetailsSheet_rowNo>
    And fills data from the excel such that product contains multiple DTP policy
    And clicks on save of sourcing details
    Then data should be saved successfully with message "Facility Details saved successfully."
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | DealAndFacilityDetailsWB       | DealAndFacilityDetailsSheet | DealAndFacilityDetailsSheet_rowNo  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | deal_and_facility_details.xlsx | facility_details            | 12                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | deal_and_facility_details.xlsx | facility_details            | 13                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | deal_and_facility_details.xlsx | facility_details            | 14                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | deal_and_facility_details.xlsx | facility_details            | 15                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | deal_and_facility_details.xlsx | facility_details            | 16                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | deal_and_facility_details.xlsx | facility_details            | 17                                 |







