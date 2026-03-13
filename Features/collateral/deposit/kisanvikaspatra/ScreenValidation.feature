@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@Reconciled


#${ApplicantType:["indiv"]}
Feature: Kisan Vikas Patra Screen Validation

#  Pre-Requisites---
#  In this feature we will validate the screen layout when an Deposit Kisan Vikas Patra is attached to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-3670: user chooses sub collateral as Kisan Vikas Patra
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then application should allow only the collateral type which is linked to the product

    @ImplementedBy-aman.verma
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-3042:  User is able to see all entities for new collateral Kisan Vikas Patra
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then User should be able to see "<SectionName>" on the screen

    @ImplementedBy-aman.verma
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | SectionName        | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Collateral Details | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Reason             | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | SectionName        | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | Collateral Details | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Reason             | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | SectionName        | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Collateral Details | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Reason             | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  Scenario Outline: ACAUTOCAS-3043:  User is able to see all fields for new collateral Kisan Vikas Patra
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see field "<FieldName>" marked mandatory as "<Mandatory>"

    @ImplementedBy-aman.verma
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName         | Mandatory | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Collateral Ref No | No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Description       | No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Name Of Holder    | Yes       | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Name Of Holder 2  | No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Name Of Holder 3  | No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Deposit No        | Yes       | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Deposit Amount    | Yes       | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Amount   | Yes       | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Issue Date2       | Yes       | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Date2    | Yes       | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Face Value        | No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Accrued Value     | No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Value    | Yes       | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Remarks           | No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName         | Mandatory | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | Collateral Ref No | No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Description       | No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Name Of Holder    | Yes       | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Name Of Holder 2  | No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Name Of Holder 3  | No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Deposit No        | Yes       | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Deposit Amount    | Yes       | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Maturity Amount   | Yes       | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Issue Date2       | Yes       | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Maturity Date2    | Yes       | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Face Value        | No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Accrued Value     | No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Maturity Value    | Yes       | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Remarks           | No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName         | Mandatory | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Collateral Ref No | No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Description       | No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Name Of Holder    | Yes       | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Name Of Holder 2  | No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Name Of Holder 3  | No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Deposit No        | Yes       | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Deposit Amount    | Yes       | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Amount   | Yes       | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Issue Date2       | Yes       | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Date2    | Yes       | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Face Value        | No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Accrued Value     | No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Value    | Yes       | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Remarks           | No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  Scenario Outline:ACAUTOCAS-3671: User is able to see only below fields for new collateral Kisan Vikas Patra
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see all fields of "<FieldName>" with proper labels in Collateral Details

    @ImplementedBy-aman.verma
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName         | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Collateral Ref No | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Description       | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Name Of Holder    | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Name of Holder 2  | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Name of Holder 3  | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Deposit No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Deposit Amount    | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Amount   | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Issue Date        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Date     | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Face Value        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Accrued Value     | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Value    | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Remarks           | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName         | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | Collateral Ref No | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Description       | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Name Of Holder    | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Name of Holder 2  | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Name of Holder 3  | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Deposit No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Deposit Amount    | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Maturity Amount   | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Issue Date        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Maturity Date     | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Face Value        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Accrued Value     | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Maturity Value    | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Remarks           | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName         | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Collateral Ref No | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Description       | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Name Of Holder    | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Name of Holder 2  | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Name of Holder 3  | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Deposit No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Deposit Amount    | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Amount   | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Issue Date        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Date     | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Face Value        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Accrued Value     | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Value    | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Remarks           | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  Scenario Outline: ACAUTOCAS-3672:  CollateralPage details <Validity> Collateral Ref No with <InputType> validation for collateral Sub Type Kisan Vikas Patra
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisanVikasPatra>" and row <Collateral_kisanVikasPatra_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details

    @ImplementedBy-aditya.tomar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | Validity | FieldName         | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Collateral Ref No | kisan_vikas_patra          | 90                                | positive digits                  | does not throw any error        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No | kisan_vikas_patra          | 91                                | characters                       | does not throw any error        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No | kisan_vikas_patra          | 92                                | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No | kisan_vikas_patra          | 93                                | negative                         | does not throw any error        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No | kisan_vikas_patra          | 94                                | hyphen                           | does not throw any error        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No | kisan_vikas_patra          | 95                                | space                            | does not throw any error        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Collateral Ref No | kisan_vikas_patra          | 96                                | special characters except hyphen | throws error with error message | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName         | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | valid    | Collateral Ref No | kisan_vikas_patra          | 90                                | positive digits                  | does not throw any error        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Collateral Ref No | kisan_vikas_patra          | 91                                | characters                       | does not throw any error        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Collateral Ref No | kisan_vikas_patra          | 92                                | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Collateral Ref No | kisan_vikas_patra          | 93                                | negative                         | does not throw any error        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Collateral Ref No | kisan_vikas_patra          | 94                                | hyphen                           | does not throw any error        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Collateral Ref No | kisan_vikas_patra          | 95                                | space                            | does not throw any error        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Collateral Ref No | kisan_vikas_patra          | 96                                | special characters except hyphen | throws error with error message | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName         | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Collateral Ref No | kisan_vikas_patra          | 90                                | positive digits                  | does not throw any error        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No | kisan_vikas_patra          | 91                                | characters                       | does not throw any error        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No | kisan_vikas_patra          | 92                                | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No | kisan_vikas_patra          | 93                                | negative                         | does not throw any error        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No | kisan_vikas_patra          | 94                                | hyphen                           | does not throw any error        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No | kisan_vikas_patra          | 95                                | space                            | does not throw any error        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Collateral Ref No | kisan_vikas_patra          | 96                                | special characters except hyphen | throws error with error message | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

Scenario Outline: ACAUTOCAS-16806: CollateralPage details <Validity> Deposit Amount with <InputType> validation for collateral Sub Type Kisan Vikas Patra
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisanVikasPatra>" and row <Collateral_kisanVikasPatra_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details

    @ImplementedBy-aditya.tomar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Deposit Amount | positive                   | does not throw any error        | collateral.xlsx | kisan_vikas_patra          | 103                               | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Deposit Amount | negative                   | throws error with error message | collateral.xlsx | kisan_vikas_patra          | 104                               | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Deposit Amount | zero                       | throws error with error message | collateral.xlsx | kisan_vikas_patra          | 129                               | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Deposit Amount | characters                 | throws error with error message | collateral.xlsx | kisan_vikas_patra          | 108                               | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Deposit Amount | both digits and characters | throws error with error message | collateral.xlsx | kisan_vikas_patra          | 107                               | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Deposit Amount | space                      | throws error with error message | collateral.xlsx | kisan_vikas_patra          | 110                               | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Deposit Amount | special characters         | throws error with error message | collateral.xlsx | kisan_vikas_patra          | 109                               | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | valid    | Deposit Amount | positive                   | does not throw any error        | collateral.xlsx | kisan_vikas_patra          | 103                               | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Deposit Amount | negative                   | throws error with error message | collateral.xlsx | kisan_vikas_patra          | 104                               | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Deposit Amount | zero                       | throws error with error message | collateral.xlsx | kisan_vikas_patra          | 129                               | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Deposit Amount | characters                 | throws error with error message | collateral.xlsx | kisan_vikas_patra          | 108                               | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Deposit Amount | both digits and characters | throws error with error message | collateral.xlsx | kisan_vikas_patra          | 107                               | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Deposit Amount | space                      | throws error with error message | collateral.xlsx | kisan_vikas_patra          | 110                               | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Deposit Amount | special characters         | throws error with error message | collateral.xlsx | kisan_vikas_patra          | 109                               | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Deposit Amount | positive                   | does not throw any error        | collateral.xlsx | kisan_vikas_patra          | 103                               | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Deposit Amount | negative                   | throws error with error message | collateral.xlsx | kisan_vikas_patra          | 104                               | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Deposit Amount | zero                       | throws error with error message | collateral.xlsx | kisan_vikas_patra          | 129                               | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Deposit Amount | characters                 | throws error with error message | collateral.xlsx | kisan_vikas_patra          | 108                               | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Deposit Amount | both digits and characters | throws error with error message | collateral.xlsx | kisan_vikas_patra          | 107                               | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Deposit Amount | space                      | throws error with error message | collateral.xlsx | kisan_vikas_patra          | 110                               | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Deposit Amount | special characters         | throws error with error message | collateral.xlsx | kisan_vikas_patra          | 109                               | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


Scenario Outline: ACAUTOCAS-16807: CollateralPage details <Validity> Name Of Holder with <InputType> validation for collateral Sub Type Kisan Vikas Patra
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisanVikasPatra>" and row <Collateral_kisanVikasPatra_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details

    @ImplementedBy-aditya.tomar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | invalid  | Name Of Holder | positive digits            | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 90                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name Of Holder | negative                   | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 91                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name Of Holder | zero                       | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 92                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name Of Holder | more than 100              | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 93                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name Of Holder | more than 2 decimal places | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 94                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Name Of Holder | characters                 | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 95                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name Of Holder | both digits and characters | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 96                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name Of Holder | space                      | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 97                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name Of Holder | special characters         | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 98                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | invalid  | Name Of Holder | positive digits            | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 90                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Name Of Holder | negative                   | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 91                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Name Of Holder | zero                       | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 92                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Name Of Holder | more than 100              | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 93                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Name Of Holder | more than 2 decimal places | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 94                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Name Of Holder | characters                 | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 95                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Name Of Holder | both digits and characters | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 96                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Name Of Holder | space                      | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 97                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Name Of Holder | special characters         | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 98                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType | ApplicationStage | key | category | applicantType   |
      | invalid  | Name Of Holder | positive digits            | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 90                                | iaf         | credit approval  |     |          | <ApplicantType> |
      | invalid  | Name Of Holder | negative                   | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 91                                | iaf         | credit approval  |     |          | <ApplicantType> |
      | invalid  | Name Of Holder | zero                       | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 92                                | iaf         | credit approval  |     |          | <ApplicantType> |
      | invalid  | Name Of Holder | more than 100              | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 93                                | iaf         | credit approval  |     |          | <ApplicantType> |
      | invalid  | Name Of Holder | more than 2 decimal places | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 94                                | iaf         | credit approval  |     |          | <ApplicantType> |
      | valid    | Name Of Holder | characters                 | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 95                                | iaf         | credit approval  |     |          | <ApplicantType> |
      | invalid  | Name Of Holder | both digits and characters | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 96                                | iaf         | credit approval  |     |          | <ApplicantType> |
      | invalid  | Name Of Holder | space                      | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 97                                | iaf         | credit approval  |     |          | <ApplicantType> |
      | invalid  | Name Of Holder | special characters         | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 98                                | iaf         | credit approval  |     |          | <ApplicantType> |

