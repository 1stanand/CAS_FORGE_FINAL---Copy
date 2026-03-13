@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@NotImplemented
@Conventional
@Deferred

Feature:Seller Address Details for Commercial Vehicle and Commercial Equipment under Multi Asset

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

    #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Required field validation for Finance For as <FinanceMode> Additional Address in Seller Address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 0
    And user click on add new seller address
    And user selects seller address type as "Additional Address"
    When user select Required tab in Seller Address
    Then list of field should be present for "Additional Address" in Seller Address as required field
      | Address Type     |
      | Purpose          |
      | Country          |
      | Flat/Plot Number |
      | PinCode          |
      | State            |
      | City             |
      | Village          |
      | Residence Status |
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
  Scenario Outline:Required field validation with Finance For as <FinanceMode> Additional Address in Seller Address for multi asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 0
    And user click on add new seller address
    And user selects seller address type as "Additional Address"
    When user select Required tab in Seller Address
    Then list of field should be present for "Additional Address" in Seller Address as required field
      | Address Type     |
      | Purpose          |
      | Country          |
      | Flat/Plot Number |
      | PinCode          |
      | State            |
      | City             |
      | Village          |
      | Residence Status |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   |


#Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:All Fields validation with Finance For as <FinanceMode> for Additional Address for multi asset in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 0
    And user click on add new seller address
    And user selects seller address type as "Additional Address"
    When user select All Fields in Seller Address
    Then list of field should be present for "Additional Address" in Seller Address for All Field
      | Address Type                 |
      | Purpose                      |
      | Full Address                 |
      | Country                      |
      | Flat/Plot Number             |
      | Address Line 2               |
      | Address Line 3               |
      | PinCode                      |
      | Region                       |
      | State                        |
      | City                         |
      | District                     |
      | Taluka                       |
      | Village                      |
      | Residence Status             |
      | Residence Type               |
      | Duration at this Address     |
      | Duration at this City        |
      | Primary Phone                |
      | Mobile Phone                 |
      | Current Address checkbox     |
      | Is address verified checkbox |
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
  Scenario Outline:All Fields validation with Finance For as <FinanceMode> for Additional Address in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 0
    And user click on add new seller address
    And user selects seller address type as "Additional Address"
    When user select All Fields in Seller Address
    Then list of field should be present for "Additional Address" in Seller Address for All Field
      | Address Type                 |
      | Purpose                      |
      | Full Address                 |
      | Country                      |
      | Flat/Plot Number             |
      | Address Line 2               |
      | Address Line 3               |
      | PinCode                      |
      | Region                       |
      | State                        |
      | City                         |
      | District                     |
      | Taluka                       |
      | Village                      |
      | Residence Status             |
      | Residence Type               |
      | Duration at this Address     |
      | Duration at this City        |
      | Primary Phone                |
      | Mobile Phone                 |
      | Current Address checkbox     |
      | Is address verified checkbox |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   |


#Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Field type validation of field with Finance For as <FinanceMode> for Additional Address in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 0
    And user click on add new seller address
    When user selects seller address type as "Additional Address"
    Then field should present with list of field type in seller Address for "Additional Address"
      | Field                         | Field_Type     |
      | Address Type                  | dropdown       |
      | Purpose                       | dropdown       |
      | Full Address                  | input          |
      | Country                       | dropdown       |
      | Flat/Plot Number              | input          |
      | Address Line 2                | input          |
      | Address Line 3                | input          |
      | PinCode                       | list of values |
      | Region                        | dropdown       |
      | State                         | dropdown       |
      | City                          | dropdown       |
      | District                      | dropdown       |
      | Taluka                        | list of values |
      | Village                       | list of values |
      | Residence Status              | dropdown       |
      | Residence Type                | dropdown       |
      | Duration at this Address from | input          |
      | Duration at this Address to   | input          |
      | Duration at this City from    | input          |
      | Duration at this City to      | input          |
      | Primary Phone                 | input          |
      | Mobile Phone                  | input          |
      | Current Address checkbox      | checkbox       |
      | Is address verified checkbox  | checkbox       |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   |

    #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Field type validation  with Finance For as <FinanceMode> for Additional Address in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 0
    And user click on add new seller address
    When user selects seller address type as "Additional Address"
    Then field should present with list of field type in seller Address for "Additional Address"
      | Field                         | Field_Type     |
      | Address Type                  | dropdown       |
      | Purpose                       | dropdown       |
      | Full Address                  | input          |
      | Country                       | dropdown       |
      | Flat/Plot Number              | input          |
      | Address Line 2                | input          |
      | Address Line 3                | input          |
      | PinCode                       | list of values |
      | Region                        | dropdown       |
      | State                         | dropdown       |
      | City                          | dropdown       |
      | District                      | dropdown       |
      | Taluka                        | list of values |
      | Village                       | list of values |
      | Residence Status              | dropdown       |
      | Residence Type                | dropdown       |
      | Duration at this Address from | input          |
      | Duration at this Address to   | input          |
      | Duration at this City from    | input          |
      | Duration at this City to      | input          |
      | Primary Phone                 | input          |
      | Mobile Phone                  | input          |
      | Current Address checkbox      | checkbox       |
      | Is address verified checkbox  | checkbox       |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   |

#Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Required field validation with Finance For as <FinanceMode> for Alternate Business Address in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 1
    And user click on add new seller address
    And user selects seller address type as "Alternate Business Address"
    When user select Required tab in Seller Address
    Then list of field should be present for "Alternate Business Address" in Seller Address as required field
      | Address Type     |
      | Country          |
      | Flat/Plot Number |
      | PinCode          |
      | State            |
      | City             |
      | Village          |
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
  Scenario Outline:Required field validation with Finance For as <FinanceMode> for Alternate Business Address in Seller Address for multi asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 1
    And user click on add new seller address
    And user selects seller address type as "Alternate Business Address"
    When user select Required tab in Seller Address
    Then list of field should be present for "Alternate Business Address" in Seller Address as required field
      | Address Type     |
      | Country          |
      | Flat/Plot Number |
      | PinCode          |
      | State            |
      | City             |
      | Village          |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   |


#Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:All Fields validation with Finance For as <FinanceMode> for Alternate Business Address in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 1
    And user click on add new seller address
    And user selects seller address type as "Alternate Business Address"
    When user select All Fields in Seller Address
    Then list of field should be present for "Alternate Business Address" in Seller Address for All Field
      | Address Type                 |
      | Full Address                 |
      | Country                      |
      | Flat/Plot Number             |
      | Address Line 2               |
      | Address Line 3               |
      | PinCode                      |
      | Region                       |
      | State                        |
      | City                         |
      | District                     |
      | Taluka                       |
      | Village                      |
      | Duration at this Address     |
      | Duration at this City        |
      | Primary Phone                |
      | Mobile Phone                 |
      | Current Address checkbox     |
      | Is address verified checkbox |
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
  Scenario Outline:All Fields validation with Finance For as <FinanceMode> for Alternate Business Address in Seller Address for multi asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 1
    And user click on add new seller address
    And user selects seller address type as "Alternate Business Address"
    When user select All Fields in Seller Address
    Then list of field should be present for "Alternate Business Address" in Seller Address for All Field
      | Address Type                 |
      | Full Address                 |
      | Country                      |
      | Flat/Plot Number             |
      | Address Line 2               |
      | Address Line 3               |
      | PinCode                      |
      | Region                       |
      | State                        |
      | City                         |
      | District                     |
      | Taluka                       |
      | Village                      |
      | Duration at this Address     |
      | Duration at this City        |
      | Primary Phone                |
      | Mobile Phone                 |
      | Current Address checkbox     |
      | Is address verified checkbox |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   |

#Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Field type validation field with Finance For as <FinanceMode> for Alternate Business Address in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 1
    And user click on add new seller address
    When user selects seller address type as "Alternate Business Address"
    Then field should present with list of field type in seller Address for "Alternate Business Address"
      | Field                         | Field_Type     |
      | Address Type                  | dropdown       |
      | Full Address                  | input          |
      | Country                       | dropdown       |
      | Flat/Plot Number              | input          |
      | Address Line 2                | input          |
      | Address Line 3                | input          |
      | PinCode                       | list of values |
      | Region                        | dropdown       |
      | State                         | dropdown       |
      | City                          | dropdown       |
      | District                      | dropdown       |
      | Taluka                        | list of values |
      | Village                       | list of values |
      | Duration at this Address from | input          |
      | Duration at this Address to   | input          |
      | Duration at this City from    | input          |
      | Duration at this City to      | input          |
      | Primary Phone                 | input          |
      | Mobile Phone                  | input          |
      | Current Address checkbox      | checkbox       |
      | Is address verified checkbox  | checkbox       |
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
  Scenario Outline:Field type validation field with Finance For as <FinanceMode> for Alternate Business Address for multi asset in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 1
    And user click on add new seller address
    When user selects seller address type as "Alternate Business Address"
    Then field should present with list of field type in seller Address for "Alternate Business Address"
      | Field                         | Field_Type     |
      | Address Type                  | dropdown       |
      | Full Address                  | input          |
      | Country                       | dropdown       |
      | Flat/Plot Number              | input          |
      | Address Line 2                | input          |
      | Address Line 3                | input          |
      | PinCode                       | list of values |
      | Region                        | dropdown       |
      | State                         | dropdown       |
      | City                          | dropdown       |
      | District                      | dropdown       |
      | Taluka                        | list of values |
      | Village                       | list of values |
      | Duration at this Address from | input          |
      | Duration at this Address to   | input          |
      | Duration at this City from    | input          |
      | Duration at this City to      | input          |
      | Primary Phone                 | input          |
      | Mobile Phone                  | input          |
      | Current Address checkbox      | checkbox       |
      | Is address verified checkbox  | checkbox       |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   |

#Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Required field validation with Finance For as <FinanceMode> for Office Business Address in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 2
    And user click on add new seller address
    And user selects seller address type as "Office Business Address"
    When user select Required tab in Seller Address
    Then list of field should be present for "Office Business Address" in Seller Address as required field
      | Address Type     |
      | Country          |
      | Flat/Plot Number |
      | PinCode          |
      | State            |
      | City             |
      | Village          |
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
  Scenario Outline:Required field validation with Finance For as <FinanceMode> for Office Business Address in Seller Address for multi asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 2
    And user click on add new seller address
    And user selects seller address type as "Office Business Address"
    When user select Required tab in Seller Address
    Then list of field should be present for "Office Business Address" in Seller Address as required field
      | Address Type     |
      | Country          |
      | Flat/Plot Number |
      | PinCode          |
      | State            |
      | City             |
      | Village          |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   |


#Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Fields validation in All Fields with Finance For as <FinanceMode> for Office Business Address in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 2
    And user click on add new seller address
    And user selects seller address type as "Office Business Address"
    When user select All Fields in Seller Address
    Then list of field should be present for "Office Business Address" in Seller Address for All Field
      | Address Type                 |
      | Full Address                 |
      | Country                      |
      | Flat/Plot Number             |
      | Address Line 2               |
      | Address Line 3               |
      | PinCode                      |
      | Region                       |
      | State                        |
      | City                         |
      | District                     |
      | Taluka                       |
      | Village                      |
      | Duration at this Address     |
      | Duration at this City        |
      | Primary Phone                |
      | Mobile Phone                 |
      | Current Address checkbox     |
      | Is address verified checkbox |
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
  Scenario Outline:Fields validation in All Fields with Finance For as <FinanceMode> for Office Business Address for multi asset in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 2
    And user click on add new seller address
    And user selects seller address type as "Office Business Address"
    When user select All Fields in Seller Address
    Then list of field should be present for "Office Business Address" in Seller Address for All Field
      | Address Type                 |
      | Full Address                 |
      | Country                      |
      | Flat/Plot Number             |
      | Address Line 2               |
      | Address Line 3               |
      | PinCode                      |
      | Region                       |
      | State                        |
      | City                         |
      | District                     |
      | Taluka                       |
      | Village                      |
      | Duration at this Address     |
      | Duration at this City        |
      | Primary Phone                |
      | Mobile Phone                 |
      | Current Address checkbox     |
      | Is address verified checkbox |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   |


#Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Field type validation with Finance For as <FinanceMode> for Office Business Address in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 2
    And user click on add new seller address
    When user selects seller address type as "Office Business Address"
    Then list of field should be present for in seller Address for "Office Business Address"
      | Field                         | Field_Type     |
      | Address Type                  | dropdown       |
      | Full Address                  | input          |
      | Country                       | dropdown       |
      | Flat/Plot Number              | input          |
      | Address Line 2                | input          |
      | Address Line 3                | input          |
      | PinCode                       | list of values |
      | Region                        | dropdown       |
      | State                         | dropdown       |
      | City                          | dropdown       |
      | District                      | dropdown       |
      | Taluka                        | list of values |
      | Village                       | list of values |
      | Duration at this Address from | input          |
      | Duration at this Address to   | input          |
      | Duration at this City from    | input          |
      | Duration at this City to      | input          |
      | Primary Phone                 | input          |
      | Mobile Phone                  | input          |
      | Current Address checkbox      | checkbox       |
      | Is address verified checkbox  | checkbox       |
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
  Scenario Outline:Field type validation with Finance For as <FinanceMode> for Office Business Address for multi asset in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 2
    And user click on add new seller address
    When user selects seller address type as "Office Business Address"
    Then list of field should be present for in seller Address for "Office Business Address"
      | Field                         | Field_Type     |
      | Address Type                  | dropdown       |
      | Full Address                  | input          |
      | Country                       | dropdown       |
      | Flat/Plot Number              | input          |
      | Address Line 2                | input          |
      | Address Line 3                | input          |
      | PinCode                       | list of values |
      | Region                        | dropdown       |
      | State                         | dropdown       |
      | City                          | dropdown       |
      | District                      | dropdown       |
      | Taluka                        | list of values |
      | Village                       | list of values |
      | Duration at this Address from | input          |
      | Duration at this Address to   | input          |
      | Duration at this City from    | input          |
      | Duration at this City to      | input          |
      | Primary Phone                 | input          |
      | Mobile Phone                  | input          |
      | Current Address checkbox      | checkbox       |
      | Is address verified checkbox  | checkbox       |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   |



#Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Required field validation with Finance For as <FinanceMode> for Permanent Address in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 3
    And user click on add new seller address
    And user selects seller address type as "Permanent Address"
    When user select Required tab in Seller Address
    Then list of field should be present for "Permanent Address" in Seller Address as required field
      | Address Type     |
      | Country          |
      | Flat/Plot Number |
      | PinCode          |
      | State            |
      | City             |
      | Village          |
      | Residence Status |
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
  Scenario Outline:Required field validation with Finance For as <FinanceMode> for Permanent Address in Seller Address for multi asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 3
    And user click on add new seller address
    And user selects seller address type as "Permanent Address"
    When user select Required tab in Seller Address
    Then list of field should be present for "Permanent Address" in Seller Address as required field
      | Address Type     |
      | Country          |
      | Flat/Plot Number |
      | PinCode          |
      | State            |
      | City             |
      | Village          |
      | Residence Status |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   |


 #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Fields validation in All Fields with Finance For as <FinanceMode> for Permanent Address in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 3
    And user selects seller address type as "Permanent Address"
    When user select All Fields in Seller Address
    Then list of field should be present for "Permanent Address" in Seller Address for All Field
      | Address Type                 |
      | Full Address                 |
      | Country                      |
      | Flat/Plot Number             |
      | Address Line 2               |
      | Address Line 3               |
      | PinCode                      |
      | Region                       |
      | State                        |
      | City                         |
      | District                     |
      | Taluka                       |
      | Village                      |
      | Residence Status             |
      | Residence Type               |
      | Address In Document          |
      | Duration at this Address     |
      | Duration at this City        |
      | Primary Phone                |
      | Mobile Phone                 |
      | Current Address checkbox     |
      | Is address verified checkbox |
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
  Scenario Outline:Fields validation in All Fields with Finance For as <FinanceMode> for Permanent Address in Seller Address for multi asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 3
    And user selects seller address type as "Permanent Address"
    When user select All Fields in Seller Address
    Then list of field should be present for "Permanent Address" in Seller Address for All Field
      | Address Type                 |
      | Full Address                 |
      | Country                      |
      | Flat/Plot Number             |
      | Address Line 2               |
      | Address Line 3               |
      | PinCode                      |
      | Region                       |
      | State                        |
      | City                         |
      | District                     |
      | Taluka                       |
      | Village                      |
      | Residence Status             |
      | Residence Type               |
      | Address In Document          |
      | Duration at this Address     |
      | Duration at this City        |
      | Primary Phone                |
      | Mobile Phone                 |
      | Current Address checkbox     |
      | Is address verified checkbox |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   |


 #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Field type validation field with Finance For as <FinanceMode> for Permanent Address in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 3
    And user click on add new seller address
    When user selects seller address type as "Permanent Address"
    Then list of field should be present in seller Address for "Permanent Address"
      | Field                         | Field_Type     |
      | Address Type                  | dropdown       |
      | Full Address                  | input          |
      | Country                       | dropdown       |
      | Flat/Plot Number              | input          |
      | Address Line 2                | input          |
      | Address Line 3                | input          |
      | PinCode                       | list of values |
      | Region                        | dropdown       |
      | State                         | dropdown       |
      | City                          | dropdown       |
      | District                      | dropdown       |
      | Taluka                        | list of values |
      | Village                       | list of values |
      | Residence Status              | dropdown       |
      | Residence Type                | dropdown       |
      | Address In Document           | dropdown       |
      | Duration at this Address from | input          |
      | Duration at this Address to   | input          |
      | Duration at this City from    | input          |
      | Duration at this City to      | input          |
      | Primary Phone                 | input          |
      | Mobile Phone                  | input          |
      | Current Address checkbox      | checkbox       |
      | Is address verified checkbox  | checkbox       |
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
  Scenario Outline:Field type validation field with Finance For as <FinanceMode> for Permanent Address in Seller Address for multi asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 3
    And user click on add new seller address
    When user selects seller address type as "Permanent Address"
    Then list of field should be present in seller Address for "Permanent Address"
      | Field                         | Field_Type     |
      | Address Type                  | dropdown       |
      | Full Address                  | input          |
      | Country                       | dropdown       |
      | Flat/Plot Number              | input          |
      | Address Line 2                | input          |
      | Address Line 3                | input          |
      | PinCode                       | list of values |
      | Region                        | dropdown       |
      | State                         | dropdown       |
      | City                          | dropdown       |
      | District                      | dropdown       |
      | Taluka                        | list of values |
      | Village                       | list of values |
      | Residence Status              | dropdown       |
      | Residence Type                | dropdown       |
      | Address In Document           | dropdown       |
      | Duration at this Address from | input          |
      | Duration at this Address to   | input          |
      | Duration at this City from    | input          |
      | Duration at this City to      | input          |
      | Primary Phone                 | input          |
      | Mobile Phone                  | input          |
      | Current Address checkbox      | checkbox       |
      | Is address verified checkbox  | checkbox       |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   |

#Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Required field validation with Finance For as <FinanceMode> for Residential Address in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 4
    And user click on add new seller address
    And user selects seller address type as "Residential Address"
    When user select Required tab in Seller Address
    Then list of field should be present for "Residential Address" in Seller Address as required field
      | Address Type     |
      | Country          |
      | Flat/Plot Number |
      | PinCode          |
      | State            |
      | City             |
      | Village          |
      | Residence Status |
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
  Scenario Outline:Required field validation with Finance For as <FinanceMode> for Residential Address in Seller Address for multi asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 4
    And user click on add new seller address
    And user selects seller address type as "Residential Address"
    When user select Required tab in Seller Address
    Then list of field should be present for "Residential Address" in Seller Address as required field
      | Address Type     |
      | Country          |
      | Flat/Plot Number |
      | PinCode          |
      | State            |
      | City             |
      | Village          |
      | Residence Status |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   |

  #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Fields validation in All Fields with Finance For as <FinanceMode> for Residential Address in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 4
    And user click on add new seller address
    And user selects seller address type as "Residential Address"
    When user select All Fields in Seller Address
    Then list of field should be present for "Residential Address" in Seller Address for All Field
      | Address Type                 |
      | Full Address                 |
      | Country                      |
      | Flat/Plot Number             |
      | Address Line 2               |
      | Address Line 3               |
      | PinCode                      |
      | Region                       |
      | State                        |
      | City                         |
      | District                     |
      | Taluka                       |
      | Village                      |
      | Residence Status             |
      | Residence Type               |
      | Address In Document          |
      | Duration at this Address     |
      | Duration at this City        |
      | Primary Phone                |
      | Mobile Phone                 |
      | Current Address checkbox     |
      | Is address verified checkbox |
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
  Scenario Outline:Fields validation in All Fields with Finance For as <FinanceMode> for Residential Address in Seller Address for multi asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 4
    And user click on add new seller address
    And user selects seller address type as "Residential Address"
    When user select All Fields in Seller Address
    Then list of field should be present for "Residential Address" in Seller Address for All Field
      | Address Type                 |
      | Full Address                 |
      | Country                      |
      | Flat/Plot Number             |
      | Address Line 2               |
      | Address Line 3               |
      | PinCode                      |
      | Region                       |
      | State                        |
      | City                         |
      | District                     |
      | Taluka                       |
      | Village                      |
      | Residence Status             |
      | Residence Type               |
      | Address In Document          |
      | Duration at this Address     |
      | Duration at this City        |
      | Primary Phone                |
      | Mobile Phone                 |
      | Current Address checkbox     |
      | Is address verified checkbox |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   |


 #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Field type validation of field with Finance For as <FinanceMode> for Residential Address in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 4
    And user click on add new seller address
    When user selects seller address type as "Residential Address"
    Then list of field should be present in seller Address for "Residential Address"
      | Field                         | Field_Type     |
      | Address Type                  | dropdown       |
      | Full Address                  | input          |
      | Country                       | dropdown       |
      | Flat/Plot Number              | input          |
      | Address Line 2                | input          |
      | Address Line 3                | input          |
      | PinCode                       | list of values |
      | Region                        | dropdown       |
      | State                         | dropdown       |
      | City                          | dropdown       |
      | District                      | dropdown       |
      | Taluka                        | list of values |
      | Village                       | list of values |
      | Residence Status              | dropdown       |
      | Residence Type                | dropdown       |
      | Address In Document           | dropdown       |
      | Duration at this Address from | input          |
      | Duration at this Address to   | input          |
      | Duration at this City from    | input          |
      | Duration at this City to      | input          |
      | Primary Phone                 | input          |
      | Mobile Phone                  | input          |
      | Current Address checkbox      | checkbox       |
      | Is address verified checkbox  | checkbox       |
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
  Scenario Outline:Field type validation of field with Finance For as <FinanceMode> for Residential Address in Seller Address for multi asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 4
    And user click on add new seller address
    When user selects seller address type as "Residential Address"
    Then list of field should be present in seller Address for "Residential Address"
      | Field                         | Field_Type     |
      | Address Type                  | dropdown       |
      | Full Address                  | input          |
      | Country                       | dropdown       |
      | Flat/Plot Number              | input          |
      | Address Line 2                | input          |
      | Address Line 3                | input          |
      | PinCode                       | list of values |
      | Region                        | dropdown       |
      | State                         | dropdown       |
      | City                          | dropdown       |
      | District                      | dropdown       |
      | Taluka                        | list of values |
      | Village                       | list of values |
      | Residence Status              | dropdown       |
      | Residence Type                | dropdown       |
      | Address In Document           | dropdown       |
      | Duration at this Address from | input          |
      | Duration at this Address to   | input          |
      | Duration at this City from    | input          |
      | Duration at this City to      | input          |
      | Primary Phone                 | input          |
      | Mobile Phone                  | input          |
      | Current Address checkbox      | checkbox       |
      | Is address verified checkbox  | checkbox       |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   |

    #$ { ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
