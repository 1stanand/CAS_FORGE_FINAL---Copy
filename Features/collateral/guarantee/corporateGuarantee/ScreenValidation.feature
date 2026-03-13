@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-tushar.chauhan
@ReviewedByDEV
@ReviewedSecCollateral
@Conventional

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}

Feature: Corporate Guarantee Screen Validation

#  Pre-Requisites---
#  In this feature we will validate the screen layout when an Guarantee Corporate Guarantee is attached to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  @ImplementedBy-aryan.jain
    @Release
  Scenario Outline: ACAUTOCAS-3699: user selects collateral type as Guarantee
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user attempts to select a collateral type
    Then application should allow only the collateral type which is linked to the product
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-aryan.jain
    @Release
  Scenario Outline: ACAUTOCAS-3700: user chooses sub collateral as Corporate Guarantee
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then application should allow only the sub type which is linked to the product
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-aryan.jain
    @Release
  Scenario Outline: ACAUTOCAS-3701: CollateralPage entity validation for collateral type Guarantee and Sub Type Corporate Guarantee
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then User should be able to see "<SectionName>" section
    Examples:
      | SectionName              | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Collateral Details       | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Identification | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address        | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Reason                   | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-aryan.jain
    @Release
  Scenario Outline: ACAUTOCAS-3096: User is able to see all fields for new collateral Corporate Guarantee in Collateral Details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When goes to "<SectionName>" section
    Then user should be able to see field "<FieldName>" marked mandatory as "<Mandatory>"
    Examples:
      | SectionName        | FieldName             | Mandatory | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Collateral Details | Collateral Ref No     | No        | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Collateral Details | Description           | No        | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Collateral Details | Guarantee Date        | No        | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Collateral Details | Guarantee Expiry Date | No        | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Collateral Details | Guarantee Deed Number | No        | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Collateral Details | Guarantee Amount      | Yes       | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Collateral Details | Guarantor Name        | Yes       | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Collateral Details | Guarantee Type        | Yes       | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  Scenario Outline: ACAUTOCAS-3703: CollateralType Guarantee Collateral details <Validity> of <FieldName> with <InputType> validation for collateral Sub Type Corporate Guarantee
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<Type>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    @ImplementedBy-aryan.jain
    @Release
    Examples:
      | Validity | FieldName             | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | Type      |
      | valid    | Collateral Ref No     | positive digits                  | does not throw any error        | collateral.xlsx | default            | 30                        | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | valid    | Collateral Ref No     | characters                       | does not throw any error        | collateral.xlsx | default            | 31                        | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | valid    | Collateral Ref No     | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 32                        | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | valid    | Collateral Ref No     | negative                         | does not throw any error        | collateral.xlsx | default            | 33                        | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | valid    | Collateral Ref No     | hyphen                           | does not throw any error        | collateral.xlsx | default            | 34                        | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | valid    | Collateral Ref No     | space                            | does not throw any error        | collateral.xlsx | default            | 35                        | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | invalid  | Collateral Ref No     | special characters except hyphen | throws error with error message | collateral.xlsx | default            | 36                        | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | valid    | Description           | positive digits                  | does not throw any error        | collateral.xlsx | default            | 37                        | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | valid    | Description           | characters                       | does not throw any error        | collateral.xlsx | default            | 38                        | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | valid    | Description           | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 39                        | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | valid    | Description           | negative                         | does not throw any error        | collateral.xlsx | default            | 40                        | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | valid    | Description           | space                            | does not throw any error        | collateral.xlsx | default            | 41                        | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | valid    | Description           | special characters               | does not throw any error        | collateral.xlsx | default            | 42                        | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | valid    | Guarantee Deed Number | positive digits                  | does not throw any error        | collateral.xlsx | default            | 287                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | valid    | Guarantee Deed Number | characters                       | does not throw any error        | collateral.xlsx | default            | 288                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | valid    | Guarantee Deed Number | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 289                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | valid    | Guarantee Deed Number | negative                         | does not throw any error        | collateral.xlsx | default            | 290                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | valid    | Guarantee Deed Number | hyphen                           | does not throw any error        | collateral.xlsx | default            | 291                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | valid    | Guarantee Deed Number | space                            | does not throw any error        | collateral.xlsx | default            | 292                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | valid    | Guarantee Deed Number | special characters               | does not throw any error        | collateral.xlsx | default            | 293                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | valid    | Guarantee Amount      | positive digits                  | does not throw any error        | collateral.xlsx | default            | 638                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | invalid  | Guarantee Amount      | characters                       | throws error with error message | collateral.xlsx | default            | 639                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | invalid  | Guarantee Amount      | both digits and characters       | throws error with error message | collateral.xlsx | default            | 640                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | invalid  | Guarantee Amount      | negative                         | throws error with error message | collateral.xlsx | default            | 641                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | invalid  | Guarantee Amount      | hyphen                           | throws error with error message | collateral.xlsx | default            | 642                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | invalid  | Guarantee Amount      | space                            | throws error with error message | collateral.xlsx | default            | 643                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | invalid  | Guarantee Amount      | special characters except hyphen | throws error with error message | collateral.xlsx | default            | 644                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | valid    | Guarantor Name        | positive digits                  | does not throw any error        | collateral.xlsx | default            | 645                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | valid    | Guarantor Name        | characters                       | does not throw any error        | collateral.xlsx | default            | 646                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | valid    | Guarantor Name        | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 647                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | valid    | Guarantor Name        | negative                         | does not throw any error        | collateral.xlsx | default            | 648                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | valid    | Guarantor Name        | hyphen                           | does not throw any error        | collateral.xlsx | default            | 649                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | valid    | Guarantor Name        | space                            | does not throw any error        | collateral.xlsx | default            | 650                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | valid    | Guarantor Name        | special characters               | does not throw any error        | collateral.xlsx | default            | 651                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |


    @ImplementedBy-priyanshu.kashyap
    @Release
    Examples:
      | Validity | FieldName             | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | valid    | Guarantee Date        | valid date format   | does not throw any error        | collateral.xlsx | default            | 347                       | 683                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | invalid  | Guarantee Date        | invalid date format | throws error with error message | collateral.xlsx | default            | 347                       | 684                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Guarantee Date        | current date        | does not throw any error        | collateral.xlsx | default            | 347                       | 685                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Guarantee Date        | past date           | does not throw any error        | collateral.xlsx | default            | 347                       | 686                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Guarantee Date        | future date         | does not throw any error        | collateral.xlsx | default            | 347                       | 687                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | invalid  | Guarantee Date        | year less than 1942 | throws error with error message | collateral.xlsx | default            | 347                       | 688                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Guarantee Date        | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 347                       | 689                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | invalid  | Guarantee Date        | special characters  | throws error with error message | collateral.xlsx | default            | 347                       | 690                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Guarantee Expiry Date | valid date format   | does not throw any error        | collateral.xlsx | default            | 347                       | 683                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | invalid  | Guarantee Expiry Date | invalid date format | throws error with error message | collateral.xlsx | default            | 347                       | 684                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Guarantee Expiry Date | current date        | does not throw any error        | collateral.xlsx | default            | 347                       | 685                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Guarantee Expiry Date | past date           | does not throw any error        | collateral.xlsx | default            | 347                       | 686                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Guarantee Expiry Date | future date         | does not throw any error        | collateral.xlsx | default            | 347                       | 687                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | invalid  | Guarantee Expiry Date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 347                       | 688                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | valid    | Guarantee Expiry Date | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 347                       | 689                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | invalid  | Guarantee Expiry Date | special characters  | throws error with error message | collateral.xlsx | default            | 347                       | 690                       | <ProductType> | <ApplicationStage> |     |          | indiv         |


  @SkippedFormatValidation
  @NotImplementable
  Scenario: ACAUTOCAS-3704:  CollateralPage format validation for collateral Sub Type Corporate Guarantee
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Guarantee" and Sub Type "Corporate Guarantee"
    Then user should be able to see all fields with proper format

  @ImplementedBy-aryan.jain
    @Release
  Scenario Outline: ACAUTOCAS-3705: CollateralPage data type and labels for collateral Sub Type Corporate Guarantee
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see "<FieldName>" of "<SectionName>" with proper label in CollateralType Guarantee
    Examples:
      | FieldName             | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | SectionName        |
      | Collateral Ref No     | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral details |
      | Description(main)     | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral details |
      | Guarantee Date        | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral details |
      | Guarantee Expiry Date | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral details |
      | Guarantee Deed Number | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral details |
      | Guarantee Amount      | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral details |
      | Guarantor Name        | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral details |
      | Guarantee Type        | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral details |

  @ImplementedBy-aryan.jain
    @Release
  Scenario Outline: ACAUTOCAS-3097: User is able to see all fields for new collateral Corporate Guarantee in Guarantor Identification
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When goes to "<SectionName>" container
    Then user should be able to see field "<FieldName>" marked mandatory as "<Mandatory>"
    Examples:
      | SectionName              | FieldName             | Mandatory | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Guarantor Identification | Identification Type   | Yes       | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Identification | Identification No.    | Yes       | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Identification | Issue Date(guarantor) | No        | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Identification | Expiry Date           | No        | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Identification | Country of Issue      | Yes       | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  Scenario Outline: ACAUTOCAS-3706:  CollateralType Guarantee Guarantor Identification <Validity> Identification Number with <InputType> validation for collateral Sub Type Corporate Guarantee
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" container
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_guarantor_identification>" and row <Collateral_guarantor_identification_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<Type>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    @ImplementedBy-aryan.jain
    @Release
    Examples:
      | SectionName              | Validity | FieldName          | InputType                  | Throws_NotThrows         | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_guarantor_identification | Collateral_guarantor_identification_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | Type      |
      | Guarantor Identification | valid    | Identification No. | positive digits            | does not throw any error | collateral.xlsx | default            | 294                       | guarantor_identification            | 0                                          | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Identification | valid    | Identification No. | characters                 | does not throw any error | collateral.xlsx | default            | 295                       | guarantor_identification            | 1                                          | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Identification | valid    | Identification No. | both digits and characters | does not throw any error | collateral.xlsx | default            | 296                       | guarantor_identification            | 2                                          | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Identification | valid    | Identification No. | negative                   | does not throw any error | collateral.xlsx | default            | 297                       | guarantor_identification            | 3                                          | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Identification | valid    | Identification No. | hyphen                     | does not throw any error | collateral.xlsx | default            | 298                       | guarantor_identification            | 4                                          | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Identification | valid    | Identification No. | space                      | does not throw any error | collateral.xlsx | default            | 299                       | guarantor_identification            | 5                                          | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Identification | valid    | Identification No. | special characters         | does not throw any error | collateral.xlsx | default            | 300                       | guarantor_identification            | 6                                          | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |

    @ImplementedBy-priyanshu.kashyap
    @Release
    Examples:
      | SectionName              | Validity | FieldName   | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_guarantor_identification | Collateral_guarantor_identification_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | Type      |
      | Guarantor Identification | valid    | Issue Date  | valid date format   | does not throw any error        | collateral.xlsx | default            | 294                       | guarantor_identification            | 12                                         | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Identification | invalid  | Issue Date  | invalid date format | throws error with error message | collateral.xlsx | default            | 295                       | guarantor_identification            | 13                                         | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Identification | valid    | Issue Date  | current date        | does not throw any error        | collateral.xlsx | default            | 296                       | guarantor_identification            | 14                                         | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Identification | valid    | Issue Date  | past date           | does not throw any error        | collateral.xlsx | default            | 297                       | guarantor_identification            | 15                                         | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Identification | valid    | Issue Date  | future date         | does not throw any error        | collateral.xlsx | default            | 298                       | guarantor_identification            | 16                                         | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Identification | invalid  | Issue Date  | year less than 1942 | throws error with error message | collateral.xlsx | default            | 299                       | guarantor_identification            | 17                                         | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Identification | valid    | Issue Date  | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 300                       | guarantor_identification            | 18                                         | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Identification | invalid  | Issue Date  | special characters  | throws error with error message | collateral.xlsx | default            | 300                       | guarantor_identification            | 19                                         | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Identification | valid    | Expiry Date | valid date format   | does not throw any error        | collateral.xlsx | default            | 294                       | guarantor_identification            | 12                                         | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Identification | invalid  | Expiry Date | invalid date format | throws error with error message | collateral.xlsx | default            | 295                       | guarantor_identification            | 13                                         | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Identification | valid    | Expiry Date | current date        | does not throw any error        | collateral.xlsx | default            | 296                       | guarantor_identification            | 14                                         | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Identification | valid    | Expiry Date | past date           | does not throw any error        | collateral.xlsx | default            | 297                       | guarantor_identification            | 15                                         | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Identification | valid    | Expiry Date | future date         | does not throw any error        | collateral.xlsx | default            | 298                       | guarantor_identification            | 16                                         | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Identification | invalid  | Expiry Date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 299                       | guarantor_identification            | 17                                         | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Identification | valid    | Expiry Date | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 300                       | guarantor_identification            | 18                                         | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Identification | invalid  | Expiry Date | special characters  | throws error with error message | collateral.xlsx | default            | 300                       | guarantor_identification            | 19                                         | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |


  @SkippedFormatValidation
  @NotImplementable
  Scenario: ACAUTOCAS-3707:  "Guarantor Identification" format validation for collateral Sub Type Corporate Guarantee
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Guarantee" and Sub Type "Corporate Guarantee"
    And goes to "Guarantor Identification" section
    Then user should be able to see all fields with proper format

  @ImplementedBy-aryan.jain
    @Release
  Scenario Outline: ACAUTOCAS-3708:  "Guarantor Identification" data type and labels for collateral Sub Type Corporate Guarantee
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When goes to "<SectionName>" container
    Then user should be able to see "<FieldName>" of "<SubType>" with proper label in CollateralType Guarantee
    Examples:
      | SectionName              | FieldName             | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | SubType                  |
      | Guarantor Identification | Identification Type   | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantor Identification |
      | Guarantor Identification | Identification No.    | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantor Identification |
      | Guarantor Identification | Issue Date(guarantor) | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantor Identification |
      | Guarantor Identification | Expiry Date           | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantor Identification |
      | Guarantor Identification | Country of Issue      | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantor Identification |

  @ImplementedBy-aryan.jain
    @Release
  Scenario Outline: ACAUTOCAS-3098: User is able to see all fields for new collateral Corporate Guarantee in Guarantor Address
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When goes to "<SectionName>" container
    Then user should be able to see "<FieldName>" field marked as "<Mandatory>" in CollateralType Guarantee
    Examples:
      | SectionName       | FieldName                      | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Guarantor Address | Address Type                   | mandatory     | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Full Address                   | non mandatory | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Country                        | mandatory     | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Plot Number                    | mandatory     | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Address Line 2                 | non mandatory | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Address Line 3                 | non mandatory | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | PinCode                        | mandatory     | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Region                         | non mandatory | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | State                          | mandatory     | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | City                           | non mandatory | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | District                       | non mandatory | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Taluka                         | non mandatory | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Village                        | non mandatory | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Duration at this Address: From | non mandatory | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Duration at this Address: To   | non mandatory | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Duration at this City: From    | non mandatory | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Duration at this City: To      | non mandatory | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Primary Phone                  | non mandatory | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Mobile Phone                   | non mandatory | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Is address verified            | non mandatory | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  Scenario Outline: ACAUTOCAS-3709:  CollateralType Guarantee Guarantor Address <Validity> Full Address with <InputType> validation for collateral Sub Type Corporate Guarantee
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" container
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_guarantor_address>" and row <Collateral_guarantor_address_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<Type>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    @ImplementedBy-aryan.jain
    @Release
    Examples:
      | SectionName       | Validity | FieldName                      | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_guarantor_address | Collateral_guarantor_address_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | Type      |
      | Guarantor Address | valid    | Full Address                   | positive digits                  | does not throw any error        | collateral.xlsx | default            | 294                       | guarantor_address            | 0                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Full Address                   | characters                       | does not throw any error        | collateral.xlsx | default            | 295                       | guarantor_address            | 1                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Full Address                   | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 296                       | guarantor_address            | 2                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Full Address                   | negative                         | does not throw any error        | collateral.xlsx | default            | 297                       | guarantor_address            | 3                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Full Address                   | hyphen                           | does not throw any error        | collateral.xlsx | default            | 298                       | guarantor_address            | 4                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Full Address                   | space                            | does not throw any error        | collateral.xlsx | default            | 299                       | guarantor_address            | 5                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | Full Address                   | special characters except hyphen | does not throw any error        | collateral.xlsx | default            | 300                       | guarantor_address            | 6                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Address Line 2                 | positive digits                  | does not throw any error        | collateral.xlsx | default            | 294                       | guarantor_address            | 0                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Address Line 2                 | characters                       | does not throw any error        | collateral.xlsx | default            | 295                       | guarantor_address            | 1                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Address Line 2                 | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 296                       | guarantor_address            | 2                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Address Line 2                 | negative                         | does not throw any error        | collateral.xlsx | default            | 297                       | guarantor_address            | 3                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Address Line 2                 | hyphen                           | does not throw any error        | collateral.xlsx | default            | 298                       | guarantor_address            | 4                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Address Line 2                 | space                            | does not throw any error        | collateral.xlsx | default            | 299                       | guarantor_address            | 5                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | Address Line 2                 | special characters except hyphen | does not throw any error        | collateral.xlsx | default            | 300                       | guarantor_address            | 6                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Address Line 3                 | positive digits                  | does not throw any error        | collateral.xlsx | default            | 294                       | guarantor_address            | 0                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Address Line 3                 | characters                       | does not throw any error        | collateral.xlsx | default            | 295                       | guarantor_address            | 1                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Address Line 3                 | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 296                       | guarantor_address            | 2                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Address Line 3                 | negative                         | does not throw any error        | collateral.xlsx | default            | 297                       | guarantor_address            | 3                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Address Line 3                 | hyphen                           | does not throw any error        | collateral.xlsx | default            | 298                       | guarantor_address            | 4                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Address Line 3                 | space                            | does not throw any error        | collateral.xlsx | default            | 299                       | guarantor_address            | 5                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | Address Line 3                 | special characters except hyphen | does not throw any error        | collateral.xlsx | default            | 300                       | guarantor_address            | 6                                   | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Mobile Phone Guarantor Address | positive digits                  | does not throw any error        | collateral.xlsx | default            | 294                       | guarantor_address            | 11                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | Mobile Phone Guarantor Address | characters                       | throws error with error message | collateral.xlsx | default            | 295                       | guarantor_address            | 12                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | Mobile Phone Guarantor Address | both digits and characters       | throws error with error message | collateral.xlsx | default            | 296                       | guarantor_address            | 13                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | Mobile Phone Guarantor Address | negative                         | throws error with error message | collateral.xlsx | default            | 297                       | guarantor_address            | 14                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | Mobile Phone Guarantor Address | hyphen                           | throws error with error message | collateral.xlsx | default            | 298                       | guarantor_address            | 15                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | Mobile Phone Guarantor Address | space                            | throws error with error message | collateral.xlsx | default            | 299                       | guarantor_address            | 16                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | Mobile Phone Guarantor Address | special characters except hyphen | throws error with error message | collateral.xlsx | default            | 300                       | guarantor_address            | 17                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | valid    | STD Guarantor Address          | positive digits                  | does not throw any error        | collateral.xlsx | default            | 294                       | guarantor_address            | 18                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | STD Guarantor Address          | characters                       | throws error with error message | collateral.xlsx | default            | 295                       | guarantor_address            | 19                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | STD Guarantor Address          | both digits and characters       | throws error with error message | collateral.xlsx | default            | 296                       | guarantor_address            | 20                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | STD Guarantor Address          | negative                         | throws error with error message | collateral.xlsx | default            | 297                       | guarantor_address            | 21                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | STD Guarantor Address          | hyphen                           | throws error with error message | collateral.xlsx | default            | 298                       | guarantor_address            | 22                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | STD Guarantor Address          | space                            | throws error with error message | collateral.xlsx | default            | 299                       | guarantor_address            | 23                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | STD Guarantor Address          | special characters except hyphen | throws error with error message | collateral.xlsx | default            | 300                       | guarantor_address            | 24                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | valid    | EXTN Guarantor Address         | positive digits                  | does not throw any error        | collateral.xlsx | default            | 294                       | guarantor_address            | 25                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | EXTN Guarantor Address         | characters                       | throws error with error message | collateral.xlsx | default            | 295                       | guarantor_address            | 26                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | EXTN Guarantor Address         | both digits and characters       | throws error with error message | collateral.xlsx | default            | 296                       | guarantor_address            | 27                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | EXTN Guarantor Address         | negative                         | throws error with error message | collateral.xlsx | default            | 297                       | guarantor_address            | 28                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | EXTN Guarantor Address         | hyphen                           | throws error with error message | collateral.xlsx | default            | 298                       | guarantor_address            | 29                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | EXTN Guarantor Address         | space                            | throws error with error message | collateral.xlsx | default            | 299                       | guarantor_address            | 30                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | EXTN Guarantor Address         | special characters except hyphen | throws error with error message | collateral.xlsx | default            | 300                       | guarantor_address            | 31                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | valid    | NUMBER Guarantor Address       | positive digits                  | does not throw any error        | collateral.xlsx | default            | 294                       | guarantor_address            | 32                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | NUMBER Guarantor Address       | characters                       | throws error with error message | collateral.xlsx | default            | 295                       | guarantor_address            | 33                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | NUMBER Guarantor Address       | both digits and characters       | throws error with error message | collateral.xlsx | default            | 296                       | guarantor_address            | 34                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | NUMBER Guarantor Address       | negative                         | throws error with error message | collateral.xlsx | default            | 297                       | guarantor_address            | 35                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | NUMBER Guarantor Address       | hyphen                           | throws error with error message | collateral.xlsx | default            | 298                       | guarantor_address            | 36                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | NUMBER Guarantor Address       | space                            | throws error with error message | collateral.xlsx | default            | 299                       | guarantor_address            | 37                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | NUMBER Guarantor Address       | special characters except hyphen | throws error with error message | collateral.xlsx | default            | 300                       | guarantor_address            | 38                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | Guarantee |

    @ImplementedBy-priyanshu.kashyap
    @Release
    Examples:
      | SectionName       | Validity | FieldName                     | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_guarantor_address | Collateral_guarantor_address_rowNum | ProductType   | ApplicationStage   | key                | category | applicantType | Type      |
      | Guarantor Address | valid    | Flat/Plot Number              | positive digits            | does not throw any error        | collateral.xls  | default            | 295                       | guarantor_address            | 50                                  | <ProductType> | <ApplicationStage> | <ApplicationStage> |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Flat/Plot Number              | negative                   | throws error with error message | collateral.xlsx | default            | 295                       | guarantor_address            | 51                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Flat/Plot Number              | zero                       | does not throw any error        | collateral.xlsx | default            | 296                       | guarantor_address            | 52                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Flat/Plot Number              | more than 100              | does not throw any error        | collateral.xlsx | default            | 297                       | guarantor_address            | 53                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Flat/Plot Number              | more than 2 decimal places | does not throw any error        | collateral.xlsx | default            | 298                       | guarantor_address            | 54                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Flat/Plot Number              | characters                 | does not throw any error        | collateral.xlsx | default            | 299                       | guarantor_address            | 55                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Flat/Plot Number              | both digits and characters | throws error with error message | collateral.xlsx | default            | 300                       | guarantor_address            | 56                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Flat/Plot Number              | space                      | throws error with error message | collateral.xlsx | default            | 300                       | guarantor_address            | 57                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Flat/Plot Number              | special characters         | throws error with error message | collateral.xlsx | default            | 300                       | guarantor_address            | 58                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Duration at this Address From | valid date format          | does not throw any error        | collateral.xlsx | default            | 294                       | guarantor_address            | 59                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | Duration at this Address From | invalid date format        | throws error with error message | collateral.xlsx | default            | 295                       | guarantor_address            | 60                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Duration at this Address From | current date               | throws error with error message | collateral.xlsx | default            | 296                       | guarantor_address            | 61                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Duration at this Address From | past date                  | throws error with error message | collateral.xlsx | default            | 297                       | guarantor_address            | 62                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Duration at this Address From | future date                | throws error with error message | collateral.xlsx | default            | 298                       | guarantor_address            | 63                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | Duration at this Address From | year less than 1942        | throws error with error message | collateral.xlsx | default            | 299                       | guarantor_address            | 64                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Duration at this Address From | year equal to 1942         | throws error with error message | collateral.xlsx | default            | 300                       | guarantor_address            | 65                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | Duration at this Address From | special characters         | does not throw any error        | collateral.xlsx | default            | 294                       | guarantor_address            | 66                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Duration at this Address To   | valid date format          | does not throw any error        | collateral.xlsx | default            | 294                       | guarantor_address            | 59                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | Duration at this Address To   | invalid date format        | throws error with error message | collateral.xlsx | default            | 295                       | guarantor_address            | 60                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Duration at this Address To   | current date               | throws error with error message | collateral.xlsx | default            | 296                       | guarantor_address            | 61                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Duration at this Address To   | past date                  | throws error with error message | collateral.xlsx | default            | 297                       | guarantor_address            | 62                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Duration at this Address To   | future date                | throws error with error message | collateral.xlsx | default            | 298                       | guarantor_address            | 63                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | Duration at this Address To   | year less than 1942        | throws error with error message | collateral.xlsx | default            | 299                       | guarantor_address            | 64                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Duration at this Address To   | year equal to 1942         | throws error with error message | collateral.xlsx | default            | 300                       | guarantor_address            | 65                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | Duration at this Address To   | special characters         | does not throw any error        | collateral.xlsx | default            | 294                       | guarantor_address            | 66                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Duration at this City From    | valid date format          | does not throw any error        | collateral.xlsx | default            | 294                       | guarantor_address            | 59                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | Duration at this City From    | invalid date format        | throws error with error message | collateral.xlsx | default            | 295                       | guarantor_address            | 60                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Duration at this City From    | current date               | throws error with error message | collateral.xlsx | default            | 296                       | guarantor_address            | 61                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Duration at this City From    | past date                  | throws error with error message | collateral.xlsx | default            | 297                       | guarantor_address            | 62                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Duration at this City From    | future date                | throws error with error message | collateral.xlsx | default            | 298                       | guarantor_address            | 63                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | Duration at this City From    | year less than 1942        | throws error with error message | collateral.xlsx | default            | 299                       | guarantor_address            | 64                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Duration at this City From    | year equal to 1942         | throws error with error message | collateral.xlsx | default            | 300                       | guarantor_address            | 65                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | Duration at this City From    | special characters         | does not throw any error        | collateral.xlsx | default            | 294                       | guarantor_address            | 66                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Duration at this City To      | valid date format          | does not throw any error        | collateral.xlsx | default            | 294                       | guarantor_address            | 59                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | Duration at this City To      | invalid date format        | throws error with error message | collateral.xlsx | default            | 295                       | guarantor_address            | 60                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Duration at this City To      | current date               | throws error with error message | collateral.xlsx | default            | 296                       | guarantor_address            | 61                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Duration at this City To      | past date                  | throws error with error message | collateral.xlsx | default            | 297                       | guarantor_address            | 62                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Duration at this City To      | future date                | throws error with error message | collateral.xlsx | default            | 298                       | guarantor_address            | 63                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | Duration at this City To      | year less than 1942        | throws error with error message | collateral.xlsx | default            | 299                       | guarantor_address            | 64                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | valid    | Duration at this City To      | year equal to 1942         | throws error with error message | collateral.xlsx | default            | 300                       | guarantor_address            | 65                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |
      | Guarantor Address | invalid  | Duration at this City To      | special characters         | does not throw any error        | collateral.xlsx | default            | 294                       | guarantor_address            | 66                                  | <ProductType> | <ApplicationStage> |                    |          | indiv         | Guarantee |


  @SkippedFormatValidation
  @NotImplementable
  Scenario: ACAUTOCAS-3710:  "Guarantor Address" format validation for collateral Sub Type Corporate Guarantee
    When user opens an application at "DDE" stage from application grid
    And user adds new collateral to the application
    And user adds a new collateral type as "Guarantee" and Sub Type "Corporate Guarantee"
    And goes to "Guarantor Address" section
    Then user should be able to see all fields with proper format

  @ImplementedBy-aryan.jain
    @Release
  Scenario Outline: ACAUTOCAS-3711: "Guarantor Address" data type and labels for collateral Sub Type Corporate Guarantee
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When goes to "<SectionName>" container
    Then user should be able to see "<FieldName>" of "<SectionName>" with proper label in CollateralType Guarantee
    Examples:
      | SectionName       | FieldName                      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Guarantor Address | Address Type                   | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Full Address                   | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Country                        | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Plot Number                    | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Address Line 2                 | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Address Line 3                 | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | PinCode                        | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Region                         | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | State                          | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | City                           | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | District                       | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Taluka                         | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Village                        | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Duration at this Address: From | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Duration at this Address: To   | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Duration at this City: From    | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Duration at this City: To      | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Primary Phone                  | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Mobile Phone                   | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Guarantor Address | Is address verified            | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

