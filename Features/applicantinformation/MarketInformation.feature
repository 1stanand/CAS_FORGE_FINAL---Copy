@Epic-Applicant_Information
@AuthoredBy-rsurya.kumar
#Author:rsurya.kumar
#ScriptedBy:
#ReviewedBy:
#Scenarios:
@Perishable
Feature: Addition of market information to non individual customer

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
#FeatureID-ACAUTOCAS-8504
  @Conventional @Release @Part-3
    @ImplementedBy-priyanshu.kashyap
    @Release3
  Scenario Outline: ACAUTOCAS-12620:  Field validation for market information of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user views and edit applicant details for "nonindiv" "Primary" applicant type
    When user navigates to "Market Information"
    Then user should be able to see "EntityName" entity in market information:
      | EntityName                         |
      | Market Information And Description |
    Examples:
      | ProductType   | ApplicationStage   | applicantType | category | key |
      | <ProductType> | <ApplicationStage> | nonindiv      |          |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
#FeatureID-ACAUTOCAS-8504
  @Conventional @Release @Part-3
    @ImplementedBy-priyanshu.kashyap
    @Release3
  Scenario Outline: ACAUTOCAS-12621:  Field label validation for market information of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user views and edit applicant details for "nonindiv" "Primary" applicant type
    When user navigates to "Market Information"
    Then user should be able to see Market Information And Description fields with label as:
      | applicant_information.xlsx | MarketInfo-Labels | 0 | Competitor Details         |
      | applicant_information.xlsx | MarketInfo-Labels | 1 | Demand and Supply Analysis |
      | applicant_information.xlsx | MarketInfo-Labels | 2 | Substitute Available       |
      | applicant_information.xlsx | MarketInfo-Labels | 3 | Government Policies        |
      | applicant_information.xlsx | MarketInfo-Labels | 4 | Comments                   |

    Examples:
      | ProductType   | ApplicationStage   | category | key | applicantType |
      | <ProductType> | <ApplicationStage> |          |     | nonindiv      |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
  @Sanity
#FeatureID-ACAUTOCAS-8504
    @Conventional @Release @Part-3
    @ImplementedBy-priyanshu.kashyap
    @Release3
  Scenario Outline: ACAUTOCAS-12622:  Field data validation for market information of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user views and edit applicant details for "nonindiv" "Primary" applicant type
    When user navigates to "Market Information"
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row <RowNum>
    And user enters the data in market information and description of market information
    And user saves the data market information
    Then user should be able to save successfully market information
    Examples:
      | ProductType   | ApplicationStage   | SourceFileName             | SheetName  | RowNum | applicantType | category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 0      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 1      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 2      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 3      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 4      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 5      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 6      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 7      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 8      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 9      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 10     | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 11     | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 12     | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 13     | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 14     | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 15     | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 16     | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 17     | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 18     | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 19     | nonindiv      |          |     |


# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
  @Sanity
#FeatureID-ACAUTOCAS-8504
    @Conventional @Release @Part-3
    @ImplementedBy-priyanshu.kashyap
    @Release3
  Scenario Outline: ACAUTOCAS-12625:  Save and Next validation for market information of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user views and edit applicant details for "nonindiv" "Primary" applicant type
    When user navigates to "Market Information"
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row <RowNum>
    And user enters the data in market information and description of market information
    And user saves the data to move to the next tab
    Then user should be able to move to financial details
    Examples:
      | ProductType   | ApplicationStage   | SourceFileName             | SheetName  | RowNum | applicantType | category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 0      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 1      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 3      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 6      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 7      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 8      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 10     | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 13     | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 15     | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 18     | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 19     | nonindiv      |          |     |


# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:165851,165858
###Story:CAS-134637
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8504,CAS-134637
    @Conventional @Release @Part-3
    @ImplementedBy-priyanshu.kashyap
    @Release3
  Scenario Outline: ACAUTOCAS-12627:  Field control validation to format data in fields of market information of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user views and edit applicant details for "nonindiv" "Primary" applicant type
    When user navigates to "Market Information"
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row 0
    And user select "<FormatType>" for all market information
    And user enters the data in market information and description of market information
    And user saves the data market information
    Then market information data should be saved in "<FormatType>" format successfully
      | FieldName                  |
      | Competitor Details         |
      | Demand and Supply Analysis |
      | Substitute Available       |
      | Government Policies        |
      | Comments                   |
    Examples:
      | ProductType   | ApplicationStage   | FormatType        | SourceFileName             | SheetName  | applicantType | Category | Key |
      | <ProductType> | <ApplicationStage> | Bold              | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | Non-Bold          | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | Italic            | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | Non-Italic        | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | Underline         | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | Non-Underline     | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | Subscript         | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | Un-Subscript      | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | Superscript       | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | Un-Superscript    | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | Strikethrough     | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | Non-Strikethrough | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:165851,165858
