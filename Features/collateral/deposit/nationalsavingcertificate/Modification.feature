@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral
@ReleaseSecCollateralM5

 
#${CollateralSubType:["National Saving Certificate"]}
#${ApplicantType:["indiv","nonindiv"]}
Feature: National Saving Certificate Modification

#  Pre-Requisites---
#  In this feature we will attach an Deposit National Saving Certificate to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-3682:  Deleting a National Saving Certificate attached to the application of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "national_saving_certificate" and row 191
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user deletes the saved collateral
    Then user should be able to successfully deletes the collateral based on sub type
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  Scenario Outline: ACAUTOCAS-3059:  National Saving Certificate Data Modification of <FieldName> in Deposit Details of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "national_saving_certificate" and row 191
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user click on modify collateral subtype
    Then user should be able to modify the data in field "<FieldName>"
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName         | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Collateral Ref No | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Description       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Name Of Holder    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Name of Holder 2  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Name of Holder 3  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Deposit No        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Deposit Amount    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Amount   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Issue Date        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Date     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Face Value        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Accrued Value     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Value    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Remarks           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName         | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | Collateral Ref No | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Description       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Name Of Holder    | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Name of Holder 2  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Name of Holder 3  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Deposit No        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Deposit Amount    | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Maturity Amount   | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Issue Date        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Maturity Date     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Face Value        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Accrued Value     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Maturity Value    | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Remarks           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName         | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Collateral Ref No | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Description       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Name Of Holder    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Name of Holder 2  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Name of Holder 3  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Deposit No        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Deposit Amount    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Amount   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Issue Date        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Date     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Face Value        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Accrued Value     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Value    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Remarks           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-3060:  National Saving Certificate restrictions in Data Modification of <FieldName> of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "national_saving_certificate" and row 191
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user click on modify collateral subtype
    Then user should not be able to modify the data in field "<FieldName>"
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName                | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Collateral ID            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Global Collateral Number | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Collateral Type          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Collateral SubType       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | Collateral ID            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Global Collateral Number | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Collateral Type          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Collateral SubType       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Collateral ID            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Global Collateral Number | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Collateral Type          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Collateral SubType       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-3683:  Insurance Tab for National Saving Certificate Collateral  of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "national_saving_certificate" and row 191
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user click on modify collateral subtype
    Then user should not see Insurance Tab
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  @Sanity
  Scenario Outline: ACAUTOCAS-4355:  National Saving Certificate Data Modifications  of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "national_saving_certificate" and row 191
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user click on modify collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user fills mandatory fields of national saving certificate
    And user saves the Collateral Details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum1>
    Then user get the data save successfully
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | Collateral_national_saving_certificate_rowNum1 | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | national_saving_certificate            | 0                                             | 0                                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | Collateral_national_saving_certificate_rowNum1 | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | collateral.xlsx | national_saving_certificate            | 0                                             | 0                                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | Collateral_national_saving_certificate_rowNum1 | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | national_saving_certificate            | 0                                             | 0                                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  Scenario Outline: ACAUTOCAS-4356:  National Saving Certificate Data Modification in Asset Details for dedupe revalidation of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "national_saving_certificate" and row 191
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user click on modify collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user fills mandatory fields of national saving certificate
    And user saves the Collateral Details
    Then user should get proper error message
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | national_saving_certificate            | 180                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | national_saving_certificate            | 1                                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | collateral.xlsx | national_saving_certificate            | 180                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | national_saving_certificate            | 1                                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | national_saving_certificate            | 180                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | national_saving_certificate            | 1                                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  @ImplementedBy-rishabh.sachan
  @Conventional
  #Data in CMS required please refer to original gwt
  #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
  #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
  Scenario Outline: ACAUTOCAS-4357:  Dedupe revalidation to identify duplicate collaterals of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of national saving certificate
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum2>
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of national saving certificate
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user edits the recently added collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum3>
    When user fills mandatory fields of national saving certificate
    And checks for duplicate collateral
    And user views the duplicate collateral
    Then user should validate <Number> duplicate "<CollateralSubType>" record for "<SourceSystem>" source system
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | Collateral_national_saving_certificate_rowNum2 | Collateral_national_saving_certificate_rowNum3 | ProductType   | ApplicationStage   | SecondaryApplicationStage | Key | Category | ApplicantType | Number | SourceSystem | CollateralSubType   |
      | collateral.xlsx | national_saving_certificate            | 362                                           | 363                                            | 364                                            | <ProductType> | <ApplicationStage> | Post Approval             |     |          | indiv         | 1      | CMS          | <CollateralSubType> |
      | collateral.xlsx | national_saving_certificate            | 362                                           | 363                                            | 364                                            | <ProductType> | <ApplicationStage> | Post Approval             |     |          | indiv         | 1      | CAS          | <CollateralSubType> |


  #Data in CMS required please refer to original gwt
  @ImplementedBy-rishabh.sachan
  @Conventional
  #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
  #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
  Scenario Outline: ACAUTOCAS-4358:  Dedupe revalidation to identify and view duplicate collaterals of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of national saving certificate
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum2>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of national saving certificate
    And user checks the duplicates on collateral dedupe check
    And save the collateral data for modification
    And user edits the recently added collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    When user fills mandatory fields of national saving certificate
    And checks for duplicate collateral
    Then User should be able to view the duplicates of "<CollateralSubType>" collateral
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | Collateral_national_saving_certificate_rowNum2 | ProductType   | ApplicationStage   | SecondaryApplicationStage | Key | Category | ApplicantType | CollateralSubType   |
      | collateral.xlsx | national_saving_certificate            | 196                                           | 362                                            | <ProductType> | <ApplicationStage> | Post Approval             |     |          | indiv         | <CollateralSubType> |


  @LoggedBug-CAS-222947
  #not implemented properly refer to the orignal gwt
  Scenario Outline: ACAUTOCAS-4359:  Dedupe revalidation to identify and attach duplicate collaterals to the same application of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of national saving certificate
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum2>
    And user add new collateral details
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of national saving certificate
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user edits the recently added collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    When user fills mandatory fields of national saving certificate
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "<CollateralSubType>" collateral from dedupe result which is already attached to the application
    And user saves selected dedupe collateral
    Then user gets a notification message
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | Collateral_national_saving_certificate_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | national_saving_certificate            | 365                                           | 362                                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | Collateral_national_saving_certificate_rowNum2 | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | national_saving_certificate            | 365                                           | 362                                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | Collateral_national_saving_certificate_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | national_saving_certificate            | 365                                           | 362                                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

  @ImplementedBy-rishabh.sachan
  @Conventional
  @Sanity
  #not implemented properly refer to the orignal gwt
 #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
 #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
  Scenario Outline: ACAUTOCAS-4360:  Dedupe revalidation to identify and attach duplicate collaterals to different application of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of national saving certificate
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum2>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of national saving certificate
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user edits the recently added collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    When user fills mandatory fields of national saving certificate
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "<CollateralSubType>" collateral from dedupe result which is not attached to the application
    And user saves selected dedupe collateral
    Then user gets a notification message
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | Collateral_national_saving_certificate_rowNum2 | ProductType   | ApplicationStage   | SecondaryApplicationStage | Key | Category | ApplicantType | CollateralSubType   |
      | collateral.xlsx | national_saving_certificate            | 366                                           | 362                                            | <ProductType> | <ApplicationStage> | Post Approval             |     |          | indiv         | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-4361:  Dedupe revalidation to identify and ignore duplicate collaterals of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "national_saving_certificate" and row 191
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user click on modify collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user modifies the data of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And saves the data
    Then user is asked to enter the reason of ignoring duplicates
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | national_saving_certificate            | 0                                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | collateral.xlsx | national_saving_certificate            | 0                                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | national_saving_certificate            | 0                                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
