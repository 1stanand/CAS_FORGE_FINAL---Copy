@Epic-Loan_Application_Details
@ReviewedBy-tushar.chauhan
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedByDev
@Conventional
@Islamic

Feature:Add Identified Property Details With Mandatory Data

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

#at lead details
#  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @Sanity
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-9973: Fill identified property details with collateral subtype as <collateral_subtype> at lead detail
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
      | ready property              | mandatory              | Home Loan | property_details.xlsx | home                 | 0                           | Property Identified |
      | construction on land        | mandatory              | Home Loan | property_details.xlsx | home                 | 27                          | Property Identified |
      | plot plus self construction | mandatory              | Home Loan | property_details.xlsx | home                 | 26                          | Property Identified |
      | purchase a plot             | mandatory              | Home Loan | property_details.xlsx | home                 | 29                          | Property Identified |

#    with builder details at lead
  #FeatureID-ACAUTOCAS-5912,ACAUTOCAS-5397
  @Sanity
  @ImplementedBy-aniket.tripathi
  @Release3
  Scenario: ACAUTOCAS-9974: Fill identified property details with collateral subtype as builder property under construction at lead detail
    And user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 28
    And user fills property details home page with "mandatory" fields for "Property Identified"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "mandatory" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    Then property details are saved successfully

#ready property, purchase a plot builder constructed
   #FeatureID-ACAUTOCAS-5397
  @Sanity
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-9975: Fill identified property details with collateral subtype as <collateral_subtype> which is builder constructed at lead detail
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
      | ready property     | property_details.xlsx | home                 | 0                           | Home Loan | mandatory              | Property Identified |
      | purchase a plot    | property_details.xlsx | home                 | 29                          | Home Loan | mandatory              | Property Identified |

    #without check for dedupe
#  at lead details
#  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-9976: Fill identified property details without check for duplicates for collateral subtype as <collateral_subtype> at lead detail
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
      | ready property              | mandatory              | Home Loan | property_details.xlsx | home                 | 0                           | Property Identified |
      | construction on land        | mandatory              | Home Loan | property_details.xlsx | home                 | 27                          | Property Identified |
      | plot plus self construction | mandatory              | Home Loan | property_details.xlsx | home                 | 26                          | Property Identified |
      | purchase a plot             | mandatory              | Home Loan | property_details.xlsx | home                 | 29                          | Property Identified |

#    with builder details at lead
  #FeatureID-ACAUTOCAS-5912,ACAUTOCAS-5397
  @ImplementedBy-aniket.tripathi
  @Release3
  Scenario: ACAUTOCAS-9977: Fill identified property details without check for duplicates for collateral subtype as builder property under construction at lead detail
    And user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 28
    And user fills property details home page with "mandatory" fields for "Property Identified"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "mandatory" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    Then failure message is displayed

#ready property, purchase a plot builder constructed
   #FeatureID-ACAUTOCAS-5397
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-9978: Fill identified property details without check for duplicates for collateral subtype as <collateral_subtype> which is builder constructed at lead detail
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
      | ready property     | property_details.xlsx | home                 | 0                           | Home Loan | mandatory              | Property Identified |
      | purchase a plot    | property_details.xlsx | home                 | 29                          | Home Loan | mandatory              | Property Identified |

  @Sanity
  @ImplementedBy-aniket.tripathi
    @Release3
  #FeatureID-ACAUTOCAS-5397
  Scenario Outline: ACAUTOCAS-9979:Fill identified property details with collateral subtype as <collateral_subtype> at <Var_Stage> stage
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
      | ready property              | login acceptance_indiv_hl | property_details.xlsx | home                 | 0                           | mandatory              | Property Identified |
      | construction on land        | login acceptance_indiv_hl | property_details.xlsx | home                 | 27                          | mandatory              | Property Identified |
      | plot plus self construction | login acceptance_indiv_hl | property_details.xlsx | home                 | 26                          | mandatory              | Property Identified |
      | purchase a plot             | login acceptance_indiv_hl | property_details.xlsx | home                 | 29                          | mandatory              | Property Identified |
      | ready property              | dde_indiv_hl              | property_details.xlsx | home                 | 0                           | mandatory              | Property Identified |
      | construction on land        | dde_indiv_hl              | property_details.xlsx | home                 | 27                          | mandatory              | Property Identified |
      | plot plus self construction | dde_indiv_hl              | property_details.xlsx | home                 | 26                          | mandatory              | Property Identified |
      | purchase a plot             | dde_indiv_hl              | property_details.xlsx | home                 | 29                          | mandatory              | Property Identified |

    #with builder details at login dde
  #FeatureID-ACAUTOCAS-5912,ACAUTOCAS-5397
  @Sanity
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-9980: Fill identified property details with collateral subtype as builder property under construction at <Var_Stage> stage
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
      | login acceptance_indiv_hl | mandatory              | Property Identified |
      | dde_indiv_hl              | mandatory              | Property Identified |

