@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedByDEV
@ReviewedSecCollateral
@Conventional

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
# ${CollateralSubType:["Mortgage Guarantee"]}
Feature: Mortgage Guarantee Screen Validation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @ImplementedBy-tushar.chauhan
    @Release
     #FeatureID-ACAUTOCAS-8448
  Scenario Outline: ACAUTOCAS-3716:  user selects collateral type as Guarantee of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_Default_rowNum>
    When user attempts to select a collateral type
    Then application should allow only the type which is linked to the product

    Examples:
      | CollateralWB    | Collateral_Default | Collateral_Default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 252                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-tushar.chauhan
    @Release
     #FeatureID-ACAUTOCAS-8448
  Scenario Outline: ACAUTOCAS-3717:  user chooses sub collateral as Mortgage Guarantee of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_Default_rowNum>
    When user selects collateral type along with collateral sub type
    Then application should allow only subtype in case it is linked to the product

    Examples:
      | CollateralWB    | Collateral_Default | Collateral_Default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 252                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-tushar.chauhan
    @Release
     #FeatureID-ACAUTOCAS-8448
  Scenario Outline: ACAUTOCAS-3718:  CollateralPage entity validation for collateral type Guarantee and Sub Type Mortgage Guarantee of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_Default_rowNum>
    When user selects collateral type along with collateral sub type
    Then User should be able to see "Collateral Details" section
    Examples:
      | CollateralWB    | Collateral_Default | Collateral_Default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 252                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-tushar.chauhan
    @Release
     #FeatureID-ACAUTOCAS-8448
  Scenario Outline: ACAUTOCAS-3719:  CollateralPage entity validation for collateral type Guarantee and Sub Type Corporate Guarantee of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_Default_rowNum>
    When user selects collateral type along with collateral sub type
    Then User should be able to see "Reason" section
    Examples:
      | CollateralWB    | Collateral_Default | Collateral_Default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 252                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-tushar.chauhan
    @Release
     #FeatureID-ACAUTOCAS-8448
  Scenario Outline: ACAUTOCAS-3720:  CollateralPage entity validation 2 for collateral Sub Type Corporate Guarantee of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_Default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see the "dedupe" option
    Examples:
      | CollateralWB    | Collateral_Default | Collateral_Default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 252                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-tushar.chauhan
    @Release
     #FeatureID-ACAUTOCAS-8448
  Scenario Outline: ACAUTOCAS-3106:  User is able to see all fields for new collateral Mortgage Guarantee in Guarantee Details of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_Default_rowNum>
    And user selects collateral type along with collateral sub type
    When goes to "<SectionName>" section
    Then user should be able to see field "<FieldName>" marked mandatory as "<Mandatory>"
    Examples:
      | SectionName        | FieldName                             | Mandatory | CollateralWB    | Collateral_Default | Collateral_Default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Collateral Details | Collateral Ref No                     | No        | collateral.xlsx | default            | 252                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Collateral Details | Description                           | No        | collateral.xlsx | default            | 252                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Collateral Details | Collateral Value                      | No        | collateral.xlsx | default            | 252                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Collateral Details | Mortgage Guarantee Company Code       | Yes       | collateral.xlsx | default            | 252                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Collateral Details | Mortgage Guarantee Company Percentage | Yes       | collateral.xlsx | default            | 252                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Collateral Details | Mortgage Guarantee Email ID           | No        | collateral.xlsx | default            | 252                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-tushar.chauhan
    @Release
     #FeatureID-ACAUTOCAS-8448
  Scenario Outline: ACAUTOCAS-3721: CollateralPage Guarantee details <Validity> Collateral Ref No with <InputType> validation for collateral Sub Type Mortgage Guarantee of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_Default_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<CollateralSubType>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" "<ErrorMessage>" in "<CollateralSubType>" in collateral details
    Examples:
      | Validity | FieldName         | InputType                        | Throws_NotThrows                | ErrorMessage                                                                    | CollateralWB    | Collateral_Default | Collateral_Default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | valid    | Collateral Ref No | positive digits                  | does not throw any error        |                                                                                 | collateral.xlsx | default            | 301                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Collateral Ref No | characters                       | does not throw any error        |                                                                                 | collateral.xlsx | default            | 302                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Collateral Ref No | both digits and characters       | does not throw any error        |                                                                                 | collateral.xlsx | default            | 303                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Collateral Ref No | negative                         | does not throw any error        |                                                                                 | collateral.xlsx | default            | 304                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Collateral Ref No | hyphen                           | does not throw any error        |                                                                                 | collateral.xlsx | default            | 305                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Collateral Ref No | space                            | does not throw any error        |                                                                                 | collateral.xlsx | default            | 306                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Collateral Ref No | special characters except hyphen | throws error with error message | Only alphanumeric characters, hyphen and spaces between characters are allowed. | collateral.xlsx | default            | 307                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-tushar.chauhan
    @Release
    #FeatureID-ACAUTOCAS-8448,ACAUTOCAS-2
    @Release
Scenario Outline: ACAUTOCAS-16829: CollateralPage Guarantee details <Validity> Description with <InputType> validation for collateral Sub Type Mortgage Guarantee of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_Default_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<CollateralSubType>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" "<ErrorMessage>" in "<CollateralSubType>" in collateral details

    Examples:
      | Validity | FieldName   | InputType                  | Throws_NotThrows         | ErrorMessage | CollateralWB    | Collateral_Default | Collateral_Default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | valid    | Description | positive digits            | does not throw any error |              | collateral.xlsx | default            | 308                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Description | characters                 | does not throw any error |              | collateral.xlsx | default            | 309                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Description | both digits and characters | does not throw any error |              | collateral.xlsx | default            | 310                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Description | negative                   | does not throw any error |              | collateral.xlsx | default            | 311                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Description | space                      | does not throw any error |              | collateral.xlsx | default            | 312                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Description | special characters         | does not throw any error |              | collateral.xlsx | default            | 313                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-tushar.chauhan
    @Release
    #FeatureID-ACAUTOCAS-8448,ACAUTOCAS-2
    @Release
Scenario Outline: ACAUTOCAS-16830: CollateralPage Guarantee details <Validity> Collateral Value with <InputType> validation for collateral Sub Type Mortgage Guarantee of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_Default_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<CollateralSubType>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" "<ErrorMessage>" in "<CollateralSubType>" in collateral details

    Examples:
      | Validity | FieldName        | InputType                  | Throws_NotThrows                | ErrorMessage                                                        | CollateralWB    | Collateral_Default | Collateral_Default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | valid    | Collateral Value | valid value                | does not throw any error        |                                                                     | collateral.xlsx | default            | 260                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Collateral Value | up to 18 digits            | does not throw any error        |                                                                     | collateral.xlsx | default            | 261                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Collateral Value | more than 18 digits        | throws error with error message | Only positive values and Upto 18 digits are allowed before decimal. | collateral.xlsx | default            | 262                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Collateral Value | negative value             | throws error with error message | Only positive values and Upto 18 digits are allowed before decimal. | collateral.xlsx | default            | 263                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Collateral Value | both digits and characters | throws error with error message | Invalid Amount.                                                     | collateral.xlsx | default            | 264                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Collateral Value | special characters         | throws error with error message | Invalid Amount.                                                     | collateral.xlsx | default            | 265                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Collateral Value | space                      | throws error with error message | Invalid Amount.                                                     | collateral.xlsx | default            | 266                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Collateral Value | paise format               | does not throw any error        |                                                                     | collateral.xlsx | default            | 267                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Collateral Value | zero value                 | does not throw any error        |                                                                     | collateral.xlsx | default            | 268                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-tushar.chauhan
    @Release
    #FeatureID-ACAUTOCAS-8448,ACAUTOCAS-2
    @Release
Scenario Outline: ACAUTOCAS-16831: CollateralPage Guarantee details <Validity> Mortgage Guarantee Company Percentage with <InputType> validation for collateral Sub Type Mortgage Guarantee of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_Default_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<CollateralSubType>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" "<ErrorMessage>" in "<CollateralSubType>" in collateral details
    Examples:
      | Validity | FieldName                             | InputType                  | Throws_NotThrows         | ErrorMessage | CollateralWB    | Collateral_Default | Collateral_Default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | valid    | Mortgage Guarantee Company Percentage | positive digits            | does not throw any error |              | collateral.xlsx | default            | 269                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Mortgage Guarantee Company Percentage | characters                 | does not throw any error |              | collateral.xlsx | default            | 270                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Mortgage Guarantee Company Percentage | both digits and characters | does not throw any error |              | collateral.xlsx | default            | 271                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Mortgage Guarantee Company Percentage | negative                   | does not throw any error |              | collateral.xlsx | default            | 272                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Mortgage Guarantee Company Percentage | space                      | does not throw any error |              | collateral.xlsx | default            | 273                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Mortgage Guarantee Company Percentage | special characters         | does not throw any error |              | collateral.xlsx | default            | 274                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-tushar.chauhan
    @Release
    #FeatureID-ACAUTOCAS-8448,ACAUTOCAS-2
    @Release
