@Epic-Loan_Application_Details
@AuthoredBy-vaishnavi.agrawal
@ReviewedBy-
@TechReviewedBy-
@ImplementedBy-vaishnavi.agrawal
# ${ApplicantType:["indiv","nonindiv"]}
Feature: Subsidy tab in sourcing details page

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  # Subsidy is configurable for product type, the following fields are available for capturing the details, if configured - Subsidy Flag (Yes/No), Subsidy type, Subsidy Lock in Period, Subsidy Method (Rate Based/Amount Based)and Subsidy Rate Based/ Subsidy Amount Based

  ###Squash:4_CAS-41863,4_CAS-27219
  #FeatureID-ACAUTOCAS-11130
  Scenario Outline: Validate fields in subsidy accordion at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user clicks on sourcing details page of "<ApplicationStage>"
    When user opens subsidy accordion
    Then the fields should be displayed
      | Subsidy Flag |

     # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","AGRL","FE","MHL","CV","LAP"]}
     # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
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
     #${category:["bonds"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category   | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     |

    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","CFL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

  ###Squash:4_CAS-41863,5_CAS-41863,7_CAS-27219
  #FeatureID-ACAUTOCAS-11130
  Scenario Outline: ACAUTOCAS-3472:Validate while selecting subsidy flag as <Var> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user clicks on sourcing details page of "<ApplicationStage>"
    And user opens subsidy accordion
    When the user selects the Subsidy Flag as "<Var>"
    Then the fields "<Actions>" be displayed
      | Subsidy Type           |
      | Subsidy Lock In Period |
      | Subsidy Method         |

     # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","AGRL","FE","MHL","CV","LAP"]}
     # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key | Actions    | Var |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Should     | YES |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Should Not | NO  |

     # ${ ProductType : ["IHF","IAF"]}
     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key | Actions    | Var |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Should     | YES |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Should Not | NO  |

     # ${ ProductType : ["IPF"]}
     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${category:["bonds"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category   | key | Actions    | Var |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | Should     | YES |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | Should Not | NO  |

     #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","CFL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key | Actions    | Var |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Should     | YES |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Should Not | NO  |

  ###Squash: 14_CAS-41863,15_CAS-41863,10_CAS-41863,8_CAS-41863,12_CAS-41863,10_CAS-27219,15_CAS-27219
  #FeatureID-ACAUTOCAS-11130
  Scenario Outline: ACAUTOCAS-3474:  Capturing the Subsidy Method as <subsidy_method> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user clicks on sourcing details page of "<ApplicationStage>"
    And user opens subsidy accordion
    And the user selects the Subsidy Flag as "YES"
    When the user selects the Subsidy Method as "<subsidy_method>"
    Then "<New_Field>" field should be displayed

     # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","AGRL","FE","MHL","CV","LAP"]}
     # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key | subsidy_method | New_Field            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     | Subsidy Rate Based   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   | Subsidy Amount Based |

     # ${ ProductType : ["IHF","IAF"]}
     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key | subsidy_method | New_Field            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     | Subsidy Rate Based   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   | Subsidy Amount Based |

     # ${ ProductType : ["IPF"]}
     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${category:["bonds"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category   | key | subsidy_method | New_Field            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | Rate Based     | Subsidy Rate Based   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | Amount Based   | Subsidy Amount Based |

    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","CFL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key | subsidy_method | New_Field            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     | Subsidy Rate Based   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   | Subsidy Amount Based |

  ###Squash:21_CAS-27219,20_CAS-27219,11_CAS-41863,9_CAS-41863,10_CAS-41863,12_CAS-41863,8_CAS-41863,11_CAS-27219,16_CAS-27219
  #FeatureID-ACAUTOCAS-11130
  Scenario Outline:Validation of <Field_Name> with <InputType> For Subsidy Details Tab at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user clicks on sourcing details page of "<ApplicationStage>"
    And user opens subsidy accordion
    And the user selects the Subsidy Flag as "YES"
    And the user selects the Subsidy Method as "<subsidy_method>"
    When user reads data from the excel file "<SourcingDetailsInfoWB>" under sheet "<SourcingDetails_Subsidy>" and row <SourcingDetails_Subsidy_rowNum>
    And user checks for "<Validity>" "<Field_Name>" with "<InputType>" in subsidy page
    Then "<Field_Name>" field "<Throws_notThrows>" error message in subsidy

     # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","AGRL","FE","MHL","CV","LAP"]}
     # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key | subsidy_method | Field_Name           | Validity | InputType                    | Throws_notThrows                   | SourcingDetailsInfoWB | SourcingDetails_Subsidy | SourcingDetails_Subsidy_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   | Subsidy Amount Based | valid    | valid value                  | does not throw any error           | sourcing_details.xlsx | subsidy                 | 0                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   | Subsidy Amount Based | valid    | up to 18 digits              | does not throw any error           | sourcing_details.xlsx | subsidy                 | 7                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   | Subsidy Amount Based | invalid  | both digits and characters   | throws an error with error message | sourcing_details.xlsx | subsidy                 | 1                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   | Subsidy Amount Based | invalid  | special characters           | throws an error with error message | sourcing_details.xlsx | subsidy                 | 2                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   | Subsidy Amount Based | invalid  | space                        | throws an error with error message | sourcing_details.xlsx | subsidy                 | 3                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   | Subsidy Amount Based | valid    | up to 2 decimal places       | does not throw any error           | sourcing_details.xlsx | subsidy                 | 4                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   | Subsidy Amount Based | invalid  | negative value               | throws an error with error message | sourcing_details.xlsx | subsidy                 | 5                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   | Subsidy Amount Based | valid    | zero value                   | does not throw any error           | sourcing_details.xlsx | subsidy                 | 6                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     | Subsidy Rate Based   | valid    | valid value                  | does not throw any error           | sourcing_details.xlsx | subsidy                 | 8                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     | Subsidy Rate Based   | valid    | greater than 0 and up to 100 | does not throw any error           | sourcing_details.xlsx | subsidy                 | 9                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     | Subsidy Rate Based   | invalid  | both digits and characters   | throws an error with error message | sourcing_details.xlsx | subsidy                 | 10                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     | Subsidy Rate Based   | invalid  | special characters           | throws an error with error message | sourcing_details.xlsx | subsidy                 | 11                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     | Subsidy Rate Based   | invalid  | space                        | throws an error with error message | sourcing_details.xlsx | subsidy                 | 12                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     | Subsidy Rate Based   | invalid  | zero value                   | throws an error with error message | sourcing_details.xlsx | subsidy                 | 13                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     | Subsidy Rate Based   | invalid  | negative value               | throws an error with error message | sourcing_details.xlsx | subsidy                 | 14                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     | Subsidy Rate Based   | valid    | up to 2 decimal places       | does not throw any error           | sourcing_details.xlsx | subsidy                 | 15                             |

     # ${ ProductType : ["IHF","IAF"]}
     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key | subsidy_method | Field_Name           | Validity | InputType                    | Throws_notThrows                   | SourcingDetailsInfoWB | SourcingDetails_Subsidy | SourcingDetails_Subsidy_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   | Subsidy Amount Based | valid    | valid value                  | does not throw any error           | sourcing_details.xlsx | subsidy                 | 0                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   | Subsidy Amount Based | valid    | up to 18 digits              | does not throw any error           | sourcing_details.xlsx | subsidy                 | 7                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   | Subsidy Amount Based | invalid  | both digits and characters   | throws an error with error message | sourcing_details.xlsx | subsidy                 | 1                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   | Subsidy Amount Based | invalid  | special characters           | throws an error with error message | sourcing_details.xlsx | subsidy                 | 2                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   | Subsidy Amount Based | invalid  | space                        | throws an error with error message | sourcing_details.xlsx | subsidy                 | 3                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   | Subsidy Amount Based | valid    | up to 2 decimal places       | does not throw any error           | sourcing_details.xlsx | subsidy                 | 4                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   | Subsidy Amount Based | invalid  | negative value               | throws an error with error message | sourcing_details.xlsx | subsidy                 | 5                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   | Subsidy Amount Based | valid    | zero value                   | does not throw any error           | sourcing_details.xlsx | subsidy                 | 6                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     | Subsidy Rate Based   | valid    | valid value                  | does not throw any error           | sourcing_details.xlsx | subsidy                 | 8                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     | Subsidy Rate Based   | valid    | greater than 0 and up to 100 | does not throw any error           | sourcing_details.xlsx | subsidy                 | 9                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     | Subsidy Rate Based   | invalid  | both digits and characters   | throws an error with error message | sourcing_details.xlsx | subsidy                 | 10                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     | Subsidy Rate Based   | invalid  | special characters           | throws an error with error message | sourcing_details.xlsx | subsidy                 | 11                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     | Subsidy Rate Based   | invalid  | space                        | throws an error with error message | sourcing_details.xlsx | subsidy                 | 12                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     | Subsidy Rate Based   | invalid  | zero value                   | throws an error with error message | sourcing_details.xlsx | subsidy                 | 13                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     | Subsidy Rate Based   | invalid  | negative value               | throws an error with error message | sourcing_details.xlsx | subsidy                 | 14                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     | Subsidy Rate Based   | valid    | up to 2 decimal places       | does not throw any error           | sourcing_details.xlsx | subsidy                 | 15                             |

     # ${ ProductType : ["IPF"]}
     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${category:["bonds"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category   | key | subsidy_method | Field_Name           | Validity | InputType                    | Throws_notThrows                   | SourcingDetailsInfoWB | SourcingDetails_Subsidy | SourcingDetails_Subsidy_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | Amount Based   | Subsidy Amount Based | valid    | valid value                  | does not throw any error           | sourcing_details.xlsx | subsidy                 | 0                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | Amount Based   | Subsidy Amount Based | valid    | up to 18 digits              | does not throw any error           | sourcing_details.xlsx | subsidy                 | 7                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | Amount Based   | Subsidy Amount Based | invalid  | both digits and characters   | throws an error with error message | sourcing_details.xlsx | subsidy                 | 1                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | Amount Based   | Subsidy Amount Based | invalid  | special characters           | throws an error with error message | sourcing_details.xlsx | subsidy                 | 2                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | Amount Based   | Subsidy Amount Based | invalid  | space                        | throws an error with error message | sourcing_details.xlsx | subsidy                 | 3                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | Amount Based   | Subsidy Amount Based | valid    | up to 2 decimal places       | does not throw any error           | sourcing_details.xlsx | subsidy                 | 4                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | Amount Based   | Subsidy Amount Based | invalid  | negative value               | throws an error with error message | sourcing_details.xlsx | subsidy                 | 5                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | Amount Based   | Subsidy Amount Based | valid    | zero value                   | does not throw any error           | sourcing_details.xlsx | subsidy                 | 6                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | Rate Based     | Subsidy Rate Based   | valid    | valid value                  | does not throw any error           | sourcing_details.xlsx | subsidy                 | 8                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | Rate Based     | Subsidy Rate Based   | valid    | greater than 0 and up to 100 | does not throw any error           | sourcing_details.xlsx | subsidy                 | 9                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | Rate Based     | Subsidy Rate Based   | invalid  | both digits and characters   | throws an error with error message | sourcing_details.xlsx | subsidy                 | 10                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | Rate Based     | Subsidy Rate Based   | invalid  | special characters           | throws an error with error message | sourcing_details.xlsx | subsidy                 | 11                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | Rate Based     | Subsidy Rate Based   | invalid  | space                        | throws an error with error message | sourcing_details.xlsx | subsidy                 | 12                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | Rate Based     | Subsidy Rate Based   | invalid  | zero value                   | throws an error with error message | sourcing_details.xlsx | subsidy                 | 13                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | Rate Based     | Subsidy Rate Based   | invalid  | negative value               | throws an error with error message | sourcing_details.xlsx | subsidy                 | 14                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | Rate Based     | Subsidy Rate Based   | valid    | up to 2 decimal places       | does not throw any error           | sourcing_details.xlsx | subsidy                 | 15                             |

    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","CFL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key | subsidy_method | Field_Name           | Validity | InputType                    | Throws_notThrows                   | SourcingDetailsInfoWB | SourcingDetails_Subsidy | SourcingDetails_Subsidy_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   | Subsidy Amount Based | valid    | valid value                  | does not throw any error           | sourcing_details.xlsx | subsidy                 | 0                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   | Subsidy Amount Based | valid    | up to 18 digits              | does not throw any error           | sourcing_details.xlsx | subsidy                 | 7                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   | Subsidy Amount Based | invalid  | both digits and characters   | throws an error with error message | sourcing_details.xlsx | subsidy                 | 1                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   | Subsidy Amount Based | invalid  | special characters           | throws an error with error message | sourcing_details.xlsx | subsidy                 | 2                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   | Subsidy Amount Based | invalid  | space                        | throws an error with error message | sourcing_details.xlsx | subsidy                 | 3                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   | Subsidy Amount Based | valid    | up to 2 decimal places       | does not throw any error           | sourcing_details.xlsx | subsidy                 | 4                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   | Subsidy Amount Based | invalid  | negative value               | throws an error with error message | sourcing_details.xlsx | subsidy                 | 5                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   | Subsidy Amount Based | valid    | zero value                   | does not throw any error           | sourcing_details.xlsx | subsidy                 | 6                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     | Subsidy Rate Based   | valid    | valid value                  | does not throw any error           | sourcing_details.xlsx | subsidy                 | 8                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     | Subsidy Rate Based   | valid    | greater than 0 and up to 100 | does not throw any error           | sourcing_details.xlsx | subsidy                 | 9                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     | Subsidy Rate Based   | invalid  | both digits and characters   | throws an error with error message | sourcing_details.xlsx | subsidy                 | 10                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     | Subsidy Rate Based   | invalid  | special characters           | throws an error with error message | sourcing_details.xlsx | subsidy                 | 11                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     | Subsidy Rate Based   | invalid  | space                        | throws an error with error message | sourcing_details.xlsx | subsidy                 | 12                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     | Subsidy Rate Based   | invalid  | zero value                   | throws an error with error message | sourcing_details.xlsx | subsidy                 | 13                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     | Subsidy Rate Based   | invalid  | negative value               | throws an error with error message | sourcing_details.xlsx | subsidy                 | 14                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     | Subsidy Rate Based   | valid    | up to 2 decimal places       | does not throw any error           | sourcing_details.xlsx | subsidy                 | 15                             |

  ###Squash:7_CAS-41863,6_CAS-41863,9_CAS-27219,19_CAS-27219
  #FeatureID-ACAUTOCAS-11130
  Scenario Outline:Validation of Subsidy Lock In Period with <InputType> For Subsidy Details Tab at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user clicks on sourcing details page of "<ApplicationStage>"
    And user opens subsidy accordion
    And the user selects the Subsidy Flag as "YES"
    When user reads data from the excel file "<SourcingDetailsInfoWB>" under sheet "<SourcingDetails_Subsidy>" and row <SourcingDetails_Subsidy_rowNum>
    And user checks for "<Validity>" "Subsidy Lock In Period" with "<InputType>" in subsidy page
    Then "Subsidy Lock In Period" field "<Throws_notThrows>" error message in subsidy

     # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","AGRL","FE","MHL","CV","LAP"]}
     # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key | Validity | InputType                  | Throws_notThrows                   | SourcingDetailsInfoWB | SourcingDetails_Subsidy | SourcingDetails_Subsidy_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | valid    | valid value                | does not throw any error           | sourcing_details.xlsx | subsidy                 | 16                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | valid    | up to 3 digits             | does not throw any error           | sourcing_details.xlsx | subsidy                 | 17                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | invalid  | zero value                 | throws an error with error message | sourcing_details.xlsx | subsidy                 | 18                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | invalid  | space                      | throws an error with error message | sourcing_details.xlsx | subsidy                 | 19                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | invalid  | special characters         | throws an error with error message | sourcing_details.xlsx | subsidy                 | 20                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | invalid  | both digits and characters | throws an error with error message | sourcing_details.xlsx | subsidy                 | 21                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | invalid  | negative value             | throws an error with error message | sourcing_details.xlsx | subsidy                 | 22                             |

     # ${ ProductType : ["IHF","IAF"]}
     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key | Validity | InputType                  | Throws_notThrows                   | SourcingDetailsInfoWB | SourcingDetails_Subsidy | SourcingDetails_Subsidy_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | valid    | valid value                | does not throw any error           | sourcing_details.xlsx | subsidy                 | 16                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | valid    | up to 3 digits             | does not throw any error           | sourcing_details.xlsx | subsidy                 | 17                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | invalid  | zero value                 | throws an error with error message | sourcing_details.xlsx | subsidy                 | 18                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | invalid  | space                      | throws an error with error message | sourcing_details.xlsx | subsidy                 | 19                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | invalid  | special characters         | throws an error with error message | sourcing_details.xlsx | subsidy                 | 20                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | invalid  | both digits and characters | throws an error with error message | sourcing_details.xlsx | subsidy                 | 21                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | invalid  | negative value             | throws an error with error message | sourcing_details.xlsx | subsidy                 | 22                             |

     # ${ ProductType : ["IPF"]}
     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${category:["bonds"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category   | key | Validity | InputType                  | Throws_notThrows                   | SourcingDetailsInfoWB | SourcingDetails_Subsidy | SourcingDetails_Subsidy_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | valid    | valid value                | does not throw any error           | sourcing_details.xlsx | subsidy                 | 16                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | valid    | up to 3 digits             | does not throw any error           | sourcing_details.xlsx | subsidy                 | 17                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | invalid  | zero value                 | throws an error with error message | sourcing_details.xlsx | subsidy                 | 18                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | invalid  | space                      | throws an error with error message | sourcing_details.xlsx | subsidy                 | 19                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | invalid  | special characters         | throws an error with error message | sourcing_details.xlsx | subsidy                 | 20                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | invalid  | both digits and characters | throws an error with error message | sourcing_details.xlsx | subsidy                 | 21                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | invalid  | negative value             | throws an error with error message | sourcing_details.xlsx | subsidy                 | 22                             |

    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","CFL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key | Validity | InputType                  | Throws_notThrows                   | SourcingDetailsInfoWB | SourcingDetails_Subsidy | SourcingDetails_Subsidy_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | valid    | valid value                | does not throw any error           | sourcing_details.xlsx | subsidy                 | 16                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | valid    | up to 3 digits             | does not throw any error           | sourcing_details.xlsx | subsidy                 | 17                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | invalid  | zero value                 | throws an error with error message | sourcing_details.xlsx | subsidy                 | 18                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | invalid  | space                      | throws an error with error message | sourcing_details.xlsx | subsidy                 | 19                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | invalid  | special characters         | throws an error with error message | sourcing_details.xlsx | subsidy                 | 20                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | invalid  | both digits and characters | throws an error with error message | sourcing_details.xlsx | subsidy                 | 21                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | invalid  | negative value             | throws an error with error message | sourcing_details.xlsx | subsidy                 | 22                             |

  #FeatureID-ACAUTOCAS-11130
  Scenario Outline: View subsidy data in enquiry stage of an application in read only mode  at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user clicks on sourcing details page of "<ApplicationStage>"
    And user opens subsidy accordion
    And the user selects the Subsidy Flag as "YES"
    And the user selects the Subsidy Method as "<subsidy_method>"
    And user reads data from the excel file "<SourcingDetailsInfoWB>" under sheet "<SourcingDetails_Subsidy>" and row <SourcingDetails_Subsidy_rowNum>
    And user fills all the subsidy details
    And user saves the sourcing details
    When user opens the application from Enquiry
    And user opens the loan details section
    And user navigates to sourcing tab
    And user opens subsidy accordion
    Then subsidy details should be present with same filled data in view only mode

     # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","AGRL","FE","MHL","CV","LAP"]}
     # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | subsidy_method | category | key | SourcingDetailsInfoWB | SourcingDetails_Subsidy | SourcingDetails_Subsidy_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Amount Based   |          |     | sourcing_details.xlsx | subsidy                 | 0                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Rate Based     |          |     | sourcing_details.xlsx | subsidy                 | 8                              |

     # ${ ProductType : ["IHF","IAF"]}
     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | subsidy_method | category | key | SourcingDetailsInfoWB | SourcingDetails_Subsidy | SourcingDetails_Subsidy_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Amount Based   |          |     | sourcing_details.xlsx | subsidy                 | 0                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Rate Based     |          |     | sourcing_details.xlsx | subsidy                 | 8                              |

     # ${ ProductType : ["IPF"]}
     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${category:["bonds"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | subsidy_method | category   | key | SourcingDetailsInfoWB | SourcingDetails_Subsidy | SourcingDetails_Subsidy_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Amount Based   | <category> |     | sourcing_details.xlsx | subsidy                 | 0                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Rate Based     | <category> |     | sourcing_details.xlsx | subsidy                 | 8                              |

    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","CFL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | subsidy_method | category | key | SourcingDetailsInfoWB | SourcingDetails_Subsidy | SourcingDetails_Subsidy_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Amount Based   |          |     | sourcing_details.xlsx | subsidy                 | 0                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Rate Based     |          |     | sourcing_details.xlsx | subsidy                 | 8                              |

  #Prequisite: Subsidy details should be filled and saved at prior stages
  #FeatureID-ACAUTOCAS-11130
  Scenario Outline: View subsidy data in post approval stage of an application in read only mode  at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    When user opens the loan details section
    And user clicks on sourcing details page of "<ApplicationStage>"
    And user opens subsidy accordion
    Then subsidy details should be present in view only mode

     # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","AGRL","FE","MHL","CV","LAP"]}
     # ${ApplicationStage:["Post Approval"]}
    @Conventional
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
     #${category:["bonds"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category   | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     |

    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","CFL","JLG","SHG"]}
    # ${ApplicationStage:["Post Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

  ###Squash: 14_CAS-41863,15_CAS-41863,5_CAS-41863
  #FeatureID-ACAUTOCAS-11130
  Scenario Outline: Validating subsidy details without filling <Field_Name> fields in subsidy details in sourcing details  at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user clicks on sourcing details page of "<ApplicationStage>"
    And user opens subsidy accordion
    And the user selects the Subsidy Flag as "YES"
    And the user selects the Subsidy Method as "<subsidy_method>"
    When user reads data from the excel file "<SourcingDetailsInfoWB>" under sheet "<SourcingDetails_Subsidy>" and row <SourcingDetails_Subsidy_rowNum>
    And user fills all mandatory fields except "<Field_Name>" field
    And user saves the sourcing details
    Then "<Field_Name>" field "throws an error with error message" error message in subsidy

     # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","AGRL","FE","MHL","CV","LAP"]}
     # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key | subsidy_method | Field_Name           | SourcingDetailsInfoWB | SourcingDetails_Subsidy | SourcingDetails_Subsidy_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     | Subsidy Rate Based   | sourcing_details.xlsx | subsidy                 | 24                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     | Subsidy Type         | sourcing_details.xlsx | subsidy                 | 24                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   | Subsidy Amount Based | sourcing_details.xlsx | subsidy                 | 23                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   | Subsidy Type         | sourcing_details.xlsx | subsidy                 | 23                             |

     # ${ ProductType : ["IHF","IAF"]}
     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key | subsidy_method |  Field_Name           |SourcingDetailsInfoWB | SourcingDetails_Subsidy |SourcingDetails_Subsidy_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     |  Subsidy Rate Based   |sourcing_details.xlsx | subsidy                 |24                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     |  Subsidy Type         |sourcing_details.xlsx | subsidy                 |24                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   |  Subsidy Amount Based |sourcing_details.xlsx | subsidy                 |23                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   |  Subsidy Type         |sourcing_details.xlsx | subsidy                 |23                             |

     # ${ ProductType : ["IPF"]}
     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${category:["bonds"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category   | key | subsidy_method | Field_Name           |SourcingDetailsInfoWB | SourcingDetails_Subsidy |SourcingDetails_Subsidy_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | Rate Based     | Subsidy Rate Based   |sourcing_details.xlsx | subsidy                 |24                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | Rate Based     | Subsidy Type         |sourcing_details.xlsx | subsidy                 |24                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | Amount Based   | Subsidy Amount Based |sourcing_details.xlsx | subsidy                 |23                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | Amount Based   | Subsidy Type         |sourcing_details.xlsx | subsidy                 |23                             |

    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","CFL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key | subsidy_method |  Field_Name           |SourcingDetailsInfoWB | SourcingDetails_Subsidy |SourcingDetails_Subsidy_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     |  Subsidy Rate Based   |sourcing_details.xlsx | subsidy                 |24                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Rate Based     |  Subsidy Type         |sourcing_details.xlsx | subsidy                 |24                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   |  Subsidy Amount Based |sourcing_details.xlsx | subsidy                 |23                             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Amount Based   |  Subsidy Type         |sourcing_details.xlsx | subsidy                 |23                             |

  ###Squash:5_CAS-41863
  #FeatureID-ACAUTOCAS-11130
  Scenario Outline: Validate values in subsidy type in subsidy accordion at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user clicks on sourcing details page of "<ApplicationStage>"
    And user opens subsidy accordion
    When the user selects the Subsidy Flag as "YES"
    Then the subsidy type values should be displayed
      | Affordable Housing |
      | Subsidy            |

     # ${ ProductType : ["HL","LAP"]}
     # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

     # ${ ProductType : ["IHF"]}
     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

    ###Squash:6_CAS-41863,8_CAS-41863
    #FeatureID-ACAUTOCAS-11130
  Scenario Outline: Check non-mandatory fields in subsidy accordion at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user clicks on sourcing details page of "<ApplicationStage>"
    When user opens subsidy accordion
    And the user selects the Subsidy Flag as "YES"
    Then following fields should be non mandatory
      | Subsidy Lock In Period |
      | Subsidy Method         |

       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","AGRL","FE","MHL","CV","LAP"]}
     # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
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
     #${category:["bonds"]}
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <bonds>  |     |

    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","CFL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


