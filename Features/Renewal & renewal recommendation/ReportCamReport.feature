@Epic-RenewalAndRenewalRecom
@ReviewedBy-None
@AuthoredBy-Anand.Singh1
@NotImplemented
Feature: CAM report

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    #FeatureID-ACAUTOCAS-10994
    # ${ ProductType : ["MAL","IAF","IPF","IHF ","AGRL","CV","CEQ","EDU","FE","FAS","GL","HL","JLG","KCC","LAP","MHF","OMNI","PL","SHG","LC","BG","BL","BD","CC"]}
    #${ApplicationStage : ["APP UPDATE RECOMMENDATION"]}

  Scenario Outline: Validate CAM Report Button is Present in <ProductType> at <ApplicationStage> stage
    Given user has opened application of "<ProductType>" at "<ApplicationStage>"
    When user clicks on More Actions Button
    Then user can see the link for CAM Report
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  Scenario Outline: Generate CAM Report for <ProductType> at <ApplicationStage> stage
    Given user has opened application of "<ProductType>" at "<ApplicationStage>"
    When user clicks on CAM Report Button
    Then A new Tab will open With CAM Report
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  Scenario Outline: Validate Tables in Generated CAM Report for <ProductType> at <ApplicationStage> stage
    Given user has opened generated CAM Report for application of "<ProductType>" at "<ApplicationStage>"
    When user check for fields in generated html page
    Then user can see Tables on page
      | Tables                            |
      | Application Details               |
      | Loan Details                      |
      | Key Ability Indicators            |
      | Insurance Funding Details         |
      | Applicant Personal Details        |
      | Employment/Business Details       |
      | Existing Obligation               |
      | Bank Statement                    |
      | Credit History                    |
      | Charge Details                    |
      | Charge Receipt Adjustment Details |
      | Verification Details              |
      | Existing Fleet Details            |
      | Existing Repayment History        |
      | Body Details                      |
      | PSL Category Details              |
      | Credit Deviation                  |
      | Business Deviation                |
      | Notepad Noting                    |
      | Special Conditions                |
      | Decision Sheet                    |
      | Decision Justification            |
      | Post Approval                     |
      | Approvals                         |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  Scenario Outline: Validate Application Details Tables Contents in Generated CAM Report for <ProductType> at <ApplicationStage> stage
    Given user has opened generated CAM Report for application of "<ProductType>" at "<ApplicationStage>"
    When user check for fields in generated html page
    Then user can see Fields in Application Details Table
      | Fields                    |
      | Product Type              |
      | Product                   |
      | Branch                    |
      | Application Creation Date |
      | Application ID            |
      | Date of Receipt           |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  Scenario Outline: Validate Loan Details Tables Contents in Generated CAM Report for <ProductType> at <ApplicationStage> stage
    Given user has opened generated CAM Report for application of "<ProductType>" at "<ApplicationStage>"
    When user check for fields in generated html page
    Then user can see Fields in Loan Details Table
      | Fields                    |
      | Application ID            |
      | Credit Manager's          |
      | Sourcing Branch           |
      | Date Encoded              |
      | Application Creation Date |
      | Loan Branch               |
      | Product                   |
      | Scheme                    |
      | Channel                   |
      | DSA                       |
      | Loan Applied              |
      | Loan Sanctioned Amount    |
      | Insurance Amount          |
      | Tenure                    |
      | Total Loan Amount         |
      | Rate Type                 |
      | Type Of Insurance         |
      | Installment Amount        |
      | ROI                       |
      | Purpose of Loan           |
      | Processing Fees           |
      | RM                        |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  Scenario Outline: Validate Key Ability Indicators Tables Contents in Generated CAM Report for <ProductType> at <ApplicationStage> stage
    Given user has opened generated CAM Report for application of "<ProductType>" at "<ApplicationStage>"
    When user check for fields in generated html page
    Then user can see Fields in Key Ability Indicators Table
      | Fields       |
      | DBR          |
      | IIR          |
      | Gross LTV    |
      | NET LTV      |
      | VAP LTV      |
      | Aggrgate LTV |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  Scenario Outline: Validate Applicant Personal Details Table Contents in Generated CAM Report for <ProductType> at <ApplicationStage> stage
    Given user has opened generated CAM Report for application of "<ProductType>" at "<ApplicationStage>"
    When user check for fields in generated html page
    Then user can see Fields in Key Applicant Personal Details Table
      | Fields                      |
      | Name                        |
      | Relationship                |
      | Phone No.                   |
      | Age                         |
      | Age During Maturity of Loan |
      | Existing Customer           |
      | Constitution                |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  Scenario Outline: Validate Empyment Businesiness Details Tables Contents in Generated CAM Report for <ProductType> at <ApplicationStage> stage
    Given user has opened generated CAM Report for application of "<ProductType>" at "<ApplicationStage>"
    When user check for fields in generated html page
    Then user can see Fields in Empyment/Businesiness Details
      | Fields             |
      | Applicant Name     |
      | Constitution       |
      | Designation        |
      | Business Stability |
      | Business Name      |
      | Nature of Business |
      | Business Since     |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  Scenario Outline: Validate Existing Obligation Tables Contents in Generated CAM Report for <ProductType> at <ApplicationStage> stage
    Given user has opened generated CAM Report for application of "<ProductType>" at "<ApplicationStage>"
    When user check for fields in generated html page
    Then user can see Fields in Existing Obligation
      | Fields                 |
      | Applicant Name         |
      | Obligation Type        |
      | Bank                   |
      | ROI                    |
      | Considered in DBR      |
      | MOB                    |
      | Account Number         |
      | Loan Amount            |
      | Cheque Boun            |
      | EMI                    |
      | Whether proposed as BT |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  Scenario Outline: Validate Bank Statement Tables Contents in Generated CAM Report for <ProductType> at <ApplicationStage> stage
    Given user has opened generated CAM Report for application of "<ProductType>" at "<ApplicationStage>"
    When user check for fields in generated html page
    Then user can see Fields in Bank Statement Table
      | Fields                      |
      | Applicant Name/Organization |
      | Bank Name                   |
      | Acc. Type                   |
      | No. of Months Banking       |
      | Min. Balance                |
      | Average Bal                 |
      | Max. Balance                |
      | Bonus Cheques               |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


  Scenario Outline: Validate Credit History Tables Contents in Generated CAM Report for <ProductType> at <ApplicationStage> stage
    Given user has opened generated CAM Report for application of "<ProductType>" at "<ApplicationStage>"
    When user check for fields in generated html page
    Then user can see Fields in Credit History Table
      | Fields                                |
      | Applicant Name                        |
      | Cibil Score                           |
      | No. of Active Secured Loans           |
      | No. of Active Unsecured Loans         |
      | Credit Card Max DPD in last 12 months |
      | Credit Card-no. of w/off amount       |
      | Max DPD in last 6 months              |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  Scenario Outline: Validate Charge Details Table Contents in Generated CAM Report for <ProductType> at <ApplicationStage> stage
    Given user has opened generated CAM Report for application of "<ProductType>" at "<ApplicationStage>"
    When user check for fields in generated html page
    Then user can see Fields in Charge Details Table
      | Fields                   |
      | Operation Type           |
      | Charge Name              |
      | Applicant BP Type        |
      | Applicant BP Name        |
      | Charge Amount            |
      | Effective Charge Amount  |
      | Differential Amount/Rate |
      | Split ID                 |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  Scenario Outline: Validate Charge Receipt Adjustment Details Table Contents in Generated CAM Report for <ProductType> at <ApplicationStage> stage
    Given user has opened generated CAM Report for application of "<ProductType>" at "<ApplicationStage>"
    When user check for fields in generated html page
    Then user can see Fields in Charge Receipt Adjustment Details Table
      | Fields                |
      | Charge Type           |
      | Charge Name           |
      | Charge Amount         |
      | Receipt ID            |
      | Recieving Amount      |
      | Recivable Description |
      | Mode of Payment       |
      | Split ID              |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


  Scenario Outline: Validate Verification Details Table Contents in Generated CAM Report for <ProductType> at <ApplicationStage> stage
    Given user has opened generated CAM Report for application of "<ProductType>" at "<ApplicationStage>"
    When user check for fields in generated html page
    Then user can see Fields in Verification Details Table
      | Fields              |
      | Applicant           |
      | Verification Type   |
      | Verification Status |


    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  Scenario Outline: Validate Existing Fleet Details Table Contents in Generated CAM Report for <ProductType> at <ApplicationStage> stage
    Given user has opened generated CAM Report for application of "<ProductType>" at "<ApplicationStage>"
    When user check for fields in generated html page
    Then user can see Fields in Existing Fleet Details Table
      | Fields                        |
      | Total Number of Vehicles      |
      | Total Number of Free Vehicles |
      | Asset Model                   |
      | Registration Number           |
      | Month/Year of Mfg             |
      | Body Type                     |
      | Free/Finance/Deemed Free      |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  Scenario Outline: Validate Existing Repayment History Table Contents in Generated CAM Report for <ProductType> at <ApplicationStage> stage
    Given user has opened generated CAM Report for application of "<ProductType>" at "<ApplicationStage>"
    When user check for fields in generated html page
    Then user can see Fields in Existing Repayment History Table
      | Fields             |
      | Applicant Name     |
      | Type of Loan       |
      | Financier Name     |
      | Asset Model        |
      | EMI                |
      | MOB                |
      | Loan Amount        |
      | AD (Average Delay) |
      | PD (Peak Delay)    |


    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |










