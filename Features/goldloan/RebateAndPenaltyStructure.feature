@AuthoredBy-shruti.srivastava1
@ReviewedBy-tarun.gupta
@TechReviewedBy-
@ImplementedBy-
#EpicID- CAS-238543
#StoryID- CAS-238534
@DevTrack
@GA-9.0
@NotImplemented
@Epic-GoldLoanEnhancements
@CAS-238534
Feature: Rebate and Penalty Structure Configuration on Repayment Parameters

########  Structure type field in repayment policy master is selected as Rebate  ########

  Background:   Given user is on the CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

# Pre-Requisites--
 #User must have following configuration  - Config.Rebate.Penalty.Structure for the applicable product type
 #Lob configured - Yes
 #This is applicable for Recovery Type - Installment
 #This is applicable for Repayment Frequency - Monthly ,Bi-Monthly , Quarterly , Half yearly , Yearly
 #This is applicable for Installment Type - Interest roll up
 #This is applicable for interest rate type -Fixed

  @DevTrack
#${ApplicationStage:["DDE", "CreditApproval","Recommendation","Post Approval","Disbursal"]}
#${ApplicantType:["Individual"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","AGRL","FE","MHL","CV","LAP","CL"]}

  Scenario Outline: A new grid 'Rebate Rate structure' is visible on <ApplicationStage> for <ProductType> and <ApplicantType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user clicks on repayment parameters tab
    Then Rebate structure grid is visible
    Examples:
      | ProductType     | ApplicationStage     | ApplicantType     | Stage             | Visibility     |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <DDE>             | Yes            |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <CreditApproval>  | Yes            |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Recommendation>  | Yes            |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <PostApproval>    | Yes            |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Disbursal>       | Yes            |

  @DevTrack
#${ApplicationStage:["DDE", "CreditApproval","Recommendation","Post Approval","Disbursal"]}
#${ApplicantType:["Individual"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","AGRL","FE","MHL","CV","LAP","CL"]}

  Scenario Outline: Display and editability of Rebate Rate Structure grid at <ApplicationStage> for <ProductType> and <ApplicantType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user clicks on repayment parameters tab
    Then Rebate structure grid is visible in editable mode
    Examples:
      | ProductType     | ApplicationStage     | ApplicantType     | Stage             | Editable mode  |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <DDE>             | Yes            |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <CreditApproval>  | Yes            |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Recommendation>  | Yes            |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <PostApproval>    | Yes            |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Disbursal>       | No             |

  @DevTrack
#${ApplicationStage:["DDE", "CreditApproval","Recommendation","Post Approval","Disbursal"]}
#${ApplicantType:["Individual"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","AGRL","FE","MHL","CV","LAP","CL"]}

  Scenario Outline: Display of Rebate Rate Structure grid when structure is not maintained in repayment policy master at <ApplicationStage> for <ProductType> and <ApplicantType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user clicks on repayment parameters tab
    Then Blank Rebate structure grid is visible in editable mode

    Examples:
      | ProductType     | ApplicationStage     | ApplicantType     | Stage             | BlankStructure |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <DDE>             | Yes            |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <CreditApproval>  | Yes            |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Recommendation>  | Yes            |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <PostApproval>    | Yes            |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Disbursal>       | No             |

  @DevTrack
#${ApplicationStage:["DDE", "CreditApproval","Recommendation","Post Approval","Disbursal"]}
#${ApplicantType:["Individual"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","AGRL","FE","MHL","CV","LAP","CL"]}

  Scenario Outline: Autopopulation of effective rate of last slab in rebate Rate structure on <ApplicationStage> for <ProductType> and <ApplicantType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And clicks on repayment parameters tab
    And edits the rebate rate structure
    When user adds the last slab in rebate structure grid
    Then effective rate column of last slab should auto populate the value of application default rate and should be disabled.

    Examples:
      | ProductType     | ApplicationStage     | ApplicantType     | Stage             |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <DDE>             |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <CreditApproval>  |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Recommendation>  |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <PostApproval>    |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Disbursal>       |

  @DevTrack
