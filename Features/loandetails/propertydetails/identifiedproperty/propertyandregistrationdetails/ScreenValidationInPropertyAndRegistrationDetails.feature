@Epic-Loan_Application_Details
@ReviewedBy-None
@NotImplemented
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@Conventional
@Islamic
@count

Feature:Screen Validation In Property And Registration Details In Property Details


    ###GWTType:FieldValidation
   ####exploration
  #FeatureID-ACAUTOCAS-173
  Scenario Outline:Validate fields are displayed under property & registration details in property details at <Stage>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7
    And application has identified property as a primary collateral
    When user selects the home loan application of "<Stage>" application
    And user opens the property details
    And user opens the property registration details
    And user selects new agreement details
    Then Fields with type are displayed
      | Field_Name                | Type     |
      | Registraion Number        | textbox  |
      | Agreement Type            | dropdown |
      | SRO                       | dropdown |
      | Sale Deed Number          | textbox  |
      | Registration Date         | date     |
      | Sale Deed Date            | date     |
      | Agreement Value           | money    |
      | Amenities Agreement Value | money    |
      | Remarks                   | textarea |
      | create another after this | checkbox |
      | Done                      | button   |
      | Cancel                    | button   |
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
 #FeatureID-ACAUTOCAS-173
  Scenario Outline:Validate tooltip for <Field_Name> in property and registration details accordion of property details at lead details of <ProductType>
    When user creates a new individual application for "<ProductType>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "sourcing_details_home" and row 0
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_details_home" and row 0
    And user fills property details home page
    And user opens the property & registration details accordion
    And user selects the "<Field_Name>"
    Then tooltip for "<Field_Name>" is displayed
      | Registraion Number        |
      | Agreement Type            |
      | SRO                       |
      | Sale Deed Number          |
      | Registration Date         |
      | Sale Deed Date            |
      | Agreement Value           |
      | Amenities Agreement Value |
      | Remarks                   |
    Examples:
      | ProductType   |
      | <ProductType> |