# ${ApplicationStage:["Lead Details",DDE]}
#${ApplicantType:["indiv","nonindiv"]}
#  Scenario Outline:Copy address functionality in seller address at <ApplicationStage> in <ProductType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
#    And user fills saves sourcing details with application type as Multiple Asset
#    And user navigates to asset requested page
#    And user select asset type as Used Asset
#    And user select Bought From as Individual
#    And user open seller address accordion
#    When user add "<Address>" in seller address
#    And user copy from an existing "<Address>" to add another "<Copied_Address>"
#    And user selects address type as "<Copied_Address>" in organization Address
#    And user click on "<Button>"
#    Then "<Copied_Address>" "<Throw_notThrow>" message
#    Examples:
#      | ApplicationStage   | ProductType   | Address                    | Copied_Address             | Button | Throw_notThrow      |
#      | <ApplicationStage> | <ProductType> | Alternate Business Address | Additional Address         | Done   | throw an error      |
#      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Additional Address         | Done   | throw an error      |
#      | <ApplicationStage> | <ProductType> | Additional Address         | Alternate Business Address | Done   | not throw any error |
#      | <ApplicationStage> | <ProductType> | Additional Address         | Office/ Business Address   | Done   | not throw any error |

 #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:<Field> field validation for <Address_City> in <Address_Type> with Finance For as <FinanceMode> for seller address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <AssetDetails_sellerDetails_rowNum>
    And user open seller address accordion
    And user click on add new seller address
    When user selects seller address type as "<Address_Type>"
    Then "<Field>" field for "<Address_City>" should be display as Calendar field in seller address
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | Field     | Address_City             | Address_Type               | AssetDetails_sellerDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | From Date | Duration at this Address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | From Date | Duration at this Address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | From Date | Duration at this Address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | From Date | Duration at this Address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | To Date   | Duration at this Address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | To Date   | Duration at this Address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | To Date   | Duration at this Address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | To Date   | Duration at this Address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | From Date | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | From Date | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | From Date | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | From Date | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | To Date   | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | To Date   | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | To Date   | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | To Date   | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | From Date | Duration at this Address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | From Date | Duration at this Address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | From Date | Duration at this Address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | From Date | Duration at this Address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | To Date   | Duration at this Address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | To Date   | Duration at this Address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | To Date   | Duration at this Address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | To Date   | Duration at this Address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | From Date | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | From Date | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | From Date | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | From Date | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | To Date   | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | To Date   | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | To Date   | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | To Date   | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | From Date | Duration at this Address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | From Date | Duration at this Address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | From Date | Duration at this Address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | From Date | Duration at this Address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | To Date   | Duration at this Address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | To Date   | Duration at this Address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | To Date   | Duration at this Address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | To Date   | Duration at this Address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | From Date | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | From Date | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | From Date | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | From Date | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | To Date   | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | To Date   | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | To Date   | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | To Date   | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | From Date | Duration at this Address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | From Date | Duration at this Address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | From Date | Duration at this Address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | From Date | Duration at this Address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | To Date   | Duration at this Address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | To Date   | Duration at this Address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | To Date   | Duration at this Address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | To Date   | Duration at this Address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | From Date | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | From Date | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | From Date | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | From Date | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | To Date   | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | To Date   | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | To Date   | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | To Date   | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | From Date | Duration at this Address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | From Date | Duration at this Address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | From Date | Duration at this Address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | From Date | Duration at this Address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | To Date   | Duration at this Address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | To Date   | Duration at this Address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | To Date   | Duration at this Address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | To Date   | Duration at this Address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | From Date | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | From Date | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | From Date | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | From Date | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | To Date   | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | To Date   | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | To Date   | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | To Date   | Duration at this City    | Residential Address        | 4                                 |

    #Prerequisite:Application already punch with application type as Multi Asset
## ${ ProductType : ["CV"]}
## ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
##${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:<Field> field validation for <Address_City> in <Address_Type> with Finance For as <FinanceMode> for seller address for multi asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <AssetDetails_sellerDetails_rowNum>
    And user open seller address accordion
    And user click on add new seller address
    When user selects seller address type as "<Address_Type>"
    Then "<Field>" field for "<Address_City>" should be display as Calendar field in seller address
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | Field     | Address_City             | Address_Type               | AssetDetails_sellerDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | From Date | Duration at this Address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | From Date | Duration at this Address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | From Date | Duration at this Address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | From Date | Duration at this Address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | To Date   | Duration at this Address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | To Date   | Duration at this Address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | To Date   | Duration at this Address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | To Date   | Duration at this Address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | From Date | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | From Date | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | From Date | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | From Date | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | To Date   | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | To Date   | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | To Date   | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | To Date   | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | From Date | Duration at this Address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | From Date | Duration at this Address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | From Date | Duration at this Address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | From Date | Duration at this Address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | To Date   | Duration at this Address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | To Date   | Duration at this Address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | To Date   | Duration at this Address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | To Date   | Duration at this Address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | From Date | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | From Date | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | From Date | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | From Date | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | To Date   | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | To Date   | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | To Date   | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | To Date   | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | From Date | Duration at this Address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | From Date | Duration at this Address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | From Date | Duration at this Address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | From Date | Duration at this Address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | To Date   | Duration at this Address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | To Date   | Duration at this Address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | To Date   | Duration at this Address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | To Date   | Duration at this Address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | From Date | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | From Date | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | From Date | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | From Date | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | To Date   | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | To Date   | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | To Date   | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | To Date   | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | From Date | Duration at this Address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | From Date | Duration at this Address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | From Date | Duration at this Address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | From Date | Duration at this Address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | To Date   | Duration at this Address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | To Date   | Duration at this Address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | To Date   | Duration at this Address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | To Date   | Duration at this Address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | From Date | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | From Date | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | From Date | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | From Date | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | To Date   | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | To Date   | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | To Date   | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | To Date   | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | From Date | Duration at this Address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | From Date | Duration at this Address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | From Date | Duration at this Address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | From Date | Duration at this Address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | To Date   | Duration at this Address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | To Date   | Duration at this Address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | To Date   | Duration at this Address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | To Date   | Duration at this Address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | From Date | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | From Date | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | From Date | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | From Date | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | To Date   | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | To Date   | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | To Date   | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | To Date   | Duration at this City    | Residential Address        | 4                                 |


 #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:<Field> validation for <Address_City> in <Address_Type> with Finance For as <FinanceMode> for seller address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <AssetDetails_sellerDetails_rowNum>
    And user open seller address accordion
    And user click on add new seller address
    And user selects seller address type as "<Address_Type>"
    And user fills To Date field for "<Address_City>" in seller address
    When user fills From Date field for "<Address_City>" in seller address
    Then "<Field>" field should be display in two separate block for "<Address_City>" in seller address
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | Field           | Address_City             | Address_Type               | AssetDetails_sellerDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this City    | Residential Address        | 4                                 |

    #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:<Field> validation for <Address_City> in <Address_Type> with Finance For as <FinanceMode> for seller address in multi asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <AssetDetails_sellerDetails_rowNum>
    And user open seller address accordion
    And user click on add new seller address
    And user selects seller address type as "<Address_Type>"
    And user fills To Date field for "<Address_City>" in seller address
    When user fills From Date field for "<Address_City>" in seller address
    Then "<Field>" field should be display in two separate block for "<Address_City>" in seller address
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | Field           | Address_City             | Address_Type               | AssetDetails_sellerDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at this address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at this address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at this address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at this address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at this address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at this address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at this address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at this address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at this address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at this address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at this address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at this address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at this address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at this address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at this address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at this address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at this address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at this address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at this address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at this address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at this City    | Residential Address        | 4                                 |


#Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:<Field> calculation for <Address_City> in <Address_Type> with Finance For as <FinanceMode> for seller address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <AssetDetails_sellerDetails_rowNum>
    And user open seller address accordion
    And user click on add new seller address
    And user selects seller address type as "<Address_Type>"
    When user fills From Date field for "<Address_City>" in seller address
    And user fills To Date field for "<Address_City>" in seller address
    Then "<Field>" field should be calculated correctly for "<Address_City>" in seller details
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | Field           | Address_City             | Address_Type               | AssetDetails_sellerDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this address | Permanent  Address         | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this address | Permanent  Address         | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this address | Permanent  Address         | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this address | Permanent  Address         | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this City    | Permanent  Address         | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this City    | Permanent  Address         | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this City    | Permanent  Address         | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this City    | Permanent  Address         | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this City    | Residential Address        | 4                                 |

    #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:<Field> calculation for <Address_City> in <Address_Type> with Finance For as <FinanceMode> for seller address in multi asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <AssetDetails_sellerDetails_rowNum>
    And user open seller address accordion
    And user click on add new seller address
    And user selects seller address type as "<Address_Type>"
    When user fills From Date field for "<Address_City>" in seller address
    And user fills To Date field for "<Address_City>" in seller address
    Then "<Field>" field should be calculated correctly for "<Address_City>" in seller details
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | Field           | Address_City             | Address_Type               | AssetDetails_sellerDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at this address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at this address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at this address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at this address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at this address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at this address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at this address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at this address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at this address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at this address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at this address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at this address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at this address | Permanent  Address         | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at this address | Permanent  Address         | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at this address | Permanent  Address         | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at this address | Permanent  Address         | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at this City    | Permanent  Address         | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at this City    | Permanent  Address         | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at this City    | Permanent  Address         | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at this City    | Permanent  Address         | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at this address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at this address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at this address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at this address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at this City    | Residential Address        | 4                                 |


#Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:<Field> calculation for <Address_City> in <Address_Type> with Finance For as <FinanceMode> if Current Address checkbox for seller address is checked at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <AssetDetails_sellerDetails_rowNum>
    And user open seller address accordion
    And user click on add new seller address
    And user selects seller address type as "<Address_Type>"
    And user checked Current Address checkbox in seller address
    When user fills From Date field for "<Address_City>" in seller address
    Then "<Field>" field should be calculated correctly as per current system date for "<Address_City>" in seller address
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | Field           | Address_City             | Address_Type               | AssetDetails_sellerDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this City    | Residential Address        | 4                                 |

    #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:<Field> calculation for <Address_City> in <Address_Type> with Finance For as <FinanceMode> if Current Address checkbox for seller address is checked for multi asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <AssetDetails_sellerDetails_rowNum>
    And user open seller address accordion
    And user click on add new seller address
    And user selects seller address type as "<Address_Type>"
    And user checked Current Address checkbox in seller address
    When user fills From Date field for "<Address_City>" in seller address
    Then "<Field>" field should be calculated correctly as per current system date for "<Address_City>" in seller address
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | Field           | Address_City             | Address_Type               | AssetDetails_sellerDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at this address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at this address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at this address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at this address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at this address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at this address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at this address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at this address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at this address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at this address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at this address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at this address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at this address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at this address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at this address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at this address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at this address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at this address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at this address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at this address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at this City    | Residential Address        | 4                                 |

#Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Adding duplicate <Address> with Finance For as <FinanceMode> in seller address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <AssetDetails_sellerDetails_rowNum>
    And user open seller address accordion
    When user add "<Address>" in seller address
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <AssetDetails_sellerDetails_rowNum2>
    And user wants to add same "<Address>" which is added already in seller address
    Then "<Address>" should "<Throw_notThrow>" message in seller address
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | Address                                          | Throw_notThrow                                   | AssetDetails_sellerDetails_rowNum | AssetDetails_sellerDetails_rowNum2 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Alternate Business Address                       | throw error message-Address Type already present | 1                                 | 1                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Alternate Business Address                       | throw error message-Address Type already present | 1                                 | 1                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Alternate Business Address                       | throw error message-Address Type already present | 1                                 | 1                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Alternate Business Address                       | throw error message-Address Type already present | 1                                 | 1                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Additional Address with purpose combination      | throw error message-Address Type already present | 0                                 | 5                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Additional Address with purpose combination      | throw error message-Address Type already present | 0                                 | 5                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Additional Address with purpose combination      | throw error message-Address Type already present | 0                                 | 5                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Additional Address with purpose combination      | throw error message-Address Type already present | 0                                 | 5                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Additional Address with same purpose combination | throw error message-Address Type already present | 0                                 | 0                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Additional Address with same purpose combination | throw error message-Address Type already present | 0                                 | 0                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Additional Address with same purpose combination | throw error message-Address Type already present | 0                                 | 0                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Additional Address with same purpose combination | throw error message-Address Type already present | 0                                 | 0                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Office/ Business Address                         | throw error message-Address Type already present | 2                                 | 2                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Office/ Business Address                         | throw error message-Address Type already present | 2                                 | 2                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Office/ Business Address                         | throw error message-Address Type already present | 2                                 | 2                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Office/ Business Address                         | throw error message-Address Type already present | 2                                 | 2                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Permanent Address                                | throw error message-Address Type already present | 3                                 | 3                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Permanent Address                                | throw error message-Address Type already present | 3                                 | 3                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Permanent Address                                | throw error message-Address Type already present | 3                                 | 3                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Permanent Address                                | throw error message-Address Type already present | 3                                 | 3                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Residential Address                              | throw error message-Address Type already present | 4                                 | 4                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Residential Address                              | throw error message-Address Type already present | 4                                 | 4                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Residential Address                              | throw error message-Address Type already present | 4                                 | 4                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Residential Address                              | throw error message-Address Type already present | 4                                 | 4                                  |

    #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Adding duplicate <Address> with Finance For as <FinanceMode> in seller address for multi asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <AssetDetails_sellerDetails_rowNum>
    And user open seller address accordion
    When user add "<Address>" in seller address
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <AssetDetails_sellerDetails_rowNum2>
    And user wants to add same "<Address>" which is added already in seller address
    Then "<Address>" should "<Throw_notThrow>" message in seller address
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | Address                                          | Throw_notThrow                                   | AssetDetails_sellerDetails_rowNum | AssetDetails_sellerDetails_rowNum2 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Alternate Business Address                       | throw error message-Address Type already present | 1                                 | 1                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Alternate Business Address                       | throw error message-Address Type already present | 1                                 | 1                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Alternate Business Address                       | throw error message-Address Type already present | 1                                 | 1                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Alternate Business Address                       | throw error message-Address Type already present | 1                                 | 1                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Additional Address with purpose combination      | throw error message-Address Type already present | 0                                 | 5                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Additional Address with purpose combination      | throw error message-Address Type already present | 0                                 | 5                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Additional Address with purpose combination      | throw error message-Address Type already present | 0                                 | 5                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Additional Address with purpose combination      | throw error message-Address Type already present | 0                                 | 5                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Additional Address with same purpose combination | throw error message-Address Type already present | 0                                 | 0                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Additional Address with same purpose combination | throw error message-Address Type already present | 0                                 | 0                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Additional Address with same purpose combination | throw error message-Address Type already present | 0                                 | 0                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Additional Address with same purpose combination | throw error message-Address Type already present | 0                                 | 0                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Office/ Business Address                         | throw error message-Address Type already present | 2                                 | 2                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Office/ Business Address                         | throw error message-Address Type already present | 2                                 | 2                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Office/ Business Address                         | throw error message-Address Type already present | 2                                 | 2                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Office/ Business Address                         | throw error message-Address Type already present | 2                                 | 2                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Permanent Address                                | throw error message-Address Type already present | 3                                 | 3                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Permanent Address                                | throw error message-Address Type already present | 3                                 | 3                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Permanent Address                                | throw error message-Address Type already present | 3                                 | 3                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Permanent Address                                | throw error message-Address Type already present | 3                                 | 3                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Residential Address                              | throw error message-Address Type already present | 4                                 | 4                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Residential Address                              | throw error message-Address Type already present | 4                                 | 4                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Residential Address                              | throw error message-Address Type already present | 4                                 | 4                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Residential Address                              | throw error message-Address Type already present | 4                                 | 4                                  |

 #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Edit the added <Address> with Finance For as <FinanceMode> in seller address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <AssetDetails_sellerDetails_rowNum>
    And user open seller address accordion
    When user add "<Address>" in seller address
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 6
    And user edits "<Address>" details in seller address
    Then "<Address>" should be edited successfully in seller address
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | Address                    | AssetDetails_sellerDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Residential Address        | 4                                 |

    #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Edit the added <Address> with Finance For as <FinanceMode> in seller address for multi asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <AssetDetails_sellerDetails_rowNum>
    And user open seller address accordion
    When user add "<Address>" in seller address
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 6
    And user edits "<Address>" details in seller address
    Then "<Address>" should be edited successfully in seller address
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | Address                    | AssetDetails_sellerDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Residential Address        | 4                                 |

 #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Delete the added <Address> with Finance For as <FinanceMode> in seller address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <AssetDetails_sellerDetails_rowNum>
    And user open seller address accordion
    When user add "<Address>" in seller address
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 7
    And user deletes "<Address>" in seller address
    Then "<Address>" should be deleted successfully in seller address
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | Address                    | AssetDetails_sellerDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Residential Address        | 4                                 |

 #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Delete the added <Address> with Finance For as <FinanceMode> in seller address for multi asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <AssetDetails_sellerDetails_rowNum>
    And user open seller address accordion
    When user add "<Address>" in seller address
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 7
    And user deletes "<Address>" in seller address
    Then "<Address>" should be deleted successfully in seller address
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | Address                    | AssetDetails_sellerDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Residential Address        | 4                                 |

