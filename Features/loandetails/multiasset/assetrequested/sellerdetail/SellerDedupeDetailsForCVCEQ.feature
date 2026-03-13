@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@NotImplemented
@Conventional
@Deferred
Feature:Seller Dedupe Details for Commercial Vehicle and Commercial Equipment under Multi Asset

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline:On <dedupe_details> view details hyperlink <Screen> displayed for seller dedupe with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user creates an dedupe application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 8
    And user enters seller name
    And user selects seller type
    And user fills seller identification details
    And user adds seller address from existing details
    And user click on check for duplicates of seller details
    When user click on "<dedupe_details>" view details hyperlink
    Then "<Screen>" should be displayed for seller details

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | dedupe_details      | Screen                        | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Internal Duplicates | Seller Internal Dedupe Result | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Internal Duplicates | Seller Internal Dedupe Result | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Internal Duplicates | Seller Internal Dedupe Result | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Internal Duplicates | Seller Internal Dedupe Result | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | External Duplicates | Seller External Dedupe Result | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | External Duplicates | Seller External Dedupe Result | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | External Duplicates | Seller External Dedupe Result | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | External Duplicates | Seller External Dedupe Result | FBV        | Refinance   |

#  Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline:<dedupe_details> view details hyperlink <Screen> displayed for seller dedupe with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user creates an dedupe application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 8
    And user enters seller name
    And user selects seller type
    And user fills seller identification details
    And user adds seller address from existing details
    And user click on check for duplicates of seller details
    When user click on "<dedupe_details>" view details hyperlink
    Then "<Screen>" should be displayed for seller details

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | dedupe_details      | Screen                        | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Internal Duplicates | Seller Internal Dedupe Result | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Internal Duplicates | Seller Internal Dedupe Result | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Internal Duplicates | Seller Internal Dedupe Result | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Internal Duplicates | Seller Internal Dedupe Result | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | External Duplicates | Seller External Dedupe Result | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | External Duplicates | Seller External Dedupe Result | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | External Duplicates | Seller External Dedupe Result | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | External Duplicates | Seller External Dedupe Result | Body       | Refinance   |
#Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline:While clicking Seller Internal Duplicates view details hyperlink list of field should be displayed for seller dedupe with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user creates an dedupe application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 8
    And user enters seller name
    And user selects seller type
    And user fills seller identification details
    And user adds seller address from existing details
    And user click on check for duplicates of seller details
    When user click on "Internal Duplicates" view details hyperlink
    Then user should be able to validate Seller Internal Dedupe result displayed with list of field
      | Application ID         |
      | Strength Of Match      |
      | Neo Cust ID            |
      | Customer Name          |
      | DOB/Incorporation Date |
      | Neo CIF Number         |
      | Identification Number  |
      | Channel,Channel Name   |
      | Dealer/DSA/RM Name     |
      | Unique ID              |
      | Application Status     |
      | Applicant Type         |
      | Current stage          |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   |

#Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline:On clicking Seller Internal Duplicates view details hyperlink list of field should be displayed for seller dedupe with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user creates an dedupe application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 8
    And user enters seller name
    And user selects seller type
    And user fills seller identification details
    And user adds seller address from existing details
    And user click on check for duplicates of seller details
    When user click on "Internal Duplicates" view details hyperlink
    Then user should be able to validate Seller Internal Dedupe result displayed with list of field
      | Application ID         |
      | Strength Of Match      |
      | Neo Cust ID            |
      | Customer Name          |
      | DOB/Incorporation Date |
      | Neo CIF Number         |
      | Identification Number  |
      | Channel,Channel Name   |
      | Dealer/DSA/RM Name     |
      | Unique ID              |
      | Application Status     |
      | Applicant Type         |
      | Current stage          |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   |