# ready property, purchase a plot builder constructed
   #FeatureID-ACAUTOCAS-5397
  @Sanity
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-9981: Fill identified property details with collateral subtype as <collateral_subtype> which is builder constructed at <Var_Stage> stage
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
      | ready property     | login acceptance_indiv_hl | property_details.xlsx | home                 | 0                           | mandatory              | Property Identified |
      | purchase a plot    | login acceptance_indiv_hl | property_details.xlsx | home                 | 29                          | mandatory              | Property Identified |
      | ready property     | dde_indiv_hl              | property_details.xlsx | home                 | 0                           | mandatory              | Property Identified |
      | purchase a plot    | dde_indiv_hl              | property_details.xlsx | home                 | 29                          | mandatory              | Property Identified |

  @ImplementedBy-aniket.tripathi
    @Release3
   #FeatureID-ACAUTOCAS-5397
  Scenario Outline: ACAUTOCAS-9982: Fill identified property details without check for duplicates for collateral subtype as <collateral_subtype> at <Var_Stage> stage
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
      | ready property              | login acceptance_indiv_hl | property_details.xlsx | home                 | 0                           | mandatory              | Property Identified |
      | construction on land        | login acceptance_indiv_hl | property_details.xlsx | home                 | 27                          | mandatory              | Property Identified |
      | plot plus self construction | login acceptance_indiv_hl | property_details.xlsx | home                 | 26                          | mandatory              | Property Identified |
      | purchase a plot             | login acceptance_indiv_hl | property_details.xlsx | home                 | 29                          | mandatory              | Property Identified |
      | ready property              | dde_indiv_hl              | property_details.xlsx | home                 | 0                           | mandatory              | Property Identified |
      | construction on land        | dde_indiv_hl              | property_details.xlsx | home                 | 27                          | mandatory              | Property Identified |
      | plot plus self construction | dde_indiv_hl              | property_details.xlsx | home                 | 26                          | mandatory              | Property Identified |
      | purchase a plot             | dde_indiv_hl              | property_details.xlsx | home                 | 29                          | mandatory              | Property Identified |

#    with builder details at lead
  #FeatureID-ACAUTOCAS-5912,ACAUTOCAS-5397
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-9983: Fill identified property details without check for duplicates for collateral subtype as builder property under construction at <Var_Stage> stage
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
      | login acceptance_indiv_hl | mandatory              | Property Identified |
      | dde_indiv_hl              | mandatory              | Property Identified |

#ready property, purchase a plot builder constructed
   #FeatureID-ACAUTOCAS-5397
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-9984: Fill identified property details without check for duplicates for collateral subtype as <collateral_subtype> which is builder constructed at <Var_Stage> stage
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
      | ready property     | login acceptance_indiv_hl | property_details.xlsx | home                 | 0                           | mandatory              | Property Identified |
      | purchase a plot    | login acceptance_indiv_hl | property_details.xlsx | home                 | 29                          | mandatory              | Property Identified |
      | ready property     | dde_indiv_hl              | property_details.xlsx | home                 | 0                           | mandatory              | Property Identified |
      | purchase a plot    | dde_indiv_hl              | property_details.xlsx | home                 | 29                          | mandatory              | Property Identified |

    #with type of purchase
  #  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @Sanity
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-9985: Fill identified property details with type of purchase as resale for collateral subtype <collateral_subtype> at lead detail
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
      | ready property              | mandatory              | Home Loan | property_details.xlsx | home                 | 34                          | Property Identified |
      | construction on land        | mandatory              | Home Loan | property_details.xlsx | home                 | 31                          | Property Identified |
      | plot plus self construction | mandatory              | Home Loan | property_details.xlsx | home                 | 30                          | Property Identified |
      | purchase a plot             | mandatory              | Home Loan | property_details.xlsx | home                 | 33                          | Property Identified |

