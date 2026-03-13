@Epic-Applicant_Information
@AuthoredBy-rsurya.kumar
#Author:rsurya.kumar
#ScriptedBy:
#ReviewedBy:
#Scenarios:
# ${ApplicantType:["nonindiv"]}
Feature: Addition of business details to non individual customer

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

## ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
## ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
## ${CollType:[]}
## ${CollSubType:[]}
#FeatureID-ACAUTOCAS-10431
#  Pre-requisite: user has not added business details for non individual customer
#  COMMENTED AS PER DISCUSSION WITH SAJJA SIR
#  @ImplementedBy-akash.bansal
#    @Conventional @Release @Part-3
#    @Release3
#    @Perishable
#  Scenario Outline: Field validation for business details of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
#    And user opens detailed information of "customer" in applicant information
#    When user navigates to business details
#    Then user should be able to see entity
#      | EntityName                           |
#      | Business Information And Description |
#    Examples:
#      | ProductType   | ApplicationStage   | key  | ApplicantType |
#      | <ProductType> | <ApplicationStage> | nobd | nonindiv      |

# ${CollType:[]}
# ${CollSubType:[]}
#FeatureID-ACAUTOCAS-10431
  @ImplementedBy-akash.bansal
    @Perishable
  Scenario Outline: ACAUTOCAS-12428:  Field label validation for business details of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to business details
    Then user should be able to see Business Details fields with label
      | applicant_information.xlsx | BusinessDetails-Labels | 0 |
      | applicant_information.xlsx | BusinessDetails-Labels | 1 |
    @Conventional
    @Release
    @Part-3
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | key  | ApplicantType   | Category |
      | <ProductType> | <ApplicationStage> | nobd | <ApplicantType> |          |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | key  | ApplicantType   | Category |
      | <ProductType> | <ApplicationStage> | nobd | <ApplicantType> |          |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | key  | ApplicantType   | Category   |
      | <ProductType> | <ApplicationStage> | nobd | <ApplicantType> | <Category> |

# ${CollType:[]}
# ${CollSubType:[]}
#FeatureID-ACAUTOCAS-10431
#  To be updated after correction of master setup excel
  @ImplementedBy-akash.bansal
    @Perishable
  Scenario Outline: ACAUTOCAS-12429:  Business Information Head list validation for business details of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to business details
    Then user should be able to see list of values for Business Information Head
      | applicant_information.xlsx | master_setup | 1 |
      | applicant_information.xlsx | master_setup | 2 |
      | applicant_information.xlsx | master_setup | 3 |
      | applicant_information.xlsx | master_setup | 4 |
      | applicant_information.xlsx | master_setup | 5 |
      | applicant_information.xlsx | master_setup | 6 |
      | applicant_information.xlsx | master_setup | 7 |
      | applicant_information.xlsx | master_setup | 8 |
    @Conventional
    @Release
    @Part-3
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | key  | ApplicantType   | Category |
      | <ProductType> | <ApplicationStage> | nobd | <ApplicantType> |          |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | key  | ApplicantType   | Category |
      | <ProductType> | <ApplicationStage> | nobd | <ApplicantType> |          |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | key  | ApplicantType   | Category   |
      | <ProductType> | <ApplicationStage> | nobd | <ApplicantType> | <Category> |

# ${CollType:[]}
# ${CollSubType:[]}
  @Sanity
#FeatureID-ACAUTOCAS-10431
    @ImplementedBy-akash.bansal
    @Perishable
  Scenario Outline: ACAUTOCAS-12430:  Field data validation for business details of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to business details
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row <RowNum>
    And user enters data for Business Details
    And user clicks on "save" in Business Details
    Then user should be able to save Business Details successfully
    @Conventional
    @Release
    @Part-3
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | SourceFileName             | SheetName       | RowNum | key  | ApplicantType   | Category |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 0      | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 2      | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 4      | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 5      | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 6      | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 7      | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 8      | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 9      | nobd | <ApplicantType> |          |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | SourceFileName             | SheetName       | RowNum | key  | ApplicantType   | Category |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 0      | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 2      | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 4      | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 5      | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 6      | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 7      | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 8      | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 9      | nobd | <ApplicantType> |          |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | SourceFileName             | SheetName       | RowNum | key  | ApplicantType   | Category   |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 0      | nobd | <ApplicantType> | <Category> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 2      | nobd | <ApplicantType> | <Category> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 4      | nobd | <ApplicantType> | <Category> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 5      | nobd | <ApplicantType> | <Category> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 6      | nobd | <ApplicantType> | <Category> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 7      | nobd | <ApplicantType> | <Category> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 8      | nobd | <ApplicantType> | <Category> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 9      | nobd | <ApplicantType> | <Category> |

# ${CollType:[]}
# ${CollSubType:[]}
#FeatureID-ACAUTOCAS-10431
  @ImplementedBy-akash.bansal
    @Perishable
  Scenario Outline: ACAUTOCAS-12431:  Data reconciliation for business details of non individual customer of "<ProductType>" application at "<FinalStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to business details
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row <RowNum>
    And user enters data for Business Details
    And user clicks on "save" in Business Details
    And user moves application from "Lead Details" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<FinalStage>" for "<Category>" with "<key>" stage without opening it
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<FinalStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to business details
    Then user should be able to reconcile successfully
    @Conventional
    @Release
    @Part-3
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation",Tranche Approval","Post Approval"]}
    Examples:
      | ProductType   | FinalStage         | SourceFileName             | SheetName       | RowNum | key  | ApplicantType   | Category | ApplicationStage |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 0      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 2      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 4      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 5      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 6      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 7      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 8      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 9      | nobd | <ApplicantType> |          | lead details     |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation",Tranche Approval","Post Approval"]}
    Examples:
      | ProductType   | FinalStage         | SourceFileName             | SheetName       | RowNum | key  | ApplicantType   | Category | ApplicationStage |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 0      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 2      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 4      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 5      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 6      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 7      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 8      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 9      | nobd | <ApplicantType> |          | lead details     |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation",Tranche Approval","Post Approval"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | FinalStage         | SourceFileName             | SheetName       | RowNum | key  | ApplicantType   | Category   | ApplicationStage |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 0      | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 2      | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 4      | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 5      | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 6      | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 7      | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 8      | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 9      | nobd | <ApplicantType> | <Category> | lead details     |

# ${CollType:[]}
# ${CollSubType:[]}
#FeatureID-ACAUTOCAS-10431
  @ImplementedBy-akash.bansal
    @Perishable
  Scenario Outline: ACAUTOCAS-12432:  Data reconciliation for business details of non individual customer of "<ProductType>" application at "<FinalStage>" stage at Enquiry screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to business details
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row <RowNum>
    And user enters data for Business Details
    And user clicks on "save" in Business Details
    And user moves application from "<ApplicationStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<FinalStage>" for "<Category>" with "<key>" stage without opening it
    And user navigates to Enquiry screen menu option
    And user searches for an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<FinalStage>" for "<Category>" with "<key>" on enquiry screen
    And user clicks on application stage link on enquiry screen
    And user opens detailed information of "customer" in applicant information
    When user navigates to business details
    Then user should be able to reconcile successfully
    @Conventional
    @Release
    @Part-3
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval","Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
    Examples:
      | ProductType   | FinalStage         | SourceFileName             | SheetName       | RowNum | key  | ApplicantType   | Category | ApplicationStage |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 0      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 2      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 4      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 5      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 6      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 7      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 8      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 9      | nobd | <ApplicantType> |          | lead details     |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
    Examples:
      | ProductType   | FinalStage         | SourceFileName             | SheetName       | RowNum | key  | ApplicantType   | Category | ApplicationStage |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 0      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 2      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 4      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 5      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 6      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 7      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 8      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 9      | nobd | <ApplicantType> |          | lead details     |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | FinalStage         | SourceFileName             | SheetName       | RowNum | key  | ApplicantType   | Category   | ApplicationStage |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 0      | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 2      | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 4      | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 5      | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 6      | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 7      | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 8      | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 9      | nobd | <ApplicantType> | <Category> | lead details     |

# ${CollType:[]}
# ${CollSubType:[]}
#FeatureID-ACAUTOCAS-10431
  @ImplementedBy-akash.bansal
    @Perishable
  Scenario Outline: ACAUTOCAS-12433:  Field data validation 2 for business details of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to business details
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row <RowNum>
    And user enters data for Business Details
    And user clicks on "save" in Business Details
    Then user should get an error message highlighting the Field Name
    @Conventional
    @Release
    @Part-3
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | SourceFileName             | SheetName       | RowNum | key  | ApplicantType   | Category |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 1      | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 3      | nobd | <ApplicantType> |          |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | SourceFileName             | SheetName       | RowNum | key  | ApplicantType   | Category |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 1      | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 3      | nobd | <ApplicantType> |          |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | SourceFileName             | SheetName       | RowNum | key  | ApplicantType   | Category   |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 1      | nobd | <ApplicantType> | <Category> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 3      | nobd | <ApplicantType> | <Category> |

# ${CollType:[]}
# ${CollSubType:[]}
#FeatureID-ACAUTOCAS-10431
  @ImplementedBy-akash.bansal
    @Perishable
  Scenario Outline: ACAUTOCAS-12434:  Field data validation 3 for business details of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to business details
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row <RowNum>
    And user enters data for Business Details
    And user clicks on "Save & Next" in Business Details
    Then user should get an error message highlighting the Field Name
    @Conventional
    @Release
    @Part-3
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | SourceFileName             | SheetName       | RowNum | key  | ApplicantType   | Category |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 1      | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 3      | nobd | <ApplicantType> |          |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | SourceFileName             | SheetName       | RowNum | key  | ApplicantType   | Category |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 1      | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 3      | nobd | <ApplicantType> |          |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | SourceFileName             | SheetName       | RowNum | key  | ApplicantType   | Category   |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 1      | nobd | <ApplicantType> | <Category> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 3      | nobd | <ApplicantType> | <Category> |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:165851,165858
###Story:CAS-134637
###Bug:
  @Sanity
    @ImplementedBy-akash.bansal
    @Perishable
#FeatureID-ACAUTOCAS-10431,CAS-134637
  Scenario Outline: ACAUTOCAS-12436:  Field control validation to format data in fields of business details of non individual customer of "<ProductType>" application at "<FinalStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to business details
    And user reads data from the excel file "applicant_information.xlsx" under sheet "BusinessDetails" and row 0
    And user enters data for Business Details
    And user clicks on "save" in Business Details
    And user moves application from "<ApplicationStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<FinalStage>" for "<Category>" with "<key>" stage without opening it
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<FinalStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to business details
    And user formats "<FormatType>" the data in below fields of Business Details
      | FieldName   |
      | Description |
    And user clicks on "save" in Business Details
    Then below field data should be saved in "<FormatType>" format successfully
      | FieldName   |
      | Description |
    @Conventional
    @Release
    @Part-3
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | FinalStage         | FormatType     | key  | ApplicantType   | Category | ApplicationStage |
      | <ProductType> | <ApplicationStage> | Bold           | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Non-Bold       | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Italic         | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Non-Italic     | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Underline      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Non-Underline  | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Subscript      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Un-Subscript   | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Superscript    | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Un-Superscript | nobd | <ApplicantType> |          | lead details     |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | FinalStage         | FormatType     | key  | ApplicantType   | Category | ApplicationStage |
      | <ProductType> | <ApplicationStage> | Bold           | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Non-Bold       | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Italic         | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Non-Italic     | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Underline      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Non-Underline  | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Subscript      | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Un-Subscript   | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Superscript    | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Un-Superscript | nobd | <ApplicantType> |          | lead details     |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | FinalStage         | FormatType     | key  | ApplicantType   | Category   | ApplicationStage |
      | <ProductType> | <ApplicationStage> | Bold           | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | Non-Bold       | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | Italic         | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | Non-Italic     | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | Underline      | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | Non-Underline  | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | Subscript      | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | Un-Subscript   | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | Superscript    | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | Un-Superscript | nobd | <ApplicantType> | <Category> | lead details     |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:165851,165858
###Story:CAS-134637
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-10431,CAS-134637
    @ImplementedBy-akash.bansal
    @Perishable
  Scenario Outline: ACAUTOCAS-12437:  Field validation to check tabular format in business details of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "lead details" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to business details
    And user reads data from the excel file "applicant_information.xlsx" under sheet "BusinessDetails" and row 10
    And user enters data for Business Details
    And user clicks on "save" in Business Details
    And user moves application from "lead details" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" stage without opening it
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to business details
    And user enters data in tabular format in below fields of Business Details
      | FieldName   |
      | Description |
    And user clicks on "save" in Business Details
    Then user should be able to save Business Details successfully
    @Conventional
    @Release
    @Part-3
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | key  | ApplicantType   | Category |
      | <ProductType> | <ApplicationStage> | nobd | <ApplicantType> |          |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | key  | ApplicantType   | Category |
      | <ProductType> | <ApplicationStage> | nobd | <ApplicantType> |          |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | key  | ApplicantType   | Category   |
      | <ProductType> | <ApplicationStage> | nobd | <ApplicantType> | <Category> |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:165851,165858
###Story:CAS-134637
###Bug:
#FeatureID-ACAUTOCAS-10431,CAS-134637
  @ImplementedBy-akash.bansal
    @Perishable
  Scenario Outline: ACAUTOCAS-12438:  Field validation to check "<Actions>" on tabular format in business details of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "lead details" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to business details
    And user reads data from the excel file "applicant_information.xlsx" under sheet "BusinessDetails" and row 10
    And user enters data for Business Details
    And user clicks on "save" in Business Details
    And user moves application from "lead details" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" stage without opening it
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to business details
    And user enters data in tabular format in below fields of Business Details
      | FieldName   |
      | Description |
    And user clicks on "save" in Business Details
    And user performs the "<Action>" on tabular data in Description in Business Details
    Then user should be able to successfully perform the "<Action>"on tabular data in Description in Business Details

    @Conventional
    @Release
    @Part-3
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | Action                    | key  | ApplicantType   | Category |
      | <ProductType> | <ApplicationStage> | View Table Properties     | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Delete Table              | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Table Cell Properties     | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Merge Table Cells         | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Split Merged Table Cells  | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Insert Row Before         | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Insert Row After          | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Delete Row                | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Cut Table Row             | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Copy Table Row            | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Paste Table Row Before    | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Paste Table Row After     | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Insert Column Before      | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Insert Column After       | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Delete Column             | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Cut Table Column          | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Copy Table Column         | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Paste Table Column Before | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Paste Table Column After  | nobd | <ApplicantType> |          |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | Action                    | key  | ApplicantType   | Category |
      | <ProductType> | <ApplicationStage> | View Table Properties     | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Delete Table              | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Table Cell Properties     | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Merge Table Cells         | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Split Merged Table Cells  | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Insert Row Before         | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Insert Row After          | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Delete Row                | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Cut Table Row             | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Copy Table Row            | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Paste Table Row Before    | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Paste Table Row After     | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Insert Column Before      | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Insert Column After       | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Delete Column             | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Cut Table Column          | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Copy Table Column         | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Paste Table Column Before | nobd | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | Paste Table Column After  | nobd | <ApplicantType> |          |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Action                    | key  | ApplicantType   | Category   |
      | <ProductType> | <ApplicationStage> | View Table Properties     | nobd | <ApplicantType> | <Category> |
      | <ProductType> | <ApplicationStage> | Delete Table              | nobd | <ApplicantType> | <Category> |
      | <ProductType> | <ApplicationStage> | Table Cell Properties     | nobd | <ApplicantType> | <Category> |
      | <ProductType> | <ApplicationStage> | Merge Table Cells         | nobd | <ApplicantType> | <Category> |
      | <ProductType> | <ApplicationStage> | Split Merged Table Cells  | nobd | <ApplicantType> | <Category> |
      | <ProductType> | <ApplicationStage> | Insert Row Before         | nobd | <ApplicantType> | <Category> |
      | <ProductType> | <ApplicationStage> | Insert Row After          | nobd | <ApplicantType> | <Category> |
      | <ProductType> | <ApplicationStage> | Delete Row                | nobd | <ApplicantType> | <Category> |
      | <ProductType> | <ApplicationStage> | Cut Table Row             | nobd | <ApplicantType> | <Category> |
      | <ProductType> | <ApplicationStage> | Copy Table Row            | nobd | <ApplicantType> | <Category> |
      | <ProductType> | <ApplicationStage> | Paste Table Row Before    | nobd | <ApplicantType> | <Category> |
      | <ProductType> | <ApplicationStage> | Paste Table Row After     | nobd | <ApplicantType> | <Category> |
      | <ProductType> | <ApplicationStage> | Insert Column Before      | nobd | <ApplicantType> | <Category> |
      | <ProductType> | <ApplicationStage> | Insert Column After       | nobd | <ApplicantType> | <Category> |
      | <ProductType> | <ApplicationStage> | Delete Column             | nobd | <ApplicantType> | <Category> |
      | <ProductType> | <ApplicationStage> | Cut Table Column          | nobd | <ApplicantType> | <Category> |
      | <ProductType> | <ApplicationStage> | Copy Table Column         | nobd | <ApplicantType> | <Category> |
      | <ProductType> | <ApplicationStage> | Paste Table Column Before | nobd | <ApplicantType> | <Category> |
      | <ProductType> | <ApplicationStage> | Paste Table Column After  | nobd | <ApplicantType> | <Category> |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:165852,165859
