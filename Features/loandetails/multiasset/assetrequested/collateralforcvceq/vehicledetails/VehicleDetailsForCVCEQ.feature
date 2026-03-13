@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@NotImplemented
@Conventional
@Deferred

Feature: Vehicle Details Validation For Commercial Vehicle and Commercial Equipment for Multi Asset


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#  CAS-78957
     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate the field name of vehicle details with Proper label for Funding For as <FundingFor> in collateral details for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
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
      | Road Tax                               |
      | Ex-Showroom Price                      |
      | No. Of Owners                          |
      | Preferred Valuation Date               |
      | Preferred Valuation Time               |

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   |

#  CAS-78957
     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate the field name of vehicle details with Proper label for Funding For as <FundingFor> under collateral details for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
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
      | Road Tax                               |
      | Ex-Showroom Price                      |
      | No. Of Owners                          |
      | Preferred Valuation Date               |
      | Preferred Valuation Time               |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   |

#  CAS-78957,183207
   #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate the field name marked as Mandatory NonMandatory in vehicle details for Funding For as <FundingFor> under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
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
      | Road Tax                      | non mandatory          |
      | Ex-Showroom Price             | non mandatory          |
      | No. Of Owners                 | non mandatory          |
      | Preferred Valuation Date      | non mandatory          |
      | Preferred Valuation Time      | non mandatory          |

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   |

    #  CAS-78957,183207
   #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate the field name marked as Mandatory NonMandatory in vehicle details for Funding For as <FundingFor> in collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
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
      | Road Tax                      | non mandatory          |
      | Ex-Showroom Price             | non mandatory          |
      | No. Of Owners                 | non mandatory          |
      | Preferred Valuation Date      | non mandatory          |
      | Preferred Valuation Time      | non mandatory          |

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
  Scenario Outline:Validation the <Field_Name> in Vehicle Details with <InputType> for Funding For as <FundingFor> in collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Vehicle Details section under collateral details page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetailsWB_vehicleDetails>" and row <AssetDetailsWB_vehicleDetails_rowNum>
    When user fills "<Field_Name>" field with "<InputType>" for vehicle details section
    Then "<Field_Name>" field "<Throws_notThrows>" with proper message
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode | Field_Name               | InputType                      | Throws_notThrows                   | AssetDetailsWB     | AssetDetailsWB_vehicleDetails | AssetDetailsWB_vehicleDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Engine Number            | Valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 1                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Engine Number            | Valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 1                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Engine Number            | Valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 1                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Engine Number            | Valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 1                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Engine Number            | Both Numeric and alphabet      | does not throw any error           | asset_details.xlsx | vehicle_details               | 2                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Engine Number            | Both Numeric and alphabet      | does not throw any error           | asset_details.xlsx | vehicle_details               | 2                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Engine Number            | Both Numeric and alphabet      | does not throw any error           | asset_details.xlsx | vehicle_details               | 2                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Engine Number            | Both Numeric and alphabet      | does not throw any error           | asset_details.xlsx | vehicle_details               | 2                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Engine Number            | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 3                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Engine Number            | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 3                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Engine Number            | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 3                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Engine Number            | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 3                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Engine Number            | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 4                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Engine Number            | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 4                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Engine Number            | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 4                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Engine Number            | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 4                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Engine Number            | negative                       | does not throw any error           | asset_details.xlsx | vehicle_details               | 5                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Engine Number            | negative                       | does not throw any error           | asset_details.xlsx | vehicle_details               | 5                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Engine Number            | negative                       | does not throw any error           | asset_details.xlsx | vehicle_details               | 5                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Engine Number            | negative                       | does not throw any error           | asset_details.xlsx | vehicle_details               | 5                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Engine Number            | Special character              | throws an error with error message | asset_details.xlsx | vehicle_details               | 6                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Engine Number            | Special character              | throws an error with error message | asset_details.xlsx | vehicle_details               | 6                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Engine Number            | Special character              | throws an error with error message | asset_details.xlsx | vehicle_details               | 6                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Engine Number            | Special character              | throws an error with error message | asset_details.xlsx | vehicle_details               | 6                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Chassis Number           | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 7                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Chassis Number           | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 7                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Chassis Number           | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 7                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Chassis Number           | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 7                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Chassis Number           | both digits and characters     | does not throw any error           | asset_details.xlsx | vehicle_details               | 8                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Chassis Number           | both digits and characters     | does not throw any error           | asset_details.xlsx | vehicle_details               | 8                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Chassis Number           | both digits and characters     | does not throw any error           | asset_details.xlsx | vehicle_details               | 8                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Chassis Number           | both digits and characters     | does not throw any error           | asset_details.xlsx | vehicle_details               | 8                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Chassis Number           | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 9                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Chassis Number           | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 9                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Chassis Number           | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 9                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Chassis Number           | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 9                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Chassis Number           | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 10                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Chassis Number           | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 10                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Chassis Number           | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 10                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Chassis Number           | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 10                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Chassis Number           | negative value                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 11                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Chassis Number           | negative value                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 11                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Chassis Number           | negative value                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 11                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Chassis Number           | negative value                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 11                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Chassis Number           | special characters             | throws an error with error message | asset_details.xlsx | vehicle_details               | 12                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Chassis Number           | special characters             | throws an error with error message | asset_details.xlsx | vehicle_details               | 12                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Chassis Number           | special characters             | throws an error with error message | asset_details.xlsx | vehicle_details               | 12                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Chassis Number           | special characters             | throws an error with error message | asset_details.xlsx | vehicle_details               | 12                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | FIP Number               | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 13                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | FIP Number               | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 13                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | FIP Number               | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 13                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | FIP Number               | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 13                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | FIP Number               | both digits and characters     | does not throw any error           | asset_details.xlsx | vehicle_details               | 14                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | FIP Number               | both digits and characters     | does not throw any error           | asset_details.xlsx | vehicle_details               | 14                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | FIP Number               | both digits and characters     | does not throw any error           | asset_details.xlsx | vehicle_details               | 14                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | FIP Number               | both digits and characters     | does not throw any error           | asset_details.xlsx | vehicle_details               | 14                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | FIP Number               | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 15                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | FIP Number               | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 15                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | FIP Number               | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 15                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | FIP Number               | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 15                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | FIP Number               | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 16                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | FIP Number               | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 16                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | FIP Number               | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 16                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | FIP Number               | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 16                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | FIP Number               | negative value                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 17                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | FIP Number               | negative value                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 17                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | FIP Number               | negative value                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 17                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | FIP Number               | negative value                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 17                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | FIP Number               | special characters             | does not throw any error           | asset_details.xlsx | vehicle_details               | 18                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | FIP Number               | special characters             | does not throw any error           | asset_details.xlsx | vehicle_details               | 18                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | FIP Number               | special characters             | does not throw any error           | asset_details.xlsx | vehicle_details               | 18                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | FIP Number               | special characters             | does not throw any error           | asset_details.xlsx | vehicle_details               | 18                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | VIN Number               | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 19                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | VIN Number               | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 19                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | VIN Number               | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 19                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | VIN Number               | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 19                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | VIN Number               | both digits and characters     | does not throw any error           | asset_details.xlsx | vehicle_details               | 20                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | VIN Number               | both digits and characters     | does not throw any error           | asset_details.xlsx | vehicle_details               | 20                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | VIN Number               | both digits and characters     | does not throw any error           | asset_details.xlsx | vehicle_details               | 20                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | VIN Number               | both digits and characters     | does not throw any error           | asset_details.xlsx | vehicle_details               | 20                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | VIN Number               | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 21                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | VIN Number               | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 21                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | VIN Number               | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 21                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | VIN Number               | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 21                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | VIN Number               | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 22                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | VIN Number               | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 22                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | VIN Number               | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 22                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | VIN Number               | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 22                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | VIN Number               | negative value                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 23                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | VIN Number               | negative value                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 23                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | VIN Number               | negative value                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 23                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | VIN Number               | negative value                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 23                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | VIN Number               | special characters             | does not throw any error           | asset_details.xlsx | vehicle_details               | 24                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | VIN Number               | special characters             | does not throw any error           | asset_details.xlsx | vehicle_details               | 24                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | VIN Number               | special characters             | does not throw any error           | asset_details.xlsx | vehicle_details               | 24                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | VIN Number               | special characters             | does not throw any error           | asset_details.xlsx | vehicle_details               | 24                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Registration in Name of  | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 25                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Registration in Name of  | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 25                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Registration in Name of  | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 25                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Registration in Name of  | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 25                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Registration in Name of  | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 26                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Registration in Name of  | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 26                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Registration in Name of  | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 26                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Registration in Name of  | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 26                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Registration in Name of  | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 27                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Registration in Name of  | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 27                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Registration in Name of  | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 27                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Registration in Name of  | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 27                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Registration in Name of  | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 28                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Registration in Name of  | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 28                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Registration in Name of  | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 28                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Registration in Name of  | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 28                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Registration in Name of  | special characters             | throws an error with error message | asset_details.xlsx | vehicle_details               | 29                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Registration in Name of  | special characters             | throws an error with error message | asset_details.xlsx | vehicle_details               | 29                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Registration in Name of  | special characters             | throws an error with error message | asset_details.xlsx | vehicle_details               | 29                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Registration in Name of  | special characters             | throws an error with error message | asset_details.xlsx | vehicle_details               | 29                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Vehicle Capacity         | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 30                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Vehicle Capacity         | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 30                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Vehicle Capacity         | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 30                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Vehicle Capacity         | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 30                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Vehicle Capacity         | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 31                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Vehicle Capacity         | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 31                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Vehicle Capacity         | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 31                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Vehicle Capacity         | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 31                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Vehicle Capacity         | space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 32                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Vehicle Capacity         | space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 32                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Vehicle Capacity         | space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 32                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Vehicle Capacity         | space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 32                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Vehicle Capacity         | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 33                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Vehicle Capacity         | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 33                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Vehicle Capacity         | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 33                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Vehicle Capacity         | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 33                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Vehicle Capacity         | special characters             | throws an error with error message | asset_details.xlsx | vehicle_details               | 34                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Vehicle Capacity         | special characters             | throws an error with error message | asset_details.xlsx | vehicle_details               | 34                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Vehicle Capacity         | special characters             | throws an error with error message | asset_details.xlsx | vehicle_details               | 34                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Vehicle Capacity         | special characters             | throws an error with error message | asset_details.xlsx | vehicle_details               | 34                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Date of Delivery         | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 35                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Date of Delivery         | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 35                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Date of Delivery         | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 35                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Date of Delivery         | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 35                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Date of Delivery         | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 36                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Date of Delivery         | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 36                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Date of Delivery         | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 36                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Date of Delivery         | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 36                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Date of Delivery         | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 37                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Date of Delivery         | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 37                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Date of Delivery         | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 37                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Date of Delivery         | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 37                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Date of Delivery         | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 38                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Date of Delivery         | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 38                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Date of Delivery         | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 38                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Date of Delivery         | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 38                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Date of Delivery         | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 39                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Date of Delivery         | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 39                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Date of Delivery         | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 39                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Date of Delivery         | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 39                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Date of Delivery         | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 40                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Date of Delivery         | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 40                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Date of Delivery         | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 40                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Date of Delivery         | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 40                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Date of Delivery         | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 41                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Date of Delivery         | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 41                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Date of Delivery         | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 41                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Date of Delivery         | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 41                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Registration Expiry Date | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 42                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Registration Expiry Date | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 42                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Registration Expiry Date | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 42                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Registration Expiry Date | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 42                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Registration Expiry Date | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 43                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Registration Expiry Date | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 43                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Registration Expiry Date | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 43                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Registration Expiry Date | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 43                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Registration Expiry Date | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 44                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Registration Expiry Date | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 44                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Registration Expiry Date | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 44                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Registration Expiry Date | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 44                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Registration Expiry Date | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 45                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Registration Expiry Date | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 45                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Registration Expiry Date | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 45                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Registration Expiry Date | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 45                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Registration Expiry Date | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 46                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Registration Expiry Date | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 46                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Registration Expiry Date | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 46                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Registration Expiry Date | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 46                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Registration Expiry Date | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 47                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Registration Expiry Date | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 47                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Registration Expiry Date | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 47                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Registration Expiry Date | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 47                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Registration Expiry Date | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 48                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Registration Expiry Date | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 48                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Registration Expiry Date | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 48                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Registration Expiry Date | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 48                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | RC Received Date         | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 49                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | RC Received Date         | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 49                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | RC Received Date         | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 49                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | RC Received Date         | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 49                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | RC Received Date         | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 50                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | RC Received Date         | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 50                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | RC Received Date         | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 50                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | RC Received Date         | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 50                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | RC Received Date         | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 51                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | RC Received Date         | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 51                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | RC Received Date         | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 51                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | RC Received Date         | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 51                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | RC Received Date         | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 52                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | RC Received Date         | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 52                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | RC Received Date         | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 52                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | RC Received Date         | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 52                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | RC Received Date         | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 53                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | RC Received Date         | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 53                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | RC Received Date         | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 53                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | RC Received Date         | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 53                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | RC Received Date         | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 54                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | RC Received Date         | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 54                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | RC Received Date         | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 54                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | RC Received Date         | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 54                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | RC Received Date         | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 55                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | RC Received Date         | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 55                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | RC Received Date         | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 55                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | RC Received Date         | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 55                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Ex-Showroom Price        | Valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 56                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Ex-Showroom Price        | Valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 56                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Ex-Showroom Price        | Valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 56                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Ex-Showroom Price        | Valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 56                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Ex-Showroom Price        | upto 18 digits                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 57                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Ex-Showroom Price        | upto 18 digits                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 57                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Ex-Showroom Price        | upto 18 digits                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 57                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Ex-Showroom Price        | upto 18 digits                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 57                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Ex-Showroom Price        | Both Numeric and alphabet      | throws an error with error message | asset_details.xlsx | vehicle_details               | 58                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Ex-Showroom Price        | Both Numeric and alphabet      | throws an error with error message | asset_details.xlsx | vehicle_details               | 58                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Ex-Showroom Price        | Both Numeric and alphabet      | throws an error with error message | asset_details.xlsx | vehicle_details               | 58                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Ex-Showroom Price        | Both Numeric and alphabet      | throws an error with error message | asset_details.xlsx | vehicle_details               | 58                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Ex-Showroom Price        | Special character              | throws an error with error message | asset_details.xlsx | vehicle_details               | 59                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Ex-Showroom Price        | Special character              | throws an error with error message | asset_details.xlsx | vehicle_details               | 59                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Ex-Showroom Price        | Special character              | throws an error with error message | asset_details.xlsx | vehicle_details               | 59                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Ex-Showroom Price        | Special character              | throws an error with error message | asset_details.xlsx | vehicle_details               | 59                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Ex-Showroom Price        | Space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 60                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Ex-Showroom Price        | Space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 60                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Ex-Showroom Price        | Space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 60                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Ex-Showroom Price        | Space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 60                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Ex-Showroom Price        | Paise                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 61                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Ex-Showroom Price        | Paise                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 61                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Ex-Showroom Price        | Paise                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 61                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Ex-Showroom Price        | Paise                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 61                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Ex-Showroom Price        | zero value                     | does not throw any error           | asset_details.xlsx | vehicle_details               | 62                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Ex-Showroom Price        | zero value                     | does not throw any error           | asset_details.xlsx | vehicle_details               | 62                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Ex-Showroom Price        | zero value                     | does not throw any error           | asset_details.xlsx | vehicle_details               | 62                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Ex-Showroom Price        | zero value                     | does not throw any error           | asset_details.xlsx | vehicle_details               | 62                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Ex-Showroom Price        | Negative                       | throws an error with error message | asset_details.xlsx | vehicle_details               | 63                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Ex-Showroom Price        | Negative                       | throws an error with error message | asset_details.xlsx | vehicle_details               | 63                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Ex-Showroom Price        | Negative                       | throws an error with error message | asset_details.xlsx | vehicle_details               | 63                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Ex-Showroom Price        | Negative                       | throws an error with error message | asset_details.xlsx | vehicle_details               | 63                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Road Tax                 | Valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 64                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Road Tax                 | Valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 64                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Road Tax                 | Valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 64                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Road Tax                 | Valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 64                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Road Tax                 | upto 18 digits                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 65                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Road Tax                 | upto 18 digits                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 65                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Road Tax                 | upto 18 digits                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 65                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Road Tax                 | upto 18 digits                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 65                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Road Tax                 | Both Numeric and alphabet      | throws an error with error message | asset_details.xlsx | vehicle_details               | 66                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Road Tax                 | Both Numeric and alphabet      | throws an error with error message | asset_details.xlsx | vehicle_details               | 66                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Road Tax                 | Both Numeric and alphabet      | throws an error with error message | asset_details.xlsx | vehicle_details               | 66                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Road Tax                 | Both Numeric and alphabet      | throws an error with error message | asset_details.xlsx | vehicle_details               | 66                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Road Tax                 | Special character              | throws an error with error message | asset_details.xlsx | vehicle_details               | 67                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Road Tax                 | Special character              | throws an error with error message | asset_details.xlsx | vehicle_details               | 67                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Road Tax                 | Special character              | throws an error with error message | asset_details.xlsx | vehicle_details               | 67                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Road Tax                 | Special character              | throws an error with error message | asset_details.xlsx | vehicle_details               | 67                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Road Tax                 | Space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 68                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Road Tax                 | Space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 68                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Road Tax                 | Space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 68                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Road Tax                 | Space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 68                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Road Tax                 | Paise                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 69                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Road Tax                 | Paise                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 69                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Road Tax                 | Paise                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 69                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Road Tax                 | Paise                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 69                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Road Tax                 | zero value                     | does not throw any error           | asset_details.xlsx | vehicle_details               | 70                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Road Tax                 | zero value                     | does not throw any error           | asset_details.xlsx | vehicle_details               | 70                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Road Tax                 | zero value                     | does not throw any error           | asset_details.xlsx | vehicle_details               | 70                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Road Tax                 | zero value                     | does not throw any error           | asset_details.xlsx | vehicle_details               | 70                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Road Tax                 | Negative                       | throws an error with error message | asset_details.xlsx | vehicle_details               | 71                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Road Tax                 | Negative                       | throws an error with error message | asset_details.xlsx | vehicle_details               | 71                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Road Tax                 | Negative                       | throws an error with error message | asset_details.xlsx | vehicle_details               | 71                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Road Tax                 | Negative                       | throws an error with error message | asset_details.xlsx | vehicle_details               | 71                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Preferred Valuation Date | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 72                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Preferred Valuation Date | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 72                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Preferred Valuation Date | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 72                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Preferred Valuation Date | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 72                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Preferred Valuation Date | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 73                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Preferred Valuation Date | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 73                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Preferred Valuation Date | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 73                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Preferred Valuation Date | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 73                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Preferred Valuation Date | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 74                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Preferred Valuation Date | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 74                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Preferred Valuation Date | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 74                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Preferred Valuation Date | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 74                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Preferred Valuation Date | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 75                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Preferred Valuation Date | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 75                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Preferred Valuation Date | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 75                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Preferred Valuation Date | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 75                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Preferred Valuation Date | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 76                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Preferred Valuation Date | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 76                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Preferred Valuation Date | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 76                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Preferred Valuation Date | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 76                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Preferred Valuation Date | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 77                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Preferred Valuation Date | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 77                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Preferred Valuation Date | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 77                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Preferred Valuation Date | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 77                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Preferred Valuation Date | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 78                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Preferred Valuation Date | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 78                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Preferred Valuation Date | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 78                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Preferred Valuation Date | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 78                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | No. Of Owners            | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 79                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | No. Of Owners            | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 79                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | No. Of Owners            | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 79                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | No. Of Owners            | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 79                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | No. Of Owners            | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 80                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | No. Of Owners            | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 80                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | No. Of Owners            | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 80                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | No. Of Owners            | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 80                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | No. Of Owners            | space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 81                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | No. Of Owners            | space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 81                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | No. Of Owners            | space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 81                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | No. Of Owners            | space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 81                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | No. Of Owners            | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 82                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | No. Of Owners            | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 82                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | No. Of Owners            | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 82                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | No. Of Owners            | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 82                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Month of Manufacture     | valid value with 12            | does not throw any error           | asset_details.xlsx | vehicle_details               | 83                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Month of Manufacture     | valid value with 12            | does not throw any error           | asset_details.xlsx | vehicle_details               | 83                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Month of Manufacture     | valid value with 12            | does not throw any error           | asset_details.xlsx | vehicle_details               | 83                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Month of Manufacture     | valid value with 12            | does not throw any error           | asset_details.xlsx | vehicle_details               | 83                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Month of Manufacture     | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 84                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Month of Manufacture     | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 84                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Month of Manufacture     | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 84                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Month of Manufacture     | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 84                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Month of Manufacture     | space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 85                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Month of Manufacture     | space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 85                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Month of Manufacture     | space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 85                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Month of Manufacture     | space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 85                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Month of Manufacture     | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 86                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Month of Manufacture     | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 86                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Month of Manufacture     | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 86                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Month of Manufacture     | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 86                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Year of Manufacture      | valid year with 2022           | does not throw any error           | asset_details.xlsx | vehicle_details               | 87                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Year of Manufacture      | valid year with 2022           | does not throw any error           | asset_details.xlsx | vehicle_details               | 87                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Year of Manufacture      | valid year with 2022           | does not throw any error           | asset_details.xlsx | vehicle_details               | 87                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Year of Manufacture      | valid year with 2022           | does not throw any error           | asset_details.xlsx | vehicle_details               | 87                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Year of Manufacture      | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 88                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Year of Manufacture      | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 88                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Year of Manufacture      | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 88                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Year of Manufacture      | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 88                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Year of Manufacture      | past year                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 89                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Year of Manufacture      | past year                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 89                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Year of Manufacture      | past year                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 89                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Year of Manufacture      | past year                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 89                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Year of Manufacture      | future year                    | throws error with error message    | asset_details.xlsx | vehicle_details               | 90                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Year of Manufacture      | future year                    | throws error with error message    | asset_details.xlsx | vehicle_details               | 90                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Year of Manufacture      | future year                    | throws error with error message    | asset_details.xlsx | vehicle_details               | 90                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Year of Manufacture      | future year                    | throws error with error message    | asset_details.xlsx | vehicle_details               | 90                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Year of Manufacture      | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 91                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Year of Manufacture      | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 91                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Year of Manufacture      | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 91                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Year of Manufacture      | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 91                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Year of Manufacture      | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 92                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Year of Manufacture      | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 92                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Year of Manufacture      | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 92                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Year of Manufacture      | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 92                                   |

      #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validation the <Field_Name> in Vehicle Details with <InputType> for Funding For as <FundingFor> under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Vehicle Details section under collateral details page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetailsWB_vehicleDetails>" and row <AssetDetailsWB_vehicleDetails_rowNum>
    When user fills "<Field_Name>" field with "<InputType>" for vehicle details section
    Then "<Field_Name>" field "<Throws_notThrows>" with proper message
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode | Field_Name               | InputType                      | Throws_notThrows                   | AssetDetailsWB     | AssetDetailsWB_vehicleDetails | AssetDetailsWB_vehicleDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Engine Number            | Valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 1                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Engine Number            | Valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 1                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Engine Number            | Valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 1                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Engine Number            | Valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 1                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Engine Number            | Both Numeric and alphabet      | does not throw any error           | asset_details.xlsx | vehicle_details               | 2                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Engine Number            | Both Numeric and alphabet      | does not throw any error           | asset_details.xlsx | vehicle_details               | 2                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Engine Number            | Both Numeric and alphabet      | does not throw any error           | asset_details.xlsx | vehicle_details               | 2                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Engine Number            | Both Numeric and alphabet      | does not throw any error           | asset_details.xlsx | vehicle_details               | 2                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Engine Number            | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 3                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Engine Number            | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 3                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Engine Number            | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 3                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Engine Number            | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 3                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Engine Number            | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 4                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Engine Number            | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 4                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Engine Number            | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 4                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Engine Number            | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 4                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Engine Number            | negative                       | does not throw any error           | asset_details.xlsx | vehicle_details               | 5                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Engine Number            | negative                       | does not throw any error           | asset_details.xlsx | vehicle_details               | 5                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Engine Number            | negative                       | does not throw any error           | asset_details.xlsx | vehicle_details               | 5                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Engine Number            | negative                       | does not throw any error           | asset_details.xlsx | vehicle_details               | 5                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Engine Number            | Special character              | throws an error with error message | asset_details.xlsx | vehicle_details               | 6                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Engine Number            | Special character              | throws an error with error message | asset_details.xlsx | vehicle_details               | 6                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Engine Number            | Special character              | throws an error with error message | asset_details.xlsx | vehicle_details               | 6                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Engine Number            | Special character              | throws an error with error message | asset_details.xlsx | vehicle_details               | 6                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Chassis Number           | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 7                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Chassis Number           | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 7                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Chassis Number           | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 7                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Chassis Number           | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 7                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Chassis Number           | both digits and characters     | does not throw any error           | asset_details.xlsx | vehicle_details               | 8                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Chassis Number           | both digits and characters     | does not throw any error           | asset_details.xlsx | vehicle_details               | 8                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Chassis Number           | both digits and characters     | does not throw any error           | asset_details.xlsx | vehicle_details               | 8                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Chassis Number           | both digits and characters     | does not throw any error           | asset_details.xlsx | vehicle_details               | 8                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Chassis Number           | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 9                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Chassis Number           | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 9                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Chassis Number           | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 9                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Chassis Number           | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 9                                    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Chassis Number           | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 10                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Chassis Number           | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 10                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Chassis Number           | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 10                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Chassis Number           | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 10                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Chassis Number           | negative value                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 11                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Chassis Number           | negative value                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 11                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Chassis Number           | negative value                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 11                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Chassis Number           | negative value                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 11                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Chassis Number           | special characters             | throws an error with error message | asset_details.xlsx | vehicle_details               | 12                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Chassis Number           | special characters             | throws an error with error message | asset_details.xlsx | vehicle_details               | 12                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Chassis Number           | special characters             | throws an error with error message | asset_details.xlsx | vehicle_details               | 12                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Chassis Number           | special characters             | throws an error with error message | asset_details.xlsx | vehicle_details               | 12                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | FIP Number               | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 13                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | FIP Number               | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 13                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | FIP Number               | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 13                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | FIP Number               | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 13                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | FIP Number               | both digits and characters     | does not throw any error           | asset_details.xlsx | vehicle_details               | 14                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | FIP Number               | both digits and characters     | does not throw any error           | asset_details.xlsx | vehicle_details               | 14                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | FIP Number               | both digits and characters     | does not throw any error           | asset_details.xlsx | vehicle_details               | 14                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | FIP Number               | both digits and characters     | does not throw any error           | asset_details.xlsx | vehicle_details               | 14                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | FIP Number               | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 15                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | FIP Number               | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 15                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | FIP Number               | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 15                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | FIP Number               | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 15                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | FIP Number               | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 16                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | FIP Number               | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 16                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | FIP Number               | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 16                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | FIP Number               | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 16                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | FIP Number               | negative value                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 17                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | FIP Number               | negative value                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 17                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | FIP Number               | negative value                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 17                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | FIP Number               | negative value                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 17                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | FIP Number               | special characters             | does not throw any error           | asset_details.xlsx | vehicle_details               | 18                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | FIP Number               | special characters             | does not throw any error           | asset_details.xlsx | vehicle_details               | 18                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | FIP Number               | special characters             | does not throw any error           | asset_details.xlsx | vehicle_details               | 18                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | FIP Number               | special characters             | does not throw any error           | asset_details.xlsx | vehicle_details               | 18                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | VIN Number               | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 19                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | VIN Number               | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 19                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | VIN Number               | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 19                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | VIN Number               | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 19                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | VIN Number               | both digits and characters     | does not throw any error           | asset_details.xlsx | vehicle_details               | 20                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | VIN Number               | both digits and characters     | does not throw any error           | asset_details.xlsx | vehicle_details               | 20                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | VIN Number               | both digits and characters     | does not throw any error           | asset_details.xlsx | vehicle_details               | 20                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | VIN Number               | both digits and characters     | does not throw any error           | asset_details.xlsx | vehicle_details               | 20                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | VIN Number               | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 21                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | VIN Number               | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 21                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | VIN Number               | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 21                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | VIN Number               | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details               | 21                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | VIN Number               | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 22                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | VIN Number               | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 22                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | VIN Number               | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 22                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | VIN Number               | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 22                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | VIN Number               | negative value                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 23                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | VIN Number               | negative value                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 23                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | VIN Number               | negative value                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 23                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | VIN Number               | negative value                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 23                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | VIN Number               | special characters             | does not throw any error           | asset_details.xlsx | vehicle_details               | 24                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | VIN Number               | special characters             | does not throw any error           | asset_details.xlsx | vehicle_details               | 24                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | VIN Number               | special characters             | does not throw any error           | asset_details.xlsx | vehicle_details               | 24                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | VIN Number               | special characters             | does not throw any error           | asset_details.xlsx | vehicle_details               | 24                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Registration in Name of  | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 25                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Registration in Name of  | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 25                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Registration in Name of  | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 25                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Registration in Name of  | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 25                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Registration in Name of  | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 26                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Registration in Name of  | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 26                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Registration in Name of  | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 26                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Registration in Name of  | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 26                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Registration in Name of  | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 27                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Registration in Name of  | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 27                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Registration in Name of  | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 27                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Registration in Name of  | space                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 27                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Registration in Name of  | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 28                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Registration in Name of  | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 28                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Registration in Name of  | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 28                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Registration in Name of  | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 28                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Registration in Name of  | special characters             | throws an error with error message | asset_details.xlsx | vehicle_details               | 29                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Registration in Name of  | special characters             | throws an error with error message | asset_details.xlsx | vehicle_details               | 29                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Registration in Name of  | special characters             | throws an error with error message | asset_details.xlsx | vehicle_details               | 29                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Registration in Name of  | special characters             | throws an error with error message | asset_details.xlsx | vehicle_details               | 29                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Vehicle Capacity         | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 30                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Vehicle Capacity         | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 30                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Vehicle Capacity         | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 30                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Vehicle Capacity         | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 30                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Vehicle Capacity         | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 31                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Vehicle Capacity         | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 31                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Vehicle Capacity         | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 31                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Vehicle Capacity         | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 31                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Vehicle Capacity         | space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 32                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Vehicle Capacity         | space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 32                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Vehicle Capacity         | space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 32                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Vehicle Capacity         | space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 32                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Vehicle Capacity         | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 33                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Vehicle Capacity         | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 33                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Vehicle Capacity         | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 33                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Vehicle Capacity         | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 33                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Vehicle Capacity         | special characters             | throws an error with error message | asset_details.xlsx | vehicle_details               | 34                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Vehicle Capacity         | special characters             | throws an error with error message | asset_details.xlsx | vehicle_details               | 34                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Vehicle Capacity         | special characters             | throws an error with error message | asset_details.xlsx | vehicle_details               | 34                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Vehicle Capacity         | special characters             | throws an error with error message | asset_details.xlsx | vehicle_details               | 34                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Date of Delivery         | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 35                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Date of Delivery         | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 35                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Date of Delivery         | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 35                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Date of Delivery         | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 35                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Date of Delivery         | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 36                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Date of Delivery         | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 36                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Date of Delivery         | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 36                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Date of Delivery         | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 36                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Date of Delivery         | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 37                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Date of Delivery         | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 37                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Date of Delivery         | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 37                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Date of Delivery         | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 37                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Date of Delivery         | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 38                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Date of Delivery         | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 38                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Date of Delivery         | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 38                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Date of Delivery         | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 38                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Date of Delivery         | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 39                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Date of Delivery         | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 39                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Date of Delivery         | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 39                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Date of Delivery         | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 39                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Date of Delivery         | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 40                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Date of Delivery         | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 40                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Date of Delivery         | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 40                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Date of Delivery         | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 40                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Date of Delivery         | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 41                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Date of Delivery         | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 41                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Date of Delivery         | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 41                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Date of Delivery         | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 41                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Registration Expiry Date | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 42                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Registration Expiry Date | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 42                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Registration Expiry Date | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 42                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Registration Expiry Date | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 42                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Registration Expiry Date | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 43                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Registration Expiry Date | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 43                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Registration Expiry Date | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 43                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Registration Expiry Date | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 43                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Registration Expiry Date | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 44                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Registration Expiry Date | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 44                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Registration Expiry Date | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 44                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Registration Expiry Date | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 44                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Registration Expiry Date | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 45                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Registration Expiry Date | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 45                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Registration Expiry Date | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 45                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Registration Expiry Date | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 45                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Registration Expiry Date | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 46                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Registration Expiry Date | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 46                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Registration Expiry Date | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 46                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Registration Expiry Date | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 46                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Registration Expiry Date | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 47                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Registration Expiry Date | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 47                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Registration Expiry Date | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 47                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Registration Expiry Date | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 47                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Registration Expiry Date | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 48                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Registration Expiry Date | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 48                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Registration Expiry Date | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 48                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Registration Expiry Date | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 48                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | RC Received Date         | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 49                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | RC Received Date         | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 49                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | RC Received Date         | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 49                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | RC Received Date         | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 49                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | RC Received Date         | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 50                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | RC Received Date         | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 50                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | RC Received Date         | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 50                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | RC Received Date         | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 50                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | RC Received Date         | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 51                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | RC Received Date         | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 51                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | RC Received Date         | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 51                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | RC Received Date         | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 51                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | RC Received Date         | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 52                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | RC Received Date         | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 52                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | RC Received Date         | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 52                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | RC Received Date         | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 52                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | RC Received Date         | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 53                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | RC Received Date         | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 53                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | RC Received Date         | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 53                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | RC Received Date         | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 53                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | RC Received Date         | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 54                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | RC Received Date         | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 54                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | RC Received Date         | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 54                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | RC Received Date         | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 54                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | RC Received Date         | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 55                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | RC Received Date         | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 55                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | RC Received Date         | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 55                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | RC Received Date         | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 55                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Ex-Showroom Price        | Valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 56                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Ex-Showroom Price        | Valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 56                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Ex-Showroom Price        | Valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 56                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Ex-Showroom Price        | Valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 56                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Ex-Showroom Price        | upto 18 digits                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 57                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Ex-Showroom Price        | upto 18 digits                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 57                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Ex-Showroom Price        | upto 18 digits                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 57                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Ex-Showroom Price        | upto 18 digits                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 57                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Ex-Showroom Price        | Both Numeric and alphabet      | throws an error with error message | asset_details.xlsx | vehicle_details               | 58                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Ex-Showroom Price        | Both Numeric and alphabet      | throws an error with error message | asset_details.xlsx | vehicle_details               | 58                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Ex-Showroom Price        | Both Numeric and alphabet      | throws an error with error message | asset_details.xlsx | vehicle_details               | 58                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Ex-Showroom Price        | Both Numeric and alphabet      | throws an error with error message | asset_details.xlsx | vehicle_details               | 58                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Ex-Showroom Price        | Special character              | throws an error with error message | asset_details.xlsx | vehicle_details               | 59                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Ex-Showroom Price        | Special character              | throws an error with error message | asset_details.xlsx | vehicle_details               | 59                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Ex-Showroom Price        | Special character              | throws an error with error message | asset_details.xlsx | vehicle_details               | 59                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Ex-Showroom Price        | Special character              | throws an error with error message | asset_details.xlsx | vehicle_details               | 59                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Ex-Showroom Price        | Space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 60                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Ex-Showroom Price        | Space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 60                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Ex-Showroom Price        | Space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 60                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Ex-Showroom Price        | Space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 60                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Ex-Showroom Price        | Paise                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 61                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Ex-Showroom Price        | Paise                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 61                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Ex-Showroom Price        | Paise                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 61                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Ex-Showroom Price        | Paise                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 61                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Ex-Showroom Price        | zero value                     | does not throw any error           | asset_details.xlsx | vehicle_details               | 62                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Ex-Showroom Price        | zero value                     | does not throw any error           | asset_details.xlsx | vehicle_details               | 62                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Ex-Showroom Price        | zero value                     | does not throw any error           | asset_details.xlsx | vehicle_details               | 62                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Ex-Showroom Price        | zero value                     | does not throw any error           | asset_details.xlsx | vehicle_details               | 62                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Ex-Showroom Price        | Negative                       | throws an error with error message | asset_details.xlsx | vehicle_details               | 63                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Ex-Showroom Price        | Negative                       | throws an error with error message | asset_details.xlsx | vehicle_details               | 63                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Ex-Showroom Price        | Negative                       | throws an error with error message | asset_details.xlsx | vehicle_details               | 63                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Ex-Showroom Price        | Negative                       | throws an error with error message | asset_details.xlsx | vehicle_details               | 63                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Road Tax                 | Valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 64                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Road Tax                 | Valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 64                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Road Tax                 | Valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 64                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Road Tax                 | Valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 64                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Road Tax                 | upto 18 digits                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 65                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Road Tax                 | upto 18 digits                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 65                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Road Tax                 | upto 18 digits                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 65                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Road Tax                 | upto 18 digits                 | does not throw any error           | asset_details.xlsx | vehicle_details               | 65                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Road Tax                 | Both Numeric and alphabet      | throws an error with error message | asset_details.xlsx | vehicle_details               | 66                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Road Tax                 | Both Numeric and alphabet      | throws an error with error message | asset_details.xlsx | vehicle_details               | 66                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Road Tax                 | Both Numeric and alphabet      | throws an error with error message | asset_details.xlsx | vehicle_details               | 66                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Road Tax                 | Both Numeric and alphabet      | throws an error with error message | asset_details.xlsx | vehicle_details               | 66                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Road Tax                 | Special character              | throws an error with error message | asset_details.xlsx | vehicle_details               | 67                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Road Tax                 | Special character              | throws an error with error message | asset_details.xlsx | vehicle_details               | 67                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Road Tax                 | Special character              | throws an error with error message | asset_details.xlsx | vehicle_details               | 67                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Road Tax                 | Special character              | throws an error with error message | asset_details.xlsx | vehicle_details               | 67                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Road Tax                 | Space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 68                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Road Tax                 | Space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 68                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Road Tax                 | Space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 68                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Road Tax                 | Space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 68                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Road Tax                 | Paise                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 69                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Road Tax                 | Paise                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 69                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Road Tax                 | Paise                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 69                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Road Tax                 | Paise                          | does not throw any error           | asset_details.xlsx | vehicle_details               | 69                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Road Tax                 | zero value                     | does not throw any error           | asset_details.xlsx | vehicle_details               | 70                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Road Tax                 | zero value                     | does not throw any error           | asset_details.xlsx | vehicle_details               | 70                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Road Tax                 | zero value                     | does not throw any error           | asset_details.xlsx | vehicle_details               | 70                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Road Tax                 | zero value                     | does not throw any error           | asset_details.xlsx | vehicle_details               | 70                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Road Tax                 | Negative                       | throws an error with error message | asset_details.xlsx | vehicle_details               | 71                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Road Tax                 | Negative                       | throws an error with error message | asset_details.xlsx | vehicle_details               | 71                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Road Tax                 | Negative                       | throws an error with error message | asset_details.xlsx | vehicle_details               | 71                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Road Tax                 | Negative                       | throws an error with error message | asset_details.xlsx | vehicle_details               | 71                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Preferred Valuation Date | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 72                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Preferred Valuation Date | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 72                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Preferred Valuation Date | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 72                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Preferred Valuation Date | valid date format              | does not throw any error           | asset_details.xlsx | vehicle_details               | 72                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Preferred Valuation Date | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 73                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Preferred Valuation Date | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 73                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Preferred Valuation Date | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 73                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Preferred Valuation Date | invalid date format            | throws error with error message    | asset_details.xlsx | vehicle_details               | 73                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Preferred Valuation Date | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 74                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Preferred Valuation Date | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 74                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Preferred Valuation Date | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 74                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Preferred Valuation Date | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 74                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Preferred Valuation Date | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 75                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Preferred Valuation Date | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 75                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Preferred Valuation Date | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 75                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Preferred Valuation Date | past date                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 75                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Preferred Valuation Date | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 76                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Preferred Valuation Date | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 76                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Preferred Valuation Date | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 76                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Preferred Valuation Date | future date                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 76                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Preferred Valuation Date | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 77                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Preferred Valuation Date | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 77                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Preferred Valuation Date | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 77                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Preferred Valuation Date | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 77                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Preferred Valuation Date | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 78                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Preferred Valuation Date | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 78                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Preferred Valuation Date | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 78                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Preferred Valuation Date | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 78                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | No. Of Owners            | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 79                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | No. Of Owners            | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 79                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | No. Of Owners            | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 79                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | No. Of Owners            | valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details               | 79                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | No. Of Owners            | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 80                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | No. Of Owners            | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 80                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | No. Of Owners            | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 80                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | No. Of Owners            | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 80                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | No. Of Owners            | space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 81                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | No. Of Owners            | space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 81                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | No. Of Owners            | space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 81                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | No. Of Owners            | space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 81                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | No. Of Owners            | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 82                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | No. Of Owners            | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 82                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | No. Of Owners            | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 82                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | No. Of Owners            | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 82                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Month of Manufacture     | valid value with 12            | does not throw any error           | asset_details.xlsx | vehicle_details               | 83                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Month of Manufacture     | valid value with 12            | does not throw any error           | asset_details.xlsx | vehicle_details               | 83                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Month of Manufacture     | valid value with 12            | does not throw any error           | asset_details.xlsx | vehicle_details               | 83                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Month of Manufacture     | valid value with 12            | does not throw any error           | asset_details.xlsx | vehicle_details               | 83                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Month of Manufacture     | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 84                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Month of Manufacture     | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 84                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Month of Manufacture     | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 84                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Month of Manufacture     | both digits and characters     | throws an error with error message | asset_details.xlsx | vehicle_details               | 84                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Month of Manufacture     | space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 85                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Month of Manufacture     | space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 85                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Month of Manufacture     | space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 85                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Month of Manufacture     | space                          | throws an error with error message | asset_details.xlsx | vehicle_details               | 85                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Month of Manufacture     | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 86                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Month of Manufacture     | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 86                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Month of Manufacture     | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 86                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Month of Manufacture     | negative value                 | throws an error with error message | asset_details.xlsx | vehicle_details               | 86                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Year of Manufacture      | valid year with 2022           | does not throw any error           | asset_details.xlsx | vehicle_details               | 87                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Year of Manufacture      | valid year with 2022           | does not throw any error           | asset_details.xlsx | vehicle_details               | 87                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Year of Manufacture      | valid year with 2022           | does not throw any error           | asset_details.xlsx | vehicle_details               | 87                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Year of Manufacture      | valid year with 2022           | does not throw any error           | asset_details.xlsx | vehicle_details               | 87                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Year of Manufacture      | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 88                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Year of Manufacture      | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 88                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Year of Manufacture      | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 88                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Year of Manufacture      | special characters             | throws error with error message    | asset_details.xlsx | vehicle_details               | 88                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Year of Manufacture      | past year                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 89                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Year of Manufacture      | past year                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 89                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Year of Manufacture      | past year                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 89                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Year of Manufacture      | past year                      | does not throw any error           | asset_details.xlsx | vehicle_details               | 89                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Year of Manufacture      | future year                    | throws error with error message    | asset_details.xlsx | vehicle_details               | 90                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Year of Manufacture      | future year                    | throws error with error message    | asset_details.xlsx | vehicle_details               | 90                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Year of Manufacture      | future year                    | throws error with error message    | asset_details.xlsx | vehicle_details               | 90                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Year of Manufacture      | future year                    | throws error with error message    | asset_details.xlsx | vehicle_details               | 90                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Year of Manufacture      | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 91                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Year of Manufacture      | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 91                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Year of Manufacture      | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 91                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Year of Manufacture      | year less than 1942            | throws error with error message    | asset_details.xlsx | vehicle_details               | 91                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Year of Manufacture      | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 92                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Year of Manufacture      | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 92                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Year of Manufacture      | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 92                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Year of Manufacture      | year equal to 1942             | does not throw any error           | asset_details.xlsx | vehicle_details               | 92                                   |

#Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validating Registration Number breakup as <RegNumber1stBox> <RegNumber2ndBox> <RegNumber3rdBox> <RegNumber4thBox> without Parameter Sequence for Funding For as <FundingFor> in multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Vehicle Details section under collateral details page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetailsWB_vehicleDetails>" and row <AssetDetailsWB_vehicleDetails_rowNum>
    And user fills Engine Number along with Chassis Number
    When unchecks Parameter Sequence checkbox
    And user fills Registration Number breakup as "<RegNumber1stBox>" "<RegNumber2ndBox>" "<RegNumber3rdBox>" "<RegNumber4thBox>"
    Then Registration Number "<Throws_notThrows>" with proper message
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode | RegNumber1stBox | RegNumber2ndBox | RegNumber3rdBox             | RegNumber4thBox | Throws_notThrows                   | AssetDetailsWB     | AssetDetailsWB_vehicleDetails | AssetDetailsWB_vehicleDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 81                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 81                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 81                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 81                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 82                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 82                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 82                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 82                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 83                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 83                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 83                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 83                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 84                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 84                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 84                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 84                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 85                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 85                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 85                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 85                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 86                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 86                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 86                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 86                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 87                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 87                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 87                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 87                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 88                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 88                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 88                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 88                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 89                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 89                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 89                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 89                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 90                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 90                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 90                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 90                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 91                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 91                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 91                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 91                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 92                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 92                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 92                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 92                                   |

    #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validating Registration Number breakup as <RegNumber1stBox> <RegNumber2ndBox> <RegNumber3rdBox> <RegNumber4thBox> without Parameter Sequence for Funding For as <FundingFor> under multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Vehicle Details section under collateral details page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetailsWB_vehicleDetails>" and row <AssetDetailsWB_vehicleDetails_rowNum>
    And user fills Engine Number along with Chassis Number
    When unchecks Parameter Sequence checkbox
    And user fills Registration Number breakup as "<RegNumber1stBox>" "<RegNumber2ndBox>" "<RegNumber3rdBox>" "<RegNumber4thBox>"
    Then Registration Number "<Throws_notThrows>" with proper message
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode | RegNumber1stBox | RegNumber2ndBox | RegNumber3rdBox             | RegNumber4thBox | Throws_notThrows                   | AssetDetailsWB     | AssetDetailsWB_vehicleDetails | AssetDetailsWB_vehicleDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 81                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 81                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 81                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 81                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 82                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 82                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 82                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 82                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 83                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 83                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 83                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 83                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 84                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 84                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 84                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 84                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 85                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 85                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 85                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 85                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 86                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 86                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 86                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 86                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 87                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 87                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 87                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 87                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 88                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 88                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 88                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | asset_details.xlsx | vehicle_details               | 88                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 89                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 89                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 89                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 89                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 90                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 90                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 90                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 90                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 91                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 91                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 91                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 91                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 92                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 92                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 92                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | asset_details.xlsx | vehicle_details               | 92                                   |

  #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validating Registration Number breakup as <RegNumber1stBox> <RegNumber2ndBox> <RegNumber3rdBox> <RegNumber4thBox> with Parameter Sequence for Funding For as <FundingFor> in multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Vehicle Details section under collateral details page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills Engine Number along with Chassis Number
    When checks Parameter Sequence checkbox
    And user fills Registration Number breakup as "<RegNumber1stBox>" "<RegNumber2ndBox>" "<RegNumber3rdBox>" "<RegNumber4thBox>"
    Then Registration Number "<Throws_notThrows>" with proper message
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode | Throws_notThrows         | RegNumber1stBox | RegNumber2ndBox | RegNumber3rdBox             | RegNumber4thBox | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 81                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 81                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 81                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 81                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 82                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 82                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 82                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 82                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 83                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 83                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 83                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 83                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 84                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 84                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 84                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 84                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 85                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 85                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 85                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 85                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 86                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 86                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 86                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 86                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 87                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 87                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 87                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 87                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 88                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 88                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 88                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 88                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 89                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 89                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 89                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 89                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 90                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 90                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 90                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 90                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 91                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 91                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 91                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 91                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 92                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 92                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 92                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 92                     |

    #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validating Registration Number breakup as <RegNumber1stBox> <RegNumber2ndBox> <RegNumber3rdBox> <RegNumber4thBox> with Parameter Sequence for Funding For as <FundingFor> under multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Vehicle Details section under collateral details page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills Engine Number along with Chassis Number
    When checks Parameter Sequence checkbox
    And user fills Registration Number breakup as "<RegNumber1stBox>" "<RegNumber2ndBox>" "<RegNumber3rdBox>" "<RegNumber4thBox>"
    Then Registration Number "<Throws_notThrows>" with proper message
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode | Throws_notThrows         | RegNumber1stBox | RegNumber2ndBox | RegNumber3rdBox             | RegNumber4thBox | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 81                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 81                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 81                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 81                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 82                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 82                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 82                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 82                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 83                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 83                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 83                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 83                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 84                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 84                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 84                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 84                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 85                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 85                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 85                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 85                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 86                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 86                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 86                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 86                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 87                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 87                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 87                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 87                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 88                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 88                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 88                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 88                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 89                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 89                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 89                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 89                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 90                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 90                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 90                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 90                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 91                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 91                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 91                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 91                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 92                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 92                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 92                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | asset_details.xlsx | vehicle_details | 92                     |

#Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Registration number breakup validation with Parameter Sequence to without Parameter Sequence for Funding For as <FundingFor> in multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Vehicle Details section under collateral details page
    And checks Parameter Sequence checkbox
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills Registration Number breakup
    When unchecks Parameter Sequence checkbox
    Then Registration Number should be blank
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 16                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 16                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 16                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 16                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 17                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 17                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 17                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 17                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 18                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 18                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 18                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 18                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 19                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 19                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 19                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 19                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 20                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 20                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 20                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 20                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 21                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 21                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 21                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 21                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 22                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 22                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 22                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 22                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 23                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 23                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 23                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 23                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 24                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 24                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 24                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 24                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 25                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 25                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 25                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 25                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 26                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 26                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 26                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 26                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 27                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 27                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 27                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 27                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 28                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 28                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 28                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 28                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 29                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 29                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 29                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 29                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 30                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 30                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 30                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 30                               |

    #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Registration number breakup validation with Parameter Sequence to without Parameter Sequence for Funding For as <FundingFor> under multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Vehicle Details section under collateral details page
    And checks Parameter Sequence checkbox
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills Registration Number breakup
    When unchecks Parameter Sequence checkbox
    Then Registration Number should be blank
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | collateral.xlsx | vehicle_details           | 16                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | collateral.xlsx | vehicle_details           | 16                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | collateral.xlsx | vehicle_details           | 16                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | collateral.xlsx | vehicle_details           | 16                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | collateral.xlsx | vehicle_details           | 17                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | collateral.xlsx | vehicle_details           | 17                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | collateral.xlsx | vehicle_details           | 17                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | collateral.xlsx | vehicle_details           | 17                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | collateral.xlsx | vehicle_details           | 18                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | collateral.xlsx | vehicle_details           | 18                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | collateral.xlsx | vehicle_details           | 18                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | collateral.xlsx | vehicle_details           | 18                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | collateral.xlsx | vehicle_details           | 19                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | collateral.xlsx | vehicle_details           | 19                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | collateral.xlsx | vehicle_details           | 19                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | collateral.xlsx | vehicle_details           | 19                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | collateral.xlsx | vehicle_details           | 20                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | collateral.xlsx | vehicle_details           | 20                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | collateral.xlsx | vehicle_details           | 20                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | collateral.xlsx | vehicle_details           | 20                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | collateral.xlsx | vehicle_details           | 21                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | collateral.xlsx | vehicle_details           | 21                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | collateral.xlsx | vehicle_details           | 21                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | collateral.xlsx | vehicle_details           | 21                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | collateral.xlsx | vehicle_details           | 22                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | collateral.xlsx | vehicle_details           | 22                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | collateral.xlsx | vehicle_details           | 22                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | collateral.xlsx | vehicle_details           | 22                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | collateral.xlsx | vehicle_details           | 23                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | collateral.xlsx | vehicle_details           | 23                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | collateral.xlsx | vehicle_details           | 23                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | collateral.xlsx | vehicle_details           | 23                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | collateral.xlsx | vehicle_details           | 24                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | collateral.xlsx | vehicle_details           | 24                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | collateral.xlsx | vehicle_details           | 24                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | collateral.xlsx | vehicle_details           | 24                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | collateral.xlsx | vehicle_details           | 25                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | collateral.xlsx | vehicle_details           | 25                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | collateral.xlsx | vehicle_details           | 25                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | collateral.xlsx | vehicle_details           | 25                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | collateral.xlsx | vehicle_details           | 26                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | collateral.xlsx | vehicle_details           | 26                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | collateral.xlsx | vehicle_details           | 26                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | collateral.xlsx | vehicle_details           | 26                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | collateral.xlsx | vehicle_details           | 27                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | collateral.xlsx | vehicle_details           | 27                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | collateral.xlsx | vehicle_details           | 27                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | collateral.xlsx | vehicle_details           | 27                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | collateral.xlsx | vehicle_details           | 28                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | collateral.xlsx | vehicle_details           | 28                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | collateral.xlsx | vehicle_details           | 28                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | collateral.xlsx | vehicle_details           | 28                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | collateral.xlsx | vehicle_details           | 29                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | collateral.xlsx | vehicle_details           | 29                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | collateral.xlsx | vehicle_details           | 29                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | collateral.xlsx | vehicle_details           | 29                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | collateral.xlsx | vehicle_details           | 30                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | collateral.xlsx | vehicle_details           | 30                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | collateral.xlsx | vehicle_details           | 30                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | collateral.xlsx | vehicle_details           | 30                               |

      ##3 field combination
  #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate checks for duplicate collateral for Chassis Number Engine Number along with Registration number for Funding For as <FundingFor> in multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Vehicle Details section under collateral details page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And enters unique Chassis number
    And enters unique Engine number
    And enters unique Registration number
    When checks for duplicate collateral
    Then user should receive a proper popup message
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 39                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 39                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 39                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 39                               |

         ##3 field combination
  #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate checks for duplicate collateral for Chassis Number Engine Number along with Registration number for Funding For as <FundingFor> under multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Vehicle Details section under collateral details page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And enters unique Chassis number
    And enters unique Engine number
    And enters unique Registration number
    When checks for duplicate collateral
    Then user should receive a proper popup message
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | collateral.xlsx | vehicle_details           | 39                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | collateral.xlsx | vehicle_details           | 39                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | collateral.xlsx | vehicle_details           | 39                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | collateral.xlsx | vehicle_details           | 39                               |

  #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Registration number breakup validation for Funding For as <FundingFor> in multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Vehicle Details section under collateral details page
    When unchecks Parameter Sequence checkbox
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills Registration Number breakup
    Then expected value should be present in Registration Number for RC Authentication
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 3                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 3                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 3                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 3                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 4                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 4                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 4                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 4                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 5                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 5                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 5                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 5                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 6                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 6                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 6                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 6                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 7                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 7                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 7                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 7                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 8                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 8                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 8                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 8                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 9                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 9                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 9                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 9                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 10                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 10                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 10                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 10                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 11                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 11                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 11                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 11                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 12                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 12                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 12                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 12                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 13                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 13                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 13                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 13                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 14                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 14                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 14                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 14                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 15                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 15                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 15                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 15                               |

     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Registration number breakup validation for Funding For as <FundingFor> under multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Vehicle Details section under collateral details page
    When unchecks Parameter Sequence checkbox
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills Registration Number breakup
    Then expected value should be present in Registration Number for RC Authentication
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | collateral.xlsx | vehicle_details           | 3                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | collateral.xlsx | vehicle_details           | 3                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | collateral.xlsx | vehicle_details           | 3                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | collateral.xlsx | vehicle_details           | 3                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | collateral.xlsx | vehicle_details           | 4                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | collateral.xlsx | vehicle_details           | 4                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | collateral.xlsx | vehicle_details           | 4                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | collateral.xlsx | vehicle_details           | 4                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | collateral.xlsx | vehicle_details           | 5                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | collateral.xlsx | vehicle_details           | 5                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | collateral.xlsx | vehicle_details           | 5                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | collateral.xlsx | vehicle_details           | 5                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | collateral.xlsx | vehicle_details           | 6                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | collateral.xlsx | vehicle_details           | 6                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | collateral.xlsx | vehicle_details           | 6                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | collateral.xlsx | vehicle_details           | 6                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | collateral.xlsx | vehicle_details           | 7                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | collateral.xlsx | vehicle_details           | 7                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | collateral.xlsx | vehicle_details           | 7                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | collateral.xlsx | vehicle_details           | 7                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | collateral.xlsx | vehicle_details           | 8                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | collateral.xlsx | vehicle_details           | 8                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | collateral.xlsx | vehicle_details           | 8                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | collateral.xlsx | vehicle_details           | 8                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | collateral.xlsx | vehicle_details           | 9                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | collateral.xlsx | vehicle_details           | 9                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | collateral.xlsx | vehicle_details           | 9                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | collateral.xlsx | vehicle_details           | 9                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | collateral.xlsx | vehicle_details           | 10                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | collateral.xlsx | vehicle_details           | 10                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | collateral.xlsx | vehicle_details           | 10                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | collateral.xlsx | vehicle_details           | 10                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | collateral.xlsx | vehicle_details           | 11                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | collateral.xlsx | vehicle_details           | 11                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | collateral.xlsx | vehicle_details           | 11                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | collateral.xlsx | vehicle_details           | 11                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | collateral.xlsx | vehicle_details           | 12                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | collateral.xlsx | vehicle_details           | 12                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | collateral.xlsx | vehicle_details           | 12                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | collateral.xlsx | vehicle_details           | 12                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | collateral.xlsx | vehicle_details           | 13                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | collateral.xlsx | vehicle_details           | 13                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | collateral.xlsx | vehicle_details           | 13                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | collateral.xlsx | vehicle_details           | 13                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | collateral.xlsx | vehicle_details           | 14                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | collateral.xlsx | vehicle_details           | 14                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | collateral.xlsx | vehicle_details           | 14                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | collateral.xlsx | vehicle_details           | 14                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | collateral.xlsx | vehicle_details           | 15                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | collateral.xlsx | vehicle_details           | 15                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | collateral.xlsx | vehicle_details           | 15                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | collateral.xlsx | vehicle_details           | 15                               |

  #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:User modifies <FieldName> after running dedupe with save for Funding For as <FundingFor> in multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Vehicle Details section under collateral details page
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum2>
    When user modifies "<FieldName>"
    And user saves the Collateral Details
    Then user gets a proper notification message
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode | FieldName           | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum2 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Engine Number       | collateral.xlsx | vehicle_details           | 70                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Engine Number       | collateral.xlsx | vehicle_details           | 70                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Engine Number       | collateral.xlsx | vehicle_details           | 70                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Engine Number       | collateral.xlsx | vehicle_details           | 70                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Chasis Number       | collateral.xlsx | vehicle_details           | 71                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Chasis Number       | collateral.xlsx | vehicle_details           | 71                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Chasis Number       | collateral.xlsx | vehicle_details           | 71                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Chasis Number       | collateral.xlsx | vehicle_details           | 71                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Registration Number | collateral.xlsx | vehicle_details           | 72                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Registration Number | collateral.xlsx | vehicle_details           | 72                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Registration Number | collateral.xlsx | vehicle_details           | 72                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Registration Number | collateral.xlsx | vehicle_details           | 72                                |

     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:User modifies <FieldName> after running dedupe with save for Funding For as <FundingFor> under multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Vehicle Details section under collateral details page
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum2>
    When user modifies "<FieldName>"
    And user saves the Collateral Details
    Then user gets a proper notification message
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode | FieldName           | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum2 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | Engine Number       | collateral.xlsx | vehicle_details           | 70                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | Engine Number       | collateral.xlsx | vehicle_details           | 70                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | Engine Number       | collateral.xlsx | vehicle_details           | 70                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | Engine Number       | collateral.xlsx | vehicle_details           | 70                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | Chasis Number       | collateral.xlsx | vehicle_details           | 71                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | Chasis Number       | collateral.xlsx | vehicle_details           | 71                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | Chasis Number       | collateral.xlsx | vehicle_details           | 71                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | Chasis Number       | collateral.xlsx | vehicle_details           | 71                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | Registration Number | collateral.xlsx | vehicle_details           | 72                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | Registration Number | collateral.xlsx | vehicle_details           | 72                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | Registration Number | collateral.xlsx | vehicle_details           | 72                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | Registration Number | collateral.xlsx | vehicle_details           | 72                                |

     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:User modifies <FirstField> <SecondField> after running with save for Funding For as <FundingFor> in multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user opens Vehicle Details section
    And user fills mandatory fields of vehicle details section
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum2>
    And user modifies "<FirstField>" "<SecondField>"
    When user saves the Collateral Details
    Then user gets a proper notification message
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode | FirstField    | SecondField         | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum2 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Engine Number | Chasis Number       | collateral.xlsx | vehicle_details           | 73                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Engine Number | Chasis Number       | collateral.xlsx | vehicle_details           | 73                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Engine Number | Chasis Number       | collateral.xlsx | vehicle_details           | 73                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Engine Number | Chasis Number       | collateral.xlsx | vehicle_details           | 73                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Engine Number | Registration Number | collateral.xlsx | vehicle_details           | 74                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Engine Number | Registration Number | collateral.xlsx | vehicle_details           | 74                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Engine Number | Registration Number | collateral.xlsx | vehicle_details           | 74                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Engine Number | Registration Number | collateral.xlsx | vehicle_details           | 74                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Chasis Number | Registration Number | collateral.xlsx | vehicle_details           | 75                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Chasis Number | Registration Number | collateral.xlsx | vehicle_details           | 75                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Chasis Number | Registration Number | collateral.xlsx | vehicle_details           | 75                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Chasis Number | Registration Number | collateral.xlsx | vehicle_details           | 75                                |

       #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:User modifies <FirstField> <SecondField> after running with save for Funding For as <FundingFor> under multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user opens Vehicle Details section
    And user fills mandatory fields of vehicle details section
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum2>
    And user modifies "<FirstField>" "<SecondField>"
    When user saves the Collateral Details
    Then user gets a proper notification message
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode | FirstField    | SecondField         | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum2 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | Engine Number | Chasis Number       | collateral.xlsx | vehicle_details           | 73                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | Engine Number | Chasis Number       | collateral.xlsx | vehicle_details           | 73                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | Engine Number | Chasis Number       | collateral.xlsx | vehicle_details           | 73                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | Engine Number | Chasis Number       | collateral.xlsx | vehicle_details           | 73                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | Engine Number | Registration Number | collateral.xlsx | vehicle_details           | 74                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | Engine Number | Registration Number | collateral.xlsx | vehicle_details           | 74                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | Engine Number | Registration Number | collateral.xlsx | vehicle_details           | 74                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | Engine Number | Registration Number | collateral.xlsx | vehicle_details           | 74                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | Chasis Number | Registration Number | collateral.xlsx | vehicle_details           | 75                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | Chasis Number | Registration Number | collateral.xlsx | vehicle_details           | 75                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | Chasis Number | Registration Number | collateral.xlsx | vehicle_details           | 75                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | Chasis Number | Registration Number | collateral.xlsx | vehicle_details           | 75                                |


     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:User modifies <FirstField> <SecondField> <ThirdField> after running dedupe with save for Funding For as <FundingFor> in multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user opens Vehicle Details section
    And user fills mandatory fields of vehicle details section
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum2>
    When user modifies "<FirstField>" "<SecondField>" "<ThirdField>"
    And user saves the Collateral Details
    Then user gets a proper notification message
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode | FirstField    | SecondField   | ThirdField          | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum2 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Engine Number | Chasis Number | Registration Number | collateral.xlsx | vehicle_details           | 69                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Engine Number | Chasis Number | Registration Number | collateral.xlsx | vehicle_details           | 69                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Engine Number | Chasis Number | Registration Number | collateral.xlsx | vehicle_details           | 69                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Engine Number | Chasis Number | Registration Number | collateral.xlsx | vehicle_details           | 69                                |

      #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:User modifies <FirstField> <SecondField> <ThirdField> after running dedupe with save for Funding For as <FundingFor> under multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user opens Vehicle Details section
    And user fills mandatory fields of vehicle details section
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum2>
    When user modifies "<FirstField>" "<SecondField>" "<ThirdField>"
    And user saves the Collateral Details
    Then user gets a proper notification message
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode | FirstField    | SecondField   | ThirdField          | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum2 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | Engine Number | Chasis Number | Registration Number | collateral.xlsx | vehicle_details           | 69                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | Engine Number | Chasis Number | Registration Number | collateral.xlsx | vehicle_details           | 69                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | Engine Number | Chasis Number | Registration Number | collateral.xlsx | vehicle_details           | 69                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | Engine Number | Chasis Number | Registration Number | collateral.xlsx | vehicle_details           | 69                                |

  #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate while selecting Choose Color button list of field should be autofilled in vehicle Details for Funding For as <FundingFor> in multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
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
  Scenario Outline:Validate while selecting Choose Color button list of field should be autofilled in vehicle Details for Funding For as <FundingFor> under multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
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
  Scenario Outline:Validate that same data should be display while selection of Preferred Valuation Time with <var> in vehicle details for Funding For as <FundingFor> in multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Vehicle Details section under collateral details page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetailsWB_vehicleDetails>" and row <AssetDetailsWB_vehicleDetails_rowNum>
    When user select Preferred Valuation Time with "<var>"
    Then "<var>" should be displayed for Preferred Valuation Time
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode | var   | AssetDetailsWB     | AssetDetailsWB_vehicleDetails | AssetDetailsWB_vehicleDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | PM    | asset_details.xlsx | vehicle_details               | 121                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | PM    | asset_details.xlsx | vehicle_details               | 121                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | PM    | asset_details.xlsx | vehicle_details               | 121                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | PM    | asset_details.xlsx | vehicle_details               | 121                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | AM    | asset_details.xlsx | vehicle_details               | 120                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | AM    | asset_details.xlsx | vehicle_details               | 120                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | AM    | asset_details.xlsx | vehicle_details               | 120                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | AM    | asset_details.xlsx | vehicle_details               | 120                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | 12:24 | asset_details.xlsx | vehicle_details               | 120                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | 12:24 | asset_details.xlsx | vehicle_details               | 120                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | 12:24 | asset_details.xlsx | vehicle_details               | 120                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | 12:24 | asset_details.xlsx | vehicle_details               | 120                                  |

      #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate that same data should be display while selection of Preferred Valuation Time with <var> in vehicle details for Funding For as <FundingFor> under multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Vehicle Details section under collateral details page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetailsWB_vehicleDetails>" and row <AssetDetailsWB_vehicleDetails_rowNum>
    When user select Preferred Valuation Time with "<var>"
    Then "<var>" should be displayed for Preferred Valuation Time
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode | var   | AssetDetailsWB     | AssetDetailsWB_vehicleDetails | AssetDetailsWB_vehicleDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | PM    | asset_details.xlsx | vehicle_details               | 121                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | PM    | asset_details.xlsx | vehicle_details               | 121                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | PM    | asset_details.xlsx | vehicle_details               | 121                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | PM    | asset_details.xlsx | vehicle_details               | 121                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | AM    | asset_details.xlsx | vehicle_details               | 120                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | AM    | asset_details.xlsx | vehicle_details               | 120                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | AM    | asset_details.xlsx | vehicle_details               | 120                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | AM    | asset_details.xlsx | vehicle_details               | 120                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | 12:24 | asset_details.xlsx | vehicle_details               | 120                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | 12:24 | asset_details.xlsx | vehicle_details               | 120                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | 12:24 | asset_details.xlsx | vehicle_details               | 120                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | 12:24 | asset_details.xlsx | vehicle_details               | 120                                  |

  #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate <Field_Name> dependent on Registration Date in vehicle Details for Funding For as <FundingFor> in multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Vehicle Details section under collateral details page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetailsWB_vehicleDetails>" and row <AssetDetailsWB_vehicleDetails_rowNum>
    When user fill Registration Date and "<Field_Name>" with "<var>"
    Then The "<Field_Name>" should "<Throws_notThrows>"
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode | Field_Name               | var                                     | AssetDetailsWB     | AssetDetailsWB_vehicleDetails | AssetDetailsWB_vehicleDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Registration Expiry Date | greater than Registration Date          | asset_details.xlsx | vehicle_details               | 114                                  | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Registration Expiry Date | greater than Registration Date          | asset_details.xlsx | vehicle_details               | 114                                  | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Registration Expiry Date | greater than Registration Date          | asset_details.xlsx | vehicle_details               | 114                                  | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Registration Expiry Date | greater than Registration Date          | asset_details.xlsx | vehicle_details               | 114                                  | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Registration Expiry Date | less than or equal to Registration Date | asset_details.xlsx | vehicle_details               | 115                                  | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Registration Expiry Date | less than or equal to Registration Date | asset_details.xlsx | vehicle_details               | 115                                  | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Registration Expiry Date | less than or equal to Registration Date | asset_details.xlsx | vehicle_details               | 115                                  | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Registration Expiry Date | less than or equal to Registration Date | asset_details.xlsx | vehicle_details               | 115                                  | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Year of Manufacture      | greater than Registration Date          | asset_details.xlsx | vehicle_details               | 116                                  | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Year of Manufacture      | greater than Registration Date          | asset_details.xlsx | vehicle_details               | 116                                  | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Year of Manufacture      | greater than Registration Date          | asset_details.xlsx | vehicle_details               | 116                                  | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Year of Manufacture      | greater than Registration Date          | asset_details.xlsx | vehicle_details               | 116                                  | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Year of Manufacture      | less than or equal to Registration Date | asset_details.xlsx | vehicle_details               | 117                                  | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Year of Manufacture      | less than or equal to Registration Date | asset_details.xlsx | vehicle_details               | 117                                  | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Year of Manufacture      | less than or equal to Registration Date | asset_details.xlsx | vehicle_details               | 117                                  | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Year of Manufacture      | less than or equal to Registration Date | asset_details.xlsx | vehicle_details               | 117                                  | does not throw any error           |

     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate <Field_Name> dependent on Registration Date in vehicle Details for Funding For as <FundingFor> under multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Vehicle Details section under collateral details page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetailsWB_vehicleDetails>" and row <AssetDetailsWB_vehicleDetails_rowNum>
    When user fill Registration Date and "<Field_Name>" with "<var>"
    Then The "<Field_Name>" should "<Throws_notThrows>"
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode | Field_Name               | var                                     | AssetDetailsWB     | AssetDetailsWB_vehicleDetails | AssetDetailsWB_vehicleDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | Registration Expiry Date | greater than Registration Date          | asset_details.xlsx | vehicle_details               | 114                                  | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | Registration Expiry Date | greater than Registration Date          | asset_details.xlsx | vehicle_details               | 114                                  | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | Registration Expiry Date | greater than Registration Date          | asset_details.xlsx | vehicle_details               | 114                                  | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | Registration Expiry Date | greater than Registration Date          | asset_details.xlsx | vehicle_details               | 114                                  | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | Registration Expiry Date | less than or equal to Registration Date | asset_details.xlsx | vehicle_details               | 115                                  | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | Registration Expiry Date | less than or equal to Registration Date | asset_details.xlsx | vehicle_details               | 115                                  | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | Registration Expiry Date | less than or equal to Registration Date | asset_details.xlsx | vehicle_details               | 115                                  | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | Registration Expiry Date | less than or equal to Registration Date | asset_details.xlsx | vehicle_details               | 115                                  | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | Year of Manufacture      | greater than Registration Date          | asset_details.xlsx | vehicle_details               | 116                                  | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | Year of Manufacture      | greater than Registration Date          | asset_details.xlsx | vehicle_details               | 116                                  | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | Year of Manufacture      | greater than Registration Date          | asset_details.xlsx | vehicle_details               | 116                                  | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | Year of Manufacture      | greater than Registration Date          | asset_details.xlsx | vehicle_details               | 116                                  | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | Year of Manufacture      | less than or equal to Registration Date | asset_details.xlsx | vehicle_details               | 117                                  | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | Year of Manufacture      | less than or equal to Registration Date | asset_details.xlsx | vehicle_details               | 117                                  | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | Year of Manufacture      | less than or equal to Registration Date | asset_details.xlsx | vehicle_details               | 117                                  | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | Year of Manufacture      | less than or equal to Registration Date | asset_details.xlsx | vehicle_details               | 117                                  | does not throw any error           |

  #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate RC Received Date dependent on Registration Date in vehicle Details for Funding For as <FundingFor> in multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Vehicle Details section under collateral details page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetailsWB_vehicleDetails>" and row <AssetDetailsWB_vehicleDetails_rowNum>
    When user fill Registration Date and RC Date with "<var>"
    Then RC Received Date should "<Throws_notThrows>"
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode | var                                     | AssetDetailsWB     | AssetDetailsWB_vehicleDetails | AssetDetailsWB_vehicleDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | less than or equal to Registration Date | asset_details.xlsx | vehicle_details               | 118                                  | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | less than or equal to Registration Date | asset_details.xlsx | vehicle_details               | 118                                  | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | less than or equal to Registration Date | asset_details.xlsx | vehicle_details               | 118                                  | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | less than or equal to Registration Date | asset_details.xlsx | vehicle_details               | 118                                  | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | greater than Registration Date          | asset_details.xlsx | vehicle_details               | 119                                  | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | greater than Registration Date          | asset_details.xlsx | vehicle_details               | 119                                  | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | greater than Registration Date          | asset_details.xlsx | vehicle_details               | 119                                  | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | greater than Registration Date          | asset_details.xlsx | vehicle_details               | 119                                  | does not throw any error           |

    #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate RC Received Date dependent on Registration Date in vehicle Details for Funding For as <FundingFor> under multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Vehicle Details section under collateral details page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetailsWB_vehicleDetails>" and row <AssetDetailsWB_vehicleDetails_rowNum>
    When user fill Registration Date and RC Date with "<var>"
    Then RC Received Date should "<Throws_notThrows>"
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode | var                                     | AssetDetailsWB     | AssetDetailsWB_vehicleDetails | AssetDetailsWB_vehicleDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | less than or equal to Registration Date | asset_details.xlsx | vehicle_details               | 118                                  | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | less than or equal to Registration Date | asset_details.xlsx | vehicle_details               | 118                                  | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | less than or equal to Registration Date | asset_details.xlsx | vehicle_details               | 118                                  | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | less than or equal to Registration Date | asset_details.xlsx | vehicle_details               | 118                                  | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | greater than Registration Date          | asset_details.xlsx | vehicle_details               | 119                                  | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | greater than Registration Date          | asset_details.xlsx | vehicle_details               | 119                                  | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | greater than Registration Date          | asset_details.xlsx | vehicle_details               | 119                                  | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | greater than Registration Date          | asset_details.xlsx | vehicle_details               | 119                                  | does not throw any error           |

   #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate Asset Age (Months) should be autofill while entering value in Year of Manufacture for Funding For as <FundingFor> in multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Vehicle Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "vehicle_details" and row 116
    When user fills Year of Manufacture
    Then Asset Age should be autofilled
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
  Scenario Outline:Validate Asset Age (Months) should be autofill while entering value in Year of Manufacture for Funding For as <FundingFor> under multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Vehicle Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "vehicle_details" and row 116
    When user fills Year of Manufacture
    Then Asset Age should be autofilled
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   |


