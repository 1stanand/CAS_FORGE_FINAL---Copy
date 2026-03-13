@Epic-Field_Investigation
@ReviewedBy-None
@AuthoredBy-vipin.kishor
@ImplementedBy-aniket.tripathi
@ReviewedByDEV
#FeatureID-ACAUTOCAS-502
Feature:Field investigation initiation

  @Release3
  Scenario Outline: ACAUTOCAS-1629: Field investigation initiation page under fii
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <LoginRow>
    When user opens an application at "<var_stage>" stage from application grid
    Then On this page the grid displays "<FII_Fields>" for each applicant
    Examples:
      | SourceDataFile       | SheetName | LoginRow | FII_Fields                  | var_stage |
      | LoginDetailsCAS.xlsx | LoginData | 0        | Neo Cust ID                 | FII       |
      | LoginDetailsCAS.xlsx | LoginData | 0        | Type                        | FII       |
      | LoginDetailsCAS.xlsx | LoginData | 0        | Applicant Name              | FII       |
      | LoginDetailsCAS.xlsx | LoginData | 0        | Last Verification Date      | FII       |
      | LoginDetailsCAS.xlsx | LoginData | 0        | Current Verification Status | FII       |

  @Release3
  @Perishable
  Scenario Outline:Waive off All the field investigation verifications under fii
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <LoginRow>
    And user opens an application at "<var_stage>" stage from application grid
    When user open Waive off All screen
    And Waive off All the field investigation verifications "<With_Without>" reasons
    Then Waive off "<Initiated>"
    Examples:
      | SourceDataFile       | SheetName | LoginRow | With_Without     | Initiated     | var_stage |
      | LoginDetailsCAS.xlsx | LoginData | 0        | null             | not initiated | FII       |
      | LoginDetailsCAS.xlsx | LoginData | 0        | Waive off Reason | initiated     | FII       |

  @Release3
  @Perishable
  Scenario Outline: ACAUTOCAS-1631: "<FII_Fields>" field appears in Waive off All screen under fii
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <LoginRow>
    And user opens an application at "<var_stage>" stage from application grid
    When user open Waive off All screen
    Then Then "<FII_Fields>" field appears in Waive off All
    Examples:
      | SourceDataFile       | SheetName | LoginRow | FII_Fields         | var_stage |
      | LoginDetailsCAS.xlsx | LoginData | 0        | Reason Code        | FII       |
      | LoginDetailsCAS.xlsx | LoginData | 0        | Reason Description | FII       |

  @Release3
  @Perishable
  Scenario Outline: ACAUTOCAS-1630: Waive off All the field investigation verifications under fii
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <LoginRow>
    And user opens an application at "<var_stage>" stage from application grid
    And user open Waive off All screen
    When user Waive off All the field investigation verifications
    Then user can view the Verification Waived Off details
    Examples:
      | SourceDataFile       | SheetName | LoginRow | var_stage |
      | LoginDetailsCAS.xlsx | LoginData | 0        | FII       |

  @Release3
  Scenario Outline: ACAUTOCAS-1633: Add multiple reasons for Waive off All the field investigation verifications under fii
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <LoginRow>
    And user opens an application at "<var_stage>" stage from application grid
    And user open Waive off All screen
    When user add multiple reasons for Waive off All the field investigation verifications
    Then multiple reasons added successfully
    Examples:
      | SourceDataFile       | SheetName | LoginRow | var_stage |
      | LoginDetailsCAS.xlsx | LoginData | 0        | FII       |

  @Release3
  Scenario Outline: ACAUTOCAS-1634: Delete reasons for Waive off All the field investigation verifications under fii
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <LoginRow>
    And user opens an application at "<var_stage>" stage from application grid
    And user open Waive off All screen
    And user add multiple reasons for Waive off All the field investigation verifications
    When user deletes the added reasons
    Then reason should be deleted successfully
    Examples:
      | SourceDataFile       | SheetName | LoginRow | var_stage |
      | LoginDetailsCAS.xlsx | LoginData | 0        | FII       |

  @Release3
  Scenario Outline: ACAUTOCAS-1635: "<FII_Fields>" field appears in Wave Off Verification screen under fii
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <LoginRow>
    And user opens an application at "<var_stage>" stage from application grid
    When user open Waive Off Verification screen
    Then "<FII_Fields>" field appears in Waive Off Verification
    Examples:
      | SourceDataFile       | SheetName | LoginRow | FII_Fields         | var_stage |
      | LoginDetailsCAS.xlsx | LoginData | 0        | Verification Type  | FII       |
      | LoginDetailsCAS.xlsx | LoginData | 0        | Reason Code        | FII       |
      | LoginDetailsCAS.xlsx | LoginData | 0        | Reason Description | FII       |

  @Release3
  @Perishable
  Scenario Outline: ACAUTOCAS-1637: View history of Wave Off Verification under fii
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <LoginRow>
    And user opens an application at "<var_stage>" stage from application grid
    And user open Waive Off Verification screen
    When user Waive Off Verification
    Then history of Waive Off Verification display successfully
    Examples:
      | SourceDataFile       | SheetName | LoginRow | var_stage |
      | LoginDetailsCAS.xlsx | LoginData | 0        | FII       |

  @Release3
  Scenario Outline: ACAUTOCAS-1638: Add multiple reasons for Wave Off Verification under fii
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <LoginRow>
    And user opens an application at "<var_stage>" stage from application grid
    And user open Waive Off Verification screen
    When user add multiple reasons for Waive Off Verification
    Then multiple reasons added successfully
    Examples:
      | SourceDataFile       | SheetName | LoginRow | var_stage |
      | LoginDetailsCAS.xlsx | LoginData | 0        | FII       |

  @Release3
  Scenario Outline: ACAUTOCAS-1639: Delete reasons for Wave Off Verification under fii
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <LoginRow>
    And user opens an application at "<var_stage>" stage from application grid
    And user open Waive Off Verification screen
    And user add multiple reasons for Waive Off Verification
    When user deletes the added reasons for Waive Off Verification
    Then reason should be deleted successfully for Waive Off Verification
    Examples:
      | SourceDataFile       | SheetName | LoginRow | var_stage |
      | LoginDetailsCAS.xlsx | LoginData | 0        | FII       |

  @Release3
  @Perishable
  Scenario Outline: ACAUTOCAS-1640: Initiate Verification under fii
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <LoginRow>
    And user opens an application at "<var_stage>" stage from application grid
    And user open Initiate Verification screen
    When user Initiate Verification "<With_Without>" verification type
    Then Initiate Verification "<Initiated>"
    Examples:
      | SourceDataFile       | SheetName | LoginRow | With_Without | Initiated     | var_stage |
      | LoginDetailsCAS.xlsx | LoginData | 0        | with         | initiated     | FII       |
      | LoginDetailsCAS.xlsx | LoginData | 0        | without      | not initiated | FII       |

  @Release3
  Scenario Outline: ACAUTOCAS-1641: Add multiple verifications for Initiate Verification under fii
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <LoginRow>
    And user opens an application at "<var_stage>" stage from application grid
    And user open Initiate Verification screen
    When user add multiple verifications for Initiate Verification
    Then multiple verifications added successfully
    Examples:
      | SourceDataFile       | SheetName | LoginRow | var_stage |
      | LoginDetailsCAS.xlsx | LoginData | 0        | FII       |

  @Release3
  Scenario Outline: ACAUTOCAS-1642: Delete verifications for Initiate Verification under fii
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <LoginRow>
    And user opens an application at "<var_stage>" stage from application grid
    And user open Initiate Verification screen
    And user add multiple verifications for Initiate Verification
    When user deletes the added verification for Initiate Verification
    Then reason should be deleted successfully for the Initiate Verification
    Examples:
      | SourceDataFile       | SheetName | LoginRow | var_stage |
      | LoginDetailsCAS.xlsx | LoginData | 0        | FII       |