#  Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #03_CAS-69190
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline:While clicking Seller External Duplicates view details hyperlink list of field should be displayed for seller dedupe with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user creates an dedupe application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 8
    And user enters seller name
    And user selects seller type
    And user fills seller identification details
    And user adds seller address from existing details
    And user click on check for duplicates of seller details
    When user click on "External Duplicates" view details hyperlink
    Then user should be able to validate Seller External Dedupe result displayed with list of field
      | Source System          |
      | Gender                 |
      | Host CIF ID            |
      | Customer Name          |
      | DOB/Incorporation Date |
      | Neo CIF Number         |
      | Identification         |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   |

    #  Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #03_CAS-69190
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline:On clicking Seller External Duplicates view details hyperlink list of field should be displayed for seller dedupe with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user creates an dedupe application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 8
    And user enters seller name
    And user selects seller type
    And user fills seller identification details
    And user adds seller address from existing details
    And user click on check for duplicates of seller details
    When user click on "External Duplicates" view details hyperlink
    Then user should be able to validate Seller External Dedupe result displayed with list of field
      | Source System          |
      | Gender                 |
      | Host CIF ID            |
      | Customer Name          |
      | DOB/Incorporation Date |
      | Neo CIF Number         |
      | Identification         |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   |


  #  Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline:On Seller Internal Dedupe Result Screen <Action> action should work properly for seller dedupe with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user creates an dedupe application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 8
    And user enters seller name
    And user selects seller type
    And user fills seller identification details
    And user adds seller address from existing details
    And user click on check for duplicates of seller details
    And user click on "Internal Duplicates" view details hyperlink
    When user take "<Action>" in Seller Internal Dedupe Result Screen
    Then "<Action>" should work properly on Seller Internal Dedupe Result Screen
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Action   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maximize | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maximize | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maximize | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maximize | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Minimize | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Minimize | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Minimize | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Minimize | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cancel   | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cancel   | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cancel   | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cancel   | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cross    | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cross    | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cross    | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cross    | FBV        | Refinance   |

    #  Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline:While selecting Seller Internal Dedupe Result Screen <Action> action should work properly for seller dedupe with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user creates an dedupe application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 8
    And user enters seller name
    And user selects seller type
    And user fills seller identification details
    And user adds seller address from existing details
    And user click on check for duplicates of seller details
    And user click on "Internal Duplicates" view details hyperlink
    When user take "<Action>" in Seller Internal Dedupe Result Screen
    Then "<Action>" should work properly on Seller Internal Dedupe Result Screen
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Action   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maximize | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maximize | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maximize | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maximize | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Minimize | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Minimize | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Minimize | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Minimize | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cancel   | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cancel   | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cancel   | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cancel   | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cross    | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cross    | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cross    | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cross    | Body       | Refinance   |


    #  Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline:On Seller External Dedupe Result Screen <Action> action should work properly for seller dedupe with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user creates an dedupe application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 8
    And user enters seller name
    And user selects seller type
    And user fills seller identification details
    And user adds seller address from existing details
    And user click on check for duplicates of seller details
    And user click on "External Duplicates" view details hyperlink
    When user take "<Action>" in  Seller External Dedupe Result Screen
    Then "<Action>" should work properly on Seller External Dedupe Result Screen
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Action   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maximize | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maximize | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maximize | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maximize | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Minimize | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Minimize | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Minimize | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Minimize | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cancel   | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cancel   | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cancel   | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cancel   | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cross    | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cross    | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cross    | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cross    | FBV        | Refinance   |

      #  Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline:While selecting Seller External Dedupe Result Screen <Action> action should work properly for seller dedupe with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user creates an dedupe application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 8
    And user enters seller name
    And user selects seller type
    And user fills seller identification details
    And user adds seller address from existing details
    And user click on check for duplicates of seller details
    And user click on "External Duplicates" view details hyperlink
    When user take "<Action>" in  Seller External Dedupe Result Screen
    Then "<Action>" should work properly on Seller External Dedupe Result Screen
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Action   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maximize | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maximize | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maximize | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maximize | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Minimize | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Minimize | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Minimize | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Minimize | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cancel   | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cancel   | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cancel   | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cancel   | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cross    | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cross    | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cross    | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cross    | Body       | Refinance   |



    #  Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validating the list of field present in Matched Application Details Screen for seller dedupe with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user creates an dedupe application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 8
    And user enters seller name
    And user selects seller type
    And user fills seller identification details
    And user adds seller address from existing details
    And user click on check for duplicates of seller details
    And user click on "Internal Duplicates" view details hyperlink
    When user click Application Id hyperlink in Seller Internal Dedupe Result
    Then list of field should be present in Matched Application Details Screen
      | Matched Application ID     |
      | Stage of application       |
      | Application Status         |
      | Sourcing branch            |
      | Application present in CAS |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   |

      #  Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline:List of field present in Matched Application Details Screen for seller dedupe with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user creates an dedupe application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 8
    And user enters seller name
    And user selects seller type
    And user fills seller identification details
    And user adds seller address from existing details
    And user click on check for duplicates of seller details
    And user click on "Internal Duplicates" view details hyperlink
    When user click Application Id hyperlink in Seller Internal Dedupe Result
    Then list of field should be present in Matched Application Details Screen
      | Matched Application ID     |
      | Stage of application       |
      | Application Status         |
      | Sourcing branch            |
      | Application present in CAS |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   |


    #  Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline:On Matched Application Details Screen <Action> action should work properly for seller dedupe with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user creates an dedupe application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 8
    And user enters seller name
    And user selects seller type
    And user fills seller identification details
    And user adds seller address from existing details
    And user click on check for duplicates of seller details
    And user click on "Internal Duplicates" view details hyperlink
    When user click Application Id hyperlink in Seller Internal Dedupe Result
    Then "<Action>" should work properly on Matched Application Details Screen
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Action       | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maximize     | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maximize     | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maximize     | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maximize     | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Minimize     | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Minimize     | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Minimize     | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Minimize     | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cancel       | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cancel       | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cancel       | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cancel       | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cross        | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cross        | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cross        | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cross        | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Expand All   | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Expand All   | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Expand All   | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Expand All   | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Collapse All | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Collapse All | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Collapse All | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Collapse All | FBV        | Refinance   |

      #  Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Matched Application Details Screen <Action> action should work properly for seller dedupe with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user creates an dedupe application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 8
    And user enters seller name
    And user selects seller type
    And user fills seller identification details
    And user adds seller address from existing details
    And user click on check for duplicates of seller details
    And user click on "Internal Duplicates" view details hyperlink
    When user click Application Id hyperlink in Seller Internal Dedupe Result
    Then "<Action>" should work properly on Matched Application Details Screen
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Action       | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maximize     | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maximize     | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maximize     | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maximize     | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Minimize     | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Minimize     | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Minimize     | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Minimize     | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cancel       | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cancel       | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cancel       | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cancel       | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cross        | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cross        | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cross        | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cross        | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Expand All   | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Expand All   | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Expand All   | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Expand All   | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Collapse All | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Collapse All | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Collapse All | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Collapse All | FBV        | Refinance   |

      #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Sorting Seller Internal Dedupe Result with ascending order by <Field_Name> column for seller dedupe with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 8
    And user enters seller name
    And user selects seller type
    And user fills seller identification details
    And user adds seller address from existing details
    And user click on check for duplicates of seller details
    And user click on "Internal Duplicates" view details hyperlink
    When user sort the Seller Internal Dedupe Result by "<Field_Name>" column in "Ascending" order
    Then Seller Internal Dedupe Result should be sort in "Ascending" order basis of "<Field_Name>"


    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Field_Name             | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Application ID         | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Application ID         | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Application ID         | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Application ID         | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Strength Of Match      | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Strength Of Match      | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Strength Of Match      | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Strength Of Match      | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo Cust ID            | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo Cust ID            | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo Cust ID            | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo Cust ID            | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Customer Name          | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Customer Name          | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Customer Name          | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Customer Name          | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | DOB/Incorporation Date | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | DOB/Incorporation Date | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | DOB/Incorporation Date | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | DOB/Incorporation Date | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo CIF Number         | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo CIF Number         | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo CIF Number         | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo CIF Number         | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Identification Number  | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Identification Number  | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Identification Number  | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Identification Number  | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Channel, Channel Name  | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Channel, Channel Name  | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Channel, Channel Name  | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Channel, Channel Name  | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unique ID              | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unique ID              | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unique ID              | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unique ID              | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Applicant Type         | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Applicant Type         | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Applicant Type         | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Applicant Type         | FBV        | Refinance   |

       #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline:While Sorting Seller Internal Dedupe Result with ascending order by <Field_Name> column for seller dedupe with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 8
    And user enters seller name
    And user selects seller type
    And user fills seller identification details
    And user adds seller address from existing details
    And user click on check for duplicates of seller details
    And user click on "Internal Duplicates" view details hyperlink
    When user sort the Seller Internal Dedupe Result by "<Field_Name>" column in "Ascending" order
    Then Seller Internal Dedupe Result should be sort in "Ascending" order basis of "<Field_Name>"


    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Field_Name             | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Application ID         | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Application ID         | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Application ID         | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Application ID         | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Strength Of Match      | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Strength Of Match      | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Strength Of Match      | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Strength Of Match      | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo Cust ID            | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo Cust ID            | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo Cust ID            | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo Cust ID            | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Customer Name          | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Customer Name          | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Customer Name          | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Customer Name          | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | DOB/Incorporation Date | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | DOB/Incorporation Date | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | DOB/Incorporation Date | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | DOB/Incorporation Date | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo CIF Number         | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo CIF Number         | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo CIF Number         | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo CIF Number         | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Identification Number  | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Identification Number  | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Identification Number  | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Identification Number  | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Channel, Channel Name  | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Channel, Channel Name  | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Channel, Channel Name  | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Channel, Channel Name  | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unique ID              | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unique ID              | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unique ID              | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unique ID              | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Applicant Type         | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Applicant Type         | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Applicant Type         | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Applicant Type         | Body       | Refinance   |

      #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline:On Sorting Seller Internal Dedupe Result with descending order by <Field_Name> column for seller dedupe with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 8
    And user enters seller name
    And user selects seller type
    And user fills seller identification details
    And user adds seller address from existing details
    And user click on check for duplicates of seller details
    And user click on "Internal Duplicates" view details hyperlink
    When user sort the Seller Internal Dedupe Result by "<Field_Name>" column in "Descending" order
    Then Seller Internal Dedupe Result should be sort in "Descending" order basis of "<Field_Name>"
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Field_Name             | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Application ID         | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Application ID         | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Application ID         | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Application ID         | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Strength Of Match      | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Strength Of Match      | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Strength Of Match      | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Strength Of Match      | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo Cust ID            | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo Cust ID            | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo Cust ID            | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo Cust ID            | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Customer Name          | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Customer Name          | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Customer Name          | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Customer Name          | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | DOB/Incorporation Date | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | DOB/Incorporation Date | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | DOB/Incorporation Date | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | DOB/Incorporation Date | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo CIF Number         | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo CIF Number         | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo CIF Number         | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo CIF Number         | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Identification Number  | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Identification Number  | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Identification Number  | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Identification Number  | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Channel, Channel Name  | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Channel, Channel Name  | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Channel, Channel Name  | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Channel, Channel Name  | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unique ID              | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unique ID              | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unique ID              | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unique ID              | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Applicant Type         | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Applicant Type         | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Applicant Type         | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Applicant Type         | FBV        | Refinance   |


      #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Sorting Seller Internal Dedupe Result with descending order by <Field_Name> column for seller dedupe with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 8
    And user enters seller name
    And user selects seller type
    And user fills seller identification details
    And user adds seller address from existing details
    And user click on check for duplicates of seller details
    And user click on "Internal Duplicates" view details hyperlink
    When user sort the Seller Internal Dedupe Result by "<Field_Name>" column in "Descending" order
    Then Seller Internal Dedupe Result should be sort in "Descending" order basis of "<Field_Name>"
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Field_Name             | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Application ID         | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Application ID         | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Application ID         | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Application ID         | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Strength Of Match      | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Strength Of Match      | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Strength Of Match      | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Strength Of Match      | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo Cust ID            | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo Cust ID            | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo Cust ID            | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo Cust ID            | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Customer Name          | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Customer Name          | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Customer Name          | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Customer Name          | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | DOB/Incorporation Date | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | DOB/Incorporation Date | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | DOB/Incorporation Date | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | DOB/Incorporation Date | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo CIF Number         | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo CIF Number         | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo CIF Number         | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo CIF Number         | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Identification Number  | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Identification Number  | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Identification Number  | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Identification Number  | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Channel, Channel Name  | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Channel, Channel Name  | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Channel, Channel Name  | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Channel, Channel Name  | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unique ID              | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unique ID              | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unique ID              | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unique ID              | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Applicant Type         | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Applicant Type         | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Applicant Type         | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Applicant Type         | Body       | Refinance   |


       #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validating strength of Match data in <Screen> should be same for Matches found in Strength of Match for seller dedupe with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user creates an dedupe application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 8
    And user enters seller name
    And user selects seller type
    And user fills seller identification details
    And user adds seller address from existing details
    And user click on check for duplicates of seller details
    And user click on "<dedupe_details>" view details hyperlink
    When user check results of strength of Match on "<Screen>"
    Then Match found in Strength of Match should be same as dedupe strength of "<dedupe_details>" match in Seller detail

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | dedupe_details      | Screen                        | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Internal Duplicates | Seller Internal Dedupe Result | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Internal Duplicates | Seller Internal Dedupe Result | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Internal Duplicates | Seller Internal Dedupe Result | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Internal Duplicates | Seller Internal Dedupe Result | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | External Duplicates | Seller External Dedupe Result | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | External Duplicates | Seller External Dedupe Result | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | External Duplicates | Seller External Dedupe Result | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | External Duplicates | Seller External Dedupe Result | FBV        | Refinance   |

        #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Strength of Match data in <Screen> should be same for Matches found in Strength of Match for seller dedupe with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user creates an dedupe application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 8
    And user enters seller name
    And user selects seller type
    And user fills seller identification details
    And user adds seller address from existing details
    And user click on check for duplicates of seller details
    And user click on "<dedupe_details>" view details hyperlink
    When user check results of strength of Match on "<Screen>"
    Then Match found in Strength of Match should be same as dedupe strength of "<dedupe_details>" match in Seller detail

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | dedupe_details      | Screen                        | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Internal Duplicates | Seller Internal Dedupe Result | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Internal Duplicates | Seller Internal Dedupe Result | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Internal Duplicates | Seller Internal Dedupe Result | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Internal Duplicates | Seller Internal Dedupe Result | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | External Duplicates | Seller External Dedupe Result | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | External Duplicates | Seller External Dedupe Result | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | External Duplicates | Seller External Dedupe Result | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | External Duplicates | Seller External Dedupe Result | Body       | Refinance   |

     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline: On Seller External Dedupe Result Screen while clicking Global Customer ID hyperlink Personal Details Screen should be Displayed for seller dedupe with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 8
    And user enters seller name
    And user selects seller type
    And user fills seller identification details
    And user adds seller address from existing details
    And user click on check for duplicates of seller details
    And user click on "External Duplicates" view details hyperlink
    When user click Global Customer ID hyperlink in Seller External Dedupe Result
    Then Personal Details Screen should be displayed for Global Customer ID

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   |

   #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Seller External Dedupe Result Screen while clicking Global Customer ID hyperlink Personal Details Screen should be Displayed for seller dedupe with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 8
    And user enters seller name
    And user selects seller type
    And user fills seller identification details
    And user adds seller address from existing details
    And user click on check for duplicates of seller details
    And user click on "External Duplicates" view details hyperlink
    When user click Global Customer ID hyperlink in Seller External Dedupe Result
    Then Personal Details Screen should be displayed for Global Customer ID

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   |

 #Prerequisite- In dedupe master set the parameters for Address Match put the weightage 10 and identification match put weightage 20
     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate seller dedupe run should come on the basis of combination taken in the dedupe master in multi asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user enters seller name
    And user selects seller type
    And user fills seller identification details
    And user adds seller address from existing details
    When user click on check for duplicates of seller details
    And user click on internal duplicates view details hyperlink
    And user hover the Strength of Match
    Then dedupe weightage should show on the basis of the combination taken in the dedupe master for address along with identification

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   |

 #Prerequisite- In dedupe master set the parameters for Address Match put the weightage 10 and identification match put weightage 20
     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate seller dedupe run should come on the basis of combination taken in the dedupe master for Finance Mode as <FinanceMode> in multi asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user enters seller name
    And user selects seller type
    And user fills seller identification details
    And user adds seller address from existing details
    When user click on check for duplicates of seller details
    And user click on internal duplicates view details hyperlink
    And user hover the Strength of Match
    Then dedupe weightage should show on the basis of the combination taken in the dedupe master for address along with identification

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   |


#Prerequisite- In dedupe master set the parameters for Seller name weightage is 20
     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate seller name weightage should come on the basis of combination taken in the dedupe master in multi asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user enters seller name
    And user selects seller type
    And user fills seller identification details
    And user adds seller address from existing details
    When user click on check for duplicates of seller details
    And user click on internal duplicates view details hyperlink
    And user hover the Strength of Match
    Then seller name dedupe weightage should show on the basis of the combination taken in the dedupe master

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   |

    #Prerequisite- In dedupe master set the parameters for Seller name weightage is 20
     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate seller name weightage should come on the basis of combination taken in the dedupe master for Finance Mode as <FinanceMode> in multi asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user enters seller name
    And user selects seller type
    And user fills seller identification details
    And user adds seller address from existing details
    When user click on check for duplicates of seller details
    And user click on internal duplicates view details hyperlink
    And user hover the Strength of Match
    Then seller name dedupe weightage should show on the basis of the combination taken in the dedupe master

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   |