Scenario Outline: ACAUTOCAS-16808: CollateralPage details <Validity> Name Of Holder2 with <InputType> validation for collateral Sub Type Kisan Vikas Patra
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisanVikasPatra>" and row <Collateral_kisanVikasPatra_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | Validity | FieldName        | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | invalid  | Name of Holder 2 | positive digits            | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 90                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name of Holder 2 | negative                   | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 91                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name of Holder 2 | zero                       | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 92                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name of Holder 2 | more than 100              | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 93                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name of Holder 2 | more than 2 decimal places | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 94                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Name of Holder 2 | characters                 | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 95                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name of Holder 2 | both digits and characters | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 96                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name of Holder 2 | space                      | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 97                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name of Holder 2 | special characters         | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 98                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName        | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | invalid  | Name of Holder 2 | positive digits            | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 90                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Name of Holder 2 | negative                   | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 91                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Name of Holder 2 | zero                       | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 92                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Name of Holder 2 | more than 100              | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 93                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Name of Holder 2 | more than 2 decimal places | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 94                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Name of Holder 2 | characters                 | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 95                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Name of Holder 2 | both digits and characters | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 96                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Name of Holder 2 | space                      | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 97                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Name of Holder 2 | special characters         | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 98                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName        | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | invalid  | Name of Holder 2 | positive digits            | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 90                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name of Holder 2 | negative                   | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 91                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name of Holder 2 | zero                       | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 92                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name of Holder 2 | more than 100              | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 93                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name of Holder 2 | more than 2 decimal places | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 94                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Name of Holder 2 | characters                 | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 95                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name of Holder 2 | both digits and characters | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 96                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name of Holder 2 | space                      | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 97                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name of Holder 2 | special characters         | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 98                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

Scenario Outline: ACAUTOCAS-16809:  CollateralPage details <Validity> Name Of Holder3 with <InputType> validation for collateral Sub Type Kisan Vikas Patra
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisanVikasPatra>" and row <Collateral_kisanVikasPatra_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | Validity | FieldName        | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | invalid  | Name of Holder 3 | positive digits            | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 90                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name of Holder 3 | negative                   | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 91                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name of Holder 3 | zero                       | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 92                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name of Holder 3 | more than 100              | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 93                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name of Holder 3 | more than 2 decimal places | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 94                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Name of Holder 3 | characters                 | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 95                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name of Holder 3 | both digits and characters | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 96                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name of Holder 3 | space                      | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 97                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name of Holder 3 | special characters         | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 98                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName        | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | invalid  | Name of Holder 3 | positive digits            | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 90                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Name of Holder 3 | negative                   | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 91                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Name of Holder 3 | zero                       | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 92                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Name of Holder 3 | more than 100              | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 93                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Name of Holder 3 | more than 2 decimal places | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 94                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Name of Holder 3 | characters                 | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 95                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Name of Holder 3 | both digits and characters | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 96                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Name of Holder 3 | space                      | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 97                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Name of Holder 3 | special characters         | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 98                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName        | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | invalid  | Name of Holder 3 | positive digits            | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 90                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name of Holder 3 | negative                   | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 91                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name of Holder 3 | zero                       | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 92                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name of Holder 3 | more than 100              | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 93                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name of Holder 3 | more than 2 decimal places | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 94                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Name of Holder 3 | characters                 | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 95                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name of Holder 3 | both digits and characters | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 96                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name of Holder 3 | space                      | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 97                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Name of Holder 3 | special characters         | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 98                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

Scenario Outline: ACAUTOCAS-16810: CollateralPage details <Validity> Deposit No with <InputType> validation for collateral Sub Type Kisan Vikas Patra
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisanVikasPatra>" and row <Collateral_kisanVikasPatra_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details

    @ImplementedBy-aditya.tomar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | Validity | FieldName  | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Deposit No | positive digits            | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 90                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Deposit No | negative                   | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 91                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Deposit No | zero                       | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 92                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Deposit No | more than 100              | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 93                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Deposit No | more than 2 decimal places | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 94                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Deposit No | characters                 | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 95                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Deposit No | both digits and characters | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 96                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Deposit No | space                      | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 97                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Deposit No | special characters         | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 142                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName  | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | valid    | Deposit No | positive digits            | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 90                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Deposit No | negative                   | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 91                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Deposit No | zero                       | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 92                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Deposit No | more than 100              | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 93                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Deposit No | more than 2 decimal places | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 94                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Deposit No | characters                 | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 95                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Deposit No | both digits and characters | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 96                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Deposit No | space                      | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 97                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Deposit No | special characters         | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 142                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName  | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Deposit No | positive digits            | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 90                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Deposit No | negative                   | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 91                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Deposit No | zero                       | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 92                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Deposit No | more than 100              | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 93                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Deposit No | more than 2 decimal places | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 94                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Deposit No | characters                 | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 95                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Deposit No | both digits and characters | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 96                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Deposit No | space                      | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 97                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Deposit No | special characters         | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 142                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

Scenario Outline: ACAUTOCAS-16811: CollateralPage details <Validity> Maturity Amount with <InputType> validation for collateral Sub Type Kisan Vikas Patra
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisanVikasPatra>" and row <Collateral_kisanVikasPatra_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details

    @ImplementedBy-aditya.tomar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | Validity | FieldName       | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Maturity Amount | positive digits            | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 103                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Amount | negative                   | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 104                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Amount | zero                       | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 105                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Maturity Amount | more than 100              | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 112                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Maturity Amount | more than 2 decimal places | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 106                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Amount | characters                 | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 108                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Amount | both digits and characters | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 107                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Amount | space                      | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 110                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Amount | special characters         | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 111                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName       | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | valid    | Maturity Amount | positive digits            | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 103                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Maturity Amount | negative                   | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 104                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Maturity Amount | zero                       | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 105                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Maturity Amount | more than 100              | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 112                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Maturity Amount | more than 2 decimal places | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 106                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Maturity Amount | characters                 | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 108                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Maturity Amount | both digits and characters | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 107                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Maturity Amount | space                      | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 110                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Maturity Amount | special characters         | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 111                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName       | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Maturity Amount | positive digits            | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 103                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Amount | negative                   | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 104                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Amount | zero                       | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 105                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Maturity Amount | more than 100              | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 112                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Maturity Amount | more than 2 decimal places | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 106                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Amount | characters                 | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 108                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Amount | both digits and characters | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 107                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Amount | space                      | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 110                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Amount | special characters         | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 111                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

Scenario Outline: ACAUTOCAS-16812: CollateralPage details <Validity> Issue Date with <InputType> validation for collateral Sub Type Kisan Vikas Patra
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisanVikasPatra>" and row <Collateral_kisanVikasPatra_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details

    @ImplementedBy-aditya.tomar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | Validity | FieldName  | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Issue date | valid date format   | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 131                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Issue date | invalid date format | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 132                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Issue date | current date        | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 133                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Issue date | past date           | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 134                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Issue date | future date         | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 135                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Issue date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 136                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Issue date | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 137                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Issue date | special characters  | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 138                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName  | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | valid    | Issue date | valid date format   | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 131                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Issue date | invalid date format | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 132                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Issue date | current date        | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 133                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Issue date | past date           | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 134                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Issue date | future date         | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 135                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Issue date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 136                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Issue date | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 137                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Issue date | special characters  | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 138                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName  | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Issue date | valid date format   | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 131                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Issue date | invalid date format | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 132                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Issue date | current date        | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 133                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Issue date | past date           | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 134                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Issue date | future date         | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 135                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Issue date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 136                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Issue date | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 137                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Issue date | special characters  | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 138                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

Scenario Outline: ACAUTOCAS-16813: CollateralPage details <Validity> Maturity Date with <InputType> validation for collateral Sub Type Kisan Vikas Patra
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisanVikasPatra>" and row <Collateral_kisanVikasPatra_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details

    @ImplementedBy-aditya.tomar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Maturity Date | valid date format   | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 131                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Date | invalid date format | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 132                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Maturity Date | current date        | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 133                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Maturity Date | past date           | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 134                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Maturity Date | future date         | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 135                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 136                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Maturity Date | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 137                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Date | special characters  | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 138                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | valid    | Maturity Date | valid date format   | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 131                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Maturity Date | invalid date format | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 132                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Maturity Date | current date        | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 133                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Maturity Date | past date           | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 134                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Maturity Date | future date         | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 135                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Maturity Date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 136                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Maturity Date | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 137                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Maturity Date | special characters  | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 138                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Maturity Date | valid date format   | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 131                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Date | invalid date format | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 132                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Maturity Date | current date        | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 133                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Maturity Date | past date           | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 134                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Maturity Date | future date         | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 135                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 136                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Maturity Date | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 137                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Date | special characters  | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 138                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

