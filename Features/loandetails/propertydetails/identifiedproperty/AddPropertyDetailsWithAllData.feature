@Epic-Loan_Application_Details
@ReviewedBy-tushar.chauhan
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@Release3
@Conventional
@Islamic
Feature:Add Identified Property Details With All Data

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#at lead details
#  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @Sanity
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9961: Fill identified property details with all data for collateral subtype as <collateral_subtype> at lead detail
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    Then property details are saved successfully
    Examples:
      | collateral_subtype          | Mandatory_NonMandatory | Loan_Type | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Application Type    |
      | ready property              | all                    | Home Loan | property_details.xlsx | home                 | 0                           | Property Identified |
      | construction on land        | all                    | Home Loan | property_details.xlsx | home                 | 27                          | Property Identified |
      | plot plus self construction | all                    | Home Loan | property_details.xlsx | home                 | 26                          | Property Identified |
      | purchase a plot             | all                    | Home Loan | property_details.xlsx | home                 | 29                          | Property Identified |

#    with builder details at lead
  #FeatureID-ACAUTOCAS-5912,ACAUTOCAS-5397
  @Sanity
  @ImplementedBy-aryan.jain
  Scenario: ACAUTOCAS-9962: Fill identified property details with all data for collateral subtype as builder property under construction at lead detail
    And user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 28
    And user fills property details home page with "all" fields for "Property Identified"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "all" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    Then property details are saved successfully

    #ready property, purchase a plot builder constructed
    #FeatureID-ACAUTOCAS-5397
  @Sanity
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9963: Fill identified property details with all data for collateral subtype as <collateral_subtype> which is builder constructed at lead detail
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user checked the is builder constructed checkbox
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    Then property details are saved successfully
    Examples:
      | collateral_subtype | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Loan_Type | Mandatory_NonMandatory | Application Type    |
      | ready property     | property_details.xlsx | home                 | 0                           | Home Loan | all                    | Property Identified |
      | purchase a plot    | property_details.xlsx | home                 | 29                          | Home Loan | all                    | Property Identified |

#without check for dedupe
#  at lead details
#  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-14030: Fill identified property details with all data and without check for duplicates for collateral subtype as <collateral_subtype> at lead detail
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    Then failure message is displayed
    Examples:
      | collateral_subtype          | Mandatory_NonMandatory | Loan_Type | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Application Type    |
      | ready property              | all                    | Home Loan | property_details.xlsx | home                 | 0                           | Property Identified |
      | construction on land        | all                    | Home Loan | property_details.xlsx | home                 | 27                          | Property Identified |
      | plot plus self construction | all                    | Home Loan | property_details.xlsx | home                 | 26                          | Property Identified |
      | purchase a plot             | all                    | Home Loan | property_details.xlsx | home                 | 29                          | Property Identified |

#    with builder details at lead
  #FeatureID-ACAUTOCAS-5912,ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario: ACAUTOCAS-14031: Fill identified property details with all data and without check for duplicates for collateral subtype as builder property under construction at lead detail
    And user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 28
    And user fills property details home page with "all" fields for "Property Identified"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "all" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    Then failure message is displayed

#ready property, purchase a plot builder constructed
   #FeatureID-ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-14032: Fill identified property details with all data and without check for duplicates for collateral subtype as <collateral_subtype> which is builder constructed at lead detail
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user checked the is builder constructed checkbox
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    Then failure message is displayed
    Examples:
      | collateral_subtype | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Loan_Type | Mandatory_NonMandatory | Application Type    |
      | ready property     | property_details.xlsx | home                 | 0                           | Home Loan | all                    | Property Identified |
      | purchase a plot    | property_details.xlsx | home                 | 29                          | Home Loan | all                    | Property Identified |

  @ImplementedBy-aryan.jain
# FeatureID-ACAUTOCAS-5967
  Scenario Outline:ACAUTOCAS-9964: Fill identified property details with all data for collateral subtype as <collateral_subtype> at <Var_Stage> stage
    And user opens an application at "<Var_Stage>" stage from application grid
    And property details are not filled for the application
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    Then property details are saved successfully
    Examples:
      | collateral_subtype          | Var_Stage                 | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Mandatory_NonMandatory | Application Type    |
      | ready property              | login acceptance_indiv_hl | property_details.xlsx | home                 | 0                           | all                    | Property Identified |
      | construction on land        | login acceptance_indiv_hl | property_details.xlsx | home                 | 27                          | all                    | Property Identified |
      | plot plus self construction | login acceptance_indiv_hl | property_details.xlsx | home                 | 26                          | all                    | Property Identified |
      | purchase a plot             | login acceptance_indiv_hl | property_details.xlsx | home                 | 29                          | all                    | Property Identified |
      | ready property              | dde_indiv_hl              | property_details.xlsx | home                 | 0                           | all                    | Property Identified |
      | construction on land        | dde_indiv_hl              | property_details.xlsx | home                 | 27                          | all                    | Property Identified |
      | plot plus self construction | dde_indiv_hl              | property_details.xlsx | home                 | 26                          | all                    | Property Identified |
      | purchase a plot             | dde_indiv_hl              | property_details.xlsx | home                 | 29                          | all                    | Property Identified |

    #with builder details at login dde
  #FeatureID-ACAUTOCAS-5912,ACAUTOCAS-5397
  @Sanity
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9965: Fill identified property details with all data for collateral subtype as builder property under construction at <Var_Stage> stage
    And user opens an application at "<Var_Stage>" stage from application grid
    And property details are not filled for the application
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 28
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    Then property details are saved successfully
    Examples:
      | Var_Stage                 | Mandatory_NonMandatory | Application Type    |
      | login acceptance_indiv_hl | all                    | Property Identified |
      | dde_indiv_hl              | all                    | Property Identified |