###Story:CAS-134637
###Bug:
  @Sanity
    @Conventional @Release @Part-3
    @ImplementedBy-priyanshu.kashyap
    @Release3
#FeatureID-ACAUTOCAS-8504,CAS-134637
  Scenario Outline: ACAUTOCAS-12628:  Field validation to check tabular format in market information of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user views and edit applicant details for "nonindiv" "Primary" applicant type
    When user navigates to "Market Information"
#    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row 0
    And user select "<FormatType>" for all market information
    And user enter the data in tabular format in market information
    And user saves the data market information
    Then user should be able to save successfully market information
    Examples:
      | ProductType   | ApplicationStage   | FormatType | Category | Key | applicantType |
      | <ProductType> | <ApplicationStage> | Tabular    |          |     | nonindiv      |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:165851,165858
#Application is not working in this way
###Story:CAS-134637
###Bug:
#FeatureID-ACAUTOCAS-8504,CAS-134637
  @Conventional @Release @Part-3
    @ImplementedBy-priyanshu.kashyap
    @Release3
  Scenario Outline: ACAUTOCAS-12629:  Field validation to check "<Actions>" on tabular format in market information of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user views and edit applicant details for "nonindiv" "Primary" applicant type
    When user navigates to "Market Information"
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row 0
    And user enter the data in tabular format for all market information
      | FieldName                  |
      | Competitor Details         |
      | Demand and Supply Analysis |
      | Substitute Available       |
      | Government Policies        |
      | Comments                   |
    And user performs the "<Actions>" on tabular data
      | FieldName                  |
      | Competitor Details         |
      | Demand and Supply Analysis |
      | Substitute Available       |
      | Government Policies        |
      | Comments                   |
    And user saves the data market information
    Then user should be able to save successfully market information
    Examples:
      | ProductType   | ApplicationStage   | Actions                   |applicantType | Category | Key |SourceFileName             | SheetName  |
      | <ProductType> | <ApplicationStage> | View Table Properties     |nonindiv      |          |     |applicant_information.xlsx | MarketInfo |
      | <ProductType> | <ApplicationStage> | Delete Table              |nonindiv      |          |     |applicant_information.xlsx | MarketInfo |
      | <ProductType> | <ApplicationStage> | Table Cell Properties     |nonindiv      |          |     |applicant_information.xlsx | MarketInfo |
      | <ProductType> | <ApplicationStage> | Split Merged Table Cells  |nonindiv      |          |     |applicant_information.xlsx | MarketInfo |
      | <ProductType> | <ApplicationStage> | Merge Table Cells         |nonindiv      |          |     |applicant_information.xlsx | MarketInfo |
      | <ProductType> | <ApplicationStage> | Insert Row Before         |nonindiv      |          |     |applicant_information.xlsx | MarketInfo |
      | <ProductType> | <ApplicationStage> | Insert Row After          |nonindiv      |          |     |applicant_information.xlsx | MarketInfo |
      | <ProductType> | <ApplicationStage> | Delete Row                |nonindiv      |          |     |applicant_information.xlsx | MarketInfo |
      | <ProductType> | <ApplicationStage> | Cut Table Row             |nonindiv      |          |     |applicant_information.xlsx | MarketInfo |
      | <ProductType> | <ApplicationStage> | Copy Table Row            |nonindiv      |          |     |applicant_information.xlsx | MarketInfo |
      | <ProductType> | <ApplicationStage> | Paste Table Row Before    |nonindiv      |          |     |applicant_information.xlsx | MarketInfo |
      | <ProductType> | <ApplicationStage> | Paste Table Row After     |nonindiv      |          |     |applicant_information.xlsx | MarketInfo |
      | <ProductType> | <ApplicationStage> | Insert Column Before      |nonindiv      |          |     |applicant_information.xlsx | MarketInfo |
      | <ProductType> | <ApplicationStage> | Insert Column After       |nonindiv      |          |     |applicant_information.xlsx | MarketInfo |
      | <ProductType> | <ApplicationStage> | Delete Column             |nonindiv      |          |     |applicant_information.xlsx | MarketInfo |
      | <ProductType> | <ApplicationStage> | Cut Table Column          |nonindiv      |          |     |applicant_information.xlsx | MarketInfo |
      | <ProductType> | <ApplicationStage> | Copy Table Column         |nonindiv      |          |     |applicant_information.xlsx | MarketInfo |
      | <ProductType> | <ApplicationStage> | Paste Table Column Before |nonindiv      |          |     |applicant_information.xlsx | MarketInfo |
      | <ProductType> | <ApplicationStage> | Paste Table Column After  |nonindiv      |          |     |applicant_information.xlsx | MarketInfo |


# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:165852,165859
###Story:CAS-134637
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8504,CAS-134637
    @Conventional @Release @Part-3
    @ImplementedBy-priyanshu.kashyap
    @Release3
    @Perishable
  Scenario Outline: ACAUTOCAS-12630:  Field control validation 2 to format data in fields of market information of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user views and edit applicant details for "nonindiv" "Primary" applicant type
    When user navigates to "Market Information"
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row 0
    And user select "<FormatType>" for all market information
    And user enters the data in market information and description of market information
    And user saves the data market information
    Then market information data should be saved in "<FormatType>" format successfully
      | FieldName                  |
      | Competitor Details         |
      | Demand and Supply Analysis |
      | Substitute Available       |
      | Government Policies        |
      | Comments                   |

    Examples:
      | ProductType   | ApplicationStage   | FormatType              | SourceFileName             | SheetName  | applicantType | Category | Key |
      | <ProductType> | <ApplicationStage> | Align Left              | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | Align Center            | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | Align Right             | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | Align Justify           | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | Bullet List             | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | Un-Bullet List          | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | Bullet Numbered List    | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | Un-Bullet Numbered List | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |
    @LoggedBug
    Examples:
      | ProductType   | ApplicationStage   | FormatType    | SourceFileName             | SheetName  | applicantType | Category | Key |
      | <ProductType> | <ApplicationStage> | Increase Font | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | Decrease Font | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:165853,165860
###Story:CAS-134637
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8504,CAS-134637
    @Conventional @Release @Part-3
    @ImplementedBy-priyanshu.kashyap
    @Release3
    @Perishable
  Scenario Outline: ACAUTOCAS-12631:  Field control validation 3 to perform actions in fields of market information of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user views and edit applicant details for "nonindiv" "Primary" applicant type
    When user navigates to "Market Information"
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row 0
    And user enters the data in market information and description of market information
    And user performs "<Actions>" in the below fields of Market Information
      | FieldName                  |
      | Competitor Details         |
      | Demand and Supply Analysis |
      | Substitute Available       |
      | Government Policies        |
      | Comments                   |
    And user saves the data
    Then user should be able to save successfully
    Examples:
      | ProductType   | ApplicationStage   | Actions      | SourceFileName             | SheetName  | applicantType | Category | Key |
      | <ProductType> | <ApplicationStage> | Undo Changes | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | Redo Changes | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | Linking      | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | Delinking    | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |

    @LoggedBug
    Examples:
      | ProductType   | ApplicationStage   | Actions      |SourceFileName             | SheetName  | applicantType | Category | Key |
      | <ProductType> | <ApplicationStage> | Cut Text     |applicant_information.xlsx | MarketInfo | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | Copy Text    |applicant_information.xlsx | MarketInfo | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | Paste Text   |applicant_information.xlsx | MarketInfo | nonindiv      |          |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:165854,165861
###Story:CAS-134637
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8504,CAS-134637
    @Conventional @Release @Part-3
    @ImplementedBy-priyanshu.kashyap
    @Release3
  Scenario Outline: ACAUTOCAS-12632:  Field control validation 4 to perform actions in fields of market information of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user views and edit applicant details for "nonindiv" "Primary" applicant type
    When user navigates to "Market Information"
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row 0
    And user enters the data in market information and description of market information
    And user performs "<Actions>" in the below fields of Market Information
      | FieldName                  |
      | Competitor Details         |
      | Demand and Supply Analysis |
      | Substitute Available       |
      | Government Policies        |
      | Comments                   |
    And user saves the data
    Then user should be able to save successfully
    Examples:
      | ProductType   | ApplicationStage   | Actions                  | SourceFileName             | SheetName  | applicantType | Category | Key |
      | <ProductType> | <ApplicationStage> | Insert Horizontal Line   | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | Remove Formatting        | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | Insert Special Character | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:165855,165862
