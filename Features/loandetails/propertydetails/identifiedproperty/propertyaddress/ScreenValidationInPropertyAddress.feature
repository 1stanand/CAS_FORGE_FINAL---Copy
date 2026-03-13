@Epic-Loan_Application_Details
@ReviewedBy-None
@NotImplemented
@Conventional
@Islamic
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
  @count
#FeatureID-ACAUTOCAS-4169
Feature:Screen Validation In Property Address In Property Details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

    ###GWTType:FieldValidation
   ####exploration
  #FeatureID-ACAUTOCAS-173
  Scenario Outline:Validate fields are displayed under property address in property details at <Stage>
    And application has identified property as a primary collateral
    When user selects the home loan application of "<Stage>" application
    And user opens the property details
    And user opens the property address
    Then Fields with type are displayed
      | Field_Name          | Type     |
      | Address Type        | dropdown |
      | Full Address        | lov      |
      | Country             | lov      |
      | Flat/Plot Number    | textbox  |
      | Address Line 2      | textbox  |
      | Address Line 3      | textbox  |
      | PinCode             | lov      |
      | Region              | lov      |
      | State               | lov      |
      | City                | lov      |
      | District            | lov      |
      | Taluka              | lov      |
      | Village             | lov      |
      | Residence Status    | lov      |
      | Residence Type      | lov      |
      | Landmark            | textarea |
      | Primary Phone       | phone    |
      | Mobile Phone        | phone    |
      | Is address verified | checkbox |
    Examples:
      | Stage                |
      | lead details         |
      | login acceptance     |
      | dde                  |
      | recommendation       |
      | credit approval      |
      | reconsideration      |
      | post approval        |
      | disbursal initiation |
      | disbursal author     |
      | ICD                  |

#Tooltip Validation
   #${ProductType:["HL","MHL"]}
  Scenario Outline:Validate tooltip for <Field_Name> in property address details accordion of property details at lead details of <ProductType>
    When user creates a new individual application for "<ProductType>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "sourcing_details_home" and row 0
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_details_home" and row 0
    And user fills property details home page
    And user opens the property address accordion
    And user selects the "<Field_Name>"
    Then tooltip for "<Field_Name>" is displayed
      | Address Type     |
      | Full Address     |
      | Country          |
      | Flat/Plot Number |
      | Address Line 2   |
      | Address Line 3   |
      | PinCode          |
      | Region           |
      | State            |
      | City             |
      | District         |
      | Taluka           |
      | Village          |
      | Residence Status |
      | Residence Type   |
      | Landmark         |
      | Primary Phone    |
      | Mobile Phone     |
    Examples:
      | ProductType   |
      | <ProductType> |