###Story:CAS-134637
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-10431,CAS-134637
    @ImplementedBy-akash.bansal
    @Perishable
  Scenario Outline: ACAUTOCAS-12439:  Field control validation 2 to format data in fields of business details of non individual customer of "<ProductType>" application at "<FinalStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to business details
    And user reads data from the excel file "applicant_information.xlsx" under sheet "BusinessDetails" and row 0
    And user enters data for Business Details
    And user clicks on "save" in Business Details
    And user moves application from "<ApplicationStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<FinalStage>" for "<Category>" with "<key>" stage without opening it
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<FinalStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to business details
    And user formats "<FormatType>" the data in below fields of Business Details
      | FieldName   |
      | Description |
    And user clicks on "save" in Business Details
    Then below field data should be saved in "<FormatType>" format successfully
      | FieldName   |
      | Description |
    @Conventional
    @Release
    @Part-3
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | FinalStage         | FormatType              | key  | ApplicantType   | Category | ApplicationStage |
      | <ProductType> | <ApplicationStage> | Align Left              | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Align Center            | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Align Right             | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Align Justify           | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Bullet List             | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Un-Bullet List          | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Bullet Numbered List    | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Un-Bullet Numbered List | nobd | <ApplicantType> |          | lead details     |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | FinalStage         | FormatType              | key  | ApplicantType   | Category | ApplicationStage |
      | <ProductType> | <ApplicationStage> | Align Left              | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Align Center            | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Align Right             | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Align Justify           | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Bullet List             | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Un-Bullet List          | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Bullet Numbered List    | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Un-Bullet Numbered List | nobd | <ApplicantType> |          | lead details     |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | FinalStage         | FormatType              | key  | ApplicantType   | Category   | ApplicationStage |
      | <ProductType> | <ApplicationStage> | Align Left              | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | Align Center            | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | Align Right             | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | Align Justify           | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | Bullet List             | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | Un-Bullet List          | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | Bullet Numbered List    | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | Un-Bullet Numbered List | nobd | <ApplicantType> | <Category> | lead details     |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:165853,165860
###Story:CAS-134637
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-10431,CAS-134637
    @ImplementedBy-akash.bansal
    @Perishable
  Scenario Outline: ACAUTOCAS-12440:  Field control validation 3 to perform actions in fields of business details of non individual customer of "<ProductType>" application at "<FinalStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to business details
    And user reads data from the excel file "applicant_information.xlsx" under sheet "BusinessDetails" and row 0
    And user enters data for Business Details
    And user clicks on "save" in Business Details
    And user moves application from "<ApplicationStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<FinalStage>" for "<Category>" with "<key>" stage without opening it
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<FinalStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to business details
    And user performs "<Actions>" in the below fields of Business Details
      | FieldName   |
      | Description |
    And user saves the data
    Then "<Actions>" should be saved in the below fields successfully
      | FieldName   |
      | Description |
    @Conventional
    @Release
    @Part-3
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | FinalStage         | Actions                  | key  | ApplicantType   | Category | ApplicationStage |
      | <ProductType> | <ApplicationStage> | Undo Changes             | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Redo Changes             | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Linking                  | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Delinking                | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Insert Horizontal Line   | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Remove Formatting        | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Insert Special Character | nobd | <ApplicantType> |          | lead details     |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | FinalStage         | Actions                  | key  | ApplicantType   | Category | ApplicationStage |
      | <ProductType> | <ApplicationStage> | Undo Changes             | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Redo Changes             | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Linking                  | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Delinking                | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Insert Horizontal Line   | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Remove Formatting        | nobd | <ApplicantType> |          | lead details     |
      | <ProductType> | <ApplicationStage> | Insert Special Character | nobd | <ApplicantType> |          | lead details     |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | FinalStage         | Actions                  | key  | ApplicantType   | Category   | ApplicationStage |
      | <ProductType> | <ApplicationStage> | Undo Changes             | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | Redo Changes             | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | Linking                  | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | Delinking                | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | Insert Horizontal Line   | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | Remove Formatting        | nobd | <ApplicantType> | <Category> | lead details     |
      | <ProductType> | <ApplicationStage> | Insert Special Character | nobd | <ApplicantType> | <Category> | lead details     |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:165855,165862
