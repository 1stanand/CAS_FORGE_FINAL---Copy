@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral

#${CollateralSubType:["National Saving Certificate"]}
  #${ApplicantType:["indiv","nonindiv"]}
Feature: National Saving Certificate Screen Validation

#  Pre-Requisites---
#  In this feature we will validate the screen layout when an Deposit National Saving Certificate is attached to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-3684:  user chooses sub collateral as National Saving Certificate of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then application should allow only the collateral type which is linked to the product
        #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

          # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |

      # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType | ApplicationStage | key | category | applicantType   |
      | collateral.xlsx | default            | 347                       | IHF         | DDE              |     |          | <applicantType> |


  Scenario Outline: ACAUTOCAS-3061:  User is able to see all entities for new collateral National Saving Certificate of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<DepositNationalSavingCertificateDataFile>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then User should be able to see "<SectionName>" on the screen
        #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    @ImplementedBy-aman.verma
    Examples:
      | SectionName        | DepositNationalSavingCertificateDataFile | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Collateral Details | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Reason             | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

          # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | SectionName        | DepositNationalSavingCertificateDataFile | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | Collateral Details | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Reason             | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |

      # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | SectionName        | DepositNationalSavingCertificateDataFile | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Collateral Details | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Reason             | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |


  Scenario Outline: ACAUTOCAS-3062:  User is able to see all fields for new collateral National Saving Certificate of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<DepositNationalSavingCertificateDataFile>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see field "<FieldName>" marked mandatory as "<Mandatory>"
              #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName         | Mandatory | DepositNationalSavingCertificateDataFile | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Collateral Ref No | No        | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Description       | No        | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Name Of Holder    | Yes       | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Name of Holder 2  | No        | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Name of Holder 3  | No        | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Deposit No        | Yes       | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Deposit Amount    | Yes       | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Maturity Amount   | Yes       | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Issue Date        | No        | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Maturity Date     | No        | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Face Value        | No        | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Accrued Value     | No        | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Maturity Value    | Yes       | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Remarks           | No        | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

          # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName         | Mandatory | DepositNationalSavingCertificateDataFile | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | Collateral Ref No | No        | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Description       | No        | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Name Of Holder    | Yes       | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Name of Holder 2  | No        | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Name of Holder 3  | No        | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Deposit No        | Yes       | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Deposit Amount    | Yes       | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Maturity Amount   | Yes       | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Issue Date        | No        | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Maturity Date     | No        | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Face Value        | No        | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Accrued Value     | No        | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Maturity Value    | Yes       | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Remarks           | No        | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName         | Mandatory | DepositNationalSavingCertificateDataFile | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Collateral Ref No | No        | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Description       | No        | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Name Of Holder    | Yes       | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Name of Holder 2  | No        | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Name of Holder 3  | No        | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Deposit No        | Yes       | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Deposit Amount    | Yes       | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Maturity Amount   | Yes       | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Issue Date        | No        | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Maturity Date     | No        | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Face Value        | No        | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Accrued Value     | No        | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Maturity Value    | Yes       | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Remarks           | No        | collateral.xlsx                          | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |


  @ImplementedBy-priyanshu.kashyap
  Scenario Outline:ACAUTOCAS-3685: CollateralPage details <Validity> Name Of Holder with <InputType> validation for collateral Sub Type National Saving Certificate of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
              #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | invalid  | Name Of Holder | positive digits            | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 72                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder | negative                   | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 73                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder | zero                       | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 74                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder | more than 100              | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 75                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder | more than 2 decimal places | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 76                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Name Of Holder | characters                 | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 77                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder | both digits and characters | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 78                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder | space                      | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 79                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder | special characters         | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 80                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

            # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | invalid  | Name Of Holder | positive digits            | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 72                                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Name Of Holder | negative                   | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 73                                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Name Of Holder | zero                       | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 74                                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Name Of Holder | more than 100              | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 75                                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Name Of Holder | more than 2 decimal places | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 76                                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | valid    | Name Of Holder | characters                 | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 77                                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Name Of Holder | both digits and characters | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 78                                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Name Of Holder | space                      | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 79                                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Name Of Holder | special characters         | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 80                                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |

        # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | invalid  | Name Of Holder | positive digits            | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 72                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder | negative                   | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 73                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder | zero                       | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 74                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder | more than 100              | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 75                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder | more than 2 decimal places | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 76                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Name Of Holder | characters                 | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 77                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder | both digits and characters | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 78                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder | space                      | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 79                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder | special characters         | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 80                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

    #FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-16770: CollateralPage details <Validity> Name Of Holder 2 with <InputType> validation for collateral Sub Type National Saving Certificate of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
              #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName        | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | invalid  | Name Of Holder 2 | positive digits            | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 136                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder 2 | negative                   | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 137                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder 2 | zero                       | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 138                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder 2 | more than 100              | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 139                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder 2 | more than 2 decimal places | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 140                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Name Of Holder 2 | characters                 | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 141                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder 2 | both digits and characters | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 142                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder 2 | space                      | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 143                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder 2 | special characters         | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 144                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

            # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName        | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | invalid  | Name Of Holder 2 | positive digits            | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 136                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Name Of Holder 2 | negative                   | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 137                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Name Of Holder 2 | zero                       | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 138                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Name Of Holder 2 | more than 100              | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 139                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Name Of Holder 2 | more than 2 decimal places | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 140                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | valid    | Name Of Holder 2 | characters                 | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 141                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Name Of Holder 2 | both digits and characters | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 142                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Name Of Holder 2 | space                      | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 143                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Name Of Holder 2 | special characters         | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 144                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |

      # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName        | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | invalid  | Name Of Holder 2 | positive digits            | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 136                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder 2 | negative                   | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 137                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder 2 | zero                       | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 138                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder 2 | more than 100              | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 139                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder 2 | more than 2 decimal places | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 140                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Name Of Holder 2 | characters                 | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 141                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder 2 | both digits and characters | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 142                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder 2 | space                      | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 143                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder 2 | special characters         | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 144                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

    #FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-16771: CollateralPage details <Validity> Name Of Holder 3 with <InputType> validation for collateral Sub Type National Saving Certificate of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
              #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName        | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | invalid  | Name Of Holder 3 | positive digits            | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 145                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder 3 | negative                   | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 146                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder 3 | zero                       | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 147                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder 3 | more than 100              | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 148                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder 3 | more than 2 decimal places | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 149                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Name Of Holder 3 | characters                 | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 150                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder 3 | both digits and characters | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 151                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder 3 | space                      | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 152                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder 3 | special characters         | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 153                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

        # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName        | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | invalid  | Name Of Holder 3 | positive digits            | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 145                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Name Of Holder 3 | negative                   | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 146                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Name Of Holder 3 | zero                       | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 147                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Name Of Holder 3 | more than 100              | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 148                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Name Of Holder 3 | more than 2 decimal places | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 149                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | valid    | Name Of Holder 3 | characters                 | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 150                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Name Of Holder 3 | both digits and characters | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 151                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Name Of Holder 3 | space                      | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 152                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Name Of Holder 3 | special characters         | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 153                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName        | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | invalid  | Name Of Holder 3 | positive digits            | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 145                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder 3 | negative                   | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 146                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder 3 | zero                       | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 147                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder 3 | more than 100              | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 148                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder 3 | more than 2 decimal places | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 149                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Name Of Holder 3 | characters                 | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 150                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder 3 | both digits and characters | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 151                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder 3 | space                      | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 152                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Name Of Holder 3 | special characters         | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 153                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |



    #FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-16772: CollateralPage details <Validity> Deposit No with <InputType> validation for collateral Sub Type National Saving Certificate of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
              #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName  | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Deposit No | positive digits            | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 81                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Deposit No | negative                   | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 82                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Deposit No | zero                       | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 83                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Deposit No | more than 100              | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 84                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Deposit No | more than 2 decimal places | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 85                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Deposit No | characters                 | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 86                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Deposit No | both digits and characters | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 87                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Deposit No | space                      | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 88                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Deposit No | special characters         | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 89                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

           # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName  | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | valid    | Deposit No | positive digits            | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 81                                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Deposit No | negative                   | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 82                                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | valid    | Deposit No | zero                       | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 83                                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | valid    | Deposit No | more than 100              | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 84                                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | valid    | Deposit No | more than 2 decimal places | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 85                                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | valid    | Deposit No | characters                 | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 86                                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Deposit No | both digits and characters | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 87                                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Deposit No | space                      | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 88                                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Deposit No | special characters         | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 89                                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName  | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Deposit No | positive digits            | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 81                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Deposit No | negative                   | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 82                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Deposit No | zero                       | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 83                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Deposit No | more than 100              | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 84                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Deposit No | more than 2 decimal places | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 85                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Deposit No | characters                 | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 86                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Deposit No | both digits and characters | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 87                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Deposit No | space                      | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 88                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Deposit No | special characters         | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 89                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |


  @ImplementedBy-priyanshu.kashyap
    #FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-16773: CollateralPage details <Validity> Deposit Amount with <InputType> validation for collateral Sub Type National Saving Certificate of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Deposit Amount | positive                   | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 90                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Deposit Amount | negative                   | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 91                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Deposit Amount | zero                       | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 92                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Deposit Amount | characters                 | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 93                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Deposit Amount | both digits and characters | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 94                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Deposit Amount | space                      | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 95                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Deposit Amount | special characters         | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 96                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |


    #FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-16774: CollateralPage details <Validity> Maturity Amount with <InputType> validation for collateral Sub Type National Saving Certificate of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
          #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName       | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Maturity Amount | positive digits            | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 97                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Maturity Amount | negative                   | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 98                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Maturity Amount | zero                       | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 99                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Maturity Amount | more than 100              | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 100                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Maturity Amount | more than 2 decimal places | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 101                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Maturity Amount | characters                 | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 102                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Maturity Amount | both digits and characters | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 103                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Maturity Amount | space                      | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 104                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Maturity Amount | special characters         | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 105                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

       # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName       | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | valid    | Maturity Amount | positive digits            | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 97                                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Maturity Amount | negative                   | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 98                                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Maturity Amount | zero                       | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 99                                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | valid    | Maturity Amount | more than 100              | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 100                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | valid    | Maturity Amount | more than 2 decimal places | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 101                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Maturity Amount | characters                 | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 102                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Maturity Amount | both digits and characters | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 103                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Maturity Amount | space                      | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 104                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Maturity Amount | special characters         | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 105                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName       | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Maturity Amount | positive digits            | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 97                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Maturity Amount | negative                   | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 98                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Maturity Amount | zero                       | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 99                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Maturity Amount | more than 100              | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 100                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Maturity Amount | more than 2 decimal places | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 101                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Maturity Amount | characters                 | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 102                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Maturity Amount | both digits and characters | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 103                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Maturity Amount | space                      | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 104                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Maturity Amount | special characters         | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 105                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |


    #FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-16775: CollateralPage details <Validity> Issue Date with <InputType> validation for collateral Sub Type National Saving Certificate of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
          #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName  | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Issue Date | valid date format   | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 106                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Issue Date | invalid date format | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 107                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Issue Date | current date        | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 108                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Issue Date | past date           | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 109                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Issue Date | future date         | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 110                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Issue Date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 111                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Issue Date | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 112                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Issue Date | special characters  | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 113                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

  # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName  | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | valid    | Issue Date | valid date format   | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 106                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Issue Date | invalid date format | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 107                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | valid    | Issue Date | current date        | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 108                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | valid    | Issue Date | past date           | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 109                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | valid    | Issue Date | future date         | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 110                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Issue Date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 111                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | valid    | Issue Date | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 112                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Issue Date | special characters  | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 113                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName  | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Issue Date | valid date format   | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 106                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Issue Date | invalid date format | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 107                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Issue Date | current date        | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 108                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Issue Date | past date           | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 109                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Issue Date | future date         | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 110                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Issue Date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 111                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Issue Date | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 112                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Issue Date | special characters  | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 113                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

    #FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-16776: CollateralPage details <Validity> Maturity Date with <InputType> validation for collateral Sub Type National Saving Certificate of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
          #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Maturity Date | valid date format   | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 114                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Maturity Date | invalid date format | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 115                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Maturity Date | current date        | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 116                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Maturity Date | past date           | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 117                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Maturity Date | future date         | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 118                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Maturity Date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 119                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Maturity Date | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 120                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Maturity Date | special characters  | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 121                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

   # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | valid    | Maturity Date | valid date format   | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 114                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Maturity Date | invalid date format | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 115                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | valid    | Maturity Date | current date        | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 116                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | valid    | Maturity Date | past date           | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 117                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | valid    | Maturity Date | future date         | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 118                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Maturity Date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 119                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | valid    | Maturity Date | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 120                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Maturity Date | special characters  | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 121                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Maturity Date | valid date format   | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 114                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Maturity Date | invalid date format | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 115                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Maturity Date | current date        | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 116                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Maturity Date | past date           | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 117                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Maturity Date | future date         | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 118                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Maturity Date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 119                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Maturity Date | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 120                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Maturity Date | special characters  | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 121                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |


    #FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-16777: CollateralPage details <Validity> Face Value with <InputType> validation for collateral Sub Type National Saving Certificate of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
          #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName  | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Face Value | positive                   | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 122                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Face Value | negative                   | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 123                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Face Value | zero                       | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 124                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Face Value | characters                 | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 125                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Face Value | both digits and characters | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 126                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Face Value | space                      | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 127                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Face Value | special characters         | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 128                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

# ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName  | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | valid    | Face Value | positive                   | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 122                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Face Value | negative                   | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 123                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | valid    | Face Value | zero                       | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 124                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Face Value | characters                 | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 125                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Face Value | both digits and characters | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 126                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Face Value | space                      | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 127                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Face Value | special characters         | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 128                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName  | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Face Value | positive                   | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 122                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Face Value | negative                   | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 123                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Face Value | zero                       | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 124                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Face Value | characters                 | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 125                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Face Value | both digits and characters | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 126                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Face Value | space                      | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 127                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Face Value | special characters         | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 128                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |


    #FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-16778: CollateralPage details <Validity> Accrued Value with <InputType> validation for collateral Sub Type National Saving Certificate of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName     | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Accrued Value | positive                   | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 129                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Accrued Value | negative                   | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 130                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Accrued Value | zero                       | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 131                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Accrued Value | characters                 | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 132                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Accrued Value | both digits and characters | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 133                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Accrued Value | space                      | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 134                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Accrued Value | special characters         | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 135                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName     | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | valid    | Accrued Value | positive                   | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 129                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Accrued Value | negative                   | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 130                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | valid    | Accrued Value | zero                       | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 131                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Accrued Value | characters                 | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 132                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Accrued Value | both digits and characters | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 133                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Accrued Value | space                      | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 134                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Accrued Value | special characters         | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 135                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName     | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Accrued Value | positive                   | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 129                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Accrued Value | negative                   | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 130                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Accrued Value | zero                       | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 131                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Accrued Value | characters                 | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 132                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Accrued Value | both digits and characters | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 133                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Accrued Value | space                      | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 134                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Accrued Value | special characters         | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 135                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |


    #FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-16779: CollateralPage details <Validity> Maturity Value with <InputType> validation for collateral Sub Type National Saving Certificate of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
          #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Maturity Value | positive                   | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 154                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Maturity Value | negative                   | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 155                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Maturity Value | zero                       | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 156                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Maturity Value | characters                 | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 157                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Maturity Value | both digits and characters | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 158                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Maturity Value | space                      | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 159                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Maturity Value | special characters         | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 160                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | valid    | Maturity Value | positive                   | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 154                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Maturity Value | negative                   | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 155                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | valid    | Maturity Value | zero                       | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 156                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Maturity Value | characters                 | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 157                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Maturity Value | both digits and characters | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 158                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Maturity Value | space                      | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 159                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | invalid  | Maturity Value | special characters         | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 160                                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Maturity Value | positive                   | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 154                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Maturity Value | negative                   | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 155                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | valid    | Maturity Value | zero                       | does not throw any error        | collateral.xlsx | default            | 347                       | national_saving_certificate            | 156                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Maturity Value | characters                 | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 157                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Maturity Value | both digits and characters | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 158                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Maturity Value | space                      | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 159                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | invalid  | Maturity Value | special characters         | throws error with error message | collateral.xlsx | default            | 347                       | national_saving_certificate            | 160                                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

  @SkippedFormatValidation
  Scenario: ACAUTOCAS-3686:  CollateralPage Deposit details format validation for National Saving Certificate
    And user opens "CollateralPage"
    And user adds a new collateral type as "Deposit" and Sub Type "National Saving Certificate"
    Then user should be able to see all fields of "<Collateral details>" with proper format

  Scenario Outline: ACAUTOCAS-3687:  CollateralPage Deposit details <Collateral_details> labels for National Saving Certificate of <ProductType> application of <applicantType> applicant type at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see all fields of "<Collateral details>" with proper labels on collateral page National Saving Certificate
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Collateral_details         | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Collateral ID              | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Global Collateral Number   | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | External Collateral Number | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Collateral Type            | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Collateral SubType         | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Collateral Ref No          | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Description                | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Name Of Holder             | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Name of Holder 2           | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Name of Holder 3           | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Deposit No                 | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Deposit Amount             | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Maturity Amount            | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Issue Date                 | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Maturity Date              | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Face Value                 | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Accrued Value              | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Maturity Value             | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Maturity Value             | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Remarks                    | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Collateral details         | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | Collateral ID              | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Global Collateral Number   | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | External Collateral Number | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Collateral Type            | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Collateral SubType         | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Collateral Ref No          | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Description                | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Name Of Holder             | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Name of Holder 2           | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Name of Holder 3           | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Deposit No                 | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Deposit Amount             | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Maturity Amount            | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Issue Date                 | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Maturity Date              | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Face Value                 | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Accrued Value              | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Maturity Value             | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Maturity Value             | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Remarks                    | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Collateral details         | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Collateral ID              | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Global Collateral Number   | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | External Collateral Number | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Collateral Type            | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Collateral SubType         | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Collateral Ref No          | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Description                | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Name Of Holder             | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Name of Holder 2           | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Name of Holder 3           | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Deposit No                 | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Deposit Amount             | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Maturity Amount            | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Issue Date                 | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Maturity Date              | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Face Value                 | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Accrued Value              | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Maturity Value             | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Maturity Value             | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Remarks                    | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |


  Scenario Outline: ACAUTOCAS-3063:  User is able to see all fields in reason details for new collateral National Saving Certificate of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see field "<FieldName>" marked mandatory as "<Mandatory>"
           #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName          | Mandatory | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Reason Code        | No        | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Reason Description | No        | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Remarks            | No        | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName          | Mandatory | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | Reason Code        | No        | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Reason Description | No        | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | Remarks            | No        | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName          | Mandatory | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Reason Code        | No        | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Reason Description | No        | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | Remarks            | No        | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |


  Scenario Outline: ACAUTOCAS-3688:  CollateralPage Reason details data type validation for National Saving Certificate of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the data
    And user opens Collateral Page for adding new collateral
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    When user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName               | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | InputType                        | Throws_NotThrows         | CollateralWB    | Collateral_default | Collateral_default_rowNum | ApplicationStage   | applicantType   | category | key | ProductType   |
      | valid    | Remarks(Reason Details) | national_saving_certificate            | 161                                           | positive digits                  | does not throw any error | collateral.xlsx | default            | 347                       | <ApplicationStage> | <applicantType> |          |     | <ProductType> |
      | valid    | Remarks(Reason Details) | national_saving_certificate            | 162                                           | characters                       | does not throw any error | collateral.xlsx | default            | 347                       | <ApplicationStage> | <applicantType> |          |     | <ProductType> |
      | valid    | Remarks(Reason Details) | national_saving_certificate            | 163                                           | both digits and characters       | does not throw any error | collateral.xlsx | default            | 347                       | <ApplicationStage> | <applicantType> |          |     | <ProductType> |
      | valid    | Remarks(Reason Details) | national_saving_certificate            | 164                                           | negative                         | does not throw any error | collateral.xlsx | default            | 347                       | <ApplicationStage> | <applicantType> |          |     | <ProductType> |
      | valid    | Remarks(Reason Details) | national_saving_certificate            | 165                                           | hyphen                           | does not throw any error | collateral.xlsx | default            | 347                       | <ApplicationStage> | <applicantType> |          |     | <ProductType> |
      | valid    | Remarks(Reason Details) | national_saving_certificate            | 166                                           | space                            | does not throw any error | collateral.xlsx | default            | 347                       | <ApplicationStage> | <applicantType> |          |     | <ProductType> |
      | valid    | Remarks(Reason Details) | national_saving_certificate            | 167                                           | special characters except hyphen | does not throw any error | collateral.xlsx | default            | 347                       | <ApplicationStage> | <applicantType> |          |     | <ProductType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName               | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | InputType                        | Throws_NotThrows         | CollateralWB    | Collateral_default | Collateral_default_rowNum | ApplicationStage   | applicantType   | category   | key | ProductType   |
      | valid    | Remarks(Reason Details) | national_saving_certificate            | 161                                           | positive digits                  | does not throw any error | collateral.xlsx | default            | 347                       | <ApplicationStage> | <applicantType> | <category> |     | <ProductType> |
      | valid    | Remarks(Reason Details) | national_saving_certificate            | 162                                           | characters                       | does not throw any error | collateral.xlsx | default            | 347                       | <ApplicationStage> | <applicantType> | <category> |     | <ProductType> |
      | valid    | Remarks(Reason Details) | national_saving_certificate            | 163                                           | both digits and characters       | does not throw any error | collateral.xlsx | default            | 347                       | <ApplicationStage> | <applicantType> | <category> |     | <ProductType> |
      | valid    | Remarks(Reason Details) | national_saving_certificate            | 164                                           | negative                         | does not throw any error | collateral.xlsx | default            | 347                       | <ApplicationStage> | <applicantType> | <category> |     | <ProductType> |
      | valid    | Remarks(Reason Details) | national_saving_certificate            | 165                                           | hyphen                           | does not throw any error | collateral.xlsx | default            | 347                       | <ApplicationStage> | <applicantType> | <category> |     | <ProductType> |
      | valid    | Remarks(Reason Details) | national_saving_certificate            | 166                                           | space                            | does not throw any error | collateral.xlsx | default            | 347                       | <ApplicationStage> | <applicantType> | <category> |     | <ProductType> |
      | valid    | Remarks(Reason Details) | national_saving_certificate            | 167                                           | special characters except hyphen | does not throw any error | collateral.xlsx | default            | 347                       | <ApplicationStage> | <applicantType> | <category> |     | <ProductType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Validity | FieldName               | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | InputType                        | Throws_NotThrows         | CollateralWB    | Collateral_default | Collateral_default_rowNum | ApplicationStage   | applicantType   | category | key | ProductType   |
      | valid    | Remarks(Reason Details) | national_saving_certificate            | 161                                           | positive digits                  | does not throw any error | collateral.xlsx | default            | 347                       | <ApplicationStage> | <applicantType> |          |     | <ProductType> |
      | valid    | Remarks(Reason Details) | national_saving_certificate            | 162                                           | characters                       | does not throw any error | collateral.xlsx | default            | 347                       | <ApplicationStage> | <applicantType> |          |     | <ProductType> |
      | valid    | Remarks(Reason Details) | national_saving_certificate            | 163                                           | both digits and characters       | does not throw any error | collateral.xlsx | default            | 347                       | <ApplicationStage> | <applicantType> |          |     | <ProductType> |
      | valid    | Remarks(Reason Details) | national_saving_certificate            | 164                                           | negative                         | does not throw any error | collateral.xlsx | default            | 347                       | <ApplicationStage> | <applicantType> |          |     | <ProductType> |
      | valid    | Remarks(Reason Details) | national_saving_certificate            | 165                                           | hyphen                           | does not throw any error | collateral.xlsx | default            | 347                       | <ApplicationStage> | <applicantType> |          |     | <ProductType> |
      | valid    | Remarks(Reason Details) | national_saving_certificate            | 166                                           | space                            | does not throw any error | collateral.xlsx | default            | 347                       | <ApplicationStage> | <applicantType> |          |     | <ProductType> |
      | valid    | Remarks(Reason Details) | national_saving_certificate            | 167                                           | special characters except hyphen | does not throw any error | collateral.xlsx | default            | 347                       | <ApplicationStage> | <applicantType> |          |     | <ProductType> |

  @SkippedFormatValidation
  @NotImplementable
  Scenario: ACAUTOCAS-3689:  CollateralPage Reason details field format validation for collateral Sub Type National Saving Certificate
    And user opens "CollateralPage"
    And user adds a new collateral type as "Deposit" and Sub Type "National Saving Certificate"
    Then user should be able to see all fields of "<Reason details>" with proper format


  Scenario Outline: ACAUTOCAS-3690:  CollateralPage Reason details field labels for National Saving Certificate of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user closes duplicate check result box after checking the duplicates
    Then user should be able to see all fields of "<Reason details>" with proper labels
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Reason details     | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | Reason Code        | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | collateral.xlsx | Reason Description | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | collateral.xlsx | Remarks            | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |


  # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Reason details     | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | collateral.xlsx | Reason Code        | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | collateral.xlsx | Reason Description | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | collateral.xlsx | Remarks            | default            | 347                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Reason details     | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | Reason Code        | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | collateral.xlsx | Reason Description | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | collateral.xlsx | Remarks            | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