# ready property, purchase a plot builder constructed
   #FeatureID-ACAUTOCAS-5397
  @Sanity
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9966: Fill identified property details with all data for collateral subtype as <collateral_subtype> which is builder constructed at <Var_Stage> stage
    And user opens an application at "<Var_Stage>" stage from application grid
    And property details are not filled for the application
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user checked the is builder constructed checkbox
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    Then property details are saved successfully
    Examples:
      | collateral_subtype | Var_Stage                 | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Mandatory_NonMandatory | Application Type    |
      | ready property     | login acceptance_indiv_hl | property_details.xlsx | home                 | 0                           | all                    | Property Identified |
      | purchase a plot    | login acceptance_indiv_hl | property_details.xlsx | home                 | 29                          | all                    | Property Identified |
      | ready property     | dde_indiv_hl              | property_details.xlsx | home                 | 0                           | all                    | Property Identified |
      | purchase a plot    | dde_indiv_hl              | property_details.xlsx | home                 | 29                          | all                    | Property Identified |

  @ImplementedBy-aryan.jain
  #FeatureID-ACAUTOCAS-5967
  Scenario Outline: ACAUTOCAS-14033: Fill identified property details with all data and without check for duplicates for collateral subtype as <collateral_subtype> at <Var_Stage> stage
    And user opens an application at "<Var_Stage>" stage from application grid
    And property details are not filled for the application
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user checked the is builder constructed checkbox
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    Then failure message is displayed
    Examples:
      | collateral_subtype          | Var_Stage                 | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Mandatory_NonMandatory | Application Type    |
      | ready property              | login acceptance_indiv_hl | property_details.xlsx | home                 | 0                           | all                    | Property Identified |
      | construction on land        | login acceptance_indiv_hl | property_details.xlsx | home                 | 27                          | all                    | Property Identified |
      | plot plus self construction | login acceptance_indiv_hl | property_details.xlsx | home                 | 26                          | all                    | Property Identified |
      | purchase a plot             | login acceptance_indiv_hl | property_details.xlsx | home                 | 29                          | all                    | Property Identified |
      | ready property              | dde_indiv_hl              | property_details.xlsx | home                 | 0                           | all                    | Property Identified |
      | construction on land        | dde_indiv_hl              | property_details.xlsx | home                 | 27                          | all                    | Property Identified |
      | plot plus self construction | dde_indiv_hl              | property_details.xlsx | home                 | 26                          | all                    | Property Identified |
      | purchase a plot             | dde_indiv_hl              | property_details.xlsx | home                 | 29                          | all                    | Property Identified |

#    with builder details at lead
  #FeatureID-ACAUTOCAS-5912,ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-14034: Fill identified property details with all data and without check for duplicates for collateral subtype as builder property under construction at <Var_Stage> stage
    And user opens an application at "<Var_Stage>" stage from application grid
    And property details are not filled for the application
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 28
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    Then failure message is displayed
    Examples:
      | Var_Stage                 | Mandatory_NonMandatory | Application Type    |
      | login acceptance_indiv_hl | all                    | Property Identified |
      | dde_indiv_hl              | all                    | Property Identified |

#ready property, purchase a plot builder constructed
   #FeatureID-ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-14035: Fill identified property details with all data and without check for duplicates for collateral subtype as <collateral_subtype> which is builder constructed at <Var_Stage> stage
    And user opens an application at "<Var_Stage>" stage from application grid
    And property details are not filled for the application
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user checked the is builder constructed checkbox
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    Then failure message is displayed
    Examples:
      | collateral_subtype | Var_Stage                 | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Mandatory_NonMandatory | Application Type    |
      | ready property     | login acceptance_indiv_hl | property_details.xlsx | home                 | 0                           | all                    | Property Identified |
      | purchase a plot    | login acceptance_indiv_hl | property_details.xlsx | home                 | 29                          | all                    | Property Identified |
      | ready property     | dde_indiv_hl              | property_details.xlsx | home                 | 0                           | all                    | Property Identified |
      | purchase a plot    | dde_indiv_hl              | property_details.xlsx | home                 | 29                          | all                    | Property Identified |

    #with type of purchase
  #  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @Sanity
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-14036: Fill identified property details with all data and with type of purchase as resale for collateral subtype <collateral_subtype> at lead detail
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    Then property details are saved successfully
    Examples:
      | collateral_subtype          | Mandatory_NonMandatory | Loan_Type | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Application Type    |
      | ready property              | all                    | Home Loan | property_details.xlsx | home                 | 34                          | Property Identified |
      | construction on land        | all                    | Home Loan | property_details.xlsx | home                 | 31                          | Property Identified |
      | plot plus self construction | all                    | Home Loan | property_details.xlsx | home                 | 30                          | Property Identified |
      | purchase a plot             | all                    | Home Loan | property_details.xlsx | home                 | 33                          | Property Identified |

