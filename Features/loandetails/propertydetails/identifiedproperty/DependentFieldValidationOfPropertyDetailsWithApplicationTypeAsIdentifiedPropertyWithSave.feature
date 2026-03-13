@Epic-Loan_Application_Details
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@ImplementedBy-harshprit.kumar
@ReviewedByDEV
@Conventional
@Islamic
#FeatureID-ACAUTOCAS-4169
Feature:Dependent Field Validation Of Property Details With Application Type As Identified Property

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @Release3
  Scenario Outline: ACAUTOCAS-4831: On selecting identified property with collateral subtype as <collateral_subtype> <Tab_Name> is displayed at lead details
    When user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user selects application type
    And user selects collateral sub type
    Then "<Tab_Name>" tab is displayed on property details page
    Examples:
      | collateral_subtype                  | Tab_Name                          | Loan_Type | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Ready Property                      | Other Details                     | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 107                         |
      | Ready Property                      | Property Address                  | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 107                         |
      | Ready Property                      | Property And Registration Details | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 107                         |
      | Ready Property                      | Ownership Detail                  | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 107                         |
      | Plot + Self Construction            | Other Details                     | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 105                         |
      | Plot + Self Construction            | Property Address                  | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 105                         |
      | Plot + Self Construction            | Property And Registration Details | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 105                         |
      | Plot + Self Construction            | Ownership Detail                  | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 105                         |
      | Construction On Land                | Other Details                     | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 104                         |
      | Construction On Land                | Property Address                  | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 104                         |
      | Construction On Land                | Property And Registration Details | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 104                         |
      | Construction On Land                | Ownership Detail                  | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 104                         |
      | Purchase a Plot                     | Other Details                     | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 106                         |
      | Purchase a Plot                     | Property Address                  | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 106                         |
      | Purchase a Plot                     | Property And Registration Details | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 106                         |
      | Purchase a Plot                     | Ownership Detail                  | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 106                         |
      | Builder Property Under Construction | Other Details                     | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 103                         |
      | Builder Property Under Construction | Property Address                  | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 103                         |
      | Builder Property Under Construction | Property And Registration Details | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 103                         |
      | Builder Property Under Construction | Ownership Detail                  | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 103                         |
      | Builder Property Under Construction | Builder Details                   | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 103                         |


  #for login acceptance and dde
  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario Outline: ACAUTOCAS-10056: On selecting identified property with collateral subtype as <collateral_subtype> <Tab_Name> is displayed at <Stage>
    When user opens an application at "<Var_Stage>" stage from application grid
    And user opens Property Details page in "<Stage>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user selects application type
    And user selects collateral sub type
    Then "<Tab_Name>" tab is displayed on property details page
    Examples:
      | Tab_Name                          | collateral_subtype                  | Stage            | Var_Stage                 | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Other Details                     | Ready Property                      | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 107                         |
      | Property Address                  | Ready Property                      | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 107                         |
      | Property And Registration Details | Ready Property                      | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 107                         |
      | Ownership Detail                  | Ready Property                      | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 107                         |
      | Other Details                     | Plot + Self Construction            | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 105                         |
      | Property Address                  | Plot + Self Construction            | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 105                         |
      | Property And Registration Details | Plot + Self Construction            | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 105                         |
      | Ownership Detail                  | Plot + Self Construction            | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 105                         |
      | Other Details                     | Construction On Land                | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 104                         |
      | Property Address                  | Construction On Land                | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 104                         |
      | Property And Registration Details | Construction On Land                | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 104                         |
      | Ownership Detail                  | Construction On Land                | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 104                         |
      | Other Details                     | Purchase a Plot                     | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 106                         |
      | Property Address                  | Purchase a Plot                     | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 106                         |
      | Property And Registration Details | Purchase a Plot                     | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 106                         |
      | Ownership Detail                  | Purchase a Plot                     | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 106                         |
      | builder Details                   | Builder Property Under Construction | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 103                         |
      | Other Details                     | Builder Property Under Construction | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 103                         |
      | Property Address                  | Builder Property Under Construction | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 103                         |
      | Property And Registration Details | Builder Property Under Construction | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 103                         |
      | Ownership Detail                  | Builder Property Under Construction | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 103                         |
      | Other Details                     | Ready Property                      | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 107                         |
      | Property Address                  | Ready Property                      | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 107                         |
      | Property And Registration Details | Ready Property                      | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 107                         |
      | Ownership Detail                  | Ready Property                      | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 107                         |
      | Other Details                     | Plot + Self Construction            | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 105                         |
      | Property Address                  | Plot + Self Construction            | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 105                         |
      | Property And Registration Details | Plot + Self Construction            | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 105                         |
      | Ownership Detail                  | Plot + Self Construction            | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 105                         |
      | Other Details                     | Construction On Land                | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 104                         |
      | Property Address                  | Construction On Land                | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 104                         |
      | Property And Registration Details | Construction On Land                | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 104                         |
      | Ownership Detail                  | Construction On Land                | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 104                         |
      | Other Details                     | Purchase a Plot                     | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 106                         |
      | Property Address                  | Purchase a Plot                     | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 106                         |
      | Property And Registration Details | Purchase a Plot                     | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 106                         |
      | Ownership Detail                  | Purchase a Plot                     | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 106                         |
      | builder Details                   | Builder Property Under Construction | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 103                         |
      | Other Details                     | Builder Property Under Construction | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 103                         |
      | Property Address                  | Builder Property Under Construction | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 103                         |
      | Property And Registration Details | Builder Property Under Construction | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 103                         |
      | Ownership Detail                  | Builder Property Under Construction | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 103                         |

  #builder details
  #create substask for it
  #FeatureID-ACAUTOCAS-4169,ACAUTOCAS-5397
  @Release3
  Scenario Outline:ACAUTOCAS-4834:Validate builder detail accordion is visible on adding collateral subtype as <collateral_subtype> at lead detail stage
    When user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 261
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills the property details home page
    And user selects the builder constructed checkbox
    Then builder details accordion is displayed
    Examples:
      | collateral_subtype | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Ready Property     | property_details.xlsx | home                 | 108                         |
      | Purchase a Plot    | property_details.xlsx | home                 | 119                         |

  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario Outline: ACAUTOCAS-10057: Validate builder detail accordion is not visible on adding collateral subtype as <collateral_subtype> at lead detail stage
    When user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 261
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills the property details home page
    Then builder details accordion is not displayed
    Examples:
      | collateral_subtype       | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Construction On Land     | property_details.xlsx | home                 | 120                         |
      | Plot + Self Construction | property_details.xlsx | home                 | 121                         |

