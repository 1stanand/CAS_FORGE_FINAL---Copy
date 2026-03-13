@Epic-Loan_Application_Details
@AuthoredBy-anshika.gupta
@ReviewedBy-
@ImplementedBy-anshika.gupta

  #Prerequisite: Promo Codes should be maintained in Masters
  # ${ApplicantType:["indiv","nonindiv"]}
Feature: Validation of Promo Code Details in Sourcing Details Tab

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

    ####Bug:CAS-167949,CAS-90586
  @Release
  #FeatureID-ACAUTOCAS-11131
    @Sanity
  Scenario Outline: Save promo code in sourcing details on clicking on Get Promo Code button at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user clicks on sourcing details page of "<ApplicationStage>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    And user fill sourcing details with "mandatory" fields
    And user clicks on the Promo Code Details accordion
    And user enters a "valid" Promo Code Name in Promo Code details manually
    When user clicks on the Get Promo Code button
    Then promo code should be added successfully in sourcing details

    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | sourcing_details.xlsx | home                 | 290                         |

    # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | sourcing_details.xlsx | home                 | 290                         |

    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${category : ["bonds"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category   | key | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | sourcing_details.xlsx | home                 | 290                         |

    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | sourcing_details.xlsx | home                 | 290                         |


#Prerequisite: promo code is not mandatory to add in sourcing details
  ####Bug:CAS-108703
  ###Squash:12_CAS-53051
  @Release
  #FeatureID-ACAUTOCAS-11131
  Scenario Outline: Move application without adding promo code details in sourcing details at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user clicks on sourcing details page of "<ApplicationStage>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    And user fill sourcing details with "mandatory" fields
    And user clicks on the Promo Code Details accordion
    And no promo code is added in promo code details
    When user clicks on Save and Next button
    Then application should get moved to next page
    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | sourcing_details.xlsx | home                 | 290                         |

    # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | sourcing_details.xlsx | home                 | 290                         |

     # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category : ["bonds"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category   | key | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | sourcing_details.xlsx | home                 | 290                         |

    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | sourcing_details.xlsx | home                 | 290                         |


  ###Squash:03_CAS-53051
  ####Bug:CAS-219270
  @Release
  #FeatureID-ACAUTOCAS-11131
  Scenario Outline: Add multiple <var> promo code details at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user clicks on sourcing details page of "<ApplicationStage>"
    And user clicks on the Promo Code Details accordion
    When user adds multiple "<var>" "valid" promo code details
      | sourcing_details.xlsx | home | 289 |
      | sourcing_details.xlsx | home | 290 |
      | sourcing_details.xlsx | home | 291 |
      | sourcing_details.xlsx | home | 288 |
    Then user should be able to see multiple "<var>" promo code details
      | sourcing_details.xlsx | home | 289 |
      | sourcing_details.xlsx | home | 290 |
      | sourcing_details.xlsx | home | 291 |
      | sourcing_details.xlsx | home | 288 |

    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | var | category | key | ApplicationStage   | ApplicantType   |
      | <ProductType> | 2   |          |     | <ApplicationStage> | <ApplicantType> |
      | <ProductType> | 4   |          |     | <ApplicationStage> | <ApplicantType> |

     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @Islamic
    Examples:
      | ProductType   | var | category | key | ApplicationStage   | ApplicantType   |
      | <ProductType> | 2   |          |     | <ApplicationStage> | <ApplicantType> |
      | <ProductType> | 4   |          |     | <ApplicationStage> | <ApplicantType> |

     # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${category : ["bonds"]}
    @Islamic
    Examples:
      | ProductType   | var | category   | key | ApplicationStage   | ApplicantType   |
      | <ProductType> | 2   | <category> |     | <ApplicationStage> | <ApplicantType> |
      | <ProductType> | 4   | <category> |     | <ApplicationStage> | <ApplicantType> |

   #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | var | category | key | ApplicationStage   | ApplicantType   |
      | <ProductType> | 2   |          |     | <ApplicationStage> | <ApplicantType> |
      | <ProductType> | 4   |          |     | <ApplicationStage> | <ApplicantType> |

  @Release
  #FeatureID-ACAUTOCAS-11131
  Scenario Outline: Add multiple "<var>" promo code table rows without filling promo code details at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user clicks on sourcing details page of "<ApplicationStage>"
    And user clicks on the Promo Code Details accordion
    When user add multiple "<var>" promo code detail rows
    Then multiple "<var>" promo code table rows should be added successfully

    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | var | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | 2   | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | 4   | <ApplicationStage> | <ApplicantType> |          |     |

     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @Islamic
    Examples:
      | ProductType   | var | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | 2   | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | 4   | <ApplicationStage> | <ApplicantType> |          |     |

     # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${category : ["bonds"]}
    @Islamic
    Examples:
      | ProductType   | var | ApplicationStage   | ApplicantType   | category   | key |
      | <ProductType> | 2   | <ApplicationStage> | <ApplicantType> | <category> |     |
      | <ProductType> | 4   | <ApplicationStage> | <ApplicantType> | <category> |     |

    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | var | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | 2   | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | 4   | <ApplicationStage> | <ApplicantType> |          |     |

  @Release
  #FeatureID-ACAUTOCAS-11131
  Scenario Outline: Delete promo code table rows without filling promo code details at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user clicks on sourcing details page of "<ApplicationStage>"
    And user clicks on the Promo Code Details accordion
    And user add multiple "<var>" promo code detail rows
    When user deletes "<var>" promo code details rows
    Then promo code table rows should be deleted successfully

    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | var | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | 4   | <ApplicationStage> | <ApplicantType> |          |     |

     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @Islamic
    Examples:
      | ProductType   | var | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | 4   | <ApplicationStage> | <ApplicantType> |          |     |

     # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${category : ["bonds"]}
    @Islamic
    Examples:
      | ProductType   | var | ApplicationStage   | ApplicantType   | category   | key |
      | <ProductType> | 4   | <ApplicationStage> | <ApplicantType> | <category> |     |

    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | var | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | 4   | <ApplicationStage> | <ApplicantType> |          |     |

  @Release
  #FeatureID-ACAUTOCAS-11131
  Scenario Outline: Delete specific promo code in sourcing details on clicking on delete promo code icon at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user clicks on sourcing details page of "<ApplicationStage>"
    And user clicks on the Promo Code Details accordion
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    And user enters a "valid" Promo Code Name in Promo Code details manually
    When user click on delete icon for a specific promo code
    Then the selected promo code should be deleted successfully

    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 290                         |          |     |


     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 290                         |          |     |

     # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${category : ["bonds"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | category   | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 290                         | <category> |     |

   #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 290                         |          |     |

  @Release
  #FeatureID-ACAUTOCAS-11131
  Scenario Outline: Validation of rows count for promo code details table after deletion of <certain> rows at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user clicks on sourcing details page of "<ApplicationStage>"
    And user clicks on the Promo Code Details accordion
    And user adds multiple "<var>" "valid" promo code details
      | sourcing_details.xlsx | home | 289 |
      | sourcing_details.xlsx | home | 290 |
      | sourcing_details.xlsx | home | 291 |
      | sourcing_details.xlsx | home | 288 |
    When user deletes "<certain>" promo code details rows
    Then promo code should be deleted successfully with validation of remaining <Left_Count> rows
    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | var | certain | Left_Count | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | 4   | 2       | 2          | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | 4   | 4       | 0          | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | 3   | 0       | 3          | <ApplicationStage> | <ApplicantType> |          |     |


     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @Islamic
    Examples:
      | ProductType   | var | certain | Left_Count | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | 4   | 2       | 2          | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | 4   | 4       | 0          | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | 3   | 0       | 3          | <ApplicationStage> | <ApplicantType> |          |     |

    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${category : ["bonds"]}
    @Islamic
    Examples:
      | ProductType   | var | certain | Left_Count | ApplicationStage   | ApplicantType   | category   | key |
      | <ProductType> | 4   | 2       | 2          | <ApplicationStage> | <ApplicantType> | <category> |     |
      | <ProductType> | 4   | 4       | 0          | <ApplicationStage> | <ApplicantType> | <category> |     |
      | <ProductType> | 3   | 0       | 3          | <ApplicationStage> | <ApplicantType> | <category> |     |

   #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | var | certain | Left_Count | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | 4   | 2       | 2          | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | 4   | 4       | 0          | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | 3   | 0       | 3          | <ApplicationStage> | <ApplicantType> |          |     |

  ####Squash: 10_CAS-86206
  @Release
  #FeatureID-ACAUTOCAS-11131
  Scenario Outline: Validation of initial promo code row with fields in Promo Code Details accordion at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user clicks on sourcing details page of "<ApplicationStage>"
    When user clicks on the Promo Code Details accordion
    Then user should be able to see one promo code detail row with fields
      | Field           | Value |
      | Promo Code Name | empty |
      | Source          | empty |
      | Description     | empty |
      | Promo Type      | empty |


    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${category : ["bonds"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category   | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     |

    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  ####Squash:01_CAS-86206,02_CAS-86206,05_CAS-86206
  @Release
  #FeatureID-ACAUTOCAS-11131
  Scenario Outline: Auto-populate fields after entering a valid Promo Code Name at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user clicks on sourcing details page of "<ApplicationStage>"
    And user clicks on the Promo Code Details accordion
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    And user should be able to see one promo code detail row with fields
      | Field           | Value |
      | Promo Code Name | empty |
      | Source          | empty |
      | Description     | empty |
      | Promo Type      | empty |
    When user enters a "valid" Promo Code Name in Promo Code details manually
    Then the following fields should be auto-populated basis the promo code applied:
      | Source      |
      | Description |
      | Promo Type  |

    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 290                         |          |     |


     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 290                         |          |     |

     # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${category : ["bonds"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | category   | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 290                         | <category> |     |

    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 290                         |          |     |


    ####Squash:06_CAS-86206
  @Release
  #FeatureID-ACAUTOCAS-11131
  Scenario Outline: Display source as <value> for manually applied promo codes at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user clicks on sourcing details page of "<ApplicationStage>"
    And user clicks on the Promo Code Details accordion
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    When user enters a "valid" Promo Code Name in Promo Code details manually
    Then the source should be displayed as "<value>"

    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | value  | ApplicationStage   | ApplicantType   | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | category | key |
      | <ProductType> | MANUAL | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 290                         |          |     |

    # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @Islamic
    Examples:
      | ProductType   | value  | ApplicationStage   | ApplicantType   | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | category | key |
      | <ProductType> | MANUAL | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 290                         |          |     |

     # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    Examples:
      | ProductType   | value  | ApplicationStage   | ApplicantType   | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | category   | key |
      | <ProductType> | MANUAL | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 290                         | <category> |     |

    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | value  | ApplicationStage   | ApplicantType   | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | category | key |
      | <ProductType> | MANUAL | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 290                         |          |     |

  @Release
  #FeatureID-ACAUTOCAS-11131
  Scenario Outline: Validation of Promo Code Name field with <Validity> data in Promo Code details at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user clicks on sourcing details page of "<ApplicationStage>"
    And user clicks on the Promo Code Details accordion
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    When user enters a "<Validity>" Promo Code Name in Promo Code details manually
    Then Promo Code Name field should "<ErrorBehaviour>" with error message "<ErrorMessage>"

    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | Validity | ErrorBehaviour    | ErrorMessage   | ApplicationStage   | ApplicantType   | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | category | key |
      | <ProductType> | invalid  | show an error     | No Data Found! | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 292                         |          |     |
      | <ProductType> | valid    | not show an error |                | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 290                         |          |     |

     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @Islamic
    Examples:
      | ProductType   | Validity | ErrorBehaviour    | ErrorMessage   | ApplicationStage   | ApplicantType   | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | category | key |
      | <ProductType> | invalid  | show an error     | No Data Found! | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 292                         |          |     |
      | <ProductType> | valid    | not show an error |                | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 290                         |          |     |

     # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${category : ["bonds"]}
    @Islamic
    Examples:
      | ProductType   | Validity | ErrorBehaviour    | ErrorMessage   | ApplicationStage   | ApplicantType   | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | category   | key |
      | <ProductType> | invalid  | show an error     | No Data Found! | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 292                         | <category> |     |
      | <ProductType> | valid    | not show an error |                | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 290                         | <category> |     |

    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | Validity | ErrorBehaviour    | ErrorMessage   | ApplicationStage   | ApplicantType   | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | category | key |
      | <ProductType> | invalid  | show an error     | No Data Found! | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 292                         |          |     |
      | <ProductType> | valid    | not show an error |                | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 290                         |          |     |

  @Release
  #FeatureID-ACAUTOCAS-11131
  Scenario Outline: Ensure <Field> remain empty for invalid promo code name at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user clicks on sourcing details page of "<ApplicationStage>"
    And user clicks on the Promo Code Details accordion
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    When user enters a "invalid" Promo Code Name in Promo Code details manually
    Then the "<Field>" should remain empty

    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | Field       | ApplicationStage   | ApplicantType   | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | category | key |
      | <ProductType> | Source      | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 292                         |          |     |
      | <ProductType> | Description | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 292                         |          |     |
      | <ProductType> | Promo Type  | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 292                         |          |     |

     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @Islamic
    Examples:
      | ProductType   | Field       | ApplicationStage   | ApplicantType   | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | category | key |
      | <ProductType> | Source      | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 292                         |          |     |
      | <ProductType> | Description | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 292                         |          |     |
      | <ProductType> | Promo Type  | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 292                         |          |     |
    @Islamic
     # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${category : ["bonds"]}

    Examples:
      | ProductType   | Field       | ApplicationStage   | ApplicantType   | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | category   | key |
      | <ProductType> | Source      | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 292                         | <category> |     |
      | <ProductType> | Description | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 292                         | <category> |     |
      | <ProductType> | Promo Type  | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 292                         | <category> |     |


    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | Field       | ApplicationStage   | ApplicantType   | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | category | key |
      | <ProductType> | Source      | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 292                         |          |     |
      | <ProductType> | Description | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 292                         |          |     |
      | <ProductType> | Promo Type  | <ApplicationStage> | <ApplicantType> | sourcing_details.xlsx | home                 | 292                         |          |     |


    ####Squash:10_CAS-86206
  @Release
  #FeatureID-ACAUTOCAS-11131
  Scenario Outline: Ensure fields are displayed in disabled mode in Promo Code Details accordion at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user clicks on sourcing details page of "<ApplicationStage>"
    When user clicks on the Promo Code Details accordion
    Then the following fields should be displayed in disabled mode:
      | Source      |
      | Description |
      | Promo Type  |

    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

     # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${category : ["bonds"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category   | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     |

    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

  ####Squash:12_CAS-86206
  @Release
  #FeatureID-ACAUTOCAS-11131
  Scenario Outline: Verify promo code name is displayed in editable mode at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user clicks on sourcing details page of "<ApplicationStage>"
    When user clicks on the Promo Code Details accordion
    Then the promo code name should be displayed in editable mode

    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

     # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${category : ["bonds"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category   | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     |

    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

  ####Squash:13_CAS-86206
  ####Bug:CAS-220935
  @Release
  #FeatureID-ACAUTOCAS-11131
  Scenario Outline: Verify no duplicate promo codes allowed at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user clicks on sourcing details page of "<ApplicationStage>"
    And user clicks on the Promo Code Details accordion
    When user adds multiple "<var>" "same" promo code details
      | sourcing_details.xlsx | home | 289 |
      | sourcing_details.xlsx | home | 289 |
    Then an error message "<ErrorMessage>" "should" be displayed

    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | var | ErrorMessage             | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | 2   | Promo Code already added | <ApplicationStage> | <ApplicantType> |          |     |

     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @Islamic
    Examples:
      | ProductType   | var | ErrorMessage             | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | 2   | Promo Code already added | <ApplicationStage> | <ApplicantType> |          |     |

     # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${category : ["bonds"]}
    @Islamic
    Examples:
      | ProductType   | var | ErrorMessage             | ApplicationStage   | ApplicantType   | category   | key |
      | <ProductType> | 2   | Promo Code already added | <ApplicationStage> | <ApplicantType> | <category> |     |

    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | var | ErrorMessage             | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | 2   | Promo Code already added | <ApplicationStage> | <ApplicantType> |          |     |


#Prerequisite: Atleast 2 promo code of credit promo type should be mapped in promo code mapping master
  ####Squash:03_CAS-53051,04_CAS-53051,08_CAS_88801
  ####Bug:CAS-208799
  @Release
  #FeatureID-ACAUTOCAS-11131
  Scenario Outline: Verify that only one Credit promo code can be added at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user clicks on sourcing details page of "<ApplicationStage>"
    And user clicks on the Promo Code Details accordion
    When user adds multiple "<var>" "Credit" promo code details
      | sourcing_details.xlsx | home | 288 |
      | sourcing_details.xlsx | home | 293 |
    Then an error message "<ErrorMessage>" "should" be displayed

    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | var | ErrorMessage                            | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | 2   | Only one Credit Promo type can be added | <ApplicationStage> | <ApplicantType> |          |     |

     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @Islamic
    Examples:
      | ProductType   | var | ErrorMessage                            | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | 2   | Only one Credit Promo type can be added | <ApplicationStage> | <ApplicantType> |          |     |


     # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${category : ["bonds"]}
    @Islamic
    Examples:
      | ProductType   | var | ErrorMessage                            | ApplicationStage   | ApplicantType   | category   | key |
      | <ProductType> | 2   | Only one Credit Promo type can be added | <ApplicationStage> | <ApplicantType> | <category> |     |

    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | var | ErrorMessage                            | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | 2   | Only one Credit Promo type can be added | <ApplicationStage> | <ApplicantType> |          |     |


  #Prerequisite: Atleast 2 promo code of sales promo type should be mapped in promo code mapping master
  ####Squash:03_CAS-53051,04_CAS-53051,08_CAS_88801
  ####Bug:CAS-208799
  @Release
  #FeatureID-ACAUTOCAS-11131
  Scenario Outline: Verify that multiple sales promo code can be added at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user clicks on sourcing details page of "<ApplicationStage>"
    And user clicks on the Promo Code Details accordion
    When user adds multiple "<var>" "Sales" promo code details
      | sourcing_details.xlsx | home | 289 |
      | sourcing_details.xlsx | home | 290 |
      | sourcing_details.xlsx | home | 291 |
    Then an error message "<ErrorMessage>" "should not" be displayed

    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | var | ErrorMessage | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | 3   |              | <ApplicationStage> | <ApplicantType> |          |     |

     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @Islamic
    Examples:
      | ProductType   | var | ErrorMessage | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | 3   |              | <ApplicationStage> | <ApplicantType> |          |     |

     # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${category : ["bonds"]}
    @Islamic
    Examples:
      | ProductType   | var | ErrorMessage | ApplicationStage   | ApplicantType   | category   | key |
      | <ProductType> | 3   |              | <ApplicationStage> | <ApplicantType> | <category> |     |

    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | var | ErrorMessage | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | 3   |              | <ApplicationStage> | <ApplicantType> |          |     |


    ####Squash:01_CAS-53051
  @Release
  #FeatureID-ACAUTOCAS-11131
  Scenario Outline: Verify promo code accordion is present in the sourcing details at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    When user clicks on sourcing details page of "<ApplicationStage>"
    Then promo code accordion should be present in the sourcing details

    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

     # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${category : ["bonds"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category   | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     |

    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

  @Release
  #FeatureID-ACAUTOCAS-11131
  Scenario Outline: Verify promo code details are non-editable at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user clicks on sourcing details page of "<ApplicationStage>"
    When user clicks on the Promo Code Details accordion
    Then the promo code details should be present in view only mode
      | Promo Code Name |
      | Source          |
      | Description     |
      | Promo Type      |

    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["Post Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Post Approval"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

     # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Post Approval"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category   | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     |
