@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ReviewedByDEV
@ReviewedSecCollateral

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}

Feature: Agriculture Land Screen Validation


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline: ACAUTOCAS-2226:  user selects collateral type as Land
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralInsuranceWB>" under sheet "<CollateralInsuranceWB_home>" and row <CollateralInsuranceWB_home_rowNum>
    When user attempts to select a collateral type
    Then application should allow only the type which is linked to the product
    Examples:
      | CollateralInsuranceWB | CollateralInsuranceWB_home | CollateralInsuranceWB_home_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline: ACAUTOCAS-2227: user chooses sub collateral as Agriculture Land
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralInsuranceWB>" under sheet "<CollateralInsuranceWB_home>" and row <CollateralInsuranceWB_home_rowNum>
    When user selects collateral type along with collateral sub type
    Then application should allow only the sub type which is linked to the product
    Examples:
      | CollateralInsuranceWB | CollateralInsuranceWB_home | CollateralInsuranceWB_home_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline:ACAUTOCAS-3178: User is able to see <SectionName> for new collateral Agriculture Land
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralInsuranceWB>" under sheet "<CollateralInsuranceWB_home>" and row <CollateralInsuranceWB_home_rowNum>
    When user selects collateral type along with collateral sub type
    Then User should be able to see "<SectionName>"
    Examples:
      | SectionName                          | CollateralInsuranceWB | CollateralInsuranceWB_home | CollateralInsuranceWB_home_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Collateral Details                   | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Address Details Of Agricultural Land | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Other Details Of Agricultural Land   | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Reason                               | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline: ACAUTOCAS-3179: user is able to see <FieldName> for new collateral Agriculture Land
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralInsuranceWB>" under sheet "<CollateralInsuranceWB_home>" and row <CollateralInsuranceWB_home_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see "<FieldName>" field marked as "<Mandatory>"
    Examples:
      | FieldName                          | Mandatory     | CollateralInsuranceWB | CollateralInsuranceWB_home | CollateralInsuranceWB_home_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Collateral Ref No                  | non mandatory | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Description                        | non mandatory | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Survey Number                      | mandatory     | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Landowner Name                     | mandatory     | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Date of last land holding document | mandatory     | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Vintage of Lease                   | mandatory     | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Holding Status                     | mandatory     | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Encumbrance                        | mandatory     | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Mortgage                           | mandatory     | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Document Types                     | mandatory     | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Document Type Others               | non mandatory | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Relation Type                      | mandatory     | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |


  @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline: ACAUTOCAS-2228: CollateralPage <Validity>  of <FieldName> with <InputType> validation for collateral Land and Sub Type Agriculture Land
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_Default_rowNum1>
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_Default_rowNum2>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<SectionName>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    Examples:
      | Validity | FieldName                 | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_Default | Collateral_Default_rowNum2 | Collateral_Default_rowNum1 | SectionName | ProductType   | ApplicationStage   | key | category | applicantType |
      | invalid  | Collateral Ref No         | special characters except hyphen | throws error with error message | collateral.xlsx | default            | 624                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Collateral Ref No         | positive digits                  | does not throw any error        | collateral.xlsx | default            | 625                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Collateral Ref No         | characters                       | does not throw any error        | collateral.xlsx | default            | 626                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Collateral Ref No         | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 627                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Collateral Ref No         | negative                         | does not throw any error        | collateral.xlsx | default            | 628                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Collateral Ref No         | hyphen                           | does not throw any error        | collateral.xlsx | default            | 629                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Collateral Ref No         | space                            | does not throw any error        | collateral.xlsx | default            | 630                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Description               | positive digits                  | does not throw any error        | collateral.xlsx | default            | 208                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Description               | characters                       | does not throw any error        | collateral.xlsx | default            | 209                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Description               | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 210                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Description               | negative                         | does not throw any error        | collateral.xlsx | default            | 211                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Description               | hyphen                           | does not throw any error        | collateral.xlsx | default            | 212                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Description               | space                            | does not throw any error        | collateral.xlsx | default            | 213                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Description               | special characters except hyphen | does not throw any error        | collateral.xlsx | default            | 214                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Survey No                 | positive digits                  | does not throw any error        | collateral.xlsx | default            | 201                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Survey No                 | characters                       | does not throw any error        | collateral.xlsx | default            | 202                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Survey No                 | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 203                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Survey No                 | negative                         | does not throw any error        | collateral.xlsx | default            | 204                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Survey No                 | hyphen                           | does not throw any error        | collateral.xlsx | default            | 205                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Survey No                 | space                            | does not throw any error        | collateral.xlsx | default            | 206                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Valid    | Survey No                 | special characters except hyphen | does not throw any error        | collateral.xlsx | default            | 207                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Land Owner Name           | positive digits                  | does not throw any error        | collateral.xlsx | default            | 215                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Land Owner Name           | characters                       | does not throw any error        | collateral.xlsx | default            | 216                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Land Owner Name           | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 217                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Land Owner Name           | negative                         | does not throw any error        | collateral.xlsx | default            | 218                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Land Owner Name           | hyphen                           | does not throw any error        | collateral.xlsx | default            | 219                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Land Owner Name           | space                            | does not throw any error        | collateral.xlsx | default            | 220                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Valid    | Land Owner Name           | special characters except hyphen | does not throw any error        | collateral.xlsx | default            | 221                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Date of last land holding | valid date format                | does not throw any error        | collateral.xlsx | default            | 222                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | invalid  | Date of last land holding | invalid date format              | throws error with error message | collateral.xlsx | default            | 223                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Date of last land holding | current date                     | does not throw any error        | collateral.xlsx | default            | 224                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Date of last land holding | past date                        | does not throw any error        | collateral.xlsx | default            | 225                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Date of last land holding | future date                      | does not throw any error        | collateral.xlsx | default            | 226                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | invalid  | Date of last land holding | year less than 1942              | throws error with error message | collateral.xlsx | default            | 227                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Date of last land holding | year equal to 1942               | does not throw any error        | collateral.xlsx | default            | 228                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | invalid  | Date of last land holding | special characters               | throws error with error message | collateral.xlsx | default            | 229                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Vintage of lease          | valid date format                | does not throw any error        | collateral.xlsx | default            | 230                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | invalid  | Vintage of lease          | invalid date format              | throws error with error message | collateral.xlsx | default            | 231                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | invalid  | Vintage of lease          | current date                     | throws error with error message | collateral.xlsx | default            | 232                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Vintage of lease          | past date                        | does not throw any error        | collateral.xlsx | default            | 233                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | invalid  | Vintage of lease          | future date                      | throws error with error message | collateral.xlsx | default            | 234                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | invalid  | Vintage of lease          | year less than 1942              | throws error with error message | collateral.xlsx | default            | 235                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Vintage of lease          | year equal to 1942               | does not throw any error        | collateral.xlsx | default            | 236                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | invalid  | Vintage of lease          | special characters               | throws error with error message | collateral.xlsx | default            | 237                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Document Type other       | positive digits                  | does not throw any error        | collateral.xlsx | default            | 631                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Document Type other       | characters                       | does not throw any error        | collateral.xlsx | default            | 632                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Document Type other       | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 633                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Document Type other       | negative                         | does not throw any error        | collateral.xlsx | default            | 634                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Document Type other       | hyphen                           | does not throw any error        | collateral.xlsx | default            | 635                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Document Type other       | space                            | does not throw any error        | collateral.xlsx | default            | 636                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Valid    | Document Type other       | special characters except hyphen | does not throw any error        | collateral.xlsx | default            | 637                        | 6                          | Land        | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @SkippedFormatValidation
 #Collateral Details Field Format Validation