#for builder property under construction
  #FeatureID-ACAUTOCAS-5912,ACAUTOCAS-5397
  @Sanity
  @ImplementedBy-aniket.tripathi
  @Release3
  Scenario: ACAUTOCAS-9986: Fill identified property details with type of purchase as resale for collateral subtype builder property under construction at lead detail
    And user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 32
    And user fills property details home page with "mandatory" fields for "Property Identified"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "mandatory" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    Then property details are saved successfully

    #ready property, purchase a plot builder constructed

   #FeatureID-ACAUTOCAS-5397
  @Sanity
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-9987: Fill identified property details with type of purchase resale for collateral subtype as <collateral_subtype> which is builder constructed at lead detail
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
      | ready property     | property_details.xlsx | home                 | 34                          | Home Loan | mandatory              | Property Identified |
      | purchase a plot    | property_details.xlsx | home                 | 33                          | Home Loan | mandatory              | Property Identified |

#at login, dde
  #  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @Sanity
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-9988: Fill identified property details with type of purchase as resale for collateral subtype as <collateral_subtype> at <Var_Stage> stage
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
      | ready property              | login acceptance_indiv_hl | property_details.xlsx | home                 | 34                          | mandatory              | Property Identified |
      | construction on land        | login acceptance_indiv_hl | property_details.xlsx | home                 | 31                          | mandatory              | Property Identified |
      | plot plus self construction | login acceptance_indiv_hl | property_details.xlsx | home                 | 30                          | mandatory              | Property Identified |
      | purchase a plot             | login acceptance_indiv_hl | property_details.xlsx | home                 | 33                          | mandatory              | Property Identified |
      | ready property              | dde_indiv_hl              | property_details.xlsx | home                 | 34                          | mandatory              | Property Identified |
      | construction on land        | dde_indiv_hl              | property_details.xlsx | home                 | 31                          | mandatory              | Property Identified |
      | plot plus self construction | dde_indiv_hl              | property_details.xlsx | home                 | 30                          | mandatory              | Property Identified |
      | purchase a plot             | dde_indiv_hl              | property_details.xlsx | home                 | 33                          | mandatory              | Property Identified |

    #resale property for builder property under construction at login ,dde
  #FeatureID-ACAUTOCAS-5912,ACAUTOCAS-5397
  @Sanity
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-9989: Fill identified property details with type of purchase as resale for collateral subtype as builder property under construction at <Var_Stage> stage
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
      | login acceptance_indiv_hl | mandatory              | Property Identified |
      | dde_indiv_hl              | mandatory              | Property Identified |

#    resale ready property ,purchase a plot builder constructed
   #FeatureID-ACAUTOCAS-5397
  @Sanity
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-9990: Fill identified property details with type of purchase as resale for collateral subtype as <collateral_subtype> which is builder constructed at <Var_Stage> stage
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
      | ready property     | login acceptance_indiv_hl | property_details.xlsx | home                 | 34                          | mandatory              | Property Identified |
      | purchase a plot    | login acceptance_indiv_hl | property_details.xlsx | home                 | 33                          | mandatory              | Property Identified |
      | ready property     | dde_indiv_hl              | property_details.xlsx | home                 | 34                          | mandatory              | Property Identified |
      | purchase a plot    | dde_indiv_hl              | property_details.xlsx | home                 | 33                          | mandatory              | Property Identified |

    #at lead details
#  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-9994: Validate save & next button in identified property details for collateral subtype <collateral subtype> at lead details
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
      | ready property              | mandatory              | Home Loan | property_details.xlsx | home                 | 0                           | Property Identified |
      | construction on land        | mandatory              | Home Loan | property_details.xlsx | home                 | 27                          | Property Identified |
      | plot plus self construction | mandatory              | Home Loan | property_details.xlsx | home                 | 26                          | Property Identified |
      | purchase a plot             | mandatory              | Home Loan | property_details.xlsx | home                 | 29                          | Property Identified |

#    with builder details at lead
  #FeatureID-ACAUTOCAS-5912,ACAUTOCAS-5397
  @ImplementedBy-aniket.tripathi
  @Release3
  Scenario: ACAUTOCAS-9995: Validate save & next button in identified property details for collateral subtype as builder property under construction at lead detail
    And user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 28
    And user fills property details home page with "mandatory" fields for "Property Identified"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "mandatory" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user check for dedupe
    And user saves & next the property details
    Then application is redirect to VAP details

    #  ready property, purchase a plot builder constructed
   #FeatureID-ACAUTOCAS-5397
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-9996: Validate save & next button in identified property details with collateral subtype as <collateral_subtype> which is builder constructed at lead detail
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
      | ready property     | property_details.xlsx | home                 | 0                           | Home Loan | mandatory              | Property Identified |
      | purchase a plot    | property_details.xlsx | home                 | 29                          | Home Loan | mandatory              | Property Identified |

        #without check for dedupe