#for builder property under construction
  #FeatureID-ACAUTOCAS-5912,ACAUTOCAS-5397
  @Sanity
  @ImplementedBy-aryan.jain
  Scenario: ACAUTOCAS-14037: Fill identified property details with all data and with type of purchase as resale for collateral subtype builder property under construction at lead detail
    And user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 32
    And user fills property details home page with "all" fields for "Property Identified"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "all" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    Then property details are saved successfully

    #ready property, purchase a plot builder constructed
   #FeatureID-ACAUTOCAS-5397
  @Sanity
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-14038: Fill identified property details with all data and with type of purchase resale for collateral subtype as <collateral_subtype> which is builder constructed at lead detail
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user checked the is builder constructed checkbox
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    Then property details are saved successfully
    Examples:
      | collateral_subtype | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Loan_Type | Mandatory_NonMandatory | Application Type    |
      | ready property     | property_details.xlsx | home                 | 34                          | Home Loan | all                    | Property Identified |
      | purchase a plot    | property_details.xlsx | home                 | 33                          | Home Loan | all                    | Property Identified |

#without check for dedupe
  #with type of purchase
  #  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-14039: Fill identified property details with all data and with type of purchase as resale and without check for duplicates for collateral subtype <collateral_subtype> at lead detail
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    Then failure message is displayed
    Examples:
      | collateral_subtype          | Mandatory_NonMandatory | Loan_Type | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Application Type    |
      | ready property              | all                    | Home Loan | property_details.xlsx | home                 | 34                          | Property Identified |
      | construction on land        | all                    | Home Loan | property_details.xlsx | home                 | 31                          | Property Identified |
      | plot plus self construction | all                    | Home Loan | property_details.xlsx | home                 | 30                          | Property Identified |
      | purchase a plot             | all                    | Home Loan | property_details.xlsx | home                 | 33                          | Property Identified |

#for builder property under construction
  #FeatureID-ACAUTOCAS-5912,ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario: ACAUTOCAS-14040: Fill identified property details with all data and with type of purchase as resale and without check for duplicates for collateral subtype builder property under construction at lead detail
    And user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 32
    And user fills property details home page with "all" fields for "Property Identified"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "all" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    Then failure message is displayed

    #ready property, purchase a plot builder constructed
   #FeatureID-ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-14041: Fill identified property details with all data and with type of purchase resale and without check for duplicates for collateral subtype as <collateral_subtype> which is builder constructed at lead detail
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user checked the is builder constructed checkbox
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    Then failure message is displayed
    Examples:
      | collateral_subtype | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Loan_Type | Mandatory_NonMandatory | Application Type    |
      | ready property     | property_details.xlsx | home                 | 34                          | Home Loan | all                    | Property Identified |
      | purchase a plot    | property_details.xlsx | home                 | 33                          | Home Loan | all                    | Property Identified |

#at login, dde
# FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
    @ImplementedBy-aryan.jain
    @Sanity
  Scenario Outline: ACAUTOCAS-14042: Fill identified property details with all data and with type of purchase as resale for collateral subtype as <collateral_subtype> at <Var_Stage> stage
    And user opens an application at "<Var_Stage>" stage from application grid
    And property details are not filled for the application
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    Then property details are saved successfully
    Examples:
      | collateral_subtype          | Var_Stage                 | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Mandatory_NonMandatory | Application Type    |
      | ready property              | login acceptance_indiv_hl | property_details.xlsx | home                 | 34                          | all                    | Property Identified |
      | construction on land        | login acceptance_indiv_hl | property_details.xlsx | home                 | 31                          | all                    | Property Identified |
      | plot plus self construction | login acceptance_indiv_hl | property_details.xlsx | home                 | 30                          | all                    | Property Identified |
      | purchase a plot             | login acceptance_indiv_hl | property_details.xlsx | home                 | 33                          | all                    | Property Identified |
      | ready property              | dde_indiv_hl              | property_details.xlsx | home                 | 34                          | all                    | Property Identified |
      | construction on land        | dde_indiv_hl              | property_details.xlsx | home                 | 31                          | all                    | Property Identified |
      | plot plus self construction | dde_indiv_hl              | property_details.xlsx | home                 | 30                          | all                    | Property Identified |
      | purchase a plot             | dde_indiv_hl              | property_details.xlsx | home                 | 33                          | all                    | Property Identified |

#resale property for builder property under construction at login ,dde
#FeatureID-ACAUTOCAS-5912,ACAUTOCAS-5397
  @Sanity
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-14043: Fill identified property details with all data and with type of purchase as resale for collateral subtype as builder property under construction at <Var_Stage> stage
    And user opens an application at "<Var_Stage>" stage from application grid
    And property details are not filled for the application
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 32
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    Then property details are saved successfully
    Examples:
      | Var_Stage                 | Mandatory_NonMandatory | Application Type    |
      | login acceptance_indiv_hl | all                    | Property Identified |
      | dde_indiv_hl              | all                    | Property Identified |