#Collateral Details Field Format Validation
  Scenario: ACAUTOCAS-2229:  CollateralPage Land details format validation for collateral Sub Type Agriculture Land
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Land" and Sub Type "Agriculture Land"
    Then user should be able to see all fields of "<Collateral details>" with proper format

  @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline: ACAUTOCAS-2230:  CollateralPage Land details data type and labels for collateral Sub Type Agriculture Land
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_Sub_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see "<FieldName>" field of collateral details with proper label
    Examples:
      | FieldName                          | CollateralWB    | Collateral_Default | Collateral_Sub_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Survey Number                      | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Landowner Name                     | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Date of last land holding document | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Vintage of Lease                   | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Holding Status                     | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Encumbrance                        | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Mortgage                           | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Document Types                     | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Relation Type                      | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline: ACAUTOCAS-3180: User is able to see all fields for new collateral Agriculture Land in Other Details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When goes to Other Details section
    Then user should be able to see field "<FieldName>" marked mandatory as "<Mandatory>"
    Examples:
      | FieldName                    | Mandatory | CollateralWB    | Collateral_Default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Agricultural Land Area       | Yes       | collateral.xlsx | default            | 6                         | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Agricultural Land Area Unit  | Yes       | collateral.xlsx | default            | 6                         | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Agricultural Land Value      | No        | collateral.xlsx | default            | 6                         | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Agricultural Land Value Unit | No        | collateral.xlsx | default            | 6                         | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Irrigated                    | No        | collateral.xlsx | default            | 6                         | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Irrigation source            | No        | collateral.xlsx | default            | 6                         | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Patwari circle               | No        | collateral.xlsx | default            | 6                         | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Revenue Circle               | No        | collateral.xlsx | default            | 6                         | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline:ACAUTOCAS-2231:  CollateralPage <Validity> of <FieldName> with <InputType> validation in other details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_Default_rowNum1>
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_OtherDetails>" and row <Collateral_Default_rowNum2>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<SectionName>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    Examples:
      | Validity | FieldName              | InputType                        | Throws_NotThrows         | CollateralWB    | Collateral_OtherDetails | Collateral_Default_rowNum2 | Collateral_Default | Collateral_Default_rowNum1 | SectionName         | ProductType   | ApplicationStage   | key | category | applicantType |
      | valid    | Agriculture Land Area  | positive digits                  | does not throw any error | collateral.xlsx | other_details           | 39                         | default            | 6                          | other details- land | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Agriculture Land Area  | characters                       | does not throw any error | collateral.xlsx | other_details           | 40                         | default            | 6                          | other details- land | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Agriculture Land Area  | both digits and characters       | does not throw any error | collateral.xlsx | other_details           | 41                         | default            | 6                          | other details- land | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Agriculture Land Area  | negative                         | does not throw any error | collateral.xlsx | other_details           | 42                         | default            | 6                          | other details- land | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Agriculture Land Area  | hyphen                           | does not throw any error | collateral.xlsx | other_details           | 43                         | default            | 6                          | other details- land | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Agriculture Land Area  | space                            | does not throw any error | collateral.xlsx | other_details           | 44                         | default            | 6                          | other details- land | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Valid    | Agriculture Land Area  | special characters except hyphen | does not throw any error | collateral.xlsx | other_details           | 45                         | default            | 6                          | other details- land | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Agriculture Land Value | positive digits                  | does not throw any error | collateral.xlsx | other_details           | 46                         | default            | 6                          | other details- land | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Agriculture Land Value | characters                       | does not throw any error | collateral.xlsx | other_details           | 47                         | default            | 6                          | other details- land | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Agriculture Land Value | both digits and characters       | does not throw any error | collateral.xlsx | other_details           | 48                         | default            | 6                          | other details- land | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Agriculture Land Value | negative                         | does not throw any error | collateral.xlsx | other_details           | 49                         | default            | 6                          | other details- land | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Agriculture Land Value | hyphen                           | does not throw any error | collateral.xlsx | other_details           | 50                         | default            | 6                          | other details- land | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Agriculture Land Value | space                            | does not throw any error | collateral.xlsx | other_details           | 51                         | default            | 6                          | other details- land | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Valid    | Agriculture Land Value | special characters except hyphen | does not throw any error | collateral.xlsx | other_details           | 52                         | default            | 6                          | other details- land | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Patwari Circle         | positive digits                  | does not throw any error | collateral.xlsx | other_details           | 53                         | default            | 6                          | other details- land | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Patwari Circle         | characters                       | does not throw any error | collateral.xlsx | other_details           | 54                         | default            | 6                          | other details- land | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Patwari Circle         | both digits and characters       | does not throw any error | collateral.xlsx | other_details           | 55                         | default            | 6                          | other details- land | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Patwari Circle         | negative                         | does not throw any error | collateral.xlsx | other_details           | 56                         | default            | 6                          | other details- land | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Patwari Circle         | hyphen                           | does not throw any error | collateral.xlsx | other_details           | 57                         | default            | 6                          | other details- land | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Patwari Circle         | space                            | does not throw any error | collateral.xlsx | other_details           | 58                         | default            | 6                          | other details- land | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Valid    | Patwari Circle         | special characters except hyphen | does not throw any error | collateral.xlsx | other_details           | 59                         | default            | 6                          | other details- land | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Revenue Circle         | positive digits                  | does not throw any error | collateral.xlsx | other_details           | 60                         | default            | 6                          | other details- land | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Revenue Circle         | characters                       | does not throw any error | collateral.xlsx | other_details           | 61                         | default            | 6                          | other details- land | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Revenue Circle         | both digits and characters       | does not throw any error | collateral.xlsx | other_details           | 62                         | default            | 6                          | other details- land | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Revenue Circle         | negative                         | does not throw any error | collateral.xlsx | other_details           | 63                         | default            | 6                          | other details- land | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Revenue Circle         | hyphen                           | does not throw any error | collateral.xlsx | other_details           | 64                         | default            | 6                          | other details- land | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Revenue Circle         | space                            | does not throw any error | collateral.xlsx | other_details           | 65                         | default            | 6                          | other details- land | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Valid    | Revenue Circle         | special characters except hyphen | does not throw any error | collateral.xlsx | other_details           | 66                         | default            | 6                          | other details- land | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @SkippedFormatValidation
  @NotImplementable
#Other Details Field Format Validation
  Scenario: ACAUTOCAS-2232:  CollateralPage Other details format validation for collateral Sub Type Agriculture Land
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Land" and Sub Type "Agriculture Land"
    Then user should be able to see all fields of "<Other Details>" with proper format

  @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline: ACAUTOCAS-2233:  CollateralPage Other details data type and labels of <FieldName> collateral Sub Type Agriculture Land
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_Sub_rowNum>
    And user selects collateral type along with collateral sub type
    When goes to Other Details section
    Then user should be able to see "<FieldName>" field of other details with proper label
    Examples:
      | FieldName               | CollateralWB    | Collateral_Default | Collateral_Sub_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Agricultural Land Area  | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Agricultural Land Value | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Irrigated               | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Patwari circle          | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Revenue Circle          | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-aditya.tomar
    @Release3
  Scenario Outline: ACAUTOCAS-3181:  user is able to see all fields for new collateral Agriculture Land in Land Address
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralInsuranceWB>" under sheet "<CollateralInsuranceWB_home>" and row <CollateralInsuranceWB_home_rowNum>
    When user selects collateral type along with collateral sub type
    And user opens address details tab of Agricultural Land
    Then user should be able to see field "<FieldName>" marked mandatory as "<Mandatory>"
    Examples:
      | FieldName                      | Mandatory | CollateralInsuranceWB | CollateralInsuranceWB_home | CollateralInsuranceWB_home_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Address Type                   | Yes       | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Country                        | Yes       | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Plot Number                    | Yes       | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Address Line 2                 | No        | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Address Line 3                 | No        | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | PinCode                        | Yes       | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Region                         | No        | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | State                          | Yes       | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | City                           | No        | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | District                       | Yes       | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Taluka                         | No        | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Village                        | Yes       | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Landmark                       | No        | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Current Address                | No        | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Duration at this Address: From | No        | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Duration at this Address: To   | No        | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Duration at this City: From    | No        | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Duration at this City: To      | No        | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Primary Phone                  | No        | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Mobile Phone                   | No        | collateral.xlsx       | default                    | 6                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |

  Scenario Outline:ACAUTOCAS-2234: CollateralPage <Validity>  of <FieldName> with <InputType> validation in Address Details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_Sub_rowNum>
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Address>" and row <Collateral_Default_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<SectionName>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    @ImplementedBy-ayush.garg
    @Release2
    Examples:
      | Validity | FieldName      | InputType                        | Throws_NotThrows         | CollateralWB    | Collateral_Address | Collateral_Default_rowNum | Collateral_Default | Collateral_Sub_rowNum | SectionName     | ProductType   | ApplicationStage   | key | category | applicantType |
      | valid    | Plot Number    | positive digits                  | does not throw any error | collateral.xlsx | address_details    | 4                         | default            | 6                     | Address Details | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Plot Number    | characters                       | does not throw any error | collateral.xlsx | address_details    | 5                         | default            | 6                     | Address Details | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Plot Number    | both digits and characters       | does not throw any error | collateral.xlsx | address_details    | 6                         | default            | 6                     | Address Details | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Plot Number    | negative                         | does not throw any error | collateral.xlsx | address_details    | 7                         | default            | 6                     | Address Details | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Plot Number    | hyphen                           | does not throw any error | collateral.xlsx | address_details    | 8                         | default            | 6                     | Address Details | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Plot Number    | space                            | does not throw any error | collateral.xlsx | address_details    | 9                         | default            | 6                     | Address Details | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Valid    | Plot Number    | special characters except hyphen | does not throw any error | collateral.xlsx | address_details    | 10                        | default            | 6                     | Address Details | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Address Line 2 | positive digits                  | does not throw any error | collateral.xlsx | address_details    | 12                        | default            | 6                     | Address Details | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Address Line 2 | characters                       | does not throw any error | collateral.xlsx | address_details    | 13                        | default            | 6                     | Address Details | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Address Line 2 | both digits and characters       | does not throw any error | collateral.xlsx | address_details    | 14                        | default            | 6                     | Address Details | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Address Line 2 | negative                         | does not throw any error | collateral.xlsx | address_details    | 15                        | default            | 6                     | Address Details | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Address Line 2 | hyphen                           | does not throw any error | collateral.xlsx | address_details    | 16                        | default            | 6                     | Address Details | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Address Line 2 | space                            | does not throw any error | collateral.xlsx | address_details    | 17                        | default            | 6                     | Address Details | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Valid    | Address Line 2 | special characters except hyphen | does not throw any error | collateral.xlsx | address_details    | 18                        | default            | 6                     | Address Details | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Address Line 3 | positive digits                  | does not throw any error | collateral.xlsx | address_details    | 19                        | default            | 6                     | Address Details | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Address Line 3 | characters                       | does not throw any error | collateral.xlsx | address_details    | 20                        | default            | 6                     | Address Details | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Address Line 3 | both digits and characters       | does not throw any error | collateral.xlsx | address_details    | 21                        | default            | 6                     | Address Details | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Address Line 3 | negative                         | does not throw any error | collateral.xlsx | address_details    | 22                        | default            | 6                     | Address Details | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Address Line 3 | hyphen                           | does not throw any error | collateral.xlsx | address_details    | 23                        | default            | 6                     | Address Details | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Address Line 3 | space                            | does not throw any error | collateral.xlsx | address_details    | 24                        | default            | 6                     | Address Details | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Valid    | Address Line 3 | special characters except hyphen | does not throw any error | collateral.xlsx | address_details    | 25                        | default            | 6                     | Address Details | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @SkippedFormatValidation
  @NotImplementable
    #Land Address Field Format Validation
  Scenario: ACAUTOCAS-2235:  CollateralPage Agriculture Land field format validation in Address Details
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Land" and Sub Type "Agriculture Land"
    Then user should be able to see all fields of "<Address Details>" with proper format

  @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline: ACAUTOCAS-2236:  CollateralPage Land details label validation in Land Address for collateral Sub Type Agriculture Land
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_Sub_rowNum>
    And user selects collateral type along with collateral sub type
    When user opens address details tab of Agricultural Land
    Then user should be able to see "<FieldName>" field of Address Details with proper labels
    Examples:
      | FieldName       | CollateralWB    | Collateral_Default | Collateral_Sub_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Address Type    | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Country         | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Plot Number     | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Address Line 2  | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Address Line 3  | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | PinCode         | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Region          | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | City            | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | District        | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Taluka          | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Village         | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Landmark        | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Current Address | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Primary Phone   | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Mobile Phone    | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline:ACAUTOCAS-3181: User is able to see all fields of reason for new collateral Agriculture Land
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_Sub_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see field "<FieldName>" marked mandatory as "<Mandatory>"
    Examples:
      | FieldName          | Mandatory | CollateralWB    | Collateral_Default | Collateral_Sub_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Reason Code        | No        | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Reason Description | No        | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Remarks            | No        | collateral.xlsx | default            | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline: ACAUTOCAS-2234: CollateralPage remarks validation in reason section
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralInfoWB>" under sheet "<CollateralInfoWB_home>" and row <Collateral_Sub_rowNum>
    And user selects collateral type along with collateral sub type
    When user enters other details of land collateral
    And user reads data from the excel file "<CollateralInfoWB>" under sheet "<CollateralInfoWB_home>" and row <CollateralInfoWB_home_rowNum3>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    Examples:
      | FieldName | Throws_NotThrows         | CollateralInfoWB | CollateralInfoWB_home | CollateralInfoWB_home_rowNum3 | Collateral_Sub_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | remarks   | does not throw any error | collateral.xlsx  | default               | 238                           | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | remarks   | does not throw any error | collateral.xlsx  | default               | 239                           | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | remarks   | does not throw any error | collateral.xlsx  | default               | 240                           | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | remarks   | does not throw any error | collateral.xlsx  | default               | 241                           | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | remarks   | does not throw any error | collateral.xlsx  | default               | 242                           | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | remarks   | does not throw any error | collateral.xlsx  | default               | 243                           | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | remarks   | does not throw any error | collateral.xlsx  | default               | 244                           | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @SkippedFormatValidation
  @NotImplementable
#Reason Field Data Type Validation
  Scenario: ACAUTOCAS-2235: CollateralPage reason format validation in Land Address for collateral Sub Type Agriculture Land
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralInfoWB>" under sheet "<CollateralInfoWB_home>" and row <Collateral_Sub_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see all fields of "<Reason>" with proper format


  @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline: ACAUTOCAS-2236: CollateralPage reason label validation in Land Address for collateral Sub Type Agriculture Land
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralInfoWB>" under sheet "<CollateralInfoWB_home>" and row <Collateral_Sub_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see "<FieldName>" field of Reason with proper labels
    Examples:
      | FieldName          | CollateralInfoWB | CollateralInfoWB_home | Collateral_Sub_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Reason Code        | collateral.xlsx  | default               | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Remarks            | collateral.xlsx  | default               | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Reason Description | collateral.xlsx  | default               | 6                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