#    login acceptance,dde
  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario Outline: ACAUTOCAS-10058: Validate builder detail accordion is visible on adding collateral subtype as <collateral_subtype> at <stage> stage
    When user opens an application at "<Var_Stage>" stage from application grid
    And user opens Property Details page in "<Stage>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills the property details home page
    And user selects the builder constructed checkbox
    Then builder details accordion is displayed
    Examples:
      | Stage            | Var_Stage                 | collateral_subtype | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Login Acceptance | login acceptance_indiv_hl | Ready Property     | property_details.xlsx | home                 | 108                         |
      | Login Acceptance | login acceptance_indiv_hl | Purchase a Plot    | property_details.xlsx | home                 | 119                         |
      | DDE              | dde_indiv_hl              | Ready Property     | property_details.xlsx | home                 | 108                         |
      | DDE              | dde_indiv_hl              | Purchase a Plot    | property_details.xlsx | home                 | 119                         |

    #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario Outline: ACAUTOCAS-10059: Validate builder detail accordion is not visible on adding collateral subtype as <collateral_subtype> at <Stage>
    When user opens an application at "<Var_Stage>" stage from application grid
    And user opens Property Details page in "<Stage>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills the property details home page
    Then builder details accordion is not displayed
    Examples:
      | collateral_subtype       | Stage            | Var_Stage                 | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Construction On Land     | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 120                         |
      | Plot + Self Construction | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 121                         |
      | Construction On Land     | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 120                         |
      | Plot + Self Construction | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 121                         |

  #lead details
  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario Outline: ACAUTOCAS-10060: Validate <Field_Name> is visible on adding collateral subtype as <collateral_subtype> at lead details
    When user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 261
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills the property details home page
    Then "<Field_Name>" field is displayed
    Examples:
      | Field_Name           | collateral_subtype       | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Contractor           | Construction On Land     | property_details.xlsx | home                 | 120                         |
      | Architect            | Construction On Land     | property_details.xlsx | home                 | 120                         |
      | Cost of Construction | Construction On Land     | property_details.xlsx | home                 | 120                         |
      | Contractor           | Plot + Self Construction | property_details.xlsx | home                 | 121                         |
      | Architect            | Plot + Self Construction | property_details.xlsx | home                 | 121                         |
      | Cost of Construction | Plot + Self Construction | property_details.xlsx | home                 | 121                         |
      | Cost of Land         | Plot + Self Construction | property_details.xlsx | home                 | 121                         |

#    negative
  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario Outline: ACAUTOCAS-10061: Validate <Field_Name> is not visible on adding collateral subtype as <collateral_subtype> at lead details
    When user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 261
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills the property details home page
    Then "<Field_Name>" field is not displayed
    Examples:
      | Field_Name           | collateral_subtype                  | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | contractor           | Ready Property                      | property_details.xlsx | home                 | 108                         |
      | Architect            | Ready Property                      | property_details.xlsx | home                 | 108                         |
      | Cost of Construction | Ready Property                      | property_details.xlsx | home                 | 108                         |
      | Cost of Land         | Ready Property                      | property_details.xlsx | home                 | 108                         |
      | contractor           | Purchase a Plot                     | property_details.xlsx | home                 | 119                         |
      | Architect            | Purchase a Plot                     | property_details.xlsx | home                 | 119                         |
      | Cost of Construction | Purchase a Plot                     | property_details.xlsx | home                 | 119                         |
      | Cost of Land         | Purchase a Plot                     | property_details.xlsx | home                 | 119                         |
      | contractor           | Builder Property Under Construction | property_details.xlsx | home                 | 122                         |
      | Architect            | Builder Property Under Construction | property_details.xlsx | home                 | 122                         |
      | Cost of Construction | Builder Property Under Construction | property_details.xlsx | home                 | 122                         |
      | Cost of Land         | Builder Property Under Construction | property_details.xlsx | home                 | 122                         |

#login acceptance, dde
  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario Outline: ACAUTOCAS-10062: Validate <Field_Name> is visible on adding collateral subtype as <collateral_subtype> at <Stage>
    When user opens an application at "<Var_Stage>" stage from application grid
    And user opens Property Details page in "<Stage>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills the property details home page
    Then "<Field_Name>" field is displayed
    Examples:
      | Field_Name           | collateral_subtype       | Stage            | Var_Stage                 | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Contractor           | Construction On Land     | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 120                         |
      | Architect            | Construction On Land     | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 120                         |
      | Cost of Construction | Construction On Land     | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 120                         |
      | Contractor           | Construction On Land     | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 120                         |
      | Architect            | Construction On Land     | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 120                         |
      | Cost of Construction | Construction On Land     | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 120                         |
      | Contractor           | Plot + Self Construction | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 121                         |
      | Architect            | Plot + Self Construction | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 121                         |
      | Cost of Construction | Plot + Self Construction | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 121                         |
      | Cost of Land         | Plot + Self Construction | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 121                         |
      | Contractor           | Plot + Self Construction | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 121                         |
      | Architect            | Plot + Self Construction | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 121                         |
      | Cost of Construction | Plot + Self Construction | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 121                         |
      | Cost of Land         | Plot + Self Construction | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 121                         |

#negative
  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario Outline: ACAUTOCAS-10063: Validate <Field_Name> is not visible on adding collateral subtype as <collateral_subtype> at <Stage>
    When user opens an application at "<Var_Stage>" stage from application grid
    And user opens Property Details page in "<Stage>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills the property details home page
    Then "<Field_Name>" field is not displayed
    Examples:
      | Field_Name           | collateral_subtype                  | Stage            | Var_Stage                 | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Contractor           | Ready Property                      | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 108                         |
      | Architect            | Ready Property                      | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 108                         |
      | Cost of Construction | Ready Property                      | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 108                         |
      | Cost of Land         | Ready Property                      | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 108                         |
      | Contractor           | Purchase a Plot                     | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 119                         |
      | Architect            | Purchase a Plot                     | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 119                         |
      | Cost of Construction | Purchase a Plot                     | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 119                         |
      | Cost of Land         | Purchase a Plot                     | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 119                         |
      | Contractor           | Builder Property Under Construction | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 122                         |
      | Architect            | Builder Property Under Construction | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 122                         |
      | Cost of Construction | Builder Property Under Construction | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 122                         |
      | Cost of Land         | Builder Property Under Construction | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 122                         |
      | Contractor           | Ready property                      | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 108                         |
      | Architect            | Ready property                      | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 108                         |
      | Cost of Construction | Ready property                      | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 108                         |
      | Cost of Land         | Ready property                      | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 108                         |
      | Contractor           | Purchase a Plot                     | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 119                         |
      | Architect            | Purchase a Plot                     | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 119                         |
      | Cost of Construction | Purchase a Plot                     | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 119                         |
      | Cost of Land         | Purchase a Plot                     | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 119                         |
      | Contractor           | Builder Property Under Construction | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 122                         |
      | Architect            | Builder Property Under Construction | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 122                         |
      | Cost of Construction | Builder Property Under Construction | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 122                         |
      | Cost of Land         | Builder Property Under Construction | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 122                         |


  @Release1
  Scenario Outline: ACAUTOCAS-4070: Selection of application type as non identified property <Tab_Name> is not displayed
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and save sourcing details with "<Mandatory_All>"
    When user selects application type as non identified property
    And user selects collateral sub type as ready property
    Then "<Tab_Name>" is not displayed
    Examples:
      | Tab_Name                          | Loan_Type | Mandatory_All | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Other Details                     | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 261                         |
      | Property Address                  | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 261                         |
      | Property And Registration Details | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 261                         |
      | Ownership Detail                  | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 261                         |

  #create subtask for this
  #FeatureID-ACAUTOCAS-4169,ACAUTOCAS-5397
  @Release3
  Scenario Outline: ACAUTOCAS-4833: On selecting property type in identified property details with <collateral_subtype> nature of property filled automatically at lead detail stage
    When user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills the data
      | Application Type                     |
      | Collateral Sub Type/Property Details |
      | Type Of Purchase                     |
      | Property Type                        |
    Then nature of property automatically selected
    Examples:
      | collateral_subtype                  | Loan_Type | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Ready Property                      | Home Loan | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 110                         |
      | Builder Property Under Construction | Home Loan | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 111                         |
      | Construction On Land                | Home Loan | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 115                         |
      | Plot + Self Construction            | Home Loan | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 117                         |
      | Purchase a Plot                     | Home Loan | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 113                         |

  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario Outline: ACAUTOCAS-10064: On selecting property type in identified property details with <collateral_subtype> nature of property filled automatically at <Stage> stage
    When user opens an application at "<Var_Stage>" stage from application grid
    And user opens Property Details page in "<Stage>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills the data
      | Application Type                     |
      | Collateral Sub Type/Property Details |
      | Type Of Purchase                     |
      | Property Type                        |
    Then nature of property automatically selected
    Examples:
      | collateral_subtype                  | Stage            | Var_Stage                 | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Ready Property                      | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 110                         |
      | Builder Property Under Construction | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 111                         |
      | Construction On Land                | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 115                         |
      | Plot + Self Construction            | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 117                         |
      | Purchase a Plot                     | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 113                         |
      | Ready Property                      | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 110                         |
      | Builder Property Under Construction | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 111                         |
      | Construction On Land                | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 115                         |
      | Plot + Self Construction            | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 117                         |
      | Purchase a Plot                     | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 113                         |


  @Release1
  Scenario Outline: ACAUTOCAS-4072:  Selecting builder constructed checkbox
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and save sourcing details with "<Mandatory_All>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_All>" fields for "<Application Type>"
    When user selects the builder constructed checkbox
    Then builder details tab is displayed

    Examples:
      | Loan_Type | Mandatory_All | Application Type    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Home Loan | mandatory     | Property Identified | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           |

  @Release1
  Scenario Outline: ACAUTOCAS-4835:  Entering property cost <Field_Name> is autofilled
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    When user fills the property details home page
    Then "<Field_Name>" is autofilled
    Examples:
      | Loan_Type | Field_Name                | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Home Loan | Total Property Cost/Price | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 0                           |
      | Home Loan | Percent of Down Payment   | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 0                           |
      | Home Loan | Down Payment              | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 0                           |
      | Home Loan | Application Amount        | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 0                           |
      | Home Loan | LCR (%)                   | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 0                           |

  #FeatureID-ACAUTOCAS-5397
  Scenario Outline: ACAUTOCAS-10065: Entering property cost <Field_Name> is autofilled at <stage> stage
    When user opens an application of "<Var_Stage>" stage variant from "<Grid_Name>" grid
    And user opens Property Details page in "<Stage>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user enters property cost
    Then "<Field_Name>" is autofilled
    @Release3
    Examples:
      | Field_Name                | Stage            | Var_Stage                 | Grid_Name       | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Total Property Cost/Price | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 0                           |
      | Percent of Down Payment   | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 0                           |
      | Down Payment              | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 0                           |
      | Application Amount        | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 0                           |
      | LCR (%)                   | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 0                           |
      | Total Property Cost/Price | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 0                           |
      | Percent of Down Payment   | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 0                           |
      | Down Payment              | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 0                           |
      | Application Amount        | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 0                           |
      | LCR (%)                   | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 0                           |
      | Total Property Cost/Price | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 0                           |
      | Percent of Down Payment   | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 0                           |
      | Down Payment              | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 0                           |
      | Application Amount        | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 0                           |
      | LCR (%)                   | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 0                           |
      | Total Property Cost/Price | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 0                           |
      | Percent of Down Payment   | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 0                           |
      | Down Payment              | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 0                           |
      | Application Amount        | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 0                           |
      | LCR (%)                   | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 0                           |
      | Total Property Cost/Price | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 0                           |
      | Percent of Down Payment   | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 0                           |
      | Down Payment              | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 0                           |
      | Application Amount        | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 0                           |
      | LCR (%)                   | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 0                           |
    @NotImplemented
    @Deferred
    Examples:
      | Field_Name                | Stage | Var_Stage                | Grid_Name   | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Total Property Cost/Price | ICD   | reconsideration_indiv_hl | Application | property_details.xlsx | home                 | 0                           |
      | Percent of Down Payment   | ICD   | reconsideration_indiv_hl | Application | property_details.xlsx | home                 | 0                           |
      | Down Payment              | ICD   | reconsideration_indiv_hl | Application | property_details.xlsx | home                 | 0                           |
      | Application Amount        | ICD   | reconsideration_indiv_hl | Application | property_details.xlsx | home                 | 0                           |
      | LCR (%)                   | ICD   | reconsideration_indiv_hl | Application | property_details.xlsx | home                 | 0                           |

  @Release3
  Scenario Outline: ACAUTOCAS-4836: Entering market value for identified property with collateral subtype as <collateral_subtype> LTV is autofilled at lead detail
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    When user fills the property details home page
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_otherDetails>" and row <PropertyDetails_otherDetails_rowNum>
    And user fills market value
    Then "LTV (%)" is autofilled
    Examples:
      | collateral_subtype                  | Loan_Type | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_otherDetails | PropertyDetails_otherDetails_rowNum |
      | Ready Property                      | Home Loan | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 108                         | other_details                | 25                                  |
      | Builder Property Under Construction | Home Loan | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 122                         | other_details                | 25                                  |
      | Construction On Land                | Home Loan | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 120                         | other_details                | 25                                  |
      | Purchase a Plot                     | Home Loan | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 119                         | other_details                | 25                                  |
      | Plot + Self Construction            | Home Loan | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 121                         | other_details                | 25                                  |

  #FeatureID-ACAUTOCAS-5397
  Scenario Outline: ACAUTOCAS-10066: Entering market value for identified property with collateral subtype as <collateral_subtype> LTV is autofilled at <Stage>
    When user opens an application of "<Var_Stage>" stage variant from "<Grid_Name>" grid
    And user opens Property Details page in "<Stage>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills the property details home page
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_otherDetails>" and row <PropertyDetails_otherDetails_rowNum>
    And user fills market value
    Then "LTV (%)" is autofilled
    @Release3
    Examples:
      | collateral_subtype                  | Stage            | Var_Stage                 | Grid_Name       | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_otherDetails | PropertyDetails_otherDetails_rowNum |
      | Ready Property                      | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 108                         | other_details                | 25                                  |
      | Builder Property Under Construction | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 122                         | other_details                | 25                                  |
      | Construction On Land                | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 120                         | other_details                | 25                                  |
      | Purchase a Plot                     | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 119                         | other_details                | 25                                  |
      | Plot + Self Construction            | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 121                         | other_details                | 25                                  |
      | Ready Property                      | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 108                         | other_details                | 25                                  |
      | Builder Property Under Construction | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 122                         | other_details                | 25                                  |
      | Construction On Land                | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 120                         | other_details                | 25                                  |
      | Purchase a Plot                     | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 119                         | other_details                | 25                                  |
      | Plot + Self Construction            | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 121                         | other_details                | 25                                  |
      | Ready Property                      | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 108                         | other_details                | 25                                  |
      | Builder Property Under Construction | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 122                         | other_details                | 25                                  |
      | Construction On Land                | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 120                         | other_details                | 25                                  |
      | Purchase a Plot                     | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 119                         | other_details                | 25                                  |
      | Plot + Self Construction            | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 121                         | other_details                | 25                                  |
      | Ready Property                      | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 108                         | other_details                | 25                                  |
      | Builder Property Under Construction | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 122                         | other_details                | 25                                  |
      | Construction On Land                | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 120                         | other_details                | 25                                  |
      | Purchase a Plot                     | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 119                         | other_details                | 25                                  |
      | Plot + Self Construction            | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 121                         | other_details                | 25                                  |
      | Ready Property                      | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 108                         | other_details                | 25                                  |
      | Builder Property Under Construction | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 122                         | other_details                | 25                                  |
      | Construction On Land                | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 120                         | other_details                | 25                                  |
      | Purchase a Plot                     | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 119                         | other_details                | 25                                  |
      | Plot + Self Construction            | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 121                         | other_details                | 25                                  |

    @NotImplemented
    @Deferred
    Examples:
      | collateral_subtype                  | Stage | Var_Stage                | Grid_Name   | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_otherDetails | PropertyDetails_otherDetails_rowNum |
      | Ready Property                      | ICD   | reconsideration_indiv_hl | Application | property_details.xlsx | home                 | 108                         | other_details                | 25                                  |
      | Builder Property Under Construction | ICD   | reconsideration_indiv_hl | Application | property_details.xlsx | home                 | 122                         | other_details                | 25                                  |
      | Construction On Land                | ICD   | reconsideration_indiv_hl | Application | property_details.xlsx | home                 | 120                         | other_details                | 25                                  |
      | Purchase a Plot                     | ICD   | reconsideration_indiv_hl | Application | property_details.xlsx | home                 | 119                         | other_details                | 25                                  |
      | Plot + Self Construction            | ICD   | reconsideration_indiv_hl | Application | property_details.xlsx | home                 | 121                         | other_details                | 25                                  |


  @Release1
  Scenario Outline: ACAUTOCAS-4837: Entering property cost of identified property <Field_Name> is autofilled with suitable calculation at lead details
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    When user fills the property details home page
    Then "<Field_Name>" is autofilled with suitable calculation

    Examples:
      | Loan_Type | Field_Name                | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Home Loan | Total Property Cost/Price | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           |
      | Home Loan | Percent of Down Payment   | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           |
      | Home Loan | Down Payment              | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           |
      | Home Loan | Application Amount        | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           |
      | Home Loan | LCR (%)                   | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           |

  #FeatureID-ACAUTOCAS-4169,ACAUTOCAS-5397
  Scenario Outline: ACAUTOCAS-10067: Entering property cost of identified property <Field_Name> is autofilled with suitable calculation at <Stage>
    When user opens an application of "<Var_Stage>" stage variant from "<Grid_Name>" grid
    And user opens Property Details page in "<Stage>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user selects application type
    And user enters property cost
    Then "<Field_Name>" is autofilled with suitable calculation
    @Release3
    Examples:
      | Field_Name                | Stage            | Var_Stage                 | Grid_Name       | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Total Property Cost/Price | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 108                         |
      | Percent of Down Payment   | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 122                         |
      | Down Payment              | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 120                         |
      | Application Amount        | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 119                         |
      | LCR (%)                   | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 121                         |
      | Total Property Cost/Price | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 108                         |
      | Percent of Down Payment   | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 122                         |
      | Down Payment              | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 120                         |
      | Application Amount        | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 119                         |
      | LCR (%)                   | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 121                         |
      | Total Property Cost/Price | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 108                         |
      | Percent of Down Payment   | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 122                         |
      | Down Payment              | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 120                         |
      | Application Amount        | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 119                         |
      | LCR (%)                   | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 121                         |
      | Total Property Cost/Price | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 108                         |
      | Percent of Down Payment   | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 122                         |
      | Down Payment              | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 120                         |
      | Application Amount        | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 119                         |
      | LCR (%)                   | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 121                         |
      | Total Property Cost/Price | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 108                         |
      | Percent of Down Payment   | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 122                         |
      | Down Payment              | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 120                         |
      | Application Amount        | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 119                         |
      | LCR (%)                   | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 121                         |
    @NotImplemented
    @Deferred
    Examples:
      | Field_Name                | Stage | Var_Stage                 | Grid_Name   | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Total Property Cost/Price | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 108                         |
      | Percent of Down Payment   | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 122                         |
      | Down Payment              | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 120                         |
      | Application Amount        | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 119                         |
      | LCR (%)                   | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 121                         |


  @Release3
  Scenario Outline: ACAUTOCAS-4838: Entering market value for identified property with collateral subtype as <collateral_subtype> LTV is autofilled with suitable calculation at lead detail
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills the property details home page
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_otherDetails>" and row <PropertyDetails_otherDetails_rowNum>
    When user fills market value
    Then "LTV (%)" is autofilled with suitable calculation
    Examples:
      | collateral_subtype                  | Loan_Type | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_otherDetails | PropertyDetails_otherDetails_rowNum |
      | Ready Property                      | Home Loan | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 108                         | other_details                | 25                                  |
      | Builder Property Under Construction | Home Loan | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 122                         | other_details                | 25                                  |
      | Construction On Land                | Home Loan | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 120                         | other_details                | 25                                  |
      | Purchase a Plot                     | Home Loan | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 119                         | other_details                | 25                                  |
      | Plot + Self Construction            | Home Loan | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 121                         | other_details                | 25                                  |

  #FeatureID-ACAUTOCAS-4169,ACAUTOCAS-5397
  Scenario Outline: ACAUTOCAS-10068: Entering market value for identified property with collateral subtype as <collateral_subtype> LTV is autofilled with suitable calculation at <Stage>
    When user opens an application of "<Var_Stage>" stage variant from "<Grid_Name>" grid
    And user opens Property Details page in "<Stage>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills the property details home page
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_otherDetails>" and row <PropertyDetails_otherDetails_rowNum>
    And user fills market value
    Then "LTV (%)" is autofilled with suitable calculation
    @Release3
    Examples:
      | Stage            | Var_Stage                 | Grid_Name       | collateral_subtype                  | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_otherDetails | PropertyDetails_otherDetails_rowNum |
      | Login Acceptance | login acceptance_indiv_hl | Application     | Ready Property                      | property_details.xlsx | home                 | 108                         | other_details                | 25                                  |
      | Login Acceptance | login acceptance_indiv_hl | Application     | Builder Property Under Construction | property_details.xlsx | home                 | 122                         | other_details                | 25                                  |
      | Login Acceptance | login acceptance_indiv_hl | Application     | Construction On Land                | property_details.xlsx | home                 | 120                         | other_details                | 25                                  |
      | Login Acceptance | login acceptance_indiv_hl | Application     | Purchase a Plot                     | property_details.xlsx | home                 | 119                         | other_details                | 25                                  |
      | Login Acceptance | login acceptance_indiv_hl | Application     | Plot + Self Construction            | property_details.xlsx | home                 | 121                         | other_details                | 25                                  |
      | DDE              | dde_indiv_hl              | Application     | Ready Property                      | property_details.xlsx | home                 | 108                         | other_details                | 25                                  |
      | DDE              | dde_indiv_hl              | Application     | Builder Property Under Construction | property_details.xlsx | home                 | 122                         | other_details                | 25                                  |
      | DDE              | dde_indiv_hl              | Application     | Construction On Land                | property_details.xlsx | home                 | 120                         | other_details                | 25                                  |
      | DDE              | dde_indiv_hl              | Application     | Purchase a Plot                     | property_details.xlsx | home                 | 119                         | other_details                | 25                                  |
      | DDE              | dde_indiv_hl              | Application     | Plot + Self Construction            | property_details.xlsx | home                 | 121                         | other_details                | 25                                  |
      | Recommendation   | recommendation_indiv_hl   | Application     | Ready Property                      | property_details.xlsx | home                 | 108                         | other_details                | 25                                  |
      | Recommendation   | recommendation_indiv_hl   | Application     | Builder Property Under Construction | property_details.xlsx | home                 | 122                         | other_details                | 25                                  |
      | Recommendation   | recommendation_indiv_hl   | Application     | Construction On Land                | property_details.xlsx | home                 | 120                         | other_details                | 25                                  |
      | Recommendation   | recommendation_indiv_hl   | Application     | Purchase a Plot                     | property_details.xlsx | home                 | 119                         | other_details                | 25                                  |
      | Recommendation   | recommendation_indiv_hl   | Application     | Plot + Self Construction            | property_details.xlsx | home                 | 121                         | other_details                | 25                                  |
      | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | Ready Property                      | property_details.xlsx | home                 | 108                         | other_details                | 25                                  |
      | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | Builder Property Under Construction | property_details.xlsx | home                 | 122                         | other_details                | 25                                  |
      | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | Construction On Land                | property_details.xlsx | home                 | 120                         | other_details                | 25                                  |
      | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | Purchase a Plot                     | property_details.xlsx | home                 | 119                         | other_details                | 25                                  |
      | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | Plot + Self Construction            | property_details.xlsx | home                 | 121                         | other_details                | 25                                  |
      | Reconsideration  | reconsideration_indiv_hl  | Application     | Ready Property                      | property_details.xlsx | home                 | 108                         | other_details                | 25                                  |
      | Reconsideration  | reconsideration_indiv_hl  | Application     | Builder Property Under Construction | property_details.xlsx | home                 | 122                         | other_details                | 25                                  |
      | Reconsideration  | reconsideration_indiv_hl  | Application     | Construction On Land                | property_details.xlsx | home                 | 120                         | other_details                | 25                                  |
      | Reconsideration  | reconsideration_indiv_hl  | Application     | Purchase a Plot                     | property_details.xlsx | home                 | 119                         | other_details                | 25                                  |
      | Reconsideration  | reconsideration_indiv_hl  | Application     | Plot + Self Construction            | property_details.xlsx | home                 | 121                         | other_details                | 25                                  |
    @NotImplemented
    @Deferred
    Examples:
      | Stage | Var_Stage                 | Grid_Name   | collateral_subtype                  | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_otherDetails | PropertyDetails_otherDetails_rowNum |
      | ICD   | login acceptance_indiv_hl | Application | Ready Property                      | property_details.xlsx | home                 | 108                         | other_details                | 25                                  |
      | ICD   | login acceptance_indiv_hl | Application | Builder Property Under Construction | property_details.xlsx | home                 | 122                         | other_details                | 25                                  |
      | ICD   | login acceptance_indiv_hl | Application | Construction On Land                | property_details.xlsx | home                 | 120                         | other_details                | 25                                  |
      | ICD   | login acceptance_indiv_hl | Application | Purchase a Plot                     | property_details.xlsx | home                 | 119                         | other_details                | 25                                  |
      | ICD   | login acceptance_indiv_hl | Application | Plot + Self Construction            | property_details.xlsx | home                 | 121                         | other_details                | 25                                  |


    # lead details
  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario Outline: ACAUTOCAS-10069: Validate <Field_Name> is disabled on adding identified property in property details at lead details
    And user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 261
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 108
    And user fills the property details home page
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 25
    And user fills other details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 52
    And user fills the property address
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 20
    And user fills the ownership details
    When user saves property details
    Then "<Field_Name>" is non editable
    Examples:
      | Field_Name                           |
      | Collateral Sub Type/Property Details |
      | Approximate Property Cost            |

  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario Outline: ACAUTOCAS-10070: Validate <Field_Name> is disabled on adding identified property in property details at <Stage> Stage
    And user opens an application at "<Var_Stage>" stage from application grid
    And user opens Property Details page in "<Stage>"
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 108
    And user fills the property details home page
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 25
    And user fills other details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 52
    And user fills the property address
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 20
    And user fills the ownership details
    When user saves property details
    Then "<Field_Name>" is non editable
    Examples:
      | Field_Name                           | Stage            | Var_Stage                 |
      | Collateral Sub Type/Property Details | Login Acceptance | login acceptance_indiv_hl |
      | Approximate Property Cost            | Login Acceptance | login acceptance_indiv_hl |
      | Collateral Sub Type/Property Details | DDE              | dde_indiv_hl              |
      | Approximate Property Cost            | DDE              | dde_indiv_hl              |

  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario Outline: ACAUTOCAS-10071: Validate <Field_Name> is generated on adding identified property in property details at lead details
    And user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 261
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 108
    And user fills the property details home page
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 25
    And user fills other details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 52
    And user fills the property address
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 20
    And user fills the ownership details
    When user saves property details
    Then "<Field_Name>" is generated
    Examples:
      | Field_Name               |
      | Collateral Number        |
      | Global Collateral Number |

  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario Outline: ACAUTOCAS-10072: Validate <Field_Name> is generated on adding identified property in property details at <Stage> stage
    And user opens an application at "<Var_Stage>" stage from application grid
    And user opens Property Details page in "<Stage>"
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 108
    And user fills the property details home page
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 25
    And user fills other details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 52
    And user fills the property address
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 20
    And user fills the ownership details
    When user saves property details
    Then "<Field_Name>" is generated
    Examples:
      | Field_Name               | Stage            | Var_Stage                 |
      | Collateral Number        | Login Acceptance | login acceptance_indiv_hl |
      | Global Collateral Number | Login Acceptance | login acceptance_indiv_hl |
      | Collateral Number        | DDE              | dde_indiv_hl              |
      | Global Collateral Number | DDE              | dde_indiv_hl              |

  #delink button at lead
  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario Outline: ACAUTOCAS-10073: Validate delink button is displayed on adding identified property with collateral subtype as <collateral_subtype> at lead details
    And user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 261
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills the property details home page
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 25
    And user fills other details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 52
    And user fills the property address
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 20
    And user fills the ownership details
    When user saves property details
    Then delink button is displayed
    Examples:
      | collateral_subtype       | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Ready Property           | property_details.xlsx | home                 | 108                         |
      | Construction On Land     | property_details.xlsx | home                 | 120                         |
      | Plot + Self Construction | property_details.xlsx | home                 | 121                         |
      | Purchase a Plot          | property_details.xlsx | home                 | 119                         |

  #builder property
  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario: ACAUTOCAS-10074: Validate delink button is displayed on adding identified property with collateral subtype as builder property under construction at lead details
    And user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 261
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 122
    And user fills the property details home page
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 1
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 25
    And user fills other details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 52
    And user fills the property address
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 20
    And user fills the ownership details
    When user saves property details
    Then delink button is displayed

    #delink button at login ,dde
  #FeatureID-ACAUTOCAS-5397
  Scenario Outline: ACAUTOCAS-10075: Validate delink button is displayed on adding identified property with collateral subtype as <collateral_subtype> at <Stage>
    When user opens an application of "<Var_Stage>" stage variant from "<Grid_Name>" grid
    And user opens Property Details page in "<Stage>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills the property details home page
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 25
    And user fills other details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 52
    And user fills the property address
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 20
    And user fills the ownership details
    And user saves property details
    Then delink button is displayed
    @Release3
    Examples:
      | Stage            | Var_Stage                 | Grid_Name       | collateral_subtype                  | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Login Acceptance | login acceptance_indiv_hl | Application     | Ready Property                      | property_details.xlsx | home                 | 108                         |
      | Login Acceptance | login acceptance_indiv_hl | Application     | Builder Property Under Construction | property_details.xlsx | home                 | 122                         |
      | Login Acceptance | login acceptance_indiv_hl | Application     | Construction On Land                | property_details.xlsx | home                 | 120                         |
      | Login Acceptance | login acceptance_indiv_hl | Application     | Purchase a Plot                     | property_details.xlsx | home                 | 119                         |
      | Login Acceptance | login acceptance_indiv_hl | Application     | Plot + Self Construction            | property_details.xlsx | home                 | 121                         |
      | DDE              | dde_indiv_hl              | Application     | Ready Property                      | property_details.xlsx | home                 | 108                         |
      | DDE              | dde_indiv_hl              | Application     | Builder Property Under Construction | property_details.xlsx | home                 | 122                         |
      | DDE              | dde_indiv_hl              | Application     | Construction On Land                | property_details.xlsx | home                 | 120                         |
      | DDE              | dde_indiv_hl              | Application     | Purchase a Plot                     | property_details.xlsx | home                 | 119                         |
      | DDE              | dde_indiv_hl              | Application     | Plot + Self Construction            | property_details.xlsx | home                 | 121                         |
      | Recommendation   | recommendation_indiv_hl   | Application     | Ready Property                      | property_details.xlsx | home                 | 108                         |
      | Recommendation   | recommendation_indiv_hl   | Application     | Builder Property Under Construction | property_details.xlsx | home                 | 122                         |
      | Recommendation   | recommendation_indiv_hl   | Application     | Construction On Land                | property_details.xlsx | home                 | 120                         |
      | Recommendation   | recommendation_indiv_hl   | Application     | Purchase a Plot                     | property_details.xlsx | home                 | 119                         |
      | Recommendation   | recommendation_indiv_hl   | Application     | Plot + Self Construction            | property_details.xlsx | home                 | 121                         |
      | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | Ready Property                      | property_details.xlsx | home                 | 108                         |
      | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | Builder Property Under Construction | property_details.xlsx | home                 | 122                         |
      | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | Construction On Land                | property_details.xlsx | home                 | 120                         |
      | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | Purchase a Plot                     | property_details.xlsx | home                 | 119                         |
      | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | Plot + Self Construction            | property_details.xlsx | home                 | 121                         |
      | Reconsideration  | reconsideration_indiv_hl  | Application     | Ready Property                      | property_details.xlsx | home                 | 108                         |
      | Reconsideration  | reconsideration_indiv_hl  | Application     | Builder Property Under Construction | property_details.xlsx | home                 | 122                         |
      | Reconsideration  | reconsideration_indiv_hl  | Application     | Construction On Land                | property_details.xlsx | home                 | 120                         |
      | Reconsideration  | reconsideration_indiv_hl  | Application     | Purchase a Plot                     | property_details.xlsx | home                 | 119                         |
      | Reconsideration  | reconsideration_indiv_hl  | Application     | Plot + Self Construction            | property_details.xlsx | home                 | 121                         |

    @NotImplemented
    @Deferred
    Examples:
      | Stage | Var_Stage                 | Grid_Name   | collateral_subtype                  | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | ICD   | login acceptance_indiv_hl | Application | Ready Property                      | property_details.xlsx | home                 | 108                         |
      | ICD   | login acceptance_indiv_hl | Application | Builder Property Under Construction | property_details.xlsx | home                 | 122                         |
      | ICD   | login acceptance_indiv_hl | Application | Construction On Land                | property_details.xlsx | home                 | 120                         |
      | ICD   | login acceptance_indiv_hl | Application | Purchase a Plot                     | property_details.xlsx | home                 | 119                         |
      | ICD   | login acceptance_indiv_hl | Application | Plot + Self Construction            | property_details.xlsx | home                 | 121                         |


  #Ownership details become mandatory once its accordion is opened at lead
  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario Outline: ACAUTOCAS-10079: Validate ownership details is mandatory once its accordion is opened in identified property details for <collateral_subtype> at lead details
    When user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 261
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills the property details home page
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 25
    And user fills other details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 52
    And user fills the property address
    And user click on check for duplicates
    And user opens ownership accordion
    And user close ownership accordion
    And user saves the property details
    Then error message is displayed in notification
    Examples:
      | collateral_subtype       | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Ready Property           | property_details.xlsx | home                 | 108                         |
      | Construction On Land     | property_details.xlsx | home                 | 120                         |
      | Plot + Self Construction | property_details.xlsx | home                 | 121                         |
      | Purchase a Plot          | property_details.xlsx | home                 | 119                         |

 #delink behaviour at lead
  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario Outline: ACAUTOCAS-10076: Delink identified property with collateral subtype as <collateral_subtype> at lead details
    When user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 261
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills the property details home page
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 25
    And user fills other details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 52
    And user fills the property address
    And user click on check for duplicates
    And user saves the property details
    And user delink the collateral
    Then collateral is removed
    Examples:
      | collateral_subtype       | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Ready Property           | property_details.xlsx | home                 | 108                         |
      | Construction On Land     | property_details.xlsx | home                 | 120                         |
      | Plot + Self Construction | property_details.xlsx | home                 | 121                         |
      | Purchase a Plot          | property_details.xlsx | home                 | 119                         |

#delink behaviour for builder property under construction
  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario: ACAUTOCAS-10077: Delink identified property with collateral subtype as builder property under construction at lead details
    When user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 261
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 122
    And user fills the property details home page
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 1
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 25
    And user fills other details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 52
    And user fills the property address
    And user click on check for duplicates
    And user saves the property details
    And user delink the collateral
    Then collateral is removed

  #for builder property under construction
  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario: ACAUTOCAS-10080: Validate ownership details is mandatory once its accordion is opened in identified property details for builder property under construction at lead details
    When user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 261
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 122
    And user fills the property details home page
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 1
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 25
    And user fills other details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 52
    And user fills the property address
    And user click on check for duplicates
    And user opens ownership accordion
    And user close ownership accordion
    And user saves the property details
    Then error message is displayed in notification

  #FeatureID-ACAUTOCAS-5397
  Scenario Outline: ACAUTOCAS-10081: Validate ownership details is mandatory once its accordion is opened in identified property details for <collateral_subtype> at <Stage> stage
    When user opens an application of "<Var_Stage>" stage variant from "<Grid_Name>" grid
    And user opens Property Details page in "<Stage>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills the property details home page
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 25
    And user fills other details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 52
    And user fills the property address
    And user click on check for duplicates
    And user opens ownership accordion
    And user close ownership accordion
    And user saves the property details
    Then error message is displayed in notification
    @Release3
    Examples:
      | Stage            | Var_Stage                 | Grid_Name       | collateral_subtype       | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Login Acceptance | login acceptance_indiv_hl | Application     | Ready Property           | property_details.xlsx | home                 | 108                         |
      | Login Acceptance | login acceptance_indiv_hl | Application     | Construction On Land     | property_details.xlsx | home                 | 120                         |
      | Login Acceptance | login acceptance_indiv_hl | Application     | Purchase a Plot          | property_details.xlsx | home                 | 119                         |
      | Login Acceptance | login acceptance_indiv_hl | Application     | Plot + Self Construction | property_details.xlsx | home                 | 121                         |
      | DDE              | dde_indiv_hl              | Application     | Ready Property           | property_details.xlsx | home                 | 108                         |
      | DDE              | dde_indiv_hl              | Application     | Construction On Land     | property_details.xlsx | home                 | 120                         |
      | DDE              | dde_indiv_hl              | Application     | Purchase a Plot          | property_details.xlsx | home                 | 119                         |
      | DDE              | dde_indiv_hl              | Application     | Plot + Self Construction | property_details.xlsx | home                 | 121                         |
      | Recommendation   | recommendation_indiv_hl   | Application     | Ready Property           | property_details.xlsx | home                 | 108                         |
      | Recommendation   | recommendation_indiv_hl   | Application     | Construction On Land     | property_details.xlsx | home                 | 120                         |
      | Recommendation   | recommendation_indiv_hl   | Application     | Purchase a Plot          | property_details.xlsx | home                 | 119                         |
      | Recommendation   | recommendation_indiv_hl   | Application     | Plot + Self Construction | property_details.xlsx | home                 | 121                         |
      | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | Ready Property           | property_details.xlsx | home                 | 108                         |
      | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | Construction On Land     | property_details.xlsx | home                 | 120                         |
      | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | Purchase a Plot          | property_details.xlsx | home                 | 119                         |
      | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | Plot + Self Construction | property_details.xlsx | home                 | 121                         |
      | Reconsideration  | reconsideration_indiv_hl  | Application     | Ready Property           | property_details.xlsx | home                 | 108                         |
      | Reconsideration  | reconsideration_indiv_hl  | Application     | Construction On Land     | property_details.xlsx | home                 | 120                         |
      | Reconsideration  | reconsideration_indiv_hl  | Application     | Construction On Land     | property_details.xlsx | home                 | 120                         |
      | Reconsideration  | reconsideration_indiv_hl  | Application     | Purchase a Plot          | property_details.xlsx | home                 | 119                         |

    @NotImplemented
    @Deferred
    Examples:
      | Stage | Var_Stage                 | Grid_Name   | collateral_subtype       | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | ICD   | login acceptance_indiv_hl | Application | Ready Property           | property_details.xlsx | home                 | 108                         |
      | ICD   | login acceptance_indiv_hl | Application | Construction On Land     | property_details.xlsx | home                 | 120                         |
      | ICD   | login acceptance_indiv_hl | Application | Purchase a Plot          | property_details.xlsx | home                 | 119                         |
      | ICD   | login acceptance_indiv_hl | Application | Plot + Self Construction | property_details.xlsx | home                 | 121                         |


      #    for builder property under construction
  #FeatureID-ACAUTOCAS-5397
  Scenario Outline: ACAUTOCAS-10082: Validate ownership details is mandatory once its accordion is opened in identified property details for builder property under construction at <Stage> Stage
    When user opens an application of "<Var_Stage>" stage variant from "<Grid_Name>" grid
    And user opens Property Details page in "<Stage>"
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 122
    And user fills the property details home page
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 1
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 25
    And user fills other details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 52
    And user fills the property address
    And user click on check for duplicates
    And user opens ownership accordion
    And user close ownership accordion
    And user saves the property details
    Then error message is displayed in notification
    @Release3
    Examples:
      | Stage            | Var_Stage                 | Grid_Name       |
      | Login Acceptance | login acceptance_indiv_hl | Application     |
      | DDE              | dde_indiv_hl              | Application     |
      | Recommendation   | recommendation_indiv_hl   | Application     |
      | Credit Approval  | credit approval_indiv_hl  | Credit_Approval |
      | Reconsideration  | reconsideration_indiv_hl  | Application     |

    @NotImplemented
    @Deferred
    Examples:
      | Stage | Var_Stage                 | Grid_Name   |
      | ICD   | login acceptance_indiv_hl | Application |