###Story:CAS-134637
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8504,CAS-134637
    @Conventional @Release @Part-3
    @ImplementedBy-priyanshu.kashyap
    @Release3
    @Perishable
  Scenario Outline: ACAUTOCAS-12633:  Field control validation 5 to perform actions in fields of market information of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user views and edit applicant details for "nonindiv" "Primary" applicant type
    When user navigates to "Market Information"
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row 0
    And user enters the data in market information and description of market information
    And user performs "<Actions>" in the below fields of Market Information
      | FieldName                  |
      | Competitor Details         |
      | Demand and Supply Analysis |
      | Substitute Available       |
      | Government Policies        |
      | Comments                   |
    And user saves the data
    Then user should be able to save successfully
    Examples:
      | ProductType   | ApplicationStage   | Actions              | SourceFileName             | SheetName  | applicantType | Category | Key |
      | <ProductType> | <ApplicationStage> | Insert/Edit Anchor   | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | Show/Hide Guidelines | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | Asks Help            | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |



# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:165865,165866
###Story:CAS-134637
###Bug:
#FeatureID-ACAUTOCAS-8504,CAS-134637
  @Conventional @Release @Part-3
    @ImplementedBy-priyanshu.kashyap
    @Release3
    @Perishable
  Scenario Outline: ACAUTOCAS-12636:  Hyperlinks are not clickable in fields of market information of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user views and edit applicant details for "nonindiv" "Primary" applicant type
    And user navigates to "Market Information"
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row 0
    And user enters the data in market information and description of market information
    And user performs "<Actions>" in the below fields of Market Information
      | FieldName                  |
      | Competior Details          |
      | Demand and Supply Analysis |
      | Substitute Available       |
      | Government Policies        |
      | Comments                   |
    When user clicks on the hyperlink data in FieldName of Market Information
      | FieldName                  |
      | Competior Details          |
      | Demand and Supply Analysis |
      | Substitute Available       |
      | Government Policies        |
      | Comments                   |
    Then user should not be able to open the web page in the hyperlink
    Examples:
      | ProductType   | ApplicationStage   | Actions       | SourceFileName             | SheetName  | applicantType | Category | Key |
      | <ProductType> | <ApplicationStage> | Add Hyperlink | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:165865,165866
###Story:CAS-134637
###Bug:
#FeatureID-ACAUTOCAS-8504,CAS-134637
  @Conventional @Release @Part-3
    @ImplementedBy-priyanshu.kashyap
    @Release3
    @Perishable
  Scenario Outline: ACAUTOCAS-12637:  Pre-formatted texts are pasted as is in fields of market information of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user views and edit applicant details for "nonindiv" "Primary" applicant type
    And user navigates to "Market Information"
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row 0
    When user enters the data in market information and description of market information
    Then user should be able to see the data in same format as in source
    Examples:
      | ProductType   | ApplicationStage   | SourceFileName             | SheetName  | applicantType | Category | Key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | nonindiv      |          |     |


# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL","EDU"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
 #${Key:["Guarantor"]}
  @Sanity
#FeatureID-ACAUTOCAS-8504
    @Conventional @Release @Part-3
    @ImplementedBy-priyanshu.kashyap
    @Release3
    @Perishable
  Scenario Outline: ACAUTOCAS-12639:  Field data validation for market information of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    When user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user navigates to "Market Information"
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row <RowNum>
    And user enters the data in market information and description of market information
    And user saves the data market information
    Then user should be able to save successfully market information
    Examples:
      | ProductType   | ApplicationStage   | SourceFileName             | SheetName  | RowNum | applicantType | Category | Key   |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 0      | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 1      | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 2      | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 3      | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 4      | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 5      | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 6      | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 7      | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 8      | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 9      | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 10     | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 11     | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 12     | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 13     | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 14     | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 15     | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 16     | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 17     | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 18     | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 19     | nonindiv      |          | <Key> |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL","EDU"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
  #${Key:["Guarantor"]}
  @Sanity
#FeatureID-ACAUTOCAS-8504
    @Conventional @Release @Part-3
    @ImplementedBy-priyanshu.kashyap
    @Release3
    @Perishable
  Scenario Outline: ACAUTOCAS-12640:  Save and Next validation for market information of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    When user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user navigates to "Market Information"
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row <RowNum>
    And user enters the data in market information and description of market information
    And user saves the data to move to the next tab
    Then user should be able to move to financial details
    Examples:
      | ProductType   | ApplicationStage   | SourceFileName            | SheetName  | RowNum | applicantType | Category | Key   |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | MarketInfo | 0      | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | MarketInfo | 1      | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | MarketInfo | 3      | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | MarketInfo | 6      | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | MarketInfo | 7      | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | MarketInfo | 8      | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | MarketInfo | 10     | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | MarketInfo | 13     | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | MarketInfo | 15     | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | MarketInfo | 18     | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | MarketInfo | 19     | nonindiv      |          | <Key> |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL","EDU"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
  #${Key:["Coapplicant"]}
  @Sanity
#FeatureID-ACAUTOCAS-8504
    @Conventional @Release @Part-3
    @ImplementedBy-priyanshu.kashyap
    @Release3
    @Perishable
  Scenario Outline: ACAUTOCAS-12641:  Field data validation for market information of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    When user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user navigates to "Market Information"
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row <RowNum>
    And user enters the data in market information and description of market information
    And user saves the data market information
    Then user should be able to save successfully market information
    Examples:
      | ProductType   | ApplicationStage   | SourceFileName             | SheetName  | RowNum | applicantType | Category | Key   |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 0      | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 1      | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 2      | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 3      | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 4      | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 5      | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 6      | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 7      | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 8      | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 9      | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 10     | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 11     | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 12     | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 13     | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 14     | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 15     | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 16     | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 17     | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 18     | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 19     | nonindiv      |          | <Key> |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL","EDU"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
   #${Key:["Coapplicant"]}
  @Sanity
#FeatureID-ACAUTOCAS-8504
    @Conventional @Release @Part-3
    @ImplementedBy-priyanshu.kashyap
    @Release3
    @Perishable
  Scenario Outline: ACAUTOCAS-12642:  Save and Next validation for market information of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    When user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user navigates to "Market Information"
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row <RowNum>
    And user enters the data in market information and description of market information
    And user saves the data to move to the next tab
    Then user should be able to move to financial details
    Examples:
      | ProductType   | ApplicationStage   | SourceFileName             | SheetName  | RowNum | applicantType | category | Key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 0      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 1      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 3      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 6      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 7      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 8      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 10     | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 13     | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 15     | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 18     | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 19     | nonindiv      |          |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
  @Sanity
#FeatureID-ACAUTOCAS-8504
    @Conventional @Release @Part-3
    @ImplementedBy-priyanshu.kashyap
    @Release3
    @Perishable
  Scenario Outline: ACAUTOCAS-12643:  Data reconciliation for market information of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    When user navigates to "Market Information"
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row <RowNum>
    And user enters the data in market information and description of market information
    And user reconcile the market information data
    Then user should be able to reconcile market information data successfully
    Examples:
      | ProductType   | ApplicationStage   | SourceFileName             | SheetName  | RowNum | applicantType | Category | Key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 0      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 1      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 2      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 3      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 4      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 5      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 6      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 7      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 8      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 9      | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 10     | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 11     | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 12     | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 13     | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 14     | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 15     | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 16     | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 17     | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 18     | nonindiv      |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 19     | nonindiv      |          |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL","EDU"]}
# ${ApplicationStage:["Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
   #${Key:["Guarantor"]}
  @Sanity
#FeatureID-ACAUTOCAS-8504
    @Conventional @Release @Part-3
    @ImplementedBy-priyanshu.kashyap
    @Release3
    @Perishable
  Scenario Outline: ACAUTOCAS-12644:  Data reconciliation for market information of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "Lead Details" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "Lead Details"
    When user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user navigates to "Market Information"
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row <RowNum>
    And user enters the data in market information and description of market information
    And user saves the data market information
    And user moves application from "Lead Details" stage to application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "" with "" stage without opening it
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user navigates to "Market Information"
    And user reconcile the market information data
    Then user should be able to reconcile market information data successfully
    Examples:
      | ProductType   | ApplicationStage   | SourceFileName             | SheetName  | RowNum | Category | Key   | applicantType |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 0      |          | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 1      |          | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 2      |          | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 3      |          | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 4      |          | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 5      |          | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 6      |          | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 7      |          | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 8      |          | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 9      |          | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 10     |          | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 11     |          | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 12     |          | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 13     |          | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 14     |          | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 15     |          | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 16     |          | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 17     |          | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 18     |          | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 19     |          | <Key> | nonindiv      |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL","EDU"]}
# ${ApplicationStage:["Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
  #${Key:["Coapplicant"]}
  @Sanity
#FeatureID-ACAUTOCAS-8504
    @Conventional @Release @Part-3
    @ImplementedBy-priyanshu.kashyap
    @Release3
    @Perishable
  Scenario Outline: ACAUTOCAS-12645:  Data reconciliation for market information of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "Lead Details" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "Lead Details"
    When user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user navigates to "Market Information"
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row <RowNum>
    And user enters the data in market information and description of market information
    And user saves the data market information
    And user moves application from "Lead Details" stage to application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "" with "" stage without opening it
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user navigates to "Market Information"
    And user reconcile the market information data
    Then user should be able to reconcile market information data successfully

    Examples:
      | ProductType   | ApplicationStage   | SourceFileName             | SheetName  | RowNum | Category | Key   |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 0      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 1      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 2      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 3      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 4      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 5      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 6      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 7      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 8      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 9      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 10     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 11     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 12     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 13     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 14     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 15     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 16     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 17     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 18     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 19     |          | <Key> |

#Enquiry
# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval","Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
    #${Key:["Primary"]}
  @Sanity
#FeatureID-ACAUTOCAS-8504
    @Conventional @Release @Part-3
    @ImplementedBy-priyanshu.kashyap
    @Release3
    @Perishable
  Scenario Outline: ACAUTOCAS-12646:  Data reconciliation for market information of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage at Enquiry screen
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "Lead Details" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "Lead Details"
    When user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user navigates to "Market Information"
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row <RowNum>
    And user enters the data in market information and description of market information
    And user saves the data market information
    And user moves application from "Lead Details" stage to application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "" with "" stage without opening it
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from enquiry screen
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user navigates to "Market Information"
    And user reconcile the market information data
    Then user should be able to reconcile market information data successfully

    Examples:
      | ProductType   | ApplicationStage   | SourceFileName             | SheetName  | RowNum | Category | Key   |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 0      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 1      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 2      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 3      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 4      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 5      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 6      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 7      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 8      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 9      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 10     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 11     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 12     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 13     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 14     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 15     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 16     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 17     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 18     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 19     |          | <Key> |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL","EDU"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval","Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
  #${Key:["Guarantor"]}
  @Sanity
#FeatureID-ACAUTOCAS-8504
    @Conventional @Release @Part-3
    @ImplementedBy-priyanshu.kashyap
    @Release3
    @Perishable
  Scenario Outline: ACAUTOCAS-12647:  Data reconciliation for market information of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage at Enquiry screen
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "Lead Details" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "Lead Details"
    When user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user navigates to "Market Information"
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row <RowNum>
    And user enters the data in market information and description of market information
    And user saves the data market information
    And user moves application from "Lead Details" stage to application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "" with "" stage without opening it
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from enquiry screen
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user navigates to "Market Information"
    And user reconcile the market information data
    Then user should be able to reconcile market information data successfully

    Examples:
      | ProductType   | ApplicationStage   | SourceFileName             | SheetName  | RowNum | Category | Key   |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 0      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 1      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 2      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 3      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 4      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 5      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 6      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 7      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 8      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 9      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 10     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 11     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 12     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 13     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 14     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 15     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 16     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 17     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 18     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 19     |          | <Key> |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL","EDU"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval","Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
  #${Key:["Coapplicant"]}
  @Sanity
#FeatureID-ACAUTOCAS-8504
    @Conventional @Release @Part-3
    @ImplementedBy-priyanshu.kashyap
    @Release3
    @Perishable
  Scenario Outline: ACAUTOCAS-12648:  Data reconciliation for market information of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage at Enquiry screen
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "Lead Details" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "Lead Details"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user navigates to "Market Information"
    And user reads data from the excel file "<SourceFileName>" under sheet "<SheetName>" and row <RowNum>
    And user enters the data in market information and description of market information
    And user saves the data market information
    And user moves application from "Lead Details" stage to application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "" with "" stage without opening it
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from enquiry screen
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user navigates to "Market Information"
    When user reconcile the market information data
    Then user should be able to reconcile market information data successfully
    Examples:
      | ProductType   | ApplicationStage   | SourceFileName             | SheetName  | RowNum | Category | Key   |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 0      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 1      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 2      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 3      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 4      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 5      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 6      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 7      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 8      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 9      |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 10     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 11     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 12     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 13     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 14     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 15     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 16     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 17     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 18     |          | <Key> |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | MarketInfo | 19     |          | <Key> |