#initiated or not
  Scenario Outline: ACAUTOCAS-1643: View details of initiated verification for the customer under fii
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <LoginRow>
    And user opens an application at "<var_stage>" stage from application grid
    And user open Initiate Verification screen
    When user View the details of initiated verification
    Then details of initiated verification display successfully
    Examples:
      | SourceDataFile       | SheetName | LoginRow | var_stage |
      | LoginDetailsCAS.xlsx | LoginData | 0        | FII       |

  @Release3
  Scenario Outline: ACAUTOCAS-1644: View history of initiated verification for the customer under fii
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <LoginRow>
    And user opens an application at "<var_stage>" stage from application grid
    And user open Initiate Verification screen
    And user View the details of initiated verification
    When user View the history of initiated verification
    Then history of initiated verification display successfully
    Examples:
      | SourceDataFile       | SheetName | LoginRow | var_stage |
      | LoginDetailsCAS.xlsx | LoginData | 0        | FII       |

  @Release3
  Scenario Outline: ACAUTOCAS-3343: Validate the history of initiated verification for the customer
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <LoginRow>
    And user opens an application at "<var_stage>" stage from application grid
    And user open Initiate Verification screen
    And user View the details of initiated verification
    When user View the history of initiated verification
    Then "<FIH_Fields>" field appears in history grid
    Examples:
      | var_stage | SourceDataFile       | SheetName | LoginRow | FIH_Fields             |
      | FII       | LoginDetailsCAS.xlsx | LoginData | 0        | Applicant Name         |
      | FII       | LoginDetailsCAS.xlsx | LoginData | 0        | Applicant Type         |
      | FII       | LoginDetailsCAS.xlsx | LoginData | 0        | Verification Done Date |
      | FII       | LoginDetailsCAS.xlsx | LoginData | 0        | Verification Type      |
      | FII       | LoginDetailsCAS.xlsx | LoginData | 0        | Verification Agency    |
      | FII       | LoginDetailsCAS.xlsx | LoginData | 0        | Verification Agent     |
      | FII       | LoginDetailsCAS.xlsx | LoginData | 0        | Result                 |

  @Release3
  Scenario Outline: ACAUTOCAS-1646: View the result of initiated verification under fii
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <LoginRow>
    And user opens an application at "<var_stage>" stage from application grid
    And user open Initiate Verification screen
    And user View the details of initiated verification
    When user View the history of initiated verification
    Then result field appears in history grid as initiated
    Examples:
      | var_stage | SourceDataFile       | SheetName | LoginRow |
      | FII       | LoginDetailsCAS.xlsx | LoginData | 0        |

  @Release3
  @Perishable
  Scenario Outline: ACAUTOCAS-1647: Dependent Fields Validation under fii
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <LoginRow>
    And user opens an application at "<var_stage>" stage from application grid
    And user open "<Actions>" screen
    When user selects reason based "<Actions>" screen
    Then Reason Description will be populated automatically based on the Reason Code
    Examples:
      | var_stage | SourceDataFile       | SheetName | LoginRow | Actions                |
      | FII       | LoginDetailsCAS.xlsx | LoginData | 0        | Waive off All          |
      | FII       | LoginDetailsCAS.xlsx | LoginData | 0        | Waive off Verification |

  @Release3
  @Perishable
  Scenario Outline: ACAUTOCAS-1648: Initiate Verification Status under fii
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <LoginRow>
    And user opens an application at "<var_stage>" stage from application grid
    And user open Initiate Verification screen
    When user Initiate Verification "<With_Without>" verification type
    Then Initiate Verification status should be changed

    Examples:
      | var_stage | SourceDataFile       | SheetName | LoginRow | With_Without |
      | FII       | LoginDetailsCAS.xlsx | LoginData | 0        | with         |

  @Release3
  @Perishable
  Scenario Outline: ACAUTOCAS-1649: "<VerificationType>" not be duplicate in "<Actions>" under fii
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <LoginRow>
    And user opens an application at "<var_stage>" stage from application grid
    And user open "<Actions>" screen
    When user "<Actions>" with duplicate "<VerificationType>"
    Then throw an error "Type" should not be duplicate
    Examples:
      | var_stage | SourceDataFile       | SheetName | LoginRow | Actions                | VerificationType  |
      | FII       | LoginDetailsCAS.xlsx | LoginData | 0        | Waive off All          | Reasons           |
      | FII       | LoginDetailsCAS.xlsx | LoginData | 0        | Initiate Verification  | Verification Type |
      | FII       | LoginDetailsCAS.xlsx | LoginData | 0        | Waive off Verification | Verification Type |

  @Release3
  @Perishable
  Scenario Outline: ACAUTOCAS-3344: FII "<ManuallyAutomatically>" Allocates to the agency for Verification under fii
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <LoginRow>
    And user opens an application at "<var_stage>" stage from application grid
    And user open Initiate Verification screen
    When user Initiate Verification for verification by assigning application "<ManuallyAutomatically>"
    Then Application "<ManuallyAutomatically>" assigned to the agency for Verification under FII

    Examples:
      | var_stage | SourceDataFile       | SheetName | LoginRow | ManuallyAutomatically |
      | FII       | LoginDetailsCAS.xlsx | LoginData | 0        | manually              |
      | FII       | LoginDetailsCAS.xlsx | LoginData | 0        | automatically         |

  Scenario Outline: ACAUTOCAS-3345: Rerun FII at "<Var_Stage>" stage
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <LoginRow>
    And user open an application at "<Var_Stage>" stage from application grid
    And user open intent indicators
    When user Re run FI
    Then FI Rerun successfully
    Examples:
      | Var_Stage        | SourceDataFile       | SheetName | LoginRow |
      | Recommendation   | LoginDetailsCAS.xlsx | LoginData | 0        |
      | Credit Approval  | LoginDetailsCAS.xlsx | LoginData | 0        |
      | Reconsideration  | LoginDetailsCAS.xlsx | LoginData | 0        |
      | Tranche Approval | LoginDetailsCAS.xlsx | LoginData | 0        |


  Scenario Outline: ACAUTOCAS-4840: Cancel FII at "<Var_Stage>" stage
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <LoginRow>
    And user open an application at "<Var_Stage>" stage from application grid
    And user open intent indicators
    When user Cancel FI
    Then FI Cancel successfully
    Examples:
      | Var_Stage        | SourceDataFile       | SheetName | LoginRow |
      | Recommendation   | LoginDetailsCAS.xlsx | LoginData | 0        |
      | Credit Approval  | LoginDetailsCAS.xlsx | LoginData | 0        |
      | Reconsideration  | LoginDetailsCAS.xlsx | LoginData | 0        |
      | Tranche Approval | LoginDetailsCAS.xlsx | LoginData | 0        |


  Scenario Outline: ACAUTOCAS-3346: Check FI flow in "<LoanType>"
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <LoginRow>
    And user open an application of "<LoanType>" at "<Var_Stage>" stage from application grid
    And user open Initiate Verification screen
    When user Initiate Verification
    And Initiate Verification Initiated
    And lead user of Agency logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user open Field Investigation Verification page
    And user open any cases from the FIV grid
    And user fill all mandatory fields for Field investigation verification
    And user saves Field investigation verification
    And Field investigation verification saved successfully
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <LoginRow>
    And user open Field Investigation Completion page
    And user approve FIC
    Then FI flow gets approve successfully
    Examples:
      | LoanType      | SourceDataFile       | SheetName | LoginRow | Var_Stage |
      | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 0        |           |
      | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 0        |           |
      | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 0        |           |


