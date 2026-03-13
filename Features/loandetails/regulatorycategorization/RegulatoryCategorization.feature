@Epic-Loan_Application_Details
@AuthoredBy-rsurya.kumar
#ScriptedBy:
#ReviewedBy:
#Scenarios:
@Conventional
@Release

Feature: Addition of regulatory categorization to the loan application

#  In this feature we will validate regulatory categorization page

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-42347,CAS-51455,CAS-51820
###Bug:
#FeatureID-ACAUTOCAS-11307,CAS-42347,CAS-51455,CAS-51820
  @ImplementedBy-rishabh.sachan
  
  Scenario Outline: ACAUTOCAS-14096:  Regulatory categorization screen validation of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user navigates to regulatory categorization page of "<ApplicationStage>" stage
    Then user should be able to see blocks:
      | PSL |
      | RRP |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key |
      | <ProductType> | <ApplicationStage> | indiv         |          |     |


# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
  @ImplementedBy-rishabh.sachan
  
  @Perishable
  Scenario Outline: ACAUTOCAS-14381:  Regulatory categorization screen validation of <ProductType> application at Committee Approval stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "committee_approval_grid.xlsx" under sheet "committee_approval" and row 0
    And user selects a committee to take decision
    And user initiate committee approval
    And user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "CommitteeUser" and 0
    And user open committee approval grid
    And search the initiated committee approval application
    And user opens the initiated committee approval application for current user
    When user navigates to regulatory categorization page of "<ApplicationStage>" stage
    Then user should be able to see blocks:
      | PSL |
      | RRP |
    Examples:
      | ProductType   | ApplicationStage | ApplicantType | Category | Key |
      | <ProductType> | Credit Approval  | indiv         |          |     |


# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-42347,CAS-51455,CAS-51820
###Bug:
#FeatureID-ACAUTOCAS-11307,CAS-42347,CAS-51455,CAS-51820
  @ImplementedBy-rishabh.sachan
  
  Scenario Outline: ACAUTOCAS-14097:  Regulatory categorization screen validation for marking of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user navigates to regulatory categorization page of "<ApplicationStage>" stage
    Then user should be able to toggle YesNo for field "<FieldName>"
    Examples:
      | ProductType   | ApplicationStage   | FieldName                | ApplicantType | Category | Key |
      | <ProductType> | <ApplicationStage> | PSL category applicable? | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | RRP applicable?          | indiv         |          |     |


# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-42347,CAS-51455,CAS-51820
###Bug:
#FeatureID-ACAUTOCAS-11307,CAS-42347,CAS-51455,CAS-51820
  @ImplementedBy-rishabh.sachan
  
  Scenario Outline: ACAUTOCAS-14098:  PSL Regulatory categorization screen validation of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user navigates to regulatory categorization page of "<ApplicationStage>" stage
    And user changes "PSL category applicable?" flag to "Yes"
    Then user should be able to see fields in "PSL" block with label as in workbook "SourceDataFile" under sheet "SourceSheet" and row number "SourceSheetRow":
      | SourceDataFile                 | SourceSheet             | FieldName                | SourceSheetRow |
      | regulatory_categorization.xlsx | regulatory_categ-labels | PRI                      | 0              |
      | regulatory_categorization.xlsx | regulatory_categ-labels | BSR1A                    | 1              |
      | regulatory_categorization.xlsx | regulatory_categ-labels | BSR1B                    | 2              |
      | regulatory_categorization.xlsx | regulatory_categ-labels | PRIWSEC                  | 3              |
      | regulatory_categorization.xlsx | regulatory_categ-labels | Reason for PSL/NonPSL    | 4              |
      | regulatory_categorization.xlsx | regulatory_categ-labels | PSL category applicable? | 5              |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key |
      | <ProductType> | <ApplicationStage> | indiv         |          |     |


# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-42347,CAS-51455,CAS-51820
###Bug:
#FeatureID-ACAUTOCAS-11307,CAS-42347,CAS-51455,CAS-51820
  @ImplementedBy-rishabh.sachan
  
  Scenario Outline: ACAUTOCAS-14099:  Non-PSL Regulatory categorization screen validation of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user navigates to regulatory categorization page of "<ApplicationStage>" stage
    And user changes "PSL category applicable?" flag to "No"
    Then user should be able to see fields in "PSL" block with label as in workbook "SourceDataFile" under sheet "SourceSheet" and row number "SourceSheetRow":
      | SourceDataFile                 | SourceSheet             | FieldName                | SourceSheetRow |
      | regulatory_categorization.xlsx | regulatory_categ-labels | PRI                      | 0              |
      | regulatory_categorization.xlsx | regulatory_categ-labels | BSR1A                    | 1              |
      | regulatory_categorization.xlsx | regulatory_categ-labels | BSR1B                    | 2              |
      | regulatory_categorization.xlsx | regulatory_categ-labels | PRIWSEC                  | 3              |
      | regulatory_categorization.xlsx | regulatory_categ-labels | Reason for PSL/NonPSL    | 4              |
      | regulatory_categorization.xlsx | regulatory_categ-labels | PSL category applicable? | 5              |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key |
      | <ProductType> | <ApplicationStage> | indiv         |          |     |


# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-42347,CAS-51455,CAS-51820
###Bug:
#FeatureID-ACAUTOCAS-11307,CAS-42347,CAS-51455,CAS-51820
  @ImplementedBy-rishabh.sachan
  
  Scenario Outline: ACAUTOCAS-14100:  RRP Regulatory categorization screen validation of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user navigates to regulatory categorization page of "<ApplicationStage>" stage
    Then user should be able to see fields in "RRP" block with label as in workbook "SourceDataFile" under sheet "SourceSheet" and row number "SourceSheetRow":
      | SourceDataFile                 | SourceSheet             | FieldName                | SourceSheetRow |
      | regulatory_categorization.xlsx | regulatory_categ-labels | RRP applicable?          | 6              |
      | regulatory_categorization.xlsx | regulatory_categ-labels | Reason for RRP / Non RRP | 7              |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key |
      | <ProductType> | <ApplicationStage> | indiv         |          |     |


# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
  @ImplementedBy-rishabh.sachan
  
  @Perishable
  Scenario Outline: ACAUTOCAS-14100:  RRP Regulatory categorization screen validation of <ProductType> application at Committee Approval stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "committee_approval_grid.xlsx" under sheet "committee_approval" and row 0
    And user selects a committee to take decision
    When user initiate committee approval
    And user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "CommitteeUser" and 0
    And user open committee approval grid
    And search the initiated committee approval application
    And user opens the initiated committee approval application for current user
    When user navigates to regulatory categorization page of "<ApplicationStage>" stage
    Then user should be able to see fields in "RRP" block with label as in workbook "SourceDataFile" under sheet "SourceSheet" and row number "SourceSheetRow":
      | SourceDataFile                 | SourceSheet             | FieldName                | SourceSheetRow |
      | regulatory_categorization.xlsx | regulatory_categ-labels | RRP applicable?          | 6              |
      | regulatory_categorization.xlsx | regulatory_categ-labels | Reason for RRP / Non RRP | 7              |
    Examples:
      | ProductType   | ApplicationStage | ApplicantType | Category | Key |
      | <ProductType> | Credit Approval  | indiv         |          |     |


# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-42347,CAS-51455,CAS-51820
###Bug:
#FeatureID-ACAUTOCAS-11307,CAS-42347,CAS-51455,CAS-51820
  @ImplementedBy-rishabh.sachan
  
  Scenario Outline: ACAUTOCAS-14101:  Field <FieldName> list validation for PSL marking <PSLCategoryApplicable> of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user navigates to regulatory categorization page of "<ApplicationStage>" stage
    And user changes "PSL category applicable?" flag to "<PSLCategoryApplicable>"
    Then user should be able to see list of values corresponding to "<PSLCategoryApplicable>" for "<FieldName>" as in workbook "<SourceDataFile>" under sheet "<MasterReference>" row range "<MasterRefRange>"
    Examples:
      | ProductType   | ApplicationStage   | SourceDataFile                 | PSLCategoryApplicable | FieldName | MasterReference | MasterRefRange | ApplicantType | Category | Key |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | No                    | PRI       | master_setup    | D1:D6          | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | No                    | BSR1A     | master_setup    | G1:G658        | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | No                    | BSR1B     | master_setup    | J1:J108        | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | No                    | PRIWSEC   | master_setup    | M1:M34         | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | Yes                   | PRI       | master_setup    | D1:D6          | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | Yes                   | BSR1A     | master_setup    | G1:G658        | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | Yes                   | BSR1B     | master_setup    | J1:J108        | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | Yes                   | PRIWSEC   | master_setup    | M1:M34         | indiv         |          |     |


# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-42347,CAS-51455,CAS-51820
###Bug:
#FeatureID-ACAUTOCAS-11307,CAS-42347,CAS-51455,CAS-51820
  @ImplementedBy-rishabh.sachan
  
  @Perishable
  @Sanity
  Scenario Outline: ACAUTOCAS-14102:  Regulatory categorization data validation of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user navigates to regulatory categorization page of "<ApplicationStage>" stage
    And user reads data from the excel file "<SourceDataFile>" under sheet "<SourceSheet>" and row <SourceSheetRow>
    And user enters data for Regulatory Categorization
    And user saves the data for Regulatory Categorization
    Then user should be able to save Regulatory Categorization data successfully
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key | SourceDataFile                 | SourceSheet      | SourceSheetRow |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | regulatory_categorization.xlsx | regulatory_categ | 0              |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | regulatory_categorization.xlsx | regulatory_categ | 1              |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | regulatory_categorization.xlsx | regulatory_categ | 9              |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | regulatory_categorization.xlsx | regulatory_categ | 13             |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | regulatory_categorization.xlsx | regulatory_categ | 14             |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | regulatory_categorization.xlsx | regulatory_categ | 16             |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | regulatory_categorization.xlsx | regulatory_categ | 50             |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | regulatory_categorization.xlsx | regulatory_categ | 54             |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | regulatory_categorization.xlsx | regulatory_categ | 56             |


# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-42347,CAS-51455,CAS-51820
###Bug:
#FeatureID-ACAUTOCAS-11307,CAS-42347,CAS-51455,CAS-51820
  @ImplementedBy-rishabh.sachan
  
  Scenario Outline: ACAUTOCAS-14103:  Regulatory categorization data restriction of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user navigates to regulatory categorization page of "<ApplicationStage>" stage
    And user reads data from the excel file "<SourceDataFile>" under sheet "<SourceSheet>" and row <SourceSheetRow>
    And user enters data for Regulatory Categorization
    And user saves the data for Regulatory Categorization
    Then user should get an error message for Regulatory Categorization
    Examples:
      | ProductType   | ApplicationStage   | SourceDataFile                 | SourceSheet      | SourceSheetRow | ApplicantType | Category | Key |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | regulatory_categ | 24             | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | regulatory_categ | 25             | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | regulatory_categ | 26             | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | regulatory_categ | 27             | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | regulatory_categ | 28             | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | regulatory_categ | 29             | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | regulatory_categ | 30             | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | regulatory_categ | 31             | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | regulatory_categ | 32             | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | regulatory_categ | 33             | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | regulatory_categ | 34             | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | regulatory_categ | 35             | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | regulatory_categ | 36             | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | regulatory_categ | 37             | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | regulatory_categ | 38             | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | regulatory_categ | 39             | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | regulatory_categ | 40             | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | regulatory_categ | 41             | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | regulatory_categ | 42             | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | regulatory_categ | 43             | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | regulatory_categ | 44             | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | regulatory_categ | 45             | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | regulatory_categ | 46             | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | regulatory_categ | 47             | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | regulatory_categ | 48             | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | regulatory_categorization.xlsx | regulatory_categ | 49             | indiv         |          |     |


# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-42347,CAS-51455,CAS-51820
###Bug:
#FeatureID-ACAUTOCAS-11307,CAS-42347,CAS-51455,CAS-51820
  @ImplementedBy-rishabh.sachan
  
  Scenario Outline: ACAUTOCAS-14104:  Regulatory categorization data length restriction of field <FieldName> for <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user navigates to regulatory categorization page of "<ApplicationStage>" stage
    And user reads data from the excel file "regulatory_categorization.xlsx" under sheet "regulatory_categ" and row 59
    And user enters data with more than 500 characters for Regulatory Categorization in fields "<FieldName>"
    Then user should not be able to add more than 500 characters for Regulatory Categorization in fields "<FieldName>"
    Examples:
      | ProductType   | ApplicationStage   | FieldName                | ApplicantType | Category | Key |
      | <ProductType> | <ApplicationStage> | Reason for PSL/NonPSL    | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | Reason for RRP / Non RRP | indiv         |          |     |


# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-42347,CAS-51455,CAS-51820
###Bug:
#FeatureID-ACAUTOCAS-11307,CAS-42347,CAS-51455,CAS-51820
  @ImplementedBy-rishabh.sachan
  
  @Perishable
  @Sanity
  Scenario Outline: ACAUTOCAS-14105:  Regulatory categorization data reconciliation of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user navigates to regulatory categorization page of "<ApplicationStage>" stage
    And user reads data from the excel file "<SourceDataFile>" under sheet "<SourceSheet>" and row <SourceSheetRow>
    And user enters data for Regulatory Categorization
    And user saves the data for Regulatory Categorization
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" from application grid
    When user navigates to regulatory categorization page of "<ApplicationStage>" stage
    Then user should be able to reconcile the data successfully for Regulatory Categorization
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key | SourceDataFile                 | SourceSheet      | SourceSheetRow |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | regulatory_categorization.xlsx | regulatory_categ | 0              |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | regulatory_categorization.xlsx | regulatory_categ | 1              |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | regulatory_categorization.xlsx | regulatory_categ | 9              |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | regulatory_categorization.xlsx | regulatory_categ | 13             |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | regulatory_categorization.xlsx | regulatory_categ | 14             |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | regulatory_categorization.xlsx | regulatory_categ | 16             |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | regulatory_categorization.xlsx | regulatory_categ | 50             |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | regulatory_categorization.xlsx | regulatory_categ | 54             |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | regulatory_categorization.xlsx | regulatory_categ | 56             |


# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-42347,CAS-51455,CAS-51820
###Bug:
#FeatureID-ACAUTOCAS-11307,CAS-42347,CAS-51455,CAS-51820
  @ImplementedBy-rishabh.sachan
  
  @Perishable
  Scenario Outline: ACAUTOCAS-14106:  Regulatory categorization data modification of <ProductType> application at read only Committee Approval stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "committee_approval_grid.xlsx" under sheet "committee_approval" and row 0
    And user selects a committee to take decision
    When user initiate committee approval
    And user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "CommitteeUser" and 0
    And user open committee approval grid
    And search the initiated committee approval application
    And user opens the initiated committee approval application for current user
    When user navigates to regulatory categorization page of "<ApplicationStage>" stage
    Then user should not be able to perform "<Operation>" of data
    Examples:
      | ProductType   | ApplicationStage   | Operation    | ApplicantType | Category | Key |
      | <ProductType> | <ApplicationStage> | Addition     | indiv         |          |     |
      | <ProductType> | <ApplicationStage> | Modification | indiv         |          |     |


# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-42347,CAS-51455,CAS-51820
###Bug:
#FeatureID-ACAUTOCAS-11307,CAS-42347,CAS-51455,CAS-51820
  @ImplementedBy-rishabh.sachan
  
  @Perishable
  @Sanity
  Scenario Outline: ACAUTOCAS-14107:  Regulatory categorization data modification of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "regulatory_categorization.xlsx" under sheet "regulatory_categ" and row 20
    And user navigates to regulatory categorization page of "<ApplicationStage>" stage
    And user enters data for Regulatory Categorization
    And user saves the data for Regulatory Categorization
    When user navigates to regulatory categorization page of "<ApplicationStage>" stage
    And user reads data from the excel file "<SourceDataFile>" under sheet "<SourceSheet>" and row <SourceSheetRow>
    And user modifies data for Regulatory Categorization
    And user saves the data for Regulatory Categorization
    Then user should be able to save Regulatory Categorization data successfully
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key | SourceDataFile                 | SourceSheet      | SourceSheetRow |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | regulatory_categorization.xlsx | regulatory_categ | 57             |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | regulatory_categorization.xlsx | regulatory_categ | 0              |


# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-42347,CAS-51455,CAS-51820
###Bug:
#FeatureID-ACAUTOCAS-11307,CAS-42347,CAS-51455,CAS-51820
  @ImplementedBy-rishabh.sachan
  
  @Perishable
  Scenario Outline: ACAUTOCAS-14108:  Regulatory categorization reset button validation of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "regulatory_categorization.xlsx" under sheet "regulatory_categ" and row 20
    And user navigates to regulatory categorization page of "<ApplicationStage>" stage
    And user enters data for Regulatory Categorization
    And user saves the data for Regulatory Categorization
    When user navigates to regulatory categorization page of "<ApplicationStage>" stage
    And user reads data from the excel file "<SourceDataFile>" under sheet "<SourceSheet>" and row <SourceSheetRow>
    And user modifies data for Regulatory Categorization
    And user reads data from the excel file "regulatory_categorization.xlsx" under sheet "regulatory_categ" and row 20
    And user resets the screen for Regulatory Categorization
    Then user should be able to see the same data as entered originally
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key | SourceDataFile                 | SourceSheet      | SourceSheetRow |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | regulatory_categorization.xlsx | regulatory_categ | 57             |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | regulatory_categorization.xlsx | regulatory_categ | 0              |


# prerequisite - user has not entered data for "Regulatory Categorization"
# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-42347,CAS-51455,CAS-51820
###Bug:
#FeatureID-ACAUTOCAS-11307,CAS-42347,CAS-51455,CAS-51820
  @ImplementedBy-rishabh.sachan
  
  @Perishable
  Scenario Outline: ACAUTOCAS-14109:  Regulatory categorization save validation of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "regulatory_categorization.xlsx" under sheet "regulatory_categ" and row 60
    When user navigates to regulatory categorization page of "<ApplicationStage>" stage
    And user saves the data without entering data for Regulatory Categorization
    Then user should get an notification error message as "<ErrorMsg>" for Regulatory Categorization
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key | ErrorMsg                                        |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | Please choose whether PSL is applicable or not. |


# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-42347,CAS-51455,CAS-51820
###Bug:
#FeatureID-ACAUTOCAS-11307,CAS-42347,CAS-51455,CAS-51820
  @LoggedBug
  @ImplementedBy-rishabh.sachan
  
  Scenario Outline: ACAUTOCAS-14382:  Regulatory categorization unsaved data validation of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "regulatory_categorization.xlsx" under sheet "regulatory_categ" and row 20
    And user navigates to regulatory categorization page of "<ApplicationStage>" stage
    And user enters data for Regulatory Categorization
    And user saves the data for Regulatory Categorization
    When user navigates to regulatory categorization page of "<ApplicationStage>" stage
    And user reads data from the excel file "<SourceDataFile>" under sheet "<SourceSheet>" and row <SourceSheetRow>
    And user modifies data for Regulatory Categorization
    And user navigates to any different tab other than Regulatory Categorization for "<ApplicationStage>" stage
    Then user should get an error message as "<ErrorMsg>" for Regulatory Categorization
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key | SourceDataFile                 | SourceSheet      | SourceSheetRow | ErrorMsg                        |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | regulatory_categorization.xlsx | regulatory_categ | 57             | Please save changes to proceed. |


# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-42347,CAS-51455,CAS-51820
###Bug:
#FeatureID-ACAUTOCAS-11307,CAS-42347,CAS-51455,CAS-51820
  @ImplementedBy-rishabh.sachan
  
  @Sanity
  Scenario Outline: ACAUTOCAS-14111:  Regulatory categorization tab change validation of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SourceDataFile>" under sheet "<SourceSheet>" and row <SourceSheetRow>
    And user navigates to regulatory categorization page of "<ApplicationStage>" stage
    And user enters data for Regulatory Categorization
    And user saves the data for Regulatory Categorization
    And user navigates to any different tab other than Regulatory Categorization for "<ApplicationStage>" stage
    And user navigates to regulatory categorization page of "<ApplicationStage>" stage
    Then user should be able to reconcile the data successfully for Regulatory Categorization
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key | SourceDataFile                 | SourceSheet      | SourceSheetRow |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | regulatory_categorization.xlsx | regulatory_categ | 5              |


# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${InitialStage:["DDE"]}
# ${ApplicationStage:["Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-42347,CAS-51455,CAS-51820
###Bug:
#FeatureID-ACAUTOCAS-11307,CAS-42347,CAS-51455,CAS-51820
  @ImplementedBy-rishabh.sachan
  
  @Sanity
  Scenario Outline: ACAUTOCAS-14112:  Regulatory categorization data validation of <ProductType> application at <ApplicationStage> stage when data captured at <InitialStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SourceDataFile>" under sheet "<SourceSheet>" and row <SourceSheetRow>
    And user navigates to regulatory categorization page of "<InitialStage>" stage
    And user enters data for Regulatory Categorization
    And user saves the data for Regulatory Categorization
    And user moves application from "<InitialStage>" stage to application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" stage without opening it
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" from application grid
    When user navigates to regulatory categorization page of "<ApplicationStage>" stage
    And user reads data from the excel file "<SourceDataFile>" under sheet "<SourceSheet>" and row <SourceSheetRow>
    Then user should be able to reconcile the data successfully for Regulatory Categorization
    Examples:
      | ProductType   | InitialStage   | ApplicationStage   | ApplicantType | Category | Key | SourceDataFile                 | SourceSheet      | SourceSheetRow |
      | <ProductType> | <InitialStage> | <ApplicationStage> | indiv         |          |     | regulatory_categorization.xlsx | regulatory_categ | 20             |
      | <ProductType> | <InitialStage> | <ApplicationStage> | indiv         |          |     | regulatory_categorization.xlsx | regulatory_categ | 57             |