###Story:CAS-134637
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-10431,CAS-134637
    @ImplementedBy-akash.bansal
    @Perishable
  Scenario Outline: ACAUTOCAS-12441:  Field control validation 4 to perform actions in fields of business details of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to business details
    And user performs "<Actions>" in the below fields of Business Details
      | FieldName   |
      | Description |
    Then "<Actions>" should be saved in the below fields successfully
      | FieldName   |
      | Description |
    @Conventional
    @Release
    @Part-3
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | Actions   | ApplicantType   | Category | key  |
      | <ProductType> | <ApplicationStage> | Asks Help | <ApplicantType> |          | nobd |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | Actions   | ApplicantType   | Category | key  |
      | <ProductType> | <ApplicationStage> | Asks Help | <ApplicantType> |          | nobd |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Actions   | ApplicantType   | Category   | key  |
      | <ProductType> | <ApplicationStage> | Asks Help | <ApplicantType> | <Category> | nobd |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:165865,165866
###Story:CAS-134637
###Bug:
#FeatureID-ACAUTOCAS-10431,CAS-134637
  @ImplementedBy-akash.bansal
    @Perishable
  Scenario Outline: ACAUTOCAS-12443:  Hyperlinks are not clickable in fields of business details of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to business details
    And user reads data from the excel file "applicant_information.xlsx" under sheet "BusinessDetails" and row 0
    And user enters data for Business Details
    And user clicks on "save" in Business Details
    And user moves application from "<ApplicationStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<FinalStage>" for "<Category>" with "<key>" stage without opening it
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<FinalStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to business details
    And user performs "Linking" in the below fields of Business Details
      | FieldName   |
      | Description |
    And user saves the data
    When user clicks on the hyperlink data in below field of Business Details
      | FieldName   |
      | Description |
    Then user should not be able to open the web page in the hyperlink of Business Details
    @Conventional
    @Release
    @Part-3
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage | FinalStage         | key  | Category | ApplicantType   |
      | <ProductType> | lead details     | <ApplicationStage> | nobd |          | <ApplicantType> |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage | FinalStage         | key  | Category | ApplicantType   |
      | <ProductType> | lead details     | <ApplicationStage> | nobd |          | <ApplicantType> |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage | FinalStage         | key  | Category   | ApplicantType   |
      | <ProductType> | lead details     | <ApplicationStage> | nobd | <Category> | <ApplicantType> |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:165865,165866
###Story:CAS-134637
###Bug:
#FeatureID-ACAUTOCAS-10431,CAS-134637
  @ImplementedBy-akash.bansal
    @Perishable
  Scenario Outline: ACAUTOCAS-12444:  Pre-formatted texts are pasted as is in fields of business details of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to business details
    And user reads data from the excel file "applicant_information.xlsx" under sheet "BusinessDetails" and row 0
    And user enters data for Business Details
    And user clicks on "save" in Business Details
    And the preformatted data in "<FieldName>" are pasted from another source
    And user clicks on "save" in Business Details
    And user moves application from "<ApplicationStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<FinalStage>" for "<Category>" with "<key>" stage without opening it
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<FinalStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to business details
    Then user should be able to see the data in same format in Business Details as in source
    @Conventional
    @Release
    @Part-3
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage | FieldName   | ApplicantType   | FinalStage         | Category | key  |
      | <ProductType> | lead details     | Description | <ApplicantType> | <ApplicationStage> |          | nobd |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage | FieldName   | ApplicantType   | FinalStage         | Category | key  |
      | <ProductType> | lead details     | Description | <ApplicantType> | <ApplicationStage> |          | nobd |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage | FieldName   | ApplicantType   | FinalStage         | Category   | key  |
      | <ProductType> | lead details     | Description | <ApplicantType> | <ApplicationStage> | <Category> | nobd |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:165865,165866
###Story:CAS-134637
###Bug:
#FeatureID-ACAUTOCAS-10431,CAS-134637
  @NotImplemented
    @LoggedBug-CAS-213864
  Scenario Outline: ACAUTOCAS-12445:  Right click should not be working on fields of business details of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user has created "<ProductType>" application for non individual customer
    And user has added all business details for non individual customer
    And user has moved the "<ProductType>" application to "<ApplicationStage>" stage
    And user opens the "<ProductType>" application from application menu
    And user navigates to "Applicant Information"
    And user edits customer information
    And user navigates to "Business Details"
    When user right clicks on field "FieldName" of "Business Details":
      | FieldName   |
      | Description |
    Then user should be not get any submenu for operation
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
    @Islamic
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
    @Islamic
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

# ${CollType:[]}
# ${CollSubType:[]}
  @Sanity
