@Epic-Applicant_Information
@ReviewedBy-None
@AuthoredBy-Anand.Singh1
@AppInfoAdoption
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-10451
Feature: Ratio Analysis

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

##Duplicate scenario
#  Scenario Outline: ACAUTOCAS-12719:  Validation For Ratio Analysis Tab In Financial Details Screen - CASH FLOW
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
#    And user navigates to applicant details page of "<ApplicationStage>"
#    And user navigates to Employment Details
#    And user clicks on Employment Details
#    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
#    And user fills employment details for "<Occupation_Type>"
#    And user open financial details
#    When user open file upload accordion for file upload
#    Then "<Accordion>" should be present
#    Examples:
#      | Accordion      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Occupation_Type            | ProductType | ApplicationStage | ApplicantType | Category | key |
#      | Ratio Analysis | employment_details.xlsx | home                   | 0                             | Self Employed Professional | IAF         | DDE              | indiv         |          |     |
#
##Duplicate scenario
#  Scenario Outline: ACAUTOCAS-12720:  Validation For Ratio Analysis Tab In Financial Details Screen - Balance Sheet
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
#    And user navigates to applicant details page of "<ApplicationStage>"
#    And user navigates to Employment Details
#    And user clicks on Employment Details
#    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
#    And user fills employment details for "<Occupation_Type>"
#    And user open financial details
#    When user open file upload accordion for file upload
#    Then "<Accordion>" should be present
#    Examples:
#      | Accordion      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Occupation_Type            | ProductType | ApplicationStage | ApplicantType | Category | key |
#      | Ratio Analysis | employment_details.xlsx | home                   | 0                             | Self Employed Professional | IAF         | DDE              | indiv         |          |     |
#
##Duplicate scenario
#  Scenario Outline: ACAUTOCAS-12721:  Validation For Ratio Analysis Tab In Financial Details Screen - Funds Flow
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
#    And user navigates to applicant details page of "<ApplicationStage>"
#    And user navigates to Employment Details
#    And user clicks on Employment Details
#    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
#    And user fills employment details for "<Occupation_Type>"
#    And user open financial details
#    When user open file upload accordion for file upload
#    Then "<Accordion>" should be present
#    Examples:
#      | Accordion      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Occupation_Type            | ProductType | ApplicationStage | ApplicantType | Category | key |
#      | Ratio Analysis | employment_details.xlsx | home                   | 0                             | Self Employed Professional | IAF         | DDE              | indiv         |          |     |
#

  Scenario Outline: ACAUTOCAS-12719:  Validation For Ratio Analysis Tab In Financial Details Screen - CASH FLOW
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    When user open file upload accordion for file upload
    Then "<Accordion>" should be present
    @Release @Part-2
    @Conventional
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Accordion      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Occupation_Type            | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Balance Sheet  | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Funds Flow     | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Ratio Analysis | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Accordion      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Occupation_Type            | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Balance Sheet  | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Funds Flow     | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Ratio Analysis | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${ProductType:["IPF"]}
    #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Accordion      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Occupation_Type            | ProductType   | ApplicationStage   | ApplicantType   | Category   | key |
      | Balance Sheet  | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | Funds Flow     | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | Ratio Analysis | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |

    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Accordion      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Occupation_Type            | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Balance Sheet  | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Funds Flow     | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Ratio Analysis | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

  Scenario Outline: ACAUTOCAS-12720:  Validation For Ratio Analysis Tab In Financial Details Screen - Balance Sheet
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    When user open file upload accordion for file upload
    Then "<Accordion>" should be present
    @Release @Part-2
    @Conventional
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Accordion      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Occupation_Type            | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Balance Sheet  | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Funds Flow     | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Ratio Analysis | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Accordion      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Occupation_Type            | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Balance Sheet  | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Funds Flow     | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Ratio Analysis | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

       # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Accordion      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Occupation_Type            | ProductType   | ApplicationStage   | ApplicantType   | Category   | key |
      | Balance Sheet  | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | Funds Flow     | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | Ratio Analysis | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |

    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Accordion      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Occupation_Type            | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Balance Sheet  | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Funds Flow     | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Ratio Analysis | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

  Scenario Outline: ACAUTOCAS-12721:  Validation For Ratio Analysis Tab In Financial Details Screen - Funds Flow
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    When user open file upload accordion for file upload
    Then "<Accordion>" should be present
    @Release @Part-2
    @Conventional
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Accordion      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Occupation_Type            | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Balance Sheet  | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Funds Flow     | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Ratio Analysis | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Accordion      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Occupation_Type            | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Balance Sheet  | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Funds Flow     | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Ratio Analysis | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

       # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Accordion      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Occupation_Type            | ProductType   | ApplicationStage   | ApplicantType   | Category   | key |
      | Balance Sheet  | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | Funds Flow     | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | Ratio Analysis | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |

    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Accordion      | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Occupation_Type            | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Balance Sheet  | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Funds Flow     | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Ratio Analysis | employment_details.xlsx | home                   | 0                             | Self Employed Professional | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