#  at lead details
#  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-9997: Validate save & next button in identified property details without check for duplicates for collateral subtype as <collateral_subtype> at lead detail
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
      | ready property              | mandatory              | Home Loan | property_details.xlsx | home                 | 0                           | Property Identified |
      | construction on land        | mandatory              | Home Loan | property_details.xlsx | home                 | 27                          | Property Identified |
      | plot plus self construction | mandatory              | Home Loan | property_details.xlsx | home                 | 26                          | Property Identified |
      | purchase a plot             | mandatory              | Home Loan | property_details.xlsx | home                 | 29                          | Property Identified |

#    at dde,login acceptance
  #  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-9998: Validate save & next button in identified property details for collateral subtype as <collateral_subtype> at <Var_Stage> stage
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
      | ready property              | login acceptance_indiv_hl | property_details.xlsx | home                 | 0                           | mandatory              | Property Identified |
      | construction on land        | login acceptance_indiv_hl | property_details.xlsx | home                 | 27                          | mandatory              | Property Identified |
      | plot plus self construction | login acceptance_indiv_hl | property_details.xlsx | home                 | 26                          | mandatory              | Property Identified |
      | purchase a plot             | login acceptance_indiv_hl | property_details.xlsx | home                 | 29                          | mandatory              | Property Identified |
      | ready property              | dde_indiv_hl              | property_details.xlsx | home                 | 0                           | mandatory              | Property Identified |
      | construction on land        | dde_indiv_hl              | property_details.xlsx | home                 | 27                          | mandatory              | Property Identified |
      | plot plus self construction | dde_indiv_hl              | property_details.xlsx | home                 | 26                          | mandatory              | Property Identified |
      | purchase a plot             | dde_indiv_hl              | property_details.xlsx | home                 | 29                          | mandatory              | Property Identified |

    #with builder details at login dde
  #FeatureID-ACAUTOCAS-5912,ACAUTOCAS-5397
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-9999: Validate save & next button in identified property details for collateral subtype as builder property under construction at <Var_Stage> stage
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
      | login acceptance_indiv_hl | mandatory              | Property Identified |
      | dde_indiv_hl              | mandatory              | Property Identified |

       # ready property, purchase a plot builder constructed
   #FeatureID-ACAUTOCAS-5397
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-10000: Validate save & next button in identified property details with collateral subtype as <collateral_subtype> which is builder constructed at <Var_Stage> stage
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
      | ready property     | login acceptance_indiv_hl | property_details.xlsx | home                 | 0                           | mandatory              | Property Identified |
      | purchase a plot    | login acceptance_indiv_hl | property_details.xlsx | home                 | 29                          | mandatory              | Property Identified |
      | ready property     | dde_indiv_hl              | property_details.xlsx | home                 | 0                           | mandatory              | Property Identified |
      | purchase a plot    | dde_indiv_hl              | property_details.xlsx | home                 | 29                          | mandatory              | Property Identified |

    # without check for dedupe
#  at login dde
#  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @ImplementedBy-tushar.chauhan
    @Release3
  Scenario Outline: ACAUTOCAS-10001: Validate save & next button in identified property details without check for duplicates for collateral subtype as <collateral_subtype> at <Var_Stage> stage
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
      | ready property              | login acceptance_indiv_hl | property_details.xlsx | home                 | 0                           | mandatory              | Property Identified |
      | construction on land        | login acceptance_indiv_hl | property_details.xlsx | home                 | 27                          | mandatory              | Property Identified |
      | plot plus self construction | login acceptance_indiv_hl | property_details.xlsx | home                 | 26                          | mandatory              | Property Identified |
      | purchase a plot             | login acceptance_indiv_hl | property_details.xlsx | home                 | 29                          | mandatory              | Property Identified |
      | ready property              | dde_indiv_hl              | property_details.xlsx | home                 | 0                           | mandatory              | Property Identified |
      | construction on land        | dde_indiv_hl              | property_details.xlsx | home                 | 27                          | mandatory              | Property Identified |
      | plot plus self construction | dde_indiv_hl              | property_details.xlsx | home                 | 26                          | mandatory              | Property Identified |
      | purchase a plot             | dde_indiv_hl              | property_details.xlsx | home                 | 29                          | mandatory              | Property Identified |

  #with type of purchase
  #  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @ImplementedBy-tushar.chauhan
    @Release3
  Scenario Outline: ACAUTOCAS-10002: Validate save & next button in identified property details with type of purchase as resale for collateral subtype <collateral_subtype> at lead detail
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
      | ready property              | mandatory              | Home Loan | property_details.xlsx | home                 | 34                          | Property Identified |
      | construction on land        | mandatory              | Home Loan | property_details.xlsx | home                 | 31                          | Property Identified |
      | plot plus self construction | mandatory              | Home Loan | property_details.xlsx | home                 | 30                          | Property Identified |
      | purchase a plot             | mandatory              | Home Loan | property_details.xlsx | home                 | 33                          | Property Identified |