#${ApplicationStage:["DDE", "CreditApproval","Recommendation","Post Approval","Disbursal"]}
#${ApplicantType:["Individual"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","AGRL","FE","MHL","CV","LAP","CL"]}

  Scenario Outline: Value of any of days range field is entered as 0 in rebate slab on <ApplicationStage> for <ProductType> and <ApplicantType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And clicks on repayment parameters tab
    And user edits the rebate rate structure
    When user enters value  in TO days column as 0 in any of the rebate slab
#  OR User enters value  in From days column as 0 in any of the rebate slab
    Then the error message should be shown stating "Value of FromDays and ToDays must both be greater than zero."
    Examples:
      | ProductType     | ApplicationStage     | ApplicantType     | Stage             |Validation |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <DDE>             |yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <CreditApproval>  |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Recommendation>  |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <PostApproval>    |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Disbursal>       |No         |

  @DevTrack
#${ApplicationStage:["DDE", "CreditApproval","Recommendation","Post Approval","Disbursal"]}
#${ApplicantType:["Individual"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","AGRL","FE","MHL","CV","LAP","CL"]}

  Scenario Outline: Value of fromdays is greater than the value of ToDays of any slab of rebate structure is visible on <ApplicationStage> for <ProductType> and <ApplicantType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user edits the rebate rate structure
    When user enters value in from days column which less than the value of corresponding to days column in any of the rebate slab
    Then the error message should be shown stating "Value of FromDays must be less than the value of ToDays within each rebate slab"
    Examples:
      | ProductType     | ApplicationStage     | ApplicantType     | Stage             |Validation |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <DDE>             |yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <CreditApproval>  |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Recommendation>  |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <PostApproval>    |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Disbursal>       |No         |
  @DevTrack
#${ApplicationStage:["DDE", "CreditApproval","Recommendation","Post Approval","Disbursal"]}
#${ApplicantType:["Individual"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","AGRL","FE","MHL","CV","LAP","CL"]}

  Scenario Outline: Value of Fromdays or ToDays entered as zero in rebate structure grid that is visible on <ApplicationStage> for <ProductType> and <ApplicantType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And clicks on repayment parameters tab
    And edits the rebate structure grid
    When user enters value  in from days column as 0 in any of the rebate slab
#    or user enters value in ToDays column as 0 in any of the rebate slab
    Then the error message should be shown stating "Value of FromDays and ToDays must both be greater than zero."
    Examples:
      | ProductType     | ApplicationStage     | ApplicantType     | Stage             |Validation |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <DDE>             |yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <CreditApproval>  |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Recommendation>  |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <PostApproval>    |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Disbursal>       |No         |

  @DevTrack
#${ApplicationStage:["DDE", "CreditApproval","Recommendation","Post Approval","Disbursal"]}
#${ApplicantType:["Individual"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","AGRL","FE","MHL","CV","LAP","CL"]}

  Scenario Outline: Value of fromDays of current slab is greater than value of ToDays slab in rebate structure grid which is visible on <ApplicationStage> for <ProductType> and <ApplicantType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And clicks on repayment parameters tab
    And edits the rebate structure grid
    When user enters value  in from days column whihc is less than the To days column of previous rebate slab
    Then the error message should be shown stating "The FromDays value of a current slab should be one more than the To days value of the immediate previous slab."
    Examples:
      | ProductType     | ApplicationStage     | ApplicantType     | Stage             |Validation |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <DDE>             |yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <CreditApproval>  |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Recommendation>  |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <PostApproval>    |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Disbursal>       |No         |

  @DevTrack