# resale ready property ,purchase a plot builder constructed
#FeatureID-ACAUTOCAS-5397
  @Sanity
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-14044: Fill identified property details with all data and with type of purchase as resale for collateral subtype as <collateral_subtype> which is builder constructed at <Var_Stage> stage
    And user opens an application at "<Var_Stage>" stage from application grid
    And property details are not filled for the application
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user checked the is builder constructed checkbox
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    Then property details are saved successfully
    Examples:
      | collateral_subtype | Var_Stage                 | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Mandatory_NonMandatory | Application Type    |
      | ready property     | login acceptance_indiv_hl | property_details.xlsx | home                 | 34                          | all                    | Property Identified |
      | purchase a plot    | login acceptance_indiv_hl | property_details.xlsx | home                 | 33                          | all                    | Property Identified |
      | ready property     | dde_indiv_hl              | property_details.xlsx | home                 | 34                          | all                    | Property Identified |
      | purchase a plot    | dde_indiv_hl              | property_details.xlsx | home                 | 33                          | all                    | Property Identified |

#without check for dedupe
#at login, dde
# FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-14045: Fill identified property details with all data and with type of purchase as resale and without check for duplicates for collateral subtype as <collateral_subtype> at <Var_Stage> stage
    And user opens an application at "<Var_Stage>" stage from application grid
    And property details are not filled for the application
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    Then failure message is displayed
    Examples:
      | collateral_subtype          | Var_Stage                 | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Mandatory_NonMandatory | Application Type    |
      | ready property              | login acceptance_indiv_hl | property_details.xlsx | home                 | 34                          | all                    | Property Identified |
      | construction on land        | login acceptance_indiv_hl | property_details.xlsx | home                 | 31                          | all                    | Property Identified |
      | plot plus self construction | login acceptance_indiv_hl | property_details.xlsx | home                 | 30                          | all                    | Property Identified |
      | purchase a plot             | login acceptance_indiv_hl | property_details.xlsx | home                 | 33                          | all                    | Property Identified |
      | ready property              | dde_indiv_hl              | property_details.xlsx | home                 | 34                          | all                    | Property Identified |
      | construction on land        | dde_indiv_hl              | property_details.xlsx | home                 | 31                          | all                    | Property Identified |
      | plot plus self construction | dde_indiv_hl              | property_details.xlsx | home                 | 30                          | all                    | Property Identified |
      | purchase a plot             | dde_indiv_hl              | property_details.xlsx | home                 | 33                          | all                    | Property Identified |

#resale property for builder property under construction at login ,dde
#FeatureID-ACAUTOCAS-5912,ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-14046: Fill identified property details with all data and with type of purchase as resale and without check for duplicates for collateral subtype as builder property under construction at <Var_Stage> stage
    And user opens an application at "<Var_Stage>" stage from application grid
    And property details are not filled for the application
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 32
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    Then failure message is displayed
    Examples:
      | Var_Stage                 | Mandatory_NonMandatory | Application Type    |
      | login acceptance_indiv_hl | all                    | Property Identified |
      | dde_indiv_hl              | all                    | Property Identified |

# resale ready property ,purchase a plot builder constructed
#FeatureID-ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-14047: Fill identified property details with all data and with type of purchase as resale and without check for duplicates for collateral subtype as <collateral_subtype> which is builder constructed at <Var_Stage> stage
    And user opens an application at "<Var_Stage>" stage from application grid
    And property details are not filled for the application
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user checked the is builder constructed checkbox
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    Then failure message is displayed
    Examples:
      | collateral_subtype | Var_Stage                 | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Mandatory_NonMandatory | Application Type    |
      | ready property     | login acceptance_indiv_hl | property_details.xlsx | home                 | 34                          | all                    | Property Identified |
      | purchase a plot    | login acceptance_indiv_hl | property_details.xlsx | home                 | 33                          | all                    | Property Identified |
      | ready property     | dde_indiv_hl              | property_details.xlsx | home                 | 34                          | all                    | Property Identified |
      | purchase a plot    | dde_indiv_hl              | property_details.xlsx | home                 | 33                          | all                    | Property Identified |

#at lead details
# FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9967: Validate save & next button in identified property details with all data for collateral subtype <collateral subtype> at lead details
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user check for dedupe
    And user saves & next the property details
    Then application is redirect to VAP details
    Examples:
      | collateral_subtype          | Mandatory_NonMandatory | Loan_Type | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Application Type    |
      | ready property              | all                    | Home Loan | property_details.xlsx | home                 | 0                           | Property Identified |
      | construction on land        | all                    | Home Loan | property_details.xlsx | home                 | 27                          | Property Identified |
      | plot plus self construction | all                    | Home Loan | property_details.xlsx | home                 | 26                          | Property Identified |
      | purchase a plot             | all                    | Home Loan | property_details.xlsx | home                 | 29                          | Property Identified |