Scenario Outline: ACAUTOCAS-16814: CollateralPage details <Validity> Face Value with <InputType> validation for collateral Sub Type Kisan Vikas Patra
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisanVikasPatra>" and row <Collateral_kisanVikasPatra_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | Validity | FieldName  | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Face Value | positive                   | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 119                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Face Value | negative                   | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 120                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Face Value | zero                       | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 121                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Face Value | characters                 | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 122                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Face Value | both digits and characters | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 123                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Face Value | space                      | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 124                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Face Value | special characters         | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 125                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName  | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | valid    | Face Value | positive                   | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 119                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Face Value | negative                   | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 120                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Face Value | zero                       | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 121                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Face Value | characters                 | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 122                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Face Value | both digits and characters | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 123                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Face Value | space                      | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 124                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Face Value | special characters         | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 125                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName  | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Face Value | positive                   | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 119                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Face Value | negative                   | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 120                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Face Value | zero                       | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 121                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Face Value | characters                 | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 122                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Face Value | both digits and characters | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 123                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Face Value | space                      | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 124                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Face Value | special characters         | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 125                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

Scenario Outline: ACAUTOCAS-16815: CollateralPage details <Validity> Accrued Value with <InputType> validation for collateral Sub Type Kisan Vikas Patra
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisanVikasPatra>" and row <Collateral_kisanVikasPatra_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details

    @ImplementedBy-aditya.tomar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | Validity | FieldName     | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Accrued Value | positive                   | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 119                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Accrued Value | negative                   | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 120                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Accrued Value | zero                       | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 121                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Accrued Value | characters                 | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 122                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Accrued Value | both digits and characters | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 123                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Accrued Value | space                      | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 124                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Accrued Value | special characters         | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 125                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName     | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | valid    | Accrued Value | positive                   | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 119                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Accrued Value | negative                   | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 120                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Accrued Value | zero                       | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 121                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Accrued Value | characters                 | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 122                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Accrued Value | both digits and characters | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 123                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Accrued Value | space                      | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 124                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Accrued Value | special characters         | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 125                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName     | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Accrued Value | positive                   | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 119                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Accrued Value | negative                   | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 120                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Accrued Value | zero                       | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 121                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Accrued Value | characters                 | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 122                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Accrued Value | both digits and characters | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 123                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Accrued Value | space                      | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 124                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Accrued Value | special characters         | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 125                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