#for builder property under construction
  #FeatureID-ACAUTOCAS-5912,ACAUTOCAS-5397
  @ImplementedBy-tushar.chauhan
  @Release3
  Scenario: ACAUTOCAS-10003: Validate save & next button in identified property details with type of purchase as resale for collateral subtype builder property under construction at lead detail
    And user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 28
    And user fills property details home page with "mandatory" fields for "Property Identified"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "mandatory" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user check for dedupe
    And user saves & next the property details
    Then application is redirect to VAP details

 #  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @ImplementedBy-tushar.chauhan
    @Release3
  Scenario Outline: ACAUTOCAS-10004: Validate save & next button in identified property details with type of purchase as resale for collateral subtype <collateral_subtype> which is builder constructed at lead detail
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
      | ready property     | property_details.xlsx | home                 | 34                          | Home Loan | mandatory              | Property Identified |
      | purchase a plot    | property_details.xlsx | home                 | 33                          | Home Loan | mandatory              | Property Identified |

#at login, dde
  #  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @ImplementedBy-tushar.chauhan
    @Release3
  Scenario Outline: ACAUTOCAS-10005: Validate save & next button in identified property details with type of purchase as resale for collateral subtype as <collateral_subtype> at <Var_Stage> stage
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
      | ready property              | login acceptance_indiv_hl | property_details.xlsx | home                 | 34                          | mandatory              | Property Identified |
      | construction on land        | login acceptance_indiv_hl | property_details.xlsx | home                 | 31                          | mandatory              | Property Identified |
      | plot plus self construction | login acceptance_indiv_hl | property_details.xlsx | home                 | 30                          | mandatory              | Property Identified |
      | purchase a plot             | login acceptance_indiv_hl | property_details.xlsx | home                 | 33                          | mandatory              | Property Identified |
      | ready property              | dde_indiv_hl              | property_details.xlsx | home                 | 34                          | mandatory              | Property Identified |
      | construction on land        | dde_indiv_hl              | property_details.xlsx | home                 | 31                          | mandatory              | Property Identified |
      | plot plus self construction | dde_indiv_hl              | property_details.xlsx | home                 | 30                          | mandatory              | Property Identified |
      | purchase a plot             | dde_indiv_hl              | property_details.xlsx | home                 | 33                          | mandatory              | Property Identified |

    #resale property for builder property under construction at login ,dde
#FeatureID-ACAUTOCAS-5912,ACAUTOCAS-5397
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-10006: Validate save & next button in identified property details with type of purchase as resale for collateral subtype as builder property under construction at <Var_Stage> stage
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
      | login acceptance_indiv_hl | mandatory              | Property Identified |
      | dde_indiv_hl              | mandatory              | Property Identified |

# resale ready property ,purchase a plot builder constructed
#FeatureID-ACAUTOCAS-5397
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-10007: Validate save & next button in identified property details with type of purchase as resale for collateral subtype as <collateral_subtype> which is builder constructed at <Var_Stage> stage
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
      | ready property     | login acceptance_indiv_hl | property_details.xlsx | home                 | 34                          | mandatory              | Property Identified |
      | purchase a plot    | login acceptance_indiv_hl | property_details.xlsx | home                 | 33                          | mandatory              | Property Identified |
      | ready property     | dde_indiv_hl              | property_details.xlsx | home                 | 34                          | mandatory              | Property Identified |
      | purchase a plot    | dde_indiv_hl              | property_details.xlsx | home                 | 33                          | mandatory              | Property Identified |