# with builder details at lead
#FeatureID-ACAUTOCAS-5912,ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario: ACAUTOCAS-9968: Validate save & next button in identified property details with all data for collateral subtype as builder property under construction at lead detail
    And user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 28
    And user fills property details home page with "all" fields for "Property Identified"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "all" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user check for dedupe
    And user saves & next the property details
    Then application is redirect to VAP details

# ready property, purchase a plot builder constructed
#FeatureID-ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9969: Validate save & next button in identified property details with all data for collateral subtype as <collateral_subtype> which is builder constructed at lead detail
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user checked the is builder constructed checkbox
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user check for dedupe
    And user saves & next the property details
    Then application is redirect to VAP details
    Examples:
      | collateral_subtype | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Loan_Type | Mandatory_NonMandatory | Application Type    |
      | ready property     | property_details.xlsx | home                 | 0                           | Home Loan | all                    | Property Identified |
      | purchase a plot    | property_details.xlsx | home                 | 29                          | Home Loan | all                    | Property Identified |

#without check for dedupe
# at lead details
# FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-14048: Validate save & next button in identified property details with all data and without check for duplicates for collateral subtype as <collateral_subtype> at lead detail
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user saves & next the property details
    Then failure message is displayed
    Examples:
      | collateral_subtype          | Mandatory_NonMandatory | Loan_Type | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Application Type    |
      | ready property              | all                    | Home Loan | property_details.xlsx | home                 | 0                           | Property Identified |
      | construction on land        | all                    | Home Loan | property_details.xlsx | home                 | 27                          | Property Identified |
      | plot plus self construction | all                    | Home Loan | property_details.xlsx | home                 | 26                          | Property Identified |
      | purchase a plot             | all                    | Home Loan | property_details.xlsx | home                 | 29                          | Property Identified |

# with builder details at lead
#FeatureID-ACAUTOCAS-5912,ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario: ACAUTOCAS-14049: Validate save & next button in identified property details with all data and without check for duplicates for collateral subtype as builder property under construction at lead detail
    And user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 28
    And user fills property details home page with "all" fields for "Property Identified"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "all" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user saves & next the property details
    Then failure message is displayed

# ready property, purchase a plot builder constructed
#FeatureID-ACAUTOCAS-5397
  @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-14050: Validate save & next button in identified property details with all data and without check for duplicates for collateral subtype as <collateral_subtype> which is builder constructed at lead detail
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user checked the is builder constructed checkbox
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user saves & next the property details
    Then failure message is displayed
    Examples:
      | collateral_subtype | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Loan_Type | Mandatory_NonMandatory | Application Type    |
      | ready property     | property_details.xlsx | home                 | 0                           | Home Loan | all                    | Property Identified |
      | purchase a plot    | property_details.xlsx | home                 | 29                          | Home Loan | all                    | Property Identified |

# at dde,login acceptance
# FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9970: Validate save & next button in identified property details with all data for collateral subtype as <collateral_subtype> at <Var_Stage> stage
    And user opens an application at "<Var_Stage>" stage from application grid
    And property details are not filled for the application
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user check for dedupe
    And user saves & next the property details
    Then application is redirect to VAP details
    Examples:
      | collateral_subtype          | Var_Stage                 | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Mandatory_NonMandatory | Application Type    |
      | ready property              | login acceptance_indiv_hl | property_details.xlsx | home                 | 0                           | all                    | Property Identified |
      | construction on land        | login acceptance_indiv_hl | property_details.xlsx | home                 | 27                          | all                    | Property Identified |
      | plot plus self construction | login acceptance_indiv_hl | property_details.xlsx | home                 | 26                          | all                    | Property Identified |
      | purchase a plot             | login acceptance_indiv_hl | property_details.xlsx | home                 | 29                          | all                    | Property Identified |
      | ready property              | dde_indiv_hl              | property_details.xlsx | home                 | 0                           | all                    | Property Identified |
      | construction on land        | dde_indiv_hl              | property_details.xlsx | home                 | 27                          | all                    | Property Identified |
      | plot plus self construction | dde_indiv_hl              | property_details.xlsx | home                 | 26                          | all                    | Property Identified |
      | purchase a plot             | dde_indiv_hl              | property_details.xlsx | home                 | 29                          | all                    | Property Identified |

#with builder details at login dde
#FeatureID-ACAUTOCAS-5912,ACAUTOCAS-5397
  @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-9971: Validate save & next button in identified property details with all data for collateral subtype as builder property under construction at <Var_Stage> stage
    And user opens an application at "<Var_Stage>" stage from application grid
    And property details are not filled for the application
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 28
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user check for dedupe
    And user saves & next the property details
    Then application is redirect to VAP details
    Examples:
      | Var_Stage                 | Mandatory_NonMandatory | Application Type    |
      | login acceptance_indiv_hl | all                    | Property Identified |
      | dde_indiv_hl              | all                    | Property Identified |

# ready property, purchase a plot builder constructed
#FeatureID-ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9972: Validate save & next button in identified property details with all data for collateral subtype as <collateral_subtype> which is builder constructed at <Var_Stage> stage
    And user opens an application at "<Var_Stage>" stage from application grid
    And property details are not filled for the application
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user checked the is builder constructed checkbox
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user check for dedupe
    And user saves & next the property details
    Then application is redirect to VAP details
    Examples:
      | collateral_subtype | Var_Stage                 | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Mandatory_NonMandatory | Application Type    |
      | ready property     | login acceptance_indiv_hl | property_details.xlsx | home                 | 0                           | all                    | Property Identified |
      | purchase a plot    | login acceptance_indiv_hl | property_details.xlsx | home                 | 29                          | all                    | Property Identified |
      | ready property     | dde_indiv_hl              | property_details.xlsx | home                 | 0                           | all                    | Property Identified |
      | purchase a plot    | dde_indiv_hl              | property_details.xlsx | home                 | 29                          | all                    | Property Identified |

# without check for dedupe
#  at login dde
#  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-14051: Validate save & next button in identified property details with all data and without check for duplicates for collateral subtype as <collateral_subtype> at <Var_Stage> stage
    And user opens an application at "<Var_Stage>" stage from application grid
    And property details are not filled for the application
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user saves & next the property details
    Then failure message is displayed
    Examples:
      | collateral_subtype          | Var_Stage                 | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Mandatory_NonMandatory | Application Type    |
      | ready property              | login acceptance_indiv_hl | property_details.xlsx | home                 | 0                           | all                    | Property Identified |
      | construction on land        | login acceptance_indiv_hl | property_details.xlsx | home                 | 27                          | all                    | Property Identified |
      | plot plus self construction | login acceptance_indiv_hl | property_details.xlsx | home                 | 26                          | all                    | Property Identified |
      | purchase a plot             | login acceptance_indiv_hl | property_details.xlsx | home                 | 29                          | all                    | Property Identified |
      | ready property              | dde_indiv_hl              | property_details.xlsx | home                 | 0                           | all                    | Property Identified |
      | construction on land        | dde_indiv_hl              | property_details.xlsx | home                 | 27                          | all                    | Property Identified |
      | plot plus self construction | dde_indiv_hl              | property_details.xlsx | home                 | 26                          | all                    | Property Identified |
      | purchase a plot             | dde_indiv_hl              | property_details.xlsx | home                 | 29                          | all                    | Property Identified |

#with builder details at login dde
#FeatureID-ACAUTOCAS-5912,ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-14052: Validate save & next button in identified property details with all data and without check for duplicates for collateral subtype as builder property under construction at <Var_Stage> stage
    And user opens an application at "<Var_Stage>" stage from application grid
    And property details are not filled for the application
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 28
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user saves & next the property details
    Then failure message is displayed
    Examples:
      | Var_Stage                 | Mandatory_NonMandatory | Application Type    |
      | login acceptance_indiv_hl | all                    | Property Identified |
      | dde_indiv_hl              | all                    | Property Identified |

# ready property, purchase a plot builder constructed
#FeatureID-ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-14053: Validate save & next button in identified property details with all data and without check for duplicates for collateral subtype as <collateral_subtype> which is builder constructed at <Var_Stage> stage
    And user opens an application at "<Var_Stage>" stage from application grid
    And property details are not filled for the application
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user checked the is builder constructed checkbox
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user saves & next the property details
    Then failure message is displayed
    Examples:
      | collateral_subtype | Var_Stage                 | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Mandatory_NonMandatory | Application Type    |
      | ready property     | login acceptance_indiv_hl | property_details.xlsx | home                 | 0                           | all                    | Property Identified |
      | purchase a plot    | login acceptance_indiv_hl | property_details.xlsx | home                 | 29                          | all                    | Property Identified |
      | ready property     | dde_indiv_hl              | property_details.xlsx | home                 | 0                           | all                    | Property Identified |
      | purchase a plot    | dde_indiv_hl              | property_details.xlsx | home                 | 29                          | all                    | Property Identified |

#with type of purchase
  #  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @ImplementedBy-piyush.agnihotri
  Scenario Outline: ACAUTOCAS-14054: Validate save & next button in identified property details with all data and with type of purchase as resale for collateral subtype <collateral_subtype> at lead detail
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user check for dedupe
    And user saves & next the property details
    Then application is redirect to VAP details
    Examples:
      | collateral_subtype          | Mandatory_NonMandatory | Loan_Type | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Application Type    |
      | ready property              | all                    | Home Loan | property_details.xlsx | home                 | 34                          | Property Identified |
      | construction on land        | all                    | Home Loan | property_details.xlsx | home                 | 31                          | Property Identified |
      | plot plus self construction | all                    | Home Loan | property_details.xlsx | home                 | 30                          | Property Identified |
      | purchase a plot             | all                    | Home Loan | property_details.xlsx | home                 | 33                          | Property Identified |

#for builder property under construction
  #FeatureID-ACAUTOCAS-5912,ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario: ACAUTOCAS-14055: Validate save & next button in identified property details with all data and with type of purchase as resale for collateral subtype builder property under construction at lead detail
    And user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 28
    And user fills property details home page with "all" fields for "Property Identified"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "all" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user check for dedupe
    And user saves & next the property details
    Then application is redirect to VAP details

 #  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-14056: Validate save & next button in identified property details with all data and with type of purchase as resale for collateral subtype <collateral_subtype> which is builder constructed at lead detail
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user checked the is builder constructed checkbox
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user check for dedupe
    And user saves & next the property details
    Then application is redirect to VAP details
    Examples:
      | collateral_subtype | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Loan_Type | Mandatory_NonMandatory | Application Type    |
      | ready property     | property_details.xlsx | home                 | 34                          | Home Loan | all                    | Property Identified |
      | purchase a plot    | property_details.xlsx | home                 | 33                          | Home Loan | all                    | Property Identified |