#${ApplicationStage:["DDE", "CreditApproval","Recommendation","Post Approval","Disbursal"]}
#${ApplicantType:["Individual"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","AGRL","FE","MHL","CV","LAP","CL"]}
  Scenario Outline: Value of fromdays column of first slab in rebate rate structure grid which is visible on <ApplicationStage> for <ProductType> and <ApplicantType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And clicks on repayment parameters tab
    And edits the rebate structure
    When user enters value  in from days column as any number except 1 of first rebate slab
    Then the error message should be shown stating "The first slab must start with FromDays column equal to 1."
    Examples:
      | ProductType     | ApplicationStage     | ApplicantType     | Stage             |Validation |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <DDE>             |yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <CreditApproval>  |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Recommendation>  |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <PostApproval>    |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Disbursal>       |No         |

  @DevTrack
#${ApplicationStage:["DDE", "CreditApproval","Recommendation","Post Approval","Disbursal"]}
#${ApplicantType:["Individual"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","AGRL","FE","MHL","CV","LAP","CL"]}

  Scenario Outline: Non continuous day ranges in rebate rate structure which is visible on <ApplicationStage> for <ProductType> and <ApplicantType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And clicks on repayment parameters tab
    And edits the rebatestructure
    When user enters non-continuous day ranges in rebate Slabs
    Then the error message should be shown stating "Rebate slabs must be continuous ."
    Examples:
      | ProductType     | ApplicationStage     | ApplicantType     | Stage             |Validation |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <DDE>             |yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <CreditApproval>  |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Recommendation>  |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <PostApproval>    |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Disbursal>       |No         |

  @DevTrack
#${ApplicationStage:["DDE", "CreditApproval","Recommendation","Post Approval","Disbursal"]}
#${ApplicantType:["Individual"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","AGRL","FE","MHL","CV","LAP","CL"]}

  Scenario Outline: Length of days range field of rebate structure which is visible on <ApplicationStage> for <ProductType> and <ApplicantType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And clicks on repayment parameters tab
    And edits the rebate rate structure grid
    When user enters value in from days column with length greater than 4 digits
#  OR user enters value in from days column with special characters
    Then the error message should be shown stating "Value must be a numeric input with a maximum of 4 digits ."
    Examples:
      | ProductType     | ApplicationStage     | ApplicantType     | Stage             |Validation |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <DDE>             |yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <CreditApproval>  |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Recommendation>  |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <PostApproval>    |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Disbursal>       |No         |

  @DevTrack
#${ApplicationStage:["DDE", "CreditApproval","Recommendation","Post Approval","Disbursal"]}
#${ApplicantType:["Individual"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","AGRL","FE","MHL","CV","LAP","CL"]}

  Scenario Outline: Total rebate slab days of rebate structure grid are less than loan tenure on <ApplicationStage> for <ProductType> and <ApplicantType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And clicks on repayment parameters tab
    And edits the grid
    When user defines rebate slabs with total slab days coverage less than loan tenure
    Then the error message should be shown stating "Slab days are less than the loan tenure."
    Examples:
      | ProductType     | ApplicationStage     | ApplicantType     | Stage             |Validation |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <DDE>             |yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <CreditApproval>  |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Recommendation>  |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <PostApproval>    |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Disbursal>       |No         |

  @DevTrack
#${ApplicationStage:["DDE", "CreditApproval","Recommendation","Post Approval","Disbursal"]}
#${ApplicantType:["Individual"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","AGRL","FE","MHL","CV","LAP","CL"]}

  Scenario Outline: Handling of moratorium in rebate rate structure grid' visible on <ApplicationStage> for <ProductType> and <ApplicantType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And clicks on repayment parameters tab
    When user selects moratorium
    Then the error message should be shown stating "Moratorium is not allowed with rebate structure grid.
    Examples:
      | ProductType     | ApplicationStage     | ApplicantType     | Stage             |Validation |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <DDE>             |yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <CreditApproval>  |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Recommendation>  |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <PostApproval>    |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Disbursal>       |No         |

  @DevTrack
#${ApplicationStage:["DDE", "CreditApproval","Recommendation","Post Approval","Disbursal"]}
#${ApplicantType:["Individual"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","AGRL","FE","MHL","CV","LAP","CL"]}

  Scenario Outline: Disbursal of loan with rebate structure which is visible on <ApplicationStage> for <ProductType> and <ApplicantType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And maintains the rebate structure grid
    When user disburse the loan
    Then Loan should be booked in FinnOne Neo LMS
    Examples:
      | ProductType     | ApplicationStage     | ApplicantType     | Stage             |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <DDE>             |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <CreditApproval>  |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Recommendation>  |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <PostApproval>    |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Disbursal>       |

  @DevTrack
#${ApplicationStage:["DDE", "CreditApproval","Recommendation","Post Approval","Disbursal"]}
#${ApplicantType:["Individual"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","AGRL","FE","MHL","CV","LAP","CL"]}

  Scenario Outline: Anniversary completion with maintenance of rebate structure on <ApplicationStage> for <ProductType> and <ApplicantType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And check on anniversary completion flag
    When user disburse the loan
    Then loan should be booked in FinnOne Neo LMS
    Examples:
      | ProductType     | ApplicationStage     | ApplicantType     | Stage             |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <DDE>             |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <CreditApproval>  |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Recommendation>  |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <PostApproval>    |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Disbursal>       |

  @DevTrack
#${ApplicationStage:["DDE", "CreditApproval","Recommendation","Post Approval","Disbursal"]}
#${ApplicantType:["Individual"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","AGRL","FE","MHL","CV","LAP","CL"]}

  Scenario Outline: Functionality of anniversary completion with maintenancee of rebate structure grid on <ApplicationStage> for <ProductType> and <ApplicantType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And maintains the rebate structure grid
    When user checks on anniversary completion flag
    Then rebate structure should work as per functionality
    Examples:
      | ProductType     | ApplicationStage     | ApplicantType     | Stage             |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <DDE>             |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <CreditApproval>  |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Recommendation>  |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <PostApproval>    |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Disbursal>       |

  @DevTrack
#${Services:["Application create", "Application update","loan booking","application search"]}
#${ApplicantType:["Individual"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","AGRL","FE","MHL","CV","LAP","CL"]}

  Scenario Outline: Visibility of Rebatestructure fields in <Services> for <ProductType> and <ApplicantType>
    And user initates the application of "<ProductType>" product type as "<ApplicantType>" applicant at "<service>" for "<Category>" with "<Key>" from application grid
    When user creates application through services
    Then Rebate structure fields should be visible in <service>
  Examples:
  | ProductType     | ApplicationStage     | ApplicantType     | Service             |
  | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Application create>|
  | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Application update>|
  | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Loan booking>      |
  | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Disbursal>         |

  @DevTrack
#${ApplicationStage:["DDE", "CreditApproval","Recommendation","Post Approval","Disbursal"]}
#${ApplicantType:["Individual"]}
  Scenario Outline: Rate type selected as floating for rebate structure grid  visible on <ApplicationStage> for <ProductType> and <ApplicantType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And clicks on repayment parameters tab
    And fills the repayment parameters
    When user selects rate type as floating
    Then the error message should be shown stating "Floating rate type is not allowed with Rebate structure grid."
    Examples:
      | ProductType     | ApplicationStage     | ApplicantType     | Stage             |Validation |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <DDE>             |yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <CreditApproval>  |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Recommendation>  |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <PostApproval>    |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Disbursal>       |No         |


  @DevTrack
#${ApplicationStage:["DDE", "CreditApproval","Recommendation","Post Approval","Disbursal"]}
#${ApplicantType:["Individual"]}
  Scenario Outline: Rate type selected as tiered for rebate structure grid  visible on <ApplicationStage> for <ProductType> and <ApplicantType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And clicks on repayment parameters tab
    And fills the repayment parameters
    When user selects rate type as tiered
    Then the error message should be shown stating "Tiered rate type is not allowed with Rebate structure grid."
    Examples:
      | ProductType     | ApplicationStage     | ApplicantType     | Stage             |Validation |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <DDE>             |yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <CreditApproval>  |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Recommendation>  |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <PostApproval>    |Yes        |
      | <ProductType>   | <ApplicationStage>   | <ApplicantType>   | <Disbursal>       |No         |