#    lead details negative down payment
#  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @ImplementedBy-piyush.agnihotri
    @Release3
  Scenario Outline: ACAUTOCAS-10008: Unable to save identified property details for collateral subtype as <collateral_subtype> with negative down payment at lead detail
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
      | ready property              | mandatory              | Home Loan | property_details.xlsx | home                 | 35                          | Property Identified |
      | construction on land        | mandatory              | Home Loan | property_details.xlsx | home                 | 36                          | Property Identified |
      | plot plus self construction | mandatory              | Home Loan | property_details.xlsx | home                 | 37                          | Property Identified |
      | purchase a plot             | mandatory              | Home Loan | property_details.xlsx | home                 | 38                          | Property Identified |

#    with builder details at lead
  #FeatureID-ACAUTOCAS-5912,ACAUTOCAS-5397
  @ImplementedBy-aniket.tripathi
  @Release3
  Scenario: ACAUTOCAS-10009: Unable to save identified property details for collateral subtype as builder property under construction with negative down payment at lead detail
    And user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 175
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 39
    And user fills property details home page with "mandatory" fields for "Property Identified"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of identified ready property
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    When user fills the property address with "mandatory" fields
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user check for dedupe
    Then error message is displayed for property details

#   at login acceptance,dde negative down payment
    #  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
 #${ ProductType : ["Home Loan","LAP","Omni Loan"]}
# ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval","Reconsideration","disbursal initiation"]}
#${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-kanika.mahal
    @ReleaseLoanAppM5
    @Release3
  Scenario Outline: ACAUTOCAS-10010: Unable to save identified property details for collateral subtype <collateral_subtype> with negative down payment at <Stage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to property details page of "<ApplicationStage>"
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row <row_num>
    And user fills "<collateral_subtype>" in property details page
    And user fills mandatory property details
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    And user fills the property address
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 35
    When user fill property cost such that down payment becomes negative
    And user check for dedupe
    And user saves the property details
    Then error message is displayed in property details
    Examples:
      | collateral_subtype          | row_num | ProductType   | ApplicationStage   | ApplicantType   |
      | ready property              | 0       | <ProductType> | <ApplicationStage> | <ApplicantType> |
      | construction on land        | 27      | <ProductType> | <ApplicationStage> | <ApplicantType> |
      | plot plus self construction | 30      | <ProductType> | <ApplicationStage> | <ApplicantType> |
      | purchase a plot             | 29      | <ProductType> | <ApplicationStage> | <ApplicantType> |

  #   at login acceptance,dde negative down payment for buider property under construction
    #FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
   #${ ProductType : ["Home Loan","LAP","Omni Loan"]}
# ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval","Reconsideration","disbursal initiation"]}
#${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-kanika.mahal
    @ReleaseLoanAppM5
    @Release3
  Scenario Outline: ACAUTOCAS-10011: Unable to save identified property details for collateral subtype as builder property under construction with negative down payment at <Stage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to property details page of "<ApplicationStage>"
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 28
    And user fills "<collateral_subtype>" in property details page
    And user fills mandatory property details
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    And user fills the property address
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 35
    When user fill property cost such that down payment becomes negative
    And user check for dedupe
    And user saves the property details
    Then error message is displayed in property details
    Examples:
      | collateral_subtype                  | row_num | ProductType   | ApplicationStage   | ApplicantType   |
      | Builder Property Under Construction | 0       | <ProductType> | <ApplicationStage> | <ApplicantType> |

#negative down payment with save & next button
  #    lead details negative down payment
#  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
   #${ ProductType : ["Home Loan","LAP","Omni Loan"]}
# ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval","Reconsideration","disbursal initiation"]}
#${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-kanika.mahal
    @ReleaseLoanAppM5
    @Release3
  Scenario Outline: ACAUTOCAS-10012: Unable to save & next identified property details for collateral subtype <collateral_subtype> with negative down payment at lead details stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to property details page of "<ApplicationStage>"
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row <row_num>
    And user fills "<collateral_subtype>" in property details page
    And user fills mandatory property details
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    And user fills the property address
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 35
    When user fill property cost such that down payment becomes negative
    And user check for dedupe
    And user save & next the property details
    Then error message is displayed in property details
    Examples:
      | collateral_subtype          | row_num | ProductType   | ApplicationStage   | ApplicantType   |
      | ready property              | 0       | <ProductType> | <ApplicationStage> | <ApplicantType> |
      | construction on land        | 27      | <ProductType> | <ApplicationStage> | <ApplicantType> |
      | plot plus self construction | 30      | <ProductType> | <ApplicationStage> | <ApplicantType> |
      | purchase a plot             | 29      | <ProductType> | <ApplicationStage> | <ApplicantType> |

#    for builder property under construction
  #  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
   #${ ProductType : ["Home Loan","LAP","Omni Loan"]}
# ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval","Reconsideration","disbursal initiation"]}
#${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-kanika.mahal
    @ReleaseLoanAppM5
    @Release3
  Scenario Outline: ACAUTOCAS-10013: Unable to save & next identified property details for collateral subtype as builder property under construction with negative down payment at lead details stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to property details page of "<ApplicationStage>"
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 28
    And user fills "<collateral_subtype>" in property details page
    And user fills mandatory property details
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    And user fills the property address
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 35
    When user fill property cost such that down payment becomes negative
    And user check for dedupe
    And user save & next the property details
    Then error message is displayed in property details
    Examples:
      | collateral_subtype                  | row_num | ProductType   | ApplicationStage   | ApplicantType   |
      | Builder Property Under Construction | 0       | <ProductType> | <ApplicationStage> | <ApplicantType> |

#   at login acceptance,dde negative down payment
    #  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  #  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
   #${ ProductType : ["Home Loan","LAP","Omni Loan"]}
# ${ApplicationStage:["Login Acceptance","DDE"]}
#${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-kanika.mahal
    @ReleaseLoanAppM5
    @Release3
  Scenario Outline: ACAUTOCAS-10014: Unable to save & next identified property details for collateral subtype <collateral_subtype> with negative down payment at <Stage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to property details page of "<ApplicationStage>"
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row <row_num>
    And user fills "<collateral_subtype>" in property details page
    And user fills mandatory property details
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    And user fills the property address
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 35
    When user fill property cost such that down payment becomes negative
    And user check for dedupe
    And user save & next the property details
    Then error message is displayed in property details
    Examples:
      | collateral_subtype          | row_num | ProductType   | ApplicationStage   | ApplicantType   |
      | ready property              | 0       | <ProductType> | <ApplicationStage> | <ApplicantType> |
      | construction on land        | 27      | <ProductType> | <ApplicationStage> | <ApplicantType> |
      | plot plus self construction | 30      | <ProductType> | <ApplicationStage> | <ApplicantType> |
      | purchase a plot             | 29      | <ProductType> | <ApplicationStage> | <ApplicantType> |

  #   at login acceptance,dde negative down payment for buider property under construction
    #  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
   #${ ProductType : ["Home Loan","LAP","Omni Loan"]}
# ${ApplicationStage:["Login Acceptance","DDE"]}
#${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-kanika.mahal
    @ReleaseLoanAppM5
    @Release3
  Scenario Outline: ACAUTOCAS-10015: Unable to save & next identified property details for collateral subtype as builder property under construction with negative down payment at <Stage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to property details page of "<ApplicationStage>"
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 28
    And user fills "<collateral_subtype>" in property details page
    And user fills mandatory property details
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 0
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    And user fills the property address
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 35
    When user fill property cost such that down payment becomes negative
    And user check for dedupe
    And user save & next the property details
    Then error message is displayed in property details
    Examples:
      | collateral_subtype                  | row_num | ProductType   | ApplicationStage   | ApplicantType   |
      | Builder Property Under Construction | 0       | <ProductType> | <ApplicationStage> | <ApplicantType> |

#Update collateral
#all stages
  #  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
#  ${ ProductType : ["Home Loan","LAP","Omni Loan"]}
# ${ApplicationStage:["Login Acceptance","DDE"]}
#${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-kanika.mahal
    @ReleaseLoanAppM5
    @Release3
  Scenario Outline: ACAUTOCAS-10016: Update primary collateral in property details at <Stage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user clicks on loan details
    And user navigates to property details page of "<ApplicationStage>"
    And user reads data from the excel file "property_details.xlsx" under sheet "property_details_home" and row 63
    And user changes the property type
    Then property details saved successfully
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |

    #Update collateral without save
  #all satges
  #  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @OnHold
  Scenario Outline: ACAUTOCAS-10017: Update primary collateral without saving property details at <Stage> stage
    And application has primary collateral with property type as building
    When user selects the home loan application of "<Stage>"
    And user opens the property details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_details_home" and row 63
    And user changes the property type
    And user update the collateral
    Then error message is displayed
    Examples:
      | Stage                |
      | lead details         |
      | login acceptance     |
      | dde                  |
      | recommendation       |
      | credit approval      |
      | reconsideration      |
      | disbursal initiation |