# without check for dedupe
#with type of purchase
  #  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-14057: Validate save & next button in identified property details with all data and with type of purchase as resale and without check for duplicates for collateral subtype <collateral_subtype> at lead detail
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user saves & next the property details
    Then failure message is displayed
    Examples:
      | collateral_subtype          | Mandatory_NonMandatory | Loan_Type | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Application Type    |
      | ready property              | all                    | Home Loan | property_details.xlsx | home                 | 34                          | Property Identified |
      | construction on land        | all                    | Home Loan | property_details.xlsx | home                 | 31                          | Property Identified |
      | plot plus self construction | all                    | Home Loan | property_details.xlsx | home                 | 30                          | Property Identified |
      | purchase a plot             | all                    | Home Loan | property_details.xlsx | home                 | 33                          | Property Identified |

#for builder property under construction
  #FeatureID-ACAUTOCAS-5912,ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario: ACAUTOCAS-14058: Validate save & next button in identified property details with all data and with type of purchase as resale and without check for duplicates for collateral subtype builder property under construction at lead detail
    And user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 28
    And user fills property details home page with "all" fields for "Property Identified"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "all" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user saves & next the property details
    Then failure message is displayed

 #  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-14059: Validate save & next button in identified property details with all data and with type of purchase as resale and without check for duplicates for collateral subtype <collateral_subtype> which is builder constructed at lead detail
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user checked the is builder constructed checkbox
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user saves & next the property details
    Then failure message is displayed
    Examples:
      | collateral_subtype | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Loan_Type | Mandatory_NonMandatory | Application Type    |
      | ready property     | property_details.xlsx | home                 | 34                          | Home Loan | all                    | Property Identified |
      | purchase a plot    | property_details.xlsx | home                 | 33                          | Home Loan | all                    | Property Identified |

#at login, dde
  #  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-14060: Validate save & next button in identified property details with all data and with type of purchase as resale for collateral subtype as <collateral_subtype> at <Var_Stage> stage
    And user opens an application at "<Var_Stage>" stage from application grid
    And property details are not filled for the application
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user check for dedupe
    And user saves & next the property details
    Then application is redirect to VAP details
    Examples:
      | collateral_subtype          | Var_Stage                 | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Mandatory_NonMandatory | Application Type    |
      | ready property              | login acceptance_indiv_hl | property_details.xlsx | home                 | 34                          | all                    | Property Identified |
      | construction on land        | login acceptance_indiv_hl | property_details.xlsx | home                 | 31                          | all                    | Property Identified |
      | plot plus self construction | login acceptance_indiv_hl | property_details.xlsx | home                 | 30                          | all                    | Property Identified |
      | purchase a plot             | login acceptance_indiv_hl | property_details.xlsx | home                 | 33                          | all                    | Property Identified |
      | ready property              | dde_indiv_hl              | property_details.xlsx | home                 | 34                          | all                    | Property Identified |
      | construction on land        | dde_indiv_hl              | property_details.xlsx | home                 | 31                          | all                    | Property Identified |
      | plot plus self construction | dde_indiv_hl              | property_details.xlsx | home                 | 30                          | all                    | Property Identified |
      | purchase a plot             | dde_indiv_hl              | property_details.xlsx | home                 | 33                          | all                    | Property Identified |

#resale property for builder property under construction at login ,dde
#FeatureID-ACAUTOCAS-5912,ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-14061: Validate save & next button in identified property details with all data and with type of purchase as resale for collateral subtype as builder property under construction at <Var_Stage> stage
    And user opens an application at "<Var_Stage>" stage from application grid
    And property details are not filled for the application
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 32
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user check for dedupe
    And user saves & next the property details
    Then application is redirect to VAP details
    Examples:
      | Var_Stage                 | Mandatory_NonMandatory | Application Type    |
      | login acceptance_indiv_hl | all                    | Property Identified |
      | dde_indiv_hl              | all                    | Property Identified |

# resale ready property ,purchase a plot builder constructed
#FeatureID-ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-14062: Validate save & next button in identified property details with all data and with type of purchase as resale for collateral subtype as <collateral_subtype> which is builder constructed at <Var_Stage> stage
    And user opens an application at "<Var_Stage>" stage from application grid
    And property details are not filled for the application
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user checked the is builder constructed checkbox
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user check for dedupe
    And user saves & next the property details
    Then application is redirect to VAP details
    Examples:
      | collateral_subtype | Var_Stage                 | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Mandatory_NonMandatory | Application Type    |
      | ready property     | login acceptance_indiv_hl | property_details.xlsx | home                 | 34                          | all                    | Property Identified |
      | purchase a plot    | login acceptance_indiv_hl | property_details.xlsx | home                 | 33                          | all                    | Property Identified |
      | ready property     | dde_indiv_hl              | property_details.xlsx | home                 | 34                          | all                    | Property Identified |
      | purchase a plot    | dde_indiv_hl              | property_details.xlsx | home                 | 33                          | all                    | Property Identified |