Scenario Outline: ACAUTOCAS-16832: CollateralPage Guarantee details <Validity> Mortgage Guarantee Email ID <InputType> validation for collateral Sub Type Mortgage Guarantee of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_Default_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<CollateralSubType>" in collateral page
    Then Mortgage Guarantee Email ID field "<Throws_NotThrows>" "<ErrorMessage>" in "<CollateralSubType>" in collateral details

    Examples:
      | Validity | FieldName                   | InputType                       | Throws_NotThrows                | ErrorMessage                         | CollateralWB    | Collateral_Default | Collateral_Default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | valid    | Mortgage Guarantee Email ID | with valid                      | does not throw any error        |                                      | collateral.xlsx | default            | 275                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Mortgage Guarantee Email ID | without .com                    | throws error with error message | Please provide a valid email address | collateral.xlsx | default            | 276                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Mortgage Guarantee Email ID | with only characters            | does not throw any error        |                                      | collateral.xlsx | default            | 277                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Mortgage Guarantee Email ID | with both digits and characters | does not throw any error        |                                      | collateral.xlsx | default            | 278                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Mortgage Guarantee Email ID | without @                       | throws error with error message | Please provide a valid email address | collateral.xlsx | default            | 279                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Mortgage Guarantee Email ID | with underscore                 | does not throw any error        |                                      | collateral.xlsx | default            | 280                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Mortgage Guarantee Email ID | with hyphen                     | does not throw any error        |                                      | collateral.xlsx | default            | 281                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Mortgage Guarantee Email ID | with special characters         | throws error with error message | Please provide a valid email address | collateral.xlsx | default            | 282                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @SkippedFormatValidation
     #FeatureID-ACAUTOCAS-8448
  Scenario: ACAUTOCAS-3722:  CollateralPage format validation for collateral Sub Type Mortgage Guarantee
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Guarantee" and Sub Type "Mortgage Guarantee"
    Then user should be able to see all fields with proper format

  @ImplementedBy-tushar.chauhan
    @Release
     #FeatureID-ACAUTOCAS-8448
  Scenario Outline: ACAUTOCAS-3723:  CollateralPage labels for collateral Sub Type Mortgage Guarantee of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_Default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see "<FieldName>" of "<CollateralSubType>" with proper labels
    Examples:
      | FieldName                             | CollateralWB    | Collateral_Default | Collateral_Default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | Collateral Ref No                     | collateral.xlsx | default            | 252                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Description                           | collateral.xlsx | default            | 252                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Collateral Value                      | collateral.xlsx | default            | 252                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Mortgage Guarantee Company Code       | collateral.xlsx | default            | 252                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Mortgage Guarantee Company Percentage | collateral.xlsx | default            | 252                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Mortgage Guarantee Email ID           | collateral.xlsx | default            | 252                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-tushar.chauhan
    @Release
     #FeatureID-ACAUTOCAS-8448
  Scenario Outline: ACAUTOCAS-3107:  User is able to see all fields in reason details for new collateral Mortgage Guarantee of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_Default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see field "<FieldName>" marked mandatory as "<Mandatory>"
    Examples:
      | FieldName          | Mandatory | CollateralWB    | Collateral_Default | Collateral_Default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Reason Code        | No        | collateral.xlsx | default            | 252                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Reason Description | No        | collateral.xlsx | default            | 252                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Remarks            | No        | collateral.xlsx | default            | 252                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-priyanshu.kashyap
    @Sanity
    @Release3
     #FeatureID-ACAUTOCAS-8448
  Scenario Outline: ACAUTOCAS-3724:  CollateralPage Reason details data type validation for Mortgage Guarantee
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row 252
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the data
    And user opens Collateral Page for adding new collateral
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    Examples:
      | Validity | FieldName               | InputType                        | Throws_NotThrows         | CollateralWB    | Collateral_default | Collateral_default_rowNum | ApplicationStage   | applicantType | category | key | ProductType   |
      | valid    | Remarks(Reason Details) | positive digits                  | does not throw any error | collateral.xlsx | default            | 718                       | <ApplicationStage> | indiv         |          |     | <ProductType> |
      | valid    | Remarks(Reason Details) | characters                       | does not throw any error | collateral.xlsx | default            | 719                       | <ApplicationStage> | indiv         |          |     | <ProductType> |
      | valid    | Remarks(Reason Details) | both digits and characters       | does not throw any error | collateral.xlsx | default            | 720                       | <ApplicationStage> | indiv         |          |     | <ProductType> |
      | valid    | Remarks(Reason Details) | negative                         | does not throw any error | collateral.xlsx | default            | 721                       | <ApplicationStage> | indiv         |          |     | <ProductType> |
      | valid    | Remarks(Reason Details) | hyphen                           | does not throw any error | collateral.xlsx | default            | 722                       | <ApplicationStage> | indiv         |          |     | <ProductType> |
      | valid    | Remarks(Reason Details) | space                            | does not throw any error | collateral.xlsx | default            | 723                       | <ApplicationStage> | indiv         |          |     | <ProductType> |
      | valid    | Remarks(Reason Details) | special characters except hyphen | does not throw any error | collateral.xlsx | default            | 724                       | <ApplicationStage> | indiv         |          |     | <ProductType> |

  @SkippedFormatValidation
  @NotImplementable
     #FeatureID-ACAUTOCAS-8448
  Scenario: ACAUTOCAS-3725:  CollateralPage Reason details field format validation for collateral Sub Type Mortgage Guarantee
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Guarantee" and Sub Type "Mortgage Guarantee"
    Then user should be able to see all fields of "<Reason details>" with proper format


  @ImplementedBy-priyanshu.kashyap
    @Release
     #FeatureID-ACAUTOCAS-8448
  Scenario Outline: ACAUTOCAS-3726:  CollateralPage Reason details field labels for Mortgage Guarantee
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user closes duplicate check result box after checking the duplicates
    Then user should be able to see all fields of "<Reason details>" with proper labels
    Examples:
      | CollateralWB    | Reason details     | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | Reason Code        | default            | 252                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | Reason Description | default            | 252                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | Remarks            | default            | 252                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