#    Collateral Refresh unupdated data cleared
#  all stages
  #  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @OnHold
  Scenario Outline: ACAUTOCAS-10018: Validate collateral refresh behaviour in property details at <Stage> stage
    And application has primary collateral with property type as building
    When user selects the home loan application of "<Stage>"
    And user opens the property details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_details_home" and row 63
    And user changes the property type
    And user saves the property details
    And user refresh the collateral
    Then unupdated data is cleared
    Examples:
      | Stage                |
      | lead details         |
      | login acceptance     |
      | dde                  |
      | recommendation       |
      | credit approval      |
      | reconsideration      |
      | disbursal initiation |

#    Collateral Refresh updated data is displayed
#  all stages
  #  FeatureID-ACAUTOCAS-5967,ACAUTOCAS-5497,ACAUTOCAS-5494,ACAUTOCAS-5398,ACAUTOCAS-5397
  @OnHold
  Scenario Outline: ACAUTOCAS-10019: Validate updated data is displayed after doing collateral refersh in property details at <Stage> stage
    And application has primary collateral with property type as building
    When user selects the home loan application of "<Stage>"
    And user opens the property details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_details_home" and row 63
    And user changes the property type
    And user saves the property details
    And user selects the update collateral
    And user refresh the collateral
    Then updated data is displayed
    Examples:
      | Stage                |
      | lead details         |
      | login acceptance     |
      | dde                  |
      | recommendation       |
      | credit approval      |
      | reconsideration      |
      | disbursal initiation |


    #today
  ###GWTType:FunctionalTest
#  Source from squash 159360
  @OnHold
   #FeatureID-ACAUTOCAS-5397
  Scenario:Verify the Property Details under GCC DB when the application is moved to next stage from credit approval
    And user reads data from the excel file "property_details.xlsx" under sheet "property_details_home" and row 63
    And application has identified property as a primary collateral
    When user selects the home loan application of credit approval
    And user opens the property details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_details_home" and row 63
    And user changes the property description
    And user saves the property details
    And user moves to next stage
    And user opens the application at this stage
    And user opens the property details
    And user refresh the collateral
    Then added property description is displayed



    #today
  ###GWTType:FunctionalTest
#  Source from squash 159360
  @OnHold
    #FeatureID-ACAUTOCAS-5397
  Scenario:Verify the Property Details under GCC DB when the application is moved to next stage from credit approval
    And user reads data from the excel file "property_details.xlsx" under sheet "property_details_home" and row 63
    And application has identified property as a primary collateral
    When user selects the home loan application of credit approval
    And user opens the property details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_details_home" and row 63
    And user changes the property description
    And user saves the property details
    And user moves to next stage
    And user opens the application at this stage
    And user opens the property details
    And user refresh the collateral
    Then added property description is displayed

    #property details are non mandatory at lead details
  #FeatureID-ACAUTOCAS-5397
   #${ ProductType : ["Home Loan","LAP","Omni Loan"]}
# ${ApplicationStage:["lead details"]}
#${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-kanika.mahal
    @ReleaseLoanAppM5
    @Release3
  Scenario Outline: ACAUTOCAS-9991: Validate property details are non mandatory at lead details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to property details page of "<ApplicationStage>"
    When user delink the property details
    And user moves to the next stage without filling property details
    Then application is on "<final_stage>" stage
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | final_stage      |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | login acceptance |

    #property details are non mandatory at login acceptance
#  FeatureID-ACAUTOCAS-5397
  #${ ProductType : ["Home Loan","LAP","Omni Loan"]}
# ${ApplicationStage:["Login Acceptance"]}
#${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-kanika.mahal
    @ReleaseLoanAppM5
    @Release3
    @Perishable
  Scenario Outline: ACAUTOCAS-9992: Validate property details are non mandatory at login acceptance
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user reads data from the excel file "login_acceptance_end_flow.xlsx" under sheet "login_acceptance_details" and row 0
    And user fills Acceptance sheet details
    And user navigates to Loan Details Tab
    And user navigates to property details page of "<ApplicationStage>"
    When user delink the property details
    And user moves to the next stage without filling property details
    Then application is on "<final_stage>" stage
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | final_stage |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | kyc         |

#  FeatureID-ACAUTOCAS-5397
  #${ ProductType : ["Home Loan","LAP","Omni Loan"]}
# ${ApplicationStage:["DDE"]}
#${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-kanika.mahal
    @ReleaseLoanAppM5
    @Release3
  Scenario Outline: ACAUTOCAS-9993: Validate property details are mandatory at dde
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user clicks on loan details
    And user navigates to property details page of "<ApplicationStage>"
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 130
    When user delink the property details
    And user moves to the next stage without filling property details
    Then error message property detail is mandatory displayed
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |

