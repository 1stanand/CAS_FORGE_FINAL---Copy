@Epic-Applicant_Information
@AuthoredBy-harshita.nayak
@Perishable
@AppInfoAdoption
@Dedupe
@LoggedBug-CAS-229399
    #${ApplicantType:["indiv","nonindiv"]}
Feature: Copy Applicants Dedupe

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#  CAS-99581_Provision to copy (from dedupe result) primary applicant even after save

  #01_CAS-99581
    #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @FixedExp
  Scenario Outline: ACAUTOCAS-12809: Verify Copy option should be available for applicant before save in dedupe match screen at "<ApplicationStage>" stage for "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user opens Applicant information page of "<ApplicationStage>" with view and edit mode
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <RowNum>
    And user add identification for "<ApplicantType>" applicant
    And user fills the address details on Applicant Information for "<ApplicantType>" applicant
    And user check for duplicate for "<ApplicantType>" applicant
    When user click on "<Field_Name>" No of Dedupe Match hyperlink on Applicant Information
    Then Copy option should be available for "<ApplicantType>" applicant before save in dedupe match screen
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Field_Name        | Category   | key |RowNum|
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Application Match | <Category> |     |19    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Customer Match    | <Category> |     |19    |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Field_Name        | Category | key |RowNum|
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Application Match |          |     |19    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Customer Match    |          |     |19    |


    @Conventional
    @Release @Part-1
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Field_Name        | Category | key |RowNum|
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Application Match |          |     |14    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Customer Match    |          |     |14    |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Field_Name        | Category | key |RowNum|
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Application Match |          |     |19    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Customer Match    |          |     |19    |

  #01_CAS-99581
    #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @FixedExp
  Scenario Outline: ACAUTOCAS-12810: Verify Copy option should be available for applicant after save in dedupe match screen at "<ApplicationStage>" stage for "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user opens Applicant information page of "<ApplicationStage>" with view and edit mode
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <RowNum>
    And user add identification for "<ApplicantType>" applicant
    And user fills the address details on Applicant Information for "<ApplicantType>" applicant
    And user check for duplicate for "<ApplicantType>" applicant
    And user save the personal Information page of "<ApplicantType>" applicant
    And user check for duplicate for "<ApplicantType>" applicant
    When user click on "<Field_Name>" No of Dedupe Match hyperlink on Applicant Information
    Then Copy option should be available for "<ApplicantType>" applicant before save in dedupe match screen
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category   | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> | <Category> |     |19    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> | <Category> |     |19    |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> |          |     |19    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> |          |     |19    |


    @Conventional
    @Release @Part-1
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> |          |     |14    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> |          |     |14    |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> |          |     |14    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> |          |     |14    |


#  #02_CAS-99581,04_CAS-99581,CAS-182669,CAS-179519,CAS-182669,CAS-188285
    #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @Sanity
  Scenario Outline: ACAUTOCAS-12811: Data of the applicant is copy with the existing applicant data at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user opens Applicant information page of "<ApplicationStage>" with view and edit mode
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <RowNum>
    And user add identification for "<ApplicantType>" applicant
    And user fills the address details on Applicant Information for "<ApplicantType>" applicant
    And user open Communication Details accordion for "<ApplicantType>" applicant
    And user save the Email Id in the Context
    And user check for duplicate for "<ApplicantType>" applicant
    When user click on "<Field_Name>" No of Dedupe Match hyperlink on Applicant Information
    And user click on copy hyperlink of "<ApplicantType>" applicant for "<Field_Name>"
    And user check the "Email Id" to Replaced
    And user click on Replace
    Then user should be able to validate that the data of the applicant is successfully copy with the existing applicant data

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category   | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> | <Category> |     |19    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> | <Category> |     |19    |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> |          |     |19    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> |          |     |19    |


    @Conventional
    @Release @Part-1
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> |          |     |14    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> |          |     |14    |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> |          |     |14    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> |          |     |14    |

  #05_CAS-99581
  Scenario Outline: ACAUTOCAS-12812: Copy Application should land to KYC Stage after send back from "<Subseq_stage>" stage for "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<Var_Stage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<KycCheckWB>" under sheet "<KycCheck_decision>" and row <KycCheck_decision_rowNum>
    And user fills the Kyc Check Details with "doc"
    And user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<Subseq_stage>" for "<Category>" with "<key>" stage
    And user opens an application at "dde" stage from application grid
    And user navigate to personal information screen on "<Subseq_stage>"
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <RowNum>
    And user add identification for "<ApplicantType>" applicant
    And user fills the address details on Applicant Information for "<ApplicantType>" applicant
    And user check for duplicate for "<ApplicantType>" applicant
    When user click on "<Field_Name>" No of Dedupe Match hyperlink on Applicant Information
    And user click on copy hyperlink of "<ApplicantType>" applicant for "<Field_Name>"
    And user check the "<ReplaceChecked>" to Replaced
    And user click on Replace
    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 5
    And user send back above application to "KYC" stage
    Then user validate that the Application Found in "KYC" Stage

    @Conventional
    @Release @Part-1
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | Var_Stage | Field_Name        | ApplicantType   | Field_Name        | Category | key | ReplaceChecked | KycCheckWB     | KycCheck_decision | KycCheck_decision_rowNum | Subseq_stage |RowNum|
      | <ProductType> | kyc       | Application Match | <ApplicantType> | Application Match |          |     | Email Id       | kyc_check.xlsx | decision          | 0                        | dde          |14    |
      | <ProductType> | kyc       | Customer Match    | <ApplicantType> | Customer Match    |          |     | Email Id       | kyc_check.xlsx | decision          | 0                        | dde          |14    |


  #06_CAS-
  @FixedExp
  Scenario Outline: ACAUTOCAS-12813: Copy option should be available for applicant at "<ApplicationStage>" stage for "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user opens Applicant information page of "<ApplicationStage>" with view and edit mode
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <RowNum>
    And user add identification for "<ApplicantType>" applicant
    And user fills the address details on Applicant Information for "<ApplicantType>" applicant
    And user check for duplicate for "<ApplicantType>" applicant
    When user click on "<Field_Name>" No of Dedupe Match hyperlink on Applicant Information
    Then Copy option should be available for "<ApplicantType>" applicant before save in dedupe match screen

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category   | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> | <Category> |     |19    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> | <Category> |     |19    |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> |          |     |19    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> |          |     |19    |


    @Conventional
    @Release @Part-1
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> |          |     |14    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> |          |     |14    |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> |          |     |14    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> |          |     |14    |

  #06_CAS-99581
  @FixedExp
  Scenario Outline: ACAUTOCAS-12814: Validate the complete data of copied applicant get replaced at "<ApplicationStage>" stage for "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
#    And user fetch customer number from current application
#    And user updates the application for dedupe
    And user navigate to personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <RowNum>
    And user add identification for "<ApplicantType>" applicant
    And user fills the address details on Applicant Information for "<ApplicantType>" applicant
    And user open Communication Details accordion for "<ApplicantType>" applicant
    And user save the Email Id in the Context
    And user check for duplicate for "<ApplicantType>" applicant
    When user click on "<Field_Name>" No of Dedupe Match hyperlink on Applicant Information
    And user click on copy hyperlink of "<ApplicantType>" applicant for "<Field_Name>"
    And user check the "Email Id" to Replaced
    And user click on Replace
    And user opens Applicant information page of "<ApplicationStage>" with view and edit mode
    And user open Communication Details accordion for "<ApplicantType>" applicant
    Then user should be able to validate that the data of the applicant is successfully replaced with the copied applicant data

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category   | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> | <Category> |     |19    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> | <Category> |     |19    |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> |          |     |19    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> |          |     |19    |


    @Conventional
    @Release @Part-1
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> |          |     |14    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> |          |     |14    |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> |          |     |14    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> |          |     |14    |

 # 07_CAS-99581
  @FixedExp
  Scenario Outline: ACAUTOCAS-12815: Copy application should be visible for applicant at "<ApplicationStage>" stage for "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user opens Applicant information page of "<ApplicationStage>" with view and edit mode
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <RowNum>
    And user add identification for "<ApplicantType>" applicant
    And user fills the address details on Applicant Information for "<ApplicantType>" applicant
    And user check for duplicate for "<ApplicantType>" applicant
    When user click on "<Field_Name>" No of Dedupe Match hyperlink on Applicant Information
    Then Copy option should be available for "<ApplicantType>" applicant before save in dedupe match screen

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category   | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> | <Category> |     |19    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> | <Category> |     |19    |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> |          |     |19    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> |          |     |19    |


    @Conventional
    @Release @Part-1
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> |          |     |14    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> |          |     |14    |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> |          |     |14    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> |          |     |14    |

#  Support - 16_CAS-99581,CAS-190793
  #06_CAS-
  Scenario Outline: ACAUTOCAS-12816: CustomerID remain same as previous after copying data from customer match dedupe at "<ApplicationStage>" stage for "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user opens Applicant information page of "<ApplicationStage>" with view and edit mode
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <RowNum>
    And user add identification for "<ApplicantType>" applicant
    And user fills the address details on Applicant Information for "<ApplicantType>" applicant
    And user check for duplicate for "<ApplicantType>" applicant
    When user click on "<Field_Name>" No of Dedupe Match hyperlink on Applicant Information
    And user click on copy hyperlink of "<ApplicantType>" applicant for "<Field_Name>"
    And user check the "Email Id" to Replaced
    And user click on Replace
    Then user should be able to validate that the CustomerID remain same as previous after copied applicant data

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category   | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> | <Category> |     |19    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> | <Category> |     |19    |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> |          |     |19    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> |          |     |19    |


    @Conventional
    @Release @Part-1
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> |          |     |14    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> |          |     |14    |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> |          |     |14    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> |          |     |14    |

# 08_CAS-99581
  @FixedExp
  Scenario Outline: ACAUTOCAS-12817: Replace the applicant with the existing applicant error message should be displayed at "<ApplicationStage>" stage for "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user opens Applicant information page of "<ApplicationStage>" with view and edit mode
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <RowNum>
    And user add identification for "<ApplicantType>" applicant
    And user fills the address details on Applicant Information for "<ApplicantType>" applicant
    And user check for duplicate for "<ApplicantType>" applicant
    When user click on "<Field_Name>" No of Dedupe Match hyperlink on Applicant Information
    And user click on copy hyperlink of "<ApplicantType>" applicant for "<Field_Name>"
    And user check the "Email Id" to Replaced
    And user click on Replace
    Then user received the message as "Please execute FIV and RCU"

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category   | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> | <Category> |     |19    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> | <Category> |     |19    |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> |          |     |19    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> |          |     |19    |


    @Conventional
    @Release @Part-1
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category | key | RowNum |
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> |          |     | 14     |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> |          |     | 14     |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> |          |     |14    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> |          |     |14    |

# CAS-169998,CAS-67553
  @FixedExp
  Scenario Outline: ACAUTOCAS-12818: Replace the applicant information while clicking on replace button at "<ApplicationStage>" stage for "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user opens Applicant information page of "<ApplicationStage>" with view and edit mode
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <RowNum>
    And user add identification for "<ApplicantType>" applicant
    And user fills the address details on Applicant Information for "<ApplicantType>" applicant
    And user check for duplicate for "<ApplicantType>" applicant
    When user click on "<Field_Name>" No of Dedupe Match hyperlink on Applicant Information
    And user click on copy hyperlink of "<ApplicantType>" applicant for "<Field_Name>"
    And user check the "<check_Box>" to Replaced
    And user click on Replace
    Then user should be able to Replace the applicant information while clicking on replace button
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    #${Field_Name:["Application Match","Customer Match"]}
    #${check_Box:["Email Id","Employment"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Field_Name   | Category   | key | check_Box   |RowNum|
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Field_Name> | <Category> |     | <check_Box> |19    |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Field_Name:["Application Match","Customer Match"]}
    #${check_Box:["Email Id","Employment"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Field_Name   | Category | key | check_Box   |RowNum|
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Field_Name> |          |     | <check_Box> |19    |


    @Conventional
    @Release @Part-1
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Field_Name:["Application Match","Customer Match"]}
    #${check_Box:["Email Id","Employment"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Field_Name   | Category | key | check_Box   |RowNum|
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Field_Name> |          |     | <check_Box> |14    |
    @NotImplemented
    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    #${Field_Name:["Application Match","Customer Match"]}
    #${check_Box:["Email Id","Employment"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Field_Name   | Category | key | check_Box   |RowNum|
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Field_Name> |          |     | <check_Box> |14    |

#  CAS-67714
  @FixedExp
  Scenario Outline: ACAUTOCAS-12819:  While copying dedupe details selected record should get copied and page redirect to application information page at "<ApplicationStage>" stage for "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user opens Applicant information page of "<ApplicationStage>" with view and edit mode
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <RowNum>
    And user add identification for "<ApplicantType>" applicant
    And user fills the address details on Applicant Information for "<ApplicantType>" applicant
    And user check for duplicate for "<ApplicantType>" applicant
    When user click on "<Field_Name>" No of Dedupe Match hyperlink on Applicant Information
    And user click on copy hyperlink of "<ApplicantType>" applicant for "<Field_Name>"
    And user check the "Email Id" to Replaced
    And user click on Replace
    Then page should be redirect to application information page

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category   | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> | <Category> |     |19    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> | <Category> |     |19    |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> |          |     |19    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> |          |     |19    |


    @Conventional
    @Release @Part-1
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> |          |     |14    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> |          |     |14    |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> |          |     |14    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> |          |     |14    |

# CAS-129365
  Scenario Outline: ACAUTOCAS-12820: Application should not show dedupe matching with same Application at "<ApplicationStage>" stage for "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user opens Applicant information page of "<ApplicationStage>" with view and edit mode
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <RowNum>
    And user add identification for "<ApplicantType>" applicant
    And user fills the address details on Applicant Information for "<ApplicantType>" applicant
    And user check for duplicate for "<ApplicantType>" applicant
    When user click on "<Field_Name>" No of Dedupe Match hyperlink on Applicant Information
    And user searches application on copy dedupe Screen for "<ApplicantType>" applicant
    Then user validate that application should not show dedupe matching with same Application

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category   | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> | <Category> |     |19    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> | <Category> |     |19    |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> |          |     |19    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> |          |     |19    |


    @Conventional
    @Release @Part-1
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> |          |     |14    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> |          |     |14    |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Field_Name        | ApplicantType   | Category | key |RowNum|
      | <ProductType> | <ApplicationStage> | Application Match | <ApplicantType> |          |     |14    |
      | <ProductType> | <ApplicationStage> | Customer Match    | <ApplicantType> |          |     |14    |