#FeatureID-ACAUTOCAS-10431
    @ImplementedBy-akash.bansal
    @Perishable
  Scenario Outline: ACAUTOCAS-12446: Multi record validation for business details of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to business details
    And user enters multiple records for Business Details from excel file "applicant_information.xlsx" sheet "BusinessDetails":
      | 0 |
      | 2 |
      | 4 |
      | 5 |
      | 6 |
      | 7 |
      | 8 |
      | 9 |
    And user clicks on "save" in Business Details
    Then user should be able to save Business Details successfully
    @Conventional
    @Release
    @Part-3
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          | nobd |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          | nobd |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> | nobd |

# ${CollType:[]}
# ${CollSubType:[]}
  @Sanity
#FeatureID-ACAUTOCAS-10431
    @ImplementedBy-akash.bansal
    @Perishable
  Scenario Outline: ACAUTOCAS-12447:  Multi record validation for business details of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage in expanded mode
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user changes the view mode to Expanded
    When user navigates to business details in expanded mode
    And user enters multiple records for Business Details from excel file "applicant_information.xlsx" sheet "BusinessDetails":
      | 0 |
      | 2 |
      | 4 |
      | 5 |
      | 6 |
      | 7 |
      | 8 |
      | 9 |
    And user clicks on "save" in Business Details
    Then user should be able to save Business Details successfully
    @Conventional
    @Release
    @Part-3
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          | nobd |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          | nobd |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> | nobd |

# ${CollType:[]}
# ${CollSubType:[]}
  @Sanity
#FeatureID-ACAUTOCAS-10431
    @ImplementedBy-akash.bansal
    @Perishable
  Scenario Outline: ACAUTOCAS-12448: Save and next validation for business details of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to business details
    And user enters multiple records for Business Details from excel file "applicant_information.xlsx" sheet "BusinessDetails":
      | 0 |
      | 2 |
      | 4 |
      | 5 |
      | 6 |
      | 7 |
      | 8 |
      | 9 |
    And user clicks on "save & next" in Business Details
    Then user should be able to move to market information
    @Conventional
    @Release
    @Part-3
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          | nobd |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          | nobd |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> | nobd |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:165865,165866
# Application is not working this way, this is possibly a bug
###Story:CAS-134637
###Bug:
#FeatureID-ACAUTOCAS-10431,CAS-134637
  @ImplementedBy-akash.bansal
    @Perishable
  Scenario Outline: ACAUTOCAS-12449:  Deletion warning for business details of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to business details
    And user enters multiple records for Business Details from excel file "applicant_information.xlsx" sheet "BusinessDetails":
      | 10 |
      | 11 |
      | 12 |
      | 13 |
      | 14 |
      | 15 |
      | 16 |
      | 17 |
      | 18 |
      | 19 |
      | 20 |
      | 21 |
      | 22 |
      | 23 |
      | 24 |
      | 25 |
    And user clicks on "save" in Business Details
    When user selects more than one business details to delete them from excel file "applicant_information.xlsx" sheet "BusinessDetails":
      | 18 |
      | 19 |
      | 20 |
      | 21 |
      | 22 |
      | 23 |
      | 24 |
      | 25 |
    And user clicks on delete in Business Details
    Then user should get a prompt for confirmation to delete data
    @Conventional
    @Release
    @Part-3
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          | nobd |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          | nobd |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> | nobd |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:165865,165866
# Application is not working this way, this is possibly a bug
###Story:CAS-134637
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-10431,CAS-134637
    @ImplementedBy-akash.bansal
    @Perishable
  Scenario Outline: ACAUTOCAS-12450:  Deletion of business details of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to business details
    And user enters multiple records for Business Details from excel file "applicant_information.xlsx" sheet "BusinessDetails":
      | 10 |
      | 11 |
      | 12 |
      | 13 |
      | 14 |
      | 15 |
      | 16 |
      | 17 |
      | 18 |
      | 19 |
      | 20 |
      | 21 |
      | 22 |
      | 23 |
      | 24 |
      | 25 |
    And user clicks on "save" in Business Details
    When user selects more than one business details to delete them from excel file "applicant_information.xlsx" sheet "BusinessDetails":
      | 18 |
      | 19 |
      | 20 |
      | 21 |
      | 22 |
      | 23 |
      | 24 |
      | 25 |
    And user clicks on delete in Business Details
    And user chooses to delete the data
    And user clicks on "save" in Business Details
    Then user should be able to delete data successfully from excel file "applicant_information.xlsx" sheet "BusinessDetails":
      | 18 |
      | 19 |
      | 20 |
      | 21 |
      | 22 |
      | 23 |
      | 24 |
      | 25 |
    @Conventional
    @Release
    @Part-3
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          | nobd |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          | nobd |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> | nobd |

# ${CollType:[]}
# ${CollSubType:[]}
  @Sanity
#FeatureID-ACAUTOCAS-10431
    @ImplementedBy-akash.bansal
    @Perishable
  Scenario Outline: ACAUTOCAS-12451:  Field data validation for business details of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<applicantType>" "<key>" applicant type
    When user navigates to business details
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row <RowNum>
    And user enters data for Business Details
    And user clicks on "save" in Business Details
    Then user should be able to save Business Details successfully
    @Conventional
    @Release
    @Part-3
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | SourceFileName            | SheetName       | RowNum | applicantType   | category | key       |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 0      | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 2      | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 4      | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 5      | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 6      | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 7      | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 8      | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 9      | <ApplicantType> |          | guarantor |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | SourceFileName            | SheetName       | RowNum | applicantType   | category | key       |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 0      | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 2      | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 4      | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 5      | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 6      | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 7      | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 8      | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 9      | <ApplicantType> |          | guarantor |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | SourceFileName            | SheetName       | RowNum | applicantType   | category   | key       |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 0      | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 2      | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 4      | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 5      | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 6      | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 7      | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 8      | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 9      | <ApplicantType> | <Category> | guarantor |

# ${CollType:[]}
# ${CollSubType:[]}
#FeatureID-ACAUTOCAS-10431
  @ImplementedBy-akash.bansal
    @Perishable
  Scenario Outline: ACAUTOCAS-12452:  Data reconciliation for business details of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<applicantType>" "<key>" applicant type
    And user navigates to business details
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row <RowNum>
    And user enters data for Business Details
    And user clicks on "save" in Business Details
    And user moves application from "<ApplicationStage>" stage to application of "<ProductType>" product type as "<applicantType>" applicant at "<FinalStage>" for "<category>" with "<key>" stage without opening it
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<FinalStage>" for "<category>" with "<key>" from application grid
    And user views and edit applicant details for "<applicantType>" "<key>" applicant type
    When user navigates to business details
    Then user should be able to reconcile successfully
    @Conventional
    @Release
    @Part-3
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
    Examples:
      | ProductType   | ApplicationStage | FinalStage         | SourceFileName            | SheetName       | RowNum | applicantType   | category | key       |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 0      | <ApplicantType> |          | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 2      | <ApplicantType> |          | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 4      | <ApplicantType> |          | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 5      | <ApplicantType> |          | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 6      | <ApplicantType> |          | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 7      | <ApplicantType> |          | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 8      | <ApplicantType> |          | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 9      | <ApplicantType> |          | guarantor |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
    Examples:
      | ProductType   | ApplicationStage | FinalStage         | SourceFileName            | SheetName       | RowNum | applicantType   | category | key       |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 0      | <ApplicantType> |          | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 2      | <ApplicantType> |          | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 4      | <ApplicantType> |          | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 5      | <ApplicantType> |          | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 6      | <ApplicantType> |          | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 7      | <ApplicantType> |          | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 8      | <ApplicantType> |          | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 9      | <ApplicantType> |          | guarantor |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage | FinalStage         | SourceFileName            | SheetName       | RowNum | applicantType   | category   | key       |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 0      | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 2      | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 4      | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 5      | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 6      | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 7      | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 8      | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 9      | <ApplicantType> | <Category> | guarantor |

# ${CollType:[]}
# ${CollSubType:[]}
#FeatureID-ACAUTOCAS-10431
  @ImplementedBy-akash.bansal
    @Perishable
  Scenario Outline: ACAUTOCAS-12453:  Data reconciliation for business details of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage at Enquiry screen
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<applicantType>" "<key>" applicant type
    And user navigates to business details
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row <RowNum>
    And user enters data for Business Details
    And user clicks on "save" in Business Details
    And user moves application from "<ApplicationStage>" stage to application of "<ProductType>" product type as "<applicantType>" applicant at "<FinalStage>" for "<category>" with "<key>" stage without opening it
    And user navigates to Enquiry screen menu option
    And user searches for an application of "<ProductType>" product type as "<applicantType>" applicant at "<FinalStage>" for "<category>" with "<key>" on enquiry screen
    And user clicks on application stage link on enquiry screen
    And user views and edit applicant details for "<applicantType>" "<key>" applicant type
    When user navigates to business details
    Then user should be able to reconcile successfully
    @Conventional
    @Release
    @Part-3
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration,"Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval""]}
    Examples:
      | ProductType   | ApplicationStage | FinalStage         | SourceFileName            | SheetName       | RowNum | applicantType   | category | key       |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 0      | <ApplicantType> |          | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 2      | <ApplicantType> |          | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 4      | <ApplicantType> |          | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 5      | <ApplicantType> |          | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 6      | <ApplicantType> |          | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 7      | <ApplicantType> |          | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 8      | <ApplicantType> |          | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 9      | <ApplicantType> |          | guarantor |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
    Examples:
      | ProductType   | ApplicationStage | FinalStage         | SourceFileName            | SheetName       | RowNum | applicantType   | category | key       |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 0      | <ApplicantType> |          | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 2      | <ApplicantType> |          | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 4      | <ApplicantType> |          | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 5      | <ApplicantType> |          | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 6      | <ApplicantType> |          | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 7      | <ApplicantType> |          | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 8      | <ApplicantType> |          | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 9      | <ApplicantType> |          | guarantor |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage | FinalStage         | SourceFileName            | SheetName       | RowNum | applicantType   | category   | key       |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 0      | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 2      | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 4      | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 5      | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 6      | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 7      | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 8      | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | lead details     | <ApplicationStage> | ApplicantInformation.xlsx | BusinessDetails | 9      | <ApplicantType> | <Category> | guarantor |

# ${CollType:[]}
# ${CollSubType:[]}
  @Sanity
#FeatureID-ACAUTOCAS-10431
    @ImplementedBy-akash.bansal
    @Perishable
  Scenario Outline: ACAUTOCAS-12454:  Field data validation for business details of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<applicantType>" "<key>" applicant type
    When user navigates to business details
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row <RowNum>
    And user enters data for Business Details
    And user clicks on "save" in Business Details
    Then user should be able to save Business Details successfully
    @Conventional
    @Release
    @Part-3
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | SourceFileName             | SheetName       | RowNum | applicantType   | category | key         |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 0      | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 2      | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 4      | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 5      | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 6      | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 7      | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 8      | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 9      | <ApplicantType> |          | coapplicant |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | SourceFileName             | SheetName       | RowNum | applicantType   | category | key         |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 0      | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 2      | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 4      | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 5      | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 6      | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 7      | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 8      | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 9      | <ApplicantType> |          | coapplicant |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | SourceFileName             | SheetName       | RowNum | applicantType   | category   | key         |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 0      | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 2      | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 4      | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 5      | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 6      | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 7      | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 8      | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 9      | <ApplicantType> | <Category> | coapplicant |

# ${CollType:[]}
# ${CollSubType:[]}
#FeatureID-ACAUTOCAS-10431
  @ImplementedBy-akash.bansal
    @Perishable
  Scenario Outline: ACAUTOCAS-12455:  Data reconciliation for business details of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<applicantType>" "<key>" applicant type
    And user navigates to business details
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row <RowNum>
    And user enters data for Business Details
    And user clicks on "save" in Business Details
    And user moves application from "<ApplicationStage>" stage to application of "<ProductType>" product type as "<applicantType>" applicant at "<FinalStage>" for "<category>" with "<key>" stage without opening it
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<FinalStage>" for "<category>" with "<key>" from application grid
    And user views and edit applicant details for "<applicantType>" "<key>" applicant type
    When user navigates to business details
    Then user should be able to reconcile successfully
    @Conventional
    @Release
    @Part-3
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
    Examples:
      | ProductType   | ApplicationStage | FinalStage         | SourceFileName             | SheetName       | RowNum | applicantType   | category | key         |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 0      | <ApplicantType> |          | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 2      | <ApplicantType> |          | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 4      | <ApplicantType> |          | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 5      | <ApplicantType> |          | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 6      | <ApplicantType> |          | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 7      | <ApplicantType> |          | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 8      | <ApplicantType> |          | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 9      | <ApplicantType> |          | coapplicant |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
    Examples:
      | ProductType   | ApplicationStage | FinalStage         | SourceFileName             | SheetName       | RowNum | applicantType   | category | key         |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 0      | <ApplicantType> |          | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 2      | <ApplicantType> |          | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 4      | <ApplicantType> |          | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 5      | <ApplicantType> |          | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 6      | <ApplicantType> |          | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 7      | <ApplicantType> |          | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 8      | <ApplicantType> |          | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 9      | <ApplicantType> |          | coapplicant |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage | FinalStage         | SourceFileName             | SheetName       | RowNum | applicantType   | category   | key         |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 0      | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 2      | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 4      | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 5      | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 6      | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 7      | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 8      | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 9      | <ApplicantType> | <Category> | coapplicant |

# ${CollType:[]}
# ${CollSubType:[]}
#FeatureID-ACAUTOCAS-10431
  @ImplementedBy-akash.bansal
    @Perishable
  Scenario Outline: ACAUTOCAS-12456:  Data reconciliation for business details of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage at Enquiry screen
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<applicantType>" "<key>" applicant type
    And user navigates to business details
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row <RowNum>
    And user enters data for Business Details
    And user clicks on "save" in Business Details
    And user moves application from "<ApplicationStage>" stage to application of "<ProductType>" product type as "<applicantType>" applicant at "<FinalStage>" for "<category>" with "<key>" stage without opening it
    And user navigates to Enquiry screen menu option
    And user searches for an application of "<ProductType>" product type as "<applicantType>" applicant at "<FinalStage>" for "<category>" with "<key>" on enquiry screen
    And user clicks on application stage link on enquiry screen
    And user views and edit applicant details for "<applicantType>" "<key>" applicant type
    When user navigates to business details
    Then user should be able to reconcile successfully
    @Conventional
    @Release
    @Part-3
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
    Examples:
      | ProductType   | ApplicationStage | FinalStage         | SourceFileName             | SheetName       | RowNum | applicantType   | category | key         |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 0      | <ApplicantType> |          | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 2      | <ApplicantType> |          | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 4      | <ApplicantType> |          | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 5      | <ApplicantType> |          | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 6      | <ApplicantType> |          | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 7      | <ApplicantType> |          | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 8      | <ApplicantType> |          | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 9      | <ApplicantType> |          | coapplicant |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
    Examples:
      | ProductType   | ApplicationStage | FinalStage         | SourceFileName             | SheetName       | RowNum | applicantType   | category | key         |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 0      | <ApplicantType> |          | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 2      | <ApplicantType> |          | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 4      | <ApplicantType> |          | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 5      | <ApplicantType> |          | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 6      | <ApplicantType> |          | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 7      | <ApplicantType> |          | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 8      | <ApplicantType> |          | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 9      | <ApplicantType> |          | coapplicant |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage | FinalStage         | SourceFileName             | SheetName       | RowNum | applicantType   | category   | key         |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 0      | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 2      | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 4      | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 5      | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 6      | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 7      | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 8      | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | lead details     | <ApplicationStage> | applicant_information.xlsx | BusinessDetails | 9      | <ApplicantType> | <Category> | coapplicant |