Scenario Outline: ACAUTOCAS-16816: CollateralPage details <Validity> Maturity Value with <InputType> validation for collateral Sub Type Kisan Vikas Patra
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisanVikasPatra>" and row <Collateral_kisanVikasPatra_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details

    @ImplementedBy-aditya.tomar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Maturity Value | positive                   | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 119                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Value | negative                   | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 120                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Maturity Value | zero                       | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 121                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Value | characters                 | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 122                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Value | both digits and characters | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 123                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Value | space                      | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 124                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Value | special characters         | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 125                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | valid    | Maturity Value | positive                   | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 119                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Maturity Value | negative                   | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 120                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Maturity Value | zero                       | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 121                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Maturity Value | characters                 | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 122                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Maturity Value | both digits and characters | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 123                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Maturity Value | space                      | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 124                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Maturity Value | special characters         | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 125                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Maturity Value | positive                   | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 119                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Value | negative                   | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 120                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Maturity Value | zero                       | does not throw any error        | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 121                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Value | characters                 | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 122                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Value | both digits and characters | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 123                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Value | space                      | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 124                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Value | special characters         | throws error with error message | collateral.xlsx | default            | 253                       | kisan_vikas_patra          | 125                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  @SkippedFormatValidation
  Scenario Outline:ACAUTOCAS-3673: CollateralPage Collateral details format validation for Kisan Vikas Patra
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_default_Sub_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see all fields of "Reason" with proper format

    Examples:
      | CollateralWB    | Collateral_Default | Collateral_default_Sub_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline:ACAUTOCAS-3674: CollateralPage Collateral details field labels for Kisan Vikas Patra
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_default_Sub_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see all fields of "<FieldName>" with proper labels in Collateral Details

    @ImplementedBy-aman.verma
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName         | CollateralWB    | Collateral_Default | Collateral_default_Sub_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Collateral Ref No | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Description       | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Name Of Holder    | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Name of Holder 2  | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Name of Holder 3  | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Deposit No        | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Deposit Amount    | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Amount   | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Issue Date        | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Date     | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Face Value        | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Accrued Value     | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Value    | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Remarks           | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName         | CollateralWB    | Collateral_Default | Collateral_default_Sub_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | Collateral Ref No | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Description       | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Name Of Holder    | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Name of Holder 2  | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Name of Holder 3  | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Deposit No        | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Deposit Amount    | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Maturity Amount   | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Issue Date        | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Maturity Date     | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Face Value        | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Accrued Value     | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Maturity Value    | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Remarks           | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName         | CollateralWB    | Collateral_Default | Collateral_default_Sub_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Collateral Ref No | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Description       | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Name Of Holder    | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Name of Holder 2  | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Name of Holder 3  | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Deposit No        | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Deposit Amount    | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Amount   | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Issue Date        | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Date     | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Face Value        | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Accrued Value     | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Value    | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Remarks           | collateral.xlsx | default            | 253                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  Scenario Outline: ACAUTOCAS-3044:  User is able to see all fields in reason details for new collateral Kisan Vikas Patra
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see field "<FieldName>" marked mandatory as "<Mandatory>"
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName          | Mandatory | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Reason Code        | No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Reason Description | No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Remarks            | No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName          | Mandatory | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | Reason Code        | No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Reason Description | No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Remarks            | No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName          | Mandatory | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Reason Code        | No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Reason Description | No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Remarks            | No        | collateral.xlsx | default            | 253                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  Scenario Outline: ACAUTOCAS-3675:  CollateralPage Reason details data type validation for Kisan Vikas Patra
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisan_vikas_patra>" and row <Collateral_kisan_vikas_patra_rowNum>
    And user selects collateral type along with collateral sub type
    And user fill mandatory details of deposit collateral type
    And user checks the duplicates on collateral dedupe check
    And user saves the data
    And user add new collateral details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisan_vikas_patra>" and row <Collateral_kisan_vikas_patra_rowNum2>
    And user selects collateral type along with collateral sub type
    And user fill mandatory details of deposit collateral type
    And user closes duplicate check result box after checking the duplicates
    When user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    @ImplementedBy-rishabh.sachan
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | Validity | FieldName               | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | Collateral_kisan_vikas_patra_rowNum2 | InputType                  | Throws_NotThrows         | CollateralWB    | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | Remarks(Reason Details) | kisan_vikas_patra            | 342                                 | 343                                  | positive digits            | does not throw any error | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Remarks(Reason Details) | kisan_vikas_patra            | 342                                 | 344                                  | characters                 | does not throw any error | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Remarks(Reason Details) | kisan_vikas_patra            | 342                                 | 345                                  | both digits and characters | does not throw any error | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Remarks(Reason Details) | kisan_vikas_patra            | 342                                 | 346                                  | negative                   | does not throw any error | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Remarks(Reason Details) | kisan_vikas_patra            | 342                                 | 347                                  | space                      | does not throw any error | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Remarks(Reason Details) | kisan_vikas_patra            | 342                                 | 348                                  | special characters         | does not throw any error | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName               | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | Collateral_kisan_vikas_patra_rowNum2 | InputType                  | Throws_NotThrows         | CollateralWB    | ApplicationStage   | ApplicantType   | Category   | Key | ProductType   |
      | valid    | Remarks(Reason Details) | kisan_vikas_patra            | 342                                 | 343                                  | positive digits            | does not throw any error | collateral.xlsx | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Remarks(Reason Details) | kisan_vikas_patra            | 342                                 | 344                                  | characters                 | does not throw any error | collateral.xlsx | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Remarks(Reason Details) | kisan_vikas_patra            | 342                                 | 345                                  | both digits and characters | does not throw any error | collateral.xlsx | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Remarks(Reason Details) | kisan_vikas_patra            | 342                                 | 346                                  | negative                   | does not throw any error | collateral.xlsx | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Remarks(Reason Details) | kisan_vikas_patra            | 342                                 | 347                                  | space                      | does not throw any error | collateral.xlsx | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |
      | valid    | Remarks(Reason Details) | kisan_vikas_patra            | 342                                 | 348                                  | special characters         | does not throw any error | collateral.xlsx | <ApplicationStage> | <ApplicantType> | <Category> |     | <ProductType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName               | Collateral_kisan_vikas_patra | Collateral_kisan_vikas_patra_rowNum | Collateral_kisan_vikas_patra_rowNum2 | InputType                  | Throws_NotThrows         | CollateralWB    | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | valid    | Remarks(Reason Details) | kisan_vikas_patra            | 342                                 | 343                                  | positive digits            | does not throw any error | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Remarks(Reason Details) | kisan_vikas_patra            | 342                                 | 344                                  | characters                 | does not throw any error | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Remarks(Reason Details) | kisan_vikas_patra            | 342                                 | 345                                  | both digits and characters | does not throw any error | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Remarks(Reason Details) | kisan_vikas_patra            | 342                                 | 346                                  | negative                   | does not throw any error | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Remarks(Reason Details) | kisan_vikas_patra            | 342                                 | 347                                  | space                      | does not throw any error | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
      | valid    | Remarks(Reason Details) | kisan_vikas_patra            | 342                                 | 348                                  | special characters         | does not throw any error | collateral.xlsx | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |


  @SkippedFormatValidation
  @NotImplementable
  Scenario: ACAUTOCAS-3676:  CollateralPage Reason details field format validation for collateral Sub Type Kisan Vikas Patra
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens "CollateralPage"
    When user adds a new collateral type as "Deposit" and Sub Type "Kisan Vikas Patra"
    Then user should be able to see all fields of "<Reason details>" with proper format

  Scenario Outline: ACAUTOCAS-3677: CollateralPage Reason details field labels for Kisan Vikas Patra
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_kisanVikasPatra>" and row <Collateral_kisanVikasPatra_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see "<FieldName>" field of Reason with proper labels
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName          | CollateralWB    | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Reason Code        | collateral.xlsx | kisan_vikas_patra          | 0                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Remarks            | collateral.xlsx | kisan_vikas_patra          | 0                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Reason Description | collateral.xlsx | kisan_vikas_patra          | 0                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName          | CollateralWB    | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | Reason Code        | collateral.xlsx | kisan_vikas_patra          | 0                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Remarks            | collateral.xlsx | kisan_vikas_patra          | 0                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Reason Description | collateral.xlsx | kisan_vikas_patra          | 0                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName          | CollateralWB    | Collateral_kisanVikasPatra | Collateral_kisanVikasPatra_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Reason Code        | collateral.xlsx | kisan_vikas_patra          | 0                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Remarks            | collateral.xlsx | kisan_vikas_patra          | 0                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Reason Description | collateral.xlsx | kisan_vikas_patra          | 0                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |




