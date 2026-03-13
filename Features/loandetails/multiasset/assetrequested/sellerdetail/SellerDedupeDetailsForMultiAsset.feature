@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@Conventional
@Islamic  
@ImplementedBy-pallavi.singh
@Release
Feature:Seller Dedupe Details for Asset Requested under Multi Asset

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType : ["IAF","MAL","AGRL","Omni"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline: ACAUTOCAS-14334: On <dedupe_details> view details hyperlink <Screen> displayed for seller dedupe in multi Asset at <ApplicationStage> stage for <ProductType>
    And user creates an dedupe application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
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
      | ProductType   | ApplicationStage   | ApplicantType   | dedupe_details      | Screen                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Internal Duplicates | Seller Internal Dedupe Result |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | External Duplicates | Seller External Dedupe Result |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType : ["IAF","MAL","AGRL","Omni"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline: ACAUTOCAS-14335: While clicking Seller Internal Duplicates view details hyperlink list of field should be displayed for seller dedupe in multi Asset at <ApplicationStage> stage for <ProductType>
    And user creates an dedupe application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
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
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |


  #Prerequisite:Application already punch with application type as Multi Asset
  # ${ProductType : ["IAF","MAL","AGRL","Omni"]}
  # ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  # ${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  #03_CAS-69190
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline: ACAUTOCAS-14336: While clicking Seller External Duplicates view details hyperlink list of field should be displayed for seller dedupe in multi Asset at <ApplicationStage> stage for <ProductType>
    And user creates an dedupe application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
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
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType : ["IAF","MAL","AGRL","Omni"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline: ACAUTOCAS-14337: On Seller Internal Dedupe Result Screen <Action> action should work properly for seller dedupe in multi Asset at <ApplicationStage> stage for <ProductType>
    And user creates an dedupe application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
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
      | ProductType   | ApplicationStage   | ApplicantType   | Action   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maximize |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Minimize |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cancel   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cross    |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType : ["IAF","MAL","AGRL","Omni"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline: ACAUTOCAS-14338: On Seller External Dedupe Result Screen <Action> action should work properly for seller dedupe in multi Asset at <ApplicationStage> stage for <ProductType>
    And user creates an dedupe application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
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
      | ProductType   | ApplicationStage   | ApplicantType   | Action   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maximize |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Minimize |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cancel   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cross    |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType : ["IAF","MAL","AGRL","Omni"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline: ACAUTOCAS-14339: Validating the list of field present in Matched Application Details Screen for seller dedupe in multi Asset at <ApplicationStage> stage for <ProductType>
    And user creates an dedupe application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
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
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |

  #Commented this scenario after discussion with gwt author
  #Prerequisite:Application already punch with application type as Multi Asset
  # { ProductType : ["IAF","CON_VEH","AGRL","Omni"]}
  # ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
#  Scenario Outline:On Seller Internal Dedupe Result Screen while clicking Expand All hyperlink list of field should be visible for seller dedupe in multi Asset at "<ApplicationStage>" stage for "<ProductType>"
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
#    And user navigates to asset requested page
#    And user select asset type as Used Asset
#    And user select Bought From as Individual
#    And user click on check for duplicates
#    And user open view details hyperlink of Seller Internal Duplicates
#    When user Expand All hyperlink in Seller Internal Dedupe Result
#    Then list of field should be visible for every application in Seller Internal Dedupe Result
#      | Current Stage   |
#      | Group ID        |
#      | Group Name      |
#      | Exposure Detail |
#
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |

  #Commented this scenario after discussion with gwt author
  #Prerequisite:Application already punch with application type as Multi Asset
  # { ProductType : ["IAF","CON_VEH","AGRL","Omni"]}
  # ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
#  Scenario Outline:On Seller Internal Dedupe Result Screen while clicking Application ID plus icon hyperlink list of fields should be visible for seller dedupe in multi Asset at "<ApplicationStage>" stage for "<ProductType>"
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
#    And user navigates to asset requested page
#    And user select asset type as Used Asset
#    And user select Bought From as Individual
#    And user click on check for duplicates
#    And user open view details hyperlink of Seller Internal Duplicates
#    When user click Application Id plus icon in Seller Internal Dedupe Result
#    Then list of field should be visible for every application in Seller Internal Dedupe Result
#      | Current Stage   |
#      | Group ID        |
#      | Group Name      |
#      | Exposure Detail |
#
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType : ["IAF","MAL","AGRL","Omni"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline: ACAUTOCAS-14340: On Matched Application Details Screen <Action> action should work properly for seller dedupe in multi Asset at <ApplicationStage> stage for <ProductType>
    And user creates an dedupe application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
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
      | ProductType   | ApplicationStage   | ApplicantType   | Action       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maximize     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Minimize     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cancel       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cross        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Expand All   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Collapse All |

  #Prerequisite:Application already punch with application type as Multi Asset
  #${ ProductType : ["IAF","MAL","AGRL","Omni"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline: ACAUTOCAS-14341: Sorting Seller Internal Dedupe Result with ascending order by <Field_Name> column for seller dedupe in multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
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
      | ProductType   | ApplicationStage   | ApplicantType   | Field_Name             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Application ID         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Strength Of Match      |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo Cust ID            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Customer Name          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | DOB/Incorporation Date |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo CIF Number         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Identification Number  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Channel, Channel Name  |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> | Dealer                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unique ID              |
#      | <ProductType> | ApplicationStage>  | <ApplicantType> | Application Status     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Applicant Type         |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> | Current stage          |

  #Prerequisite:Application already punch with application type as Multi Asset
  # { ProductType : ["IAF","MAL","AGRL","Omni"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline: ACAUTOCAS-14342: Sorting Seller Internal Dedupe Result with descending order by <Field_Name> column for seller dedupe in multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
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
      | ProductType   | ApplicationStage   | ApplicantType   | Field_Name             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Application ID         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Strength Of Match      |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo Cust ID            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Customer Name          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | DOB/Incorporation Date |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neo CIF Number         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Identification Number  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Channel, Channel Name  |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> | Dealer                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unique ID              |
#      | <ProductType> | ApplicationStage>  | <ApplicantType> | Application Status     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Applicant Type         |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> | Current stage          |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ ProductType : ["IAF","MAL","AGRL","Omni"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline: ACAUTOCAS-14343: Validating strength of Match data in <Screen> should be same for Matches found in Strength of Match for seller dedupe in multi Asset at <ApplicationStage> stage for <ProductType>
    And user creates an dedupe application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
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
    Then Match found in Strength of Match should be same as dedupe strength of "<Screen>" match in Seller detail

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | dedupe_details      | Screen                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Internal Duplicates | Seller Internal Dedupe Result |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | External Duplicates | Seller External Dedupe Result |

  #Prerequisite:Application already punch with application type as Multi Asset
  #${ ProductType : ["IAF","MAL","AGRL","Omni"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline: ACAUTOCAS-14344: On Seller External Dedupe Result Screen while clicking Global Customer ID hyperlink Personal Details Screen should be Displayed for seller dedupe in multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
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
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |

  #Prerequisite- In dedupe master set the parameters for Address Match put the weightage 10 and identification match put weightage 20
  # Prerequisite:Application already punch with application type as Multi Asset
  #${ ProductType : ["IAF","MAL","AGRL","Omni"]}
  # ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #${FinanceMode:["Purchase","Refinance"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate seller dedupe should come on the basis of combination taken in the dedupe master in multi asset at <ApplicationStage> stage for <ProductType>
    And user creates an dedupe application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
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
    And user hover the Strength of Match
    Then dedupe weightage should show on the basis of the combination taken in the dedupe master for address along with identification

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |

  #Prerequisite- In dedupe master set the parameters for Seller name weightage is 20
  #Prerequisite:Application already punch with application type as Multi Asset
  #${ ProductType : ["IAF","MAL","AGRL","Omni"]}
  # ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #${FinanceMode:["Purchase","Refinance"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate seller name weightage should come on the basis of combination taken in the dedupe master for multi asset at <ApplicationStage> stage for <ProductType>
    And user creates an dedupe application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
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
    And user hover the Strength of Match
    Then seller name dedupe weightage should show on the basis of the combination taken in the dedupe master

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |
