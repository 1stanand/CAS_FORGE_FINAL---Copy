@Epic-Loan_Application_Details
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@ImplementedBy-aman.nagarkoti
@ReviewedByDEV
@Conventional
@Islamic
#FeatureID-ACAUTOCAS-4169
Feature:Dependent Field Validation Of Property Details With Application Type As Identified Property With Save

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7
    And user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 33
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 0
    And user fills property details home page with "mandatory" fields for "Property Identified"
    And user opens property address details section in property details

  @Release3
  Scenario Outline: ACAUTOCAS-4986: In selection of state
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_propertyAddress>" and row <PropertyDetails_propertyAddress_rowNum>
    When user selects state in property address details
    Then all values should be appear in "<var>" field as per selected state

    Examples:
      | var      | PropertyDetailsWB     | PropertyDetails_propertyAddress | PropertyDetails_propertyAddress_rowNum |
      | city     | property_details.xlsx | property_address                | 39                                     |
      | district | property_details.xlsx | property_address                | 39                                     |

  Scenario Outline:ACAUTOCAS-4987: In selection of pin code from list "<var>" fills automatically
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_propertyAddress>" and row <PropertyDetails_propertyAddress_rowNum>
    When user enters the pin code
    Then "<var>" field is filled automatically in property address details
    @Release3
    Examples:
      | var      | PropertyDetailsWB     | PropertyDetails_propertyAddress | PropertyDetails_propertyAddress_rowNum |
      | state    | property_details.xlsx | property_address                | 40                                     |
      | region   | property_details.xlsx | property_address                | 41                                     |
      | city     | property_details.xlsx | property_address                | 42                                     |
      | district | property_details.xlsx | property_address                | 43                                     |
    @NotImplemented
    Examples:
      | var     | PropertyDetailsWB     | PropertyDetails_propertyAddress | PropertyDetails_propertyAddress_rowNum |
      | taluka  | property_details.xlsx | property_address                | 40                                     |
      | village | property_details.xlsx | property_address                | 41                                     |

  @Release2
  Scenario Outline: ACAUTOCAS-4988: Add valid <FieldName> number <variant> in property address
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_propertyAddress>" and row <PropertyDetails_propertyAddress_rowNum>
    When user selects "<FieldName>" number of "<variant>"
    Then ISD code should change accordingly in "<FieldName>" field

    Examples:
      | variant         | FieldName     | PropertyDetailsWB     | PropertyDetails_propertyAddress | PropertyDetails_propertyAddress_rowNum |
      | india           | Primary Phone | property_details.xlsx | property_address                | 44                                     |
      | india           | Primary Phone | property_details.xlsx | property_address                | 45                                     |
      | foreign country | Mobile Phone  | property_details.xlsx | property_address                | 46                                     |
      | foreign country | Mobile Phone  | property_details.xlsx | property_address                | 47                                     |

  @Release2
  Scenario Outline:ACAUTOCAS-4989: Selecting <variant> to add <FieldName> number in property address
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_propertyAddress>" and row <PropertyDetails_propertyAddress_rowNum>
    When user selects "<variant>" in country field in property address details
    Then ISD code should change accordingly in "<FieldName>" field

    Examples:
      | variant            | FieldName     | PropertyDetailsWB     | PropertyDetails_propertyAddress | PropertyDetails_propertyAddress_rowNum |
      | India as a country | Primary Phone | property_details.xlsx | property_address                | 48                                     |
      | India as a country | Primary Phone | property_details.xlsx | property_address                | 49                                     |
      | Foreign country    | Mobile Phone  | property_details.xlsx | property_address                | 50                                     |
      | Foreign country    | Mobile Phone  | property_details.xlsx | property_address                | 51                                     |