#without check for dedupe
#at login, dde
# FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-14063: Validate save & next button in identified property details with all data and with type of purchase as resale and without check for duplicates for collateral subtype as <collateral_subtype> at <Var_Stage> stage
    And user opens an application at "<Var_Stage>" stage from application grid
    And property details are not filled for the application
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user saves & next the property details
    Then failure message is displayed
    Examples:
      | collateral_subtype          | Var_Stage                 | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Mandatory_NonMandatory | Application Type    |
      | ready property              | login acceptance_indiv_hl | property_details.xlsx | home                 | 34                          | all                    | Property Identified |
      | construction on land        | login acceptance_indiv_hl | property_details.xlsx | home                 | 31                          | all                    | Property Identified |
      | plot plus self construction | login acceptance_indiv_hl | property_details.xlsx | home                 | 30                          | all                    | Property Identified |
      | purchase a plot             | login acceptance_indiv_hl | property_details.xlsx | home                 | 33                          | all                    | Property Identified |
      | ready property              | dde_indiv_hl              | property_details.xlsx | home                 | 34                          | all                    | Property Identified |
      | construction on land        | dde_indiv_hl              | property_details.xlsx | home                 | 31                          | all                    | Property Identified |
      | plot plus self construction | dde_indiv_hl              | property_details.xlsx | home                 | 30                          | all                    | Property Identified |
      | purchase a plot             | dde_indiv_hl              | property_details.xlsx | home                 | 33                          | all                    | Property Identified |

#resale property for builder property under construction at login ,dde
#FeatureID-ACAUTOCAS-5912,ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-14064: Validate save & next button in identified property details with all data and with type of purchase as resale and without check for duplicates for collateral subtype as builder property under construction at <Var_Stage> stage
    And user opens an application at "<Var_Stage>" stage from application grid
    And property details are not filled for the application
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 32
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user saves & next the property details
    Then failure message is displayed
    Examples:
      | Var_Stage                 | Mandatory_NonMandatory | Application Type    |
      | login acceptance_indiv_hl | all                    | Property Identified |
      | dde_indiv_hl              | all                    | Property Identified |

# resale ready property ,purchase a plot builder constructed
#FeatureID-ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-14065: Validate save & next button in identified property details with all data and with type of purchase as resale and without check for duplicates for collateral subtype as <collateral_subtype> which is builder constructed at <Var_Stage> stage
    And user opens an application at "<Var_Stage>" stage from application grid
    And property details are not filled for the application
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user checked the is builder constructed checkbox
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user saves & next the property details
    Then failure message is displayed
    Examples:
      | collateral_subtype | Var_Stage                 | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Mandatory_NonMandatory | Application Type    |
      | ready property     | login acceptance_indiv_hl | property_details.xlsx | home                 | 34                          | all                    | Property Identified |
      | purchase a plot    | login acceptance_indiv_hl | property_details.xlsx | home                 | 33                          | all                    | Property Identified |
      | ready property     | dde_indiv_hl              | property_details.xlsx | home                 | 34                          | all                    | Property Identified |
      | purchase a plot    | dde_indiv_hl              | property_details.xlsx | home                 | 33                          | all                    | Property Identified |

#    lead details negative down payment
#  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-14066: Unable to save identified property details with all data for collateral subtype as <collateral_subtype> with negative down payment at lead detail
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user check for dedupe
    Then error message is displayed for property details
    Examples:
      | collateral_subtype          | Mandatory_NonMandatory | Loan_Type | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Application Type    |
      | ready property              | all                    | Home Loan | property_details.xlsx | home                 | 35                          | Property Identified |
      | construction on land        | all                    | Home Loan | property_details.xlsx | home                 | 36                          | Property Identified |
      | plot plus self construction | all                    | Home Loan | property_details.xlsx | home                 | 37                          | Property Identified |
      | purchase a plot             | all                    | Home Loan | property_details.xlsx | home                 | 38                           | Property Identified |

#    with builder details at lead
  #FeatureID-ACAUTOCAS-5912,ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario: ACAUTOCAS-14067: Unable to save identified property details with all data for collateral subtype as builder property under construction with negative down payment at lead detail
    And user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 39
    And user fills property details home page with "all" fields for "Property Identified"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "all" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user check for dedupe
    Then error message is displayed for property details

    #ready property, purchase a plot builder constructed
    #FeatureID-ACAUTOCAS-5397
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-14068: Unable to save identified property details with all data for collateral subtype as <collateral_subtype> which is builder constructed with negative down payment at lead detail
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user checked the is builder constructed checkbox
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user check for dedupe
    Then error message is displayed for property details
    Examples:
      | collateral_subtype | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Loan_Type | Mandatory_NonMandatory | Application Type    |
      | ready property     | property_details.xlsx | home                 | 35                          | Home Loan | all                    | Property Identified |
      | purchase a plot    | property_details.xlsx | home                 | 38                          | Home Loan | all                    | Property Identified |
