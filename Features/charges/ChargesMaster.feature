@Epic-Charges
@PQMStory
@Order
@Release


#Story-CAS-60801
#Story-CAS-71126
Feature: Charge Policy Master

  @AuthoredBy-piyush.agnihotri
  @ImplementedBy-piyush.agnihotri
  #PQM-01_CAS-60801, 01_CAS-71126
  Scenario Outline: ACAUTOCAS-21132:Navigate to Charge Policy Master LogicalID <LogicalID>
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user stores logical ID "<LogicalID>" in report
    When user navigates to charge policy master
    Then user navigated to charge policy master screen successfully
    Examples:
      | LogicalID                            |
      | CM_CAS_60801_Charge_Policy_Changes01 |
      | CM_CAS_60801_Charge_Policy_Changes02 |
      | CM_CAS_71126_ChargePrioritization01  |
      | CM_CAS_71126_ChargePrioritization02  |
      | CM_CAS_71126_ChargePrioritization03  |


  #PQM-01_CAS-60801, 01_CAS-71126
  @AuthoredBy-piyush.agnihotri
  @ImplementedBy-piyush.agnihotri
  Scenario Outline: ACAUTOCAS-21133:Validate new window should open when user clicks on Create Charge Policies button in Charge Policy Master LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "" logical id "<LogicalID>"
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on new charge policy button in Charge Policy Master
    Then new window should open up to create new charge policy
    Examples:
      | LogicalID                            |
      | CM_CAS_60801_Charge_Policy_Changes01 |
      | CM_CAS_60801_Charge_Policy_Changes02 |
      | CM_CAS_71126_ChargePrioritization01  |
      | CM_CAS_71126_ChargePrioritization02  |
      | CM_CAS_71126_ChargePrioritization03  |

  @AuthoredBy-piyush.agnihotri
  @ImplementedBy-piyush.agnihotri
  #PQM-01_CAS-60801
  Scenario Outline: ACAUTOCAS-21134:Charge Section Grid should be present with <Fields> labels in Charge Policy Master Screen LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "" logical id "<LogicalID>"
    When user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    Then Charge Section Grid should be present with "<Fields>" labels in Charge Policy Master Screen
    Examples:
      | LogicalID                            | Fields                     |
      | CM_CAS_60801_Charge_Policy_Changes01 | Source System              |
      | CM_CAS_60801_Charge_Policy_Changes01 | Event                      |
      | CM_CAS_60801_Charge_Policy_Changes01 | Disbursal Data Entry Level |
      | CM_CAS_60801_Charge_Policy_Changes01 | Stage                      |
      | CM_CAS_60801_Charge_Policy_Changes01 | Currency                   |
      | CM_CAS_60801_Charge_Policy_Changes01 | Charges                    |
      | CM_CAS_60801_Charge_Policy_Changes02 | Source System              |
      | CM_CAS_60801_Charge_Policy_Changes02 | Event                      |
      | CM_CAS_60801_Charge_Policy_Changes02 | Disbursal Data Entry Level |
      | CM_CAS_60801_Charge_Policy_Changes02 | Stage                      |
      | CM_CAS_60801_Charge_Policy_Changes02 | Currency                   |
      | CM_CAS_60801_Charge_Policy_Changes02 | Charges                    |


   #PQM-02_CAS-60801, 02_CAS-71126
  @AuthoredBy-piyush.agnihotri
  @ImplementedBy-piyush.agnihotri
  Scenario Outline: ACAUTOCAS-21135:Validate <Events> while selecting Source System as <Source_System> in Charge Policy Master LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "" logical id "<LogicalID>"
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<ChargesWB>" under sheet "<Charges_SheetName>" and row <Charges_rowNum>
    When user selects Source System as "<Source_System>" in Charge Policy Master
    Then "<Events>" should be present in the Event List dropdown in Charge Policy Master for selected Source System as "<Source_System>"
    Examples:
      | Events                       | Source_System | LogicalID                            | ChargesWB    | Charges_SheetName | Charges_rowNum |
      | Early_Closure                | LMS           | CM_CAS_60801_Charge_Policy_Changes01 | charges.xlsx | periodic_charges  | 0              |
      | Rescheduling_Part_Prepayment | LMS           | CM_CAS_60801_Charge_Policy_Changes01 | charges.xlsx | periodic_charges  | 0              |
      | Pre-Approval                 | CAS           | CM_CAS_60801_Charge_Policy_Changes02 | charges.xlsx | periodic_charges  | 1              |
      | Post-Approval                | CAS           | CM_CAS_60801_Charge_Policy_Changes02 | charges.xlsx | periodic_charges  | 1              |
      | Disbursal                    | CAS           | CM_CAS_60801_Charge_Policy_Changes02 | charges.xlsx | periodic_charges  | 1              |
      | Renewal                      | CAS           | CM_CAS_60801_Charge_Policy_Changes02 | charges.xlsx | periodic_charges  | 1              |
      | Disbursal                    | CAS           | CM_CAS_71126_ChargePrioritization01  | charges.xlsx | periodic_charges  | 2              |
      | Disbursal                    | CAS           | CM_CAS_71126_ChargePrioritization02  | charges.xlsx | periodic_charges  | 2              |
      | Disbursal                    | CAS           | CM_CAS_71126_ChargePrioritization03  | charges.xlsx | periodic_charges  | 2              |

  #PQM-02_CAS-71126
  @AuthoredBy-aryan.jain
  @ImplementedBy-aryan.jain
  Scenario Outline: Validate disbursal data entry level field is filled in Charge Policy Master LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "" logical id "<LogicalID>"
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<ChargesWB>" under sheet "<Charges_SheetName>" and row <Charges_rowNum>
    When user fills event field
    And user fills disbursal data entry level field
    Then validate disbursal data entry level field data is filled
    Examples:
      | Events    | Source_System | LogicalID                           | ChargesWB    | Charges_SheetName | Charges_rowNum |
      | Disbursal | CAS           | CM_CAS_71126_ChargePrioritization01 | charges.xlsx | periodic_charges  | 2              |
      | Disbursal | CAS           | CM_CAS_71126_ChargePrioritization02 | charges.xlsx | periodic_charges  | 2              |
      | Disbursal | CAS           | CM_CAS_71126_ChargePrioritization03 | charges.xlsx | periodic_charges  | 2              |

    #PQM-03_CAS-60801
  @AuthoredBy-piyush.agnihotri
  @ImplementedBy-piyush.agnihotri
  Scenario Outline: ACAUTOCAS-21136:Verify new window should be open to add charges for <Source_System> in Charge Policy Master LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "" logical id "<LogicalID>"
    When user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<ChargesWB>" under sheet "<Charges_SheetName>" and row <Charges_rowNum>
    And user selects Currency as "<Currency_Type>" in Charge Policy Master
    And user clicks on the hyper link to add charges in Charge Policy Master
    Then new window should be open to add charges in Charge Policy Master
    Examples:
      | Source_System | LogicalID                            | Currency_Type | ChargesWB    | Charges_SheetName | Charges_rowNum |
      | LMS           | CM_CAS_60801_Charge_Policy_Changes01 | INR           | charges.xlsx | periodic_charges  | 0              |
      | CAS           | CM_CAS_60801_Charge_Policy_Changes02 | INR           | charges.xlsx | periodic_charges  | 1              |
      | CAS           | CM_CAS_71126_ChargePrioritization01  | INR           | charges.xlsx | periodic_charges  | 2              |
      | CAS           | CM_CAS_71126_ChargePrioritization02  | INR           | charges.xlsx | periodic_charges  | 2              |
      | CAS           | CM_CAS_71126_ChargePrioritization03  | INR           | charges.xlsx | periodic_charges  | 2              |

    #PQM-04_CAS-60801
    #PQM-05_CAS-60801
    #PQM-07_CAS-60801
  @AuthoredBy-piyush.agnihotri
  @ImplementedBy-piyush.agnihotri
  Scenario Outline: ACAUTOCAS-21137: Verify for <Source_System> source system charge nature must be <Charge_Nature> in charge to be applied window LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "" logical id "<LogicalID>"
    When user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<ChargesWB>" under sheet "<Charges_SheetName>" and row <Charges_rowNum>
    Then charge nature must be "<Charge_Nature>" for selected "<Source_System>" source system in Charge Policy Master
    Examples:
      | Source_System | LogicalID                            | Charge_Nature      | ChargesWB    | Charges_SheetName | Charges_rowNum |
      | LMS           | CM_CAS_60801_Charge_Policy_Changes01 | Fixed For Contract | charges.xlsx | periodic_charges  | 0              |
      | CAS           | CM_CAS_60801_Charge_Policy_Changes02 | Dynamic Charge     | charges.xlsx | periodic_charges  | 1              |



   #PQM-06_CAS-60801
   #PQM-08_CAS-60801
  @AuthoredBy-piyush.agnihotri
  @ImplementedBy-piyush.agnihotri
  Scenario Outline: ACAUTOCAS-21138:Verify for <Source_System> source system user should be able to map the <Rule> rule LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "" logical id "<LogicalID>"
    When user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<ChargesWB>" under sheet "<Charges_SheetName>" and row <Charges_rowNum>
    And user select the charge to map the "<Rule>" rule
    And user checks the checkbox for rule based
    And user inputs the required "<Rule>" rule to be mapped in charge
    And user saves the charge after mapping rule into it
    Then user should be able to map the rule in selected "<Source_System>" source system
    Examples:
      | Source_System | LogicalID                            | Rule          | ChargesWB    | Charges_SheetName | Charges_rowNum |
      | LMS           | CM_CAS_60801_Charge_Policy_Changes01 | AGE_APP_LT_20 | charges.xlsx | periodic_charges  | 0              |
      | CAS           | CM_CAS_60801_Charge_Policy_Changes02 | AGE_APP_LT_20 | charges.xlsx | periodic_charges  | 1              |

  #PQM-02_CAS-71126
  @AuthoredBy-aryan.jain
  @ImplementedBy-aryan.jain
  Scenario Outline: Charge Section Grid should be present with <Fields> labels in add charges LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "" logical id "<LogicalID>"
    When user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    Then Charge Section Grid should be present with "<Fields>" labels in add charges
    Examples:
      | LogicalID                           | Fields                              |
      | CM_CAS_71126_ChargePrioritization01 | Select Charge                       |
      | CM_CAS_71126_ChargePrioritization01 | Charge Name                         |
      | CM_CAS_71126_ChargePrioritization01 | Charge Id(Charge Code Id)           |
      | CM_CAS_71126_ChargePrioritization01 | Charge Policy Code                  |
      | CM_CAS_71126_ChargePrioritization01 | Charge Type                         |
      | CM_CAS_71126_ChargePrioritization01 | Charge Nature                       |
      | CM_CAS_71126_ChargePrioritization01 | Rule based?                         |
      | CM_CAS_71126_ChargePrioritization01 | Please select Rule(s) from the list |
      | CM_CAS_71126_ChargePrioritization01 | RuleMatrix                          |
      | CM_CAS_71126_ChargePrioritization01 | Waiver Not Allowed?                 |
      | CM_CAS_71126_ChargePrioritization01 | Is Charge Refundable?               |
      | CM_CAS_71126_ChargePrioritization01 | Refund Rule                         |
      | CM_CAS_71126_ChargePrioritization01 | Refund %                            |
      | CM_CAS_71126_ChargePrioritization01 | Priority                            |
      | CM_CAS_71126_ChargePrioritization01 | Periodic Charge                     |

  #PQM-03_CAS-71126, 04_CAS-71126
  @AuthoredBy-aryan.jain
  @ImplementedBy-aryan.jain
  Scenario Outline: Validation should come for priority field after entering "<validityReason>" LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "" logical id "<LogicalID>"
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<ChargesWB>" under sheet "<Charges_SheetName>" and row <Charges_rowNum>
    And user close the add charges screen
    And user clicks on the hyper link to add charges in Charge Policy Master
    When user search the charges
    And user select the charges
    And user fills priority in charge applied
    Then proper validation should come for priority field after entering "<validityReason>"
    Examples:
      | LogicalID                           | validityReason                   | ChargesWB    | Charges_SheetName | Charges_rowNum |
      | CM_CAS_71126_ChargePrioritization01 | characters                       | charges.xlsx | periodic_charges  | 4              |
      | CM_CAS_71126_ChargePrioritization01 | more than 2                      | charges.xlsx | periodic_charges  | 5              |
      | CM_CAS_71126_ChargePrioritization01 | negative                         | charges.xlsx | periodic_charges  | 6              |
      | CM_CAS_71126_ChargePrioritization01 | special characters except hyphen | charges.xlsx | periodic_charges  | 9              |
      | CM_CAS_71126_ChargePrioritization03 | zero                             | charges.xlsx | periodic_charges  | 3              |

  #PQM-05_CAS-71126
  @AuthoredBy-aryan.jain
  @ImplementedBy-aryan.jain
  Scenario Outline: Validate default value for priority field should be blank LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "" logical id "<LogicalID>"
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user close the add charges screen
    And user clicks on the hyper link to add charges in Charge Policy Master
    And user reads data from the excel file "<ChargesWB>" under sheet "<Charges_SheetName>" and row <Charges_rowNum>
    When user search the charges
    And user select the charges
    Then validate by default value for priority field should be blank
    Examples:
      | LogicalID                           | ChargesWB    | Charges_SheetName | Charges_rowNum |
      | CM_CAS_71126_ChargePrioritization01 | charges.xlsx | periodic_charges  | 3              |

  #PQM-06_CAS-71126
  @AuthoredBy-aryan.jain
  @ImplementedBy-aryan.jain
  @LoggedBug-CAS-242435
  Scenario Outline: Validate same priority can be assigned to different charges LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "" logical id "<LogicalID>"
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user close the add charges screen
    And user clicks on the hyper link to add charges in Charge Policy Master
    And user reads data from the excel file "<ChargesWB>" under sheet "<Charges_SheetName>" and row <Charges_rowNum>
    And user search the charges
    And user select the charges
    When user fills priority in charge applied
    And user saves the charge after mapping rule into it
    Then validate same priority can be assigned to different charges "<ExecutedNotExecuted>"
    Examples:
      | LogicalID                           | ChargesWB    | Charges_SheetName | Charges_rowNum | ExecutedNotExecuted |
      | CM_CAS_71126_ChargePrioritization01 | charges.xlsx | periodic_charges  | 10             | not executed        |
      | CM_CAS_71126_ChargePrioritization01 | charges.xlsx | periodic_charges  | 11             | executed            |

  #PQM-07_CAS-71126
  @AuthoredBy-aryan.jain
  @ImplementedBy-aryan.jain
  @LoggedBug-CAS-242435
  Scenario Outline: Validate priority field is enabled for different charges LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "" logical id "<LogicalID>"
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user close the add charges screen
    And user clicks on the hyper link to add charges in Charge Policy Master
    And user reads data from the excel file "<ChargesWB>" under sheet "<Charges_SheetName>" and row <Charges_rowNum>
    And user search the charges
    When user select the charges
    Then Validate priority field is enabled for "<Charges>" charges
    Examples:
      | LogicalID                           | ChargesWB    | Charges_SheetName | Charges_rowNum | Charges                  |
      | CM_CAS_71126_ChargePrioritization02 | charges.xlsx | periodic_charges  | 10             | Deductible               |
      | CM_CAS_71126_ChargePrioritization02 | charges.xlsx | periodic_charges  | 11             | Collectible & Deductible |

  @AuthoredBy-aryan.jain
  @ImplementedBy-aryan.jain
  @LoggedBug-CAS-242435
  #PQM-08_CAS-71126
  Scenario Outline: Validate adding charges for required source system LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "" logical id "<LogicalID>"
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user close the add charges screen
    And user clicks on the hyper link to add charges in Charge Policy Master
    And user reads data from the excel file "<ChargesWB>" under sheet "<Charges_SheetName>" and row <Charges_rowNum>
    And user search the charges
    And user select the charges
    When user fills priority in charge applied
    And user saves the charge after mapping rule into it
    Then verify "<ChargesNo>" charge added for required source system
    Examples:
      | LogicalID                           | ChargesWB    | Charges_SheetName | Charges_rowNum | ChargesNo |
      | CM_CAS_71126_ChargePrioritization02 | charges.xlsx | periodic_charges  | 12             | 1         |
      | CM_CAS_71126_ChargePrioritization02 | charges.xlsx | periodic_charges  | 13             | 2         |
      | CM_CAS_71126_ChargePrioritization02 | charges.xlsx | periodic_charges  | 14             | 3         |

  #PQM-08_CAS-71126
  @AuthoredBy-aryan.jain
  @ImplementedBy-aryan.jain
  @LoggedBug-CAS-242435
  Scenario Outline: Validate Sequence check is not applicable in priority LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "" logical id "<LogicalID>"
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on the hyper link to add charges in Charge Policy Master
    Then validate sequence check should not be applicable in priority
    Examples:
      | LogicalID                           |
      | CM_CAS_71126_ChargePrioritization02 |

