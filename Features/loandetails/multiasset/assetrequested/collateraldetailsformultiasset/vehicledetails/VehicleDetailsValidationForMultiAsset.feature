@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@Conventional
@Islamic
@ImplementedBy-kanika.mahal
@ReleaseLoanAppM5
@Release

#Prerequisite:Application already punch with application type as Multi Asset
   # { ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
# ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
Feature: Vehicle Details Validation under Collateral Details for Multi Asset

#  CAS-40494
  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#  CAS-78957
  Scenario Outline: ACAUTOCAS-14312: Validate the field name of vehicle details with Proper label for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 47
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user switch to collateral tab
    When user opens Vehicle Details section under collateral details page
    Then user should be able to see vehicle details with proper labels
      | Engine Number                          |
      | Chassis Number                         |
      | FIP Number                             |
      | Date of Delivery                       |
      | VIN Number                             |
      | Registration Date                      |
      | Registration Number                    |
      | Registration Transport Office          |
      | Registration in Name of                |
      | Registration Expiry Date               |
      | RC Received Date                       |
      | Vehicle Capacity                       |
      | Asset Life (Months)                    |
      | Asset Age (Months)                     |
      | Year of Manufacture                    |
      | Initial Odometer Reading               |
      | State                                  |
      | Color Type                             |
      | Color                                  |
      | Maximum Asset Age for funding (Months) |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |
#  CAS-78957,183207
  Scenario Outline: ACAUTOCAS-14370: Validate the field name marked as Mandatory NonMandatory in vehicle details for multi Asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 47
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user switch to collateral tab
    When user opens Vehicle Details section
    Then user should be able to see marked Field Name as Mandatory NonMandatory
      | FieldName                     | Mandatory_NonMandatory |
      | Engine Number                 | mandatory              |
      | Chassis Number                | mandatory              |
      | FIP Number                    | non mandatory          |
      | Date of Delivery              | non mandatory          |
      | VIN Number                    | non mandatory          |
      | Registration Date             | non mandatory          |
      | Is Special Number             | non mandatory          |
      | Registration Number           | mandatory              |
      | Registration Transport Office | non mandatory          |
      | Registration in Name of       | non mandatory          |
      | Registration Expiry Date      | non mandatory          |
      | RC Received Date              | non mandatory          |
      | Vehicle Capacity              | non mandatory          |
      | Asset Life (Months)           | non mandatory          |
      | Asset Age (Months)            | non mandatory          |
      | Color                         | non mandatory          |
      | Year of Manufacture           | non mandatory          |
      | State                         | non mandatory          |
      | Color Type                    | non mandatory          |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |

  Scenario Outline: ACAUTOCAS-14371: Validation the <Field_Name> in Vehicle Details with <InputType> for multi Asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 47
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user switch to collateral tab
    And user opens Vehicle Details section under collateral details page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetailsWB_vehicleDetails>" and row <AssetDetailsWB_vehicleDetails_rowNum>
    When user fills "<Field_Name>" field with "<InputType>" for vehicle details section
    Then "<Field_Name>" field "<Throws_notThrows>" with proper message
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Field_Name               | InputType                      | Throws_notThrows                   | AssetDetailsWB     | AssetDetailsWB_vehicleDetails | AssetDetailsWB_vehicleDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Engine Number            | Valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 1                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Engine Number            | Both Numeric and alphabet      | does not throw any error           | asset_details.xlsx | vehicle_details               | 2                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Engine Number            | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 3                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Engine Number            | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 4                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Engine Number            | negative                       | does not throw any error           | asset_details.xlsx | vehicle_details               | 5                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Engine Number            | Special character              | throws an error with error message | asset_details.xlsx | vehicle_details               | 6                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis Number           | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 7                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis Number           | both digits and characters     | does not throw any error           | asset_details.xlsx | vehicle_details               | 8                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis Number           | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 9                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis Number           | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 10                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis Number           | negative value                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 11                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis Number           | special characters             | throws an error with error message | asset_details.xlsx | vehicle_details               | 12                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FIP Number               | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 13                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FIP Number               | both digits and characters     | does not throw any error           | asset_details.xlsx | vehicle_details               | 14                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FIP Number               | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 15                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FIP Number               | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 16                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FIP Number               | negative value                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 17                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FIP Number               | special characters             | does not throw any error           | asset_details.xlsx | vehicle_details               | 18                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | VIN Number               | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 19                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | VIN Number               | both digits and characters     | does not throw any error           | asset_details.xlsx | vehicle_details               | 20                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | VIN Number               | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 21                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | VIN Number               | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 22                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | VIN Number               | negative value                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 23                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | VIN Number               | special characters             | does not throw any error           | asset_details.xlsx | vehicle_details               | 24                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Registration in Name of  | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 25                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Registration in Name of  | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 26                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Registration in Name of  | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 27                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Registration in Name of  | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 28                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Registration in Name of  | special characters             | throws an error with error message | asset_details.xlsx | vehicle_details               | 29                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Vehicle Capacity         | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 30                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Vehicle Capacity         | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 31                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Vehicle Capacity         | space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 32                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Vehicle Capacity         | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 33                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Vehicle Capacity         | special characters             | throws an error with error message | asset_details.xlsx | vehicle_details               | 34                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Date of Delivery         | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 35                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Date of Delivery         | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 36                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Date of Delivery         | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 37                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Date of Delivery         | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 38                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Date of Delivery         | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 39                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Date of Delivery         | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 40                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Date of Delivery         | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 41                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Registration Expiry Date | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 42                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Registration Expiry Date | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 43                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Registration Expiry Date | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 44                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Registration Expiry Date | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 45                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Registration Expiry Date | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 46                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Registration Expiry Date | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 47                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Registration Expiry Date | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 48                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RC Received Date         | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 49                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RC Received Date         | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 50                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RC Received Date         | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 51                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RC Received Date         | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 52                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RC Received Date         | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 53                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RC Received Date         | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 54                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RC Received Date         | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 55                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Ex-Showroom Price        | Valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 56                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Ex-Showroom Price        | upto 18 digits                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 57                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Ex-Showroom Price        | Both Numeric and alphabet      | throws an error with error message | asset_details.xlsx | vehicle_details               | 58                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Ex-Showroom Price        | Special character              | throws an error with error message | asset_details.xlsx | vehicle_details               | 59                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Ex-Showroom Price        | Space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 60                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Ex-Showroom Price        | Paise                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 61                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Ex-Showroom Price        | zero value                     | does not throw any error           | asset_details.xlsx | vehicle_details               | 62                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Ex-Showroom Price        | Negative                       | throws an error with error message | asset_details.xlsx | vehicle_details               | 63                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Road Tax                 | Valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 64                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Road Tax                 | upto 18 digits                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 65                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Road Tax                 | Both Numeric and alphabet      | throws an error with error message | asset_details.xlsx | vehicle_details               | 66                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Road Tax                 | Special character              | throws an error with error message | asset_details.xlsx | vehicle_details               | 67                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Road Tax                 | Space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 68                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Road Tax                 | Paise                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 69                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Road Tax                 | zero value                     | does not throw any error           | asset_details.xlsx | vehicle_details               | 70                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Road Tax                 | Negative                       | throws an error with error message | asset_details.xlsx | vehicle_details               | 71                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Preferred Valuation Date | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 72                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Preferred Valuation Date | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 73                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Preferred Valuation Date | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 74                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Preferred Valuation Date | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 75                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Preferred Valuation Date | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 76                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Preferred Valuation Date | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 77                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Preferred Valuation Date | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 78                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | No. Of Owners            | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 79                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | No. Of Owners            | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 80                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | No. Of Owners            | space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 81                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | No. Of Owners            | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 82                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Month of Manufacture     | valid value with 12            | does not throw any error           | asset_details.xlsx | vehicle_details               | 83                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Month of Manufacture     | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 84                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Month of Manufacture     | space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 85                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Month of Manufacture     | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 86                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Year of Manufacture      | valid year with 2022           | does not throw any error           | asset_details.xlsx | vehicle_details               | 87                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Year of Manufacture      | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 88                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Year of Manufacture      | past year                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 89                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Year of Manufacture      | future year                    | throws error with error message    | asset_details.xlsx | vehicle_details               | 90                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Year of Manufacture      | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 91                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Year of Manufacture      | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 92                                   |

  Scenario Outline: ACAUTOCAS-14372: Validating Registration Number breakup as <RegNumber1stBox> <RegNumber2ndBox> <RegNumber3rdBox> <RegNumber4thBox> without Parameter Sequence for multi Asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 47
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user switch to collateral tab
    And user opens Vehicle Details section under collateral details page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetailsWB_vehicleDetails>" and row <AssetDetailsWB_vehicleDetails_rowNum>
    And user fills Engine Number along with Chassis Number
    When unchecks Parameter Sequence checkbox
    And user fills Registration Number breakup as "<RegNumber1stBox>" "<RegNumber2ndBox>" "<RegNumber3rdBox>" "<RegNumber4thBox>"
    Then Registration Number "<Throws_notThrows>" with proper message
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | RegNumber1stBox | RegNumber2ndBox | RegNumber3rdBox             | RegNumber4thBox | Throws_notThrows                   | AssetDetailsWB     | AssetDetailsWB_vehicleDetails | AssetDetailsWB_vehicleDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 81                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 82                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 83                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 84                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 85                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 86                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 87                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 88                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 89                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 90                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 91                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 92                                   |

  Scenario Outline: ACAUTOCAS-14373: Validating Registration Number breakup as <RegNumber1stBox> <RegNumber2ndBox> <RegNumber3rdBox> <RegNumber4thBox> with Parameter Sequence for multi Asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 47
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user switch to collateral tab
    And user opens Vehicle Details section under collateral details page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills Engine Number along with Chassis Number
    When checks Parameter Sequence checkbox
    And user fills Registration Number breakup as "<RegNumber1stBox>" "<RegNumber2ndBox>" "<RegNumber3rdBox>" "<RegNumber4thBox>"
    Then Registration Number "<Throws_notThrows>" with proper message
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Throws_notThrows         | RegNumber1stBox | RegNumber2ndBox | RegNumber3rdBox             | RegNumber4thBox | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 81                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 82                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 83                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 84                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 85                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 86                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 87                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 88                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 89                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 90                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 91                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 92                     |
  Scenario Outline: ACAUTOCAS-14374: Registration number breakup validation with Parameter Sequence to without Parameter Sequence for multi Asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 47
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user switch to collateral tab
    And user opens Vehicle Details section under collateral details page
    And checks Parameter Sequence checkbox
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills Registration Number breakup
    When unchecks Parameter Sequence checkbox
    Then Registration Number should be blank
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 16                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 17                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 18                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 19                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 20                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 21                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 22                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 23                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 24                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 25                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 26                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 27                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 28                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 29                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 30                               |

      ##3 field combination
  Scenario Outline: ACAUTOCAS-14375: Validate checks for duplicate collateral for Chassis Number Engine Number along with Registration number for multi Asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 47
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user switch to collateral tab
    And user opens Vehicle Details section under collateral details page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And enters unique Chassis number
    And enters unique Engine number
    And enters unique Registration number
    When checks for duplicate collateral
    Then user should receive a proper popup message
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 39                               |

  Scenario Outline: ACAUTOCAS-14376: Registration number breakup validation for multi Asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 47
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user switch to collateral tab
    And user opens Vehicle Details section under collateral details page
    When unchecks Parameter Sequence checkbox
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills Registration Number breakup
    Then expected value should be present in Registration Number for RC Authentication
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 3                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 4                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 5                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 6                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 7                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 8                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 9                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 10                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 11                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 12                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 13                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 14                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 15                               |

  Scenario Outline: ACAUTOCAS-14377: User modifies <FieldName> after running dedupe with save for multi Asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 47
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user switch to collateral tab
    And user opens Vehicle Details section under collateral details page
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum2>
    When user modifies "<FieldName>"
    And user saves the Collateral Details
    Then user gets a proper notification message
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FieldName           | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum2 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Engine Number       | collateral.xlsx | vehicle_details           | 70                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chasis Number       | collateral.xlsx | vehicle_details           | 71                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Registration Number | collateral.xlsx | vehicle_details           | 72                                |

  Scenario Outline: ACAUTOCAS-14378: User modifies <FirstField> <SecondField> after running with save for multi Asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 47
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user switch to collateral tab
    And user opens Vehicle Details section under collateral details page
    And user fills mandatory fields of vehicle details section
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum2>
    And user modifies "<FirstField>" "<SecondField>"
    When user saves the Collateral Details
    Then user gets a proper notification message
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FirstField    | SecondField         | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum2 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Engine Number | Chasis Number       | collateral.xlsx | vehicle_details           | 73                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Engine Number | Registration Number | collateral.xlsx | vehicle_details           | 74                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chasis Number | Registration Number | collateral.xlsx | vehicle_details           | 75                                |

  Scenario Outline: ACAUTOCAS-14379: User modifies <FirstField> <SecondField> <ThirdField> after running dedupe with save for multi Asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 47
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user switch to collateral tab
    And user opens Vehicle Details section under collateral details page
    And user fills mandatory fields of vehicle details section
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum2>
    When user modifies "<FirstField>" "<SecondField>" "<ThirdField>"
    And user saves the Collateral Details
    Then user gets a proper notification message
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FirstField    | SecondField   | ThirdField          | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum2 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Engine Number | Chasis Number | Registration Number | collateral.xlsx | vehicle_details           | 69                                |

  Scenario Outline: ACAUTOCAS-14323: Validate while selecting Choose Color button list of field should be autofilled in vehicle Details for multi Asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 72
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Vehicle Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "vehicle_details" and row 120
    When user select Choose Color button in vehicle details
    Then the list of field should be autofilled
      | State               |
      | Color Type          |
      | Ex-Showroom Price   |
      | Year of Manufacture |
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |

  @LoggedBug-CAS-216253
  Scenario Outline: ACAUTOCAS-14324:  Validate that same data should be dispaly while selection of Preferred Valuation Time with <var> in vehicle details for multi Asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 72
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Vehicle Details section under collateral details page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetailsWB_vehicleDetails>" and row <AssetDetailsWB_vehicleDetails_rowNum>
    When user select Preferred Valuation Time with "<var>"
    Then "<var>" should be displayed for Preferred Valuation Time
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | var   | AssetDetailsWB     | AssetDetailsWB_vehicleDetails | AssetDetailsWB_vehicleDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | PM    | asset_details.xlsx | vehicle_details               | 121                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | AM    | asset_details.xlsx | vehicle_details               | 120                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | 12:24 | asset_details.xlsx | vehicle_details               | 120                                  |

  Scenario Outline: ACAUTOCAS-14325:  Validate <Field_Name> dependent on Registration Date in vehicle Details for multi Asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 72
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Vehicle Details section under collateral details page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetailsWB_vehicleDetails>" and row <AssetDetailsWB_vehicleDetails_rowNum>
    When user fill Registration Date and "<Field_Name>" with "<var>"
    Then The "<Field_Name>" should "<Throws_notThrows>"
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field_Name               | var                                     | AssetDetailsWB     | AssetDetailsWB_vehicleDetails | AssetDetailsWB_vehicleDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Registration Expiry Date | greater than Registration Date          | asset_details.xlsx | vehicle_details               | 114                                  | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Registration Expiry Date | less than or equal to Registration Date | asset_details.xlsx | vehicle_details               | 115                                  | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Year of Manufacture      | greater than Registration Date          | asset_details.xlsx | vehicle_details               | 116                                  | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Year of Manufacture      | less than or equal to Registration Date | asset_details.xlsx | vehicle_details               | 117                                  | does not throw any error           |

  Scenario Outline: ACAUTOCAS-14326: Validate RC Received Date dependent on Registration Date in vehicle Details for multi Asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 72
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Vehicle Details section under collateral details page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetailsWB_vehicleDetails>" and row <AssetDetailsWB_vehicleDetails_rowNum>
    When user fill Registration Date and RC Date with "<var>"
    Then RC Received Date should "<Throws_notThrows>"
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | var                                     | AssetDetailsWB     | AssetDetailsWB_vehicleDetails | AssetDetailsWB_vehicleDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | less than or equal to Registration Date | asset_details.xlsx | vehicle_details               | 118                                  | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | greater than Registration Date          | asset_details.xlsx | vehicle_details               | 119                                  | does not throw any error           |

  Scenario Outline: ACAUTOCAS-14327: Validate Asset Age (Months) should be autofill while entering value in Year of Manufacture for multi Asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 72
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Vehicle Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "vehicle_details" and row 116
    When user fills Year of Manufacture
    Then Asset Age should be autofilled
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |


