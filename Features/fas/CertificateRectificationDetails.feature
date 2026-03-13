@Epic-FAS_Loans
@ReviewedBy-
@AuthoredBy-ananta.bhatia
@NotImplemented
Feature:Certificate Rectification details
#Pre - Requisite-
  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

    #FeatureID-ACAUTOCAS-10863
     # ${ProductType:["FAS"]}
     # ${ApplicationStage:["Certificate rectification"]}
  Scenario Outline:FAS Activity Reinitiation
    And <ProductType> application is at sent to ops stage
    And user navigates to FAS Activity Reinitiation
    When search ApplicationID
    Then stage with start workflow button should appear
    Examples:
      | ProductType   |
      | <ProductType> |


 #FeatureID-ACAUTOCAS-10863
     # ${ProductType:["FAS"]}
     # ${ApplicationStage:["Certificate rectification"]}
  Scenario Outline: FAS Activity Reinitiaate Application
    And <ProductType> application is at sent to ops stage
    And user navigates to FAS Activity Reinitiation
    And search application
    And stage with start workflow button appears
    And user selects the stage as Certificate Rectification
    When perform Start Workflow
    Then user lands on Certificate Rectification Details
    Examples:
      | ProductType   |
      | <ProductType> |


     #FeatureID-ACAUTOCAS-10863
     # ${ProductType:["FAS"]}
     # ${ApplicationStage:["Certificate rectification"]}
  Scenario Outline:Certificate rectification detail Grid at <ApplicationStage> in <ProductType>
    And user open "<ApplicationStage>" Grid in "<ProductType>"
    When  user lands on Certificate Rectification Grid
    Then  user should be able to see following fields in Certificate Rectification Grid
      | FieldName              |
      | Application ID         |
      | FASAccountType         |
      | Customer Name          |
      | Borrower Category      |
      | FAS  Category          |
      | FAS Constitution Type  |
      | Neo Cust ID            |
      | Identification No.     |
      | Phone Number           |
      | Stage                  |
      | Product Type           |
      | Product Name           |
      | Sourcing Date          |
      | Sourcing Channel       |
      | Branch                 |
      | Credit Officer         |
      | Image Based Processing |
      | Product Processor      |
      | Loan Amount            |
      | Drawing Power          |
      | Sanctioned Limit       |
      | Updated on             |
      | Updated by             |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
 #FeatureID-ACAUTOCAS-10863
    # ${ProductType:["FAS"]}
   # ${ApplicationStage:["Certificate rectification"]}
  Scenario Outline:Certificate rectification details Lodgement Tab
    And user has application ID of <ProductType> on sent to ops stage
    And user opens FAS Activity Reinitaion
    And fill the provided applicationID
    And select certificate rectification details
    And user clicks on start workflow button
    When <ApplicationStage> Grid opens
    Then Tab naming Lodgement Details should appear.

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-10863
    # ${ProductType:["FAS"]}
   # ${ApplicationStage:["Certificate rectification"]}
  Scenario Outline: Certificate rectification details Fields
    And user has application ID of <ProductType> on sent to ops stage
    And user opens FAS Activity Reinitaion
    And fill the provided applicationID
    And select certificate rectification details
    And user clicks on start workflow button
    And <ApplicationStage> Grid opens
    When user opens the same application from the grid
    Then user should be able to see following fields
      | Transaction Date                       |
      | Transaction Type                       |
      | Transaction Number                     |
      | Transaction Control Number             |
      | Total No Of Transaction Control Number |
      | Remarks                                |
      | Current Account Balance                |
      | FAS Drawing Power                      |
      | Sanctioned Credit Limit                |
      | New Drawing Power                      |
      | LTV %                                  |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-10863
    # ${ProductType:["FAS"]}
   # ${ApplicationStage:["Certificate rectification"]}
  Scenario Outline: Certificate rectification details Scrip details
    And user has application ID of <ProductType> on sent to ops stage
    And user opens FAS Activity Reinitaion
    And fill the provided applicationID
    And  select certificate rectification details
    And  user clicks on start workflow button
    And <ApplicationStage> Grid opens
    And  user opens the same application from the grid
    When user views Scrip Details
    Then Then user should be able to see following fields in Scrip Details Table
      | Collateral Id           |
      | Collateral Number       |
      | Scrip                   |
      | Unique Scrip Identifier |
      | Status                  |
      | Demat Quantity          |
      | Physical Quantity       |
      | Market Value            |
      | Value                   |
      | DP% *                   |
      | Revised DP%             |
      | Portfolio%              |
      | Additional Field1       |
      | Additional Field2       |
      | Additional Field3       |
      | Certificate Details     |
      | Actions                 |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  #FeatureID-ACAUTOCAS-10863
    # ${ProductType:["FAS"]}
   # ${ApplicationStage:["Certificate rectification"]}
  Scenario Outline: Certificate rectification details Mandatory fields in Lodgement Details Section
    And user has application ID of <ProductType> on sent to ops stage
    And user opens FAS Activity Reinitaion
    And fill the provided applicationID
    And  select certificate rectification details
    And  user clicks on start workflow button
    And <ApplicationStage> Grid opens
    When user opens the same application from the grid
    Then  user should be able to which fields are mandatory in Lodgement Details Section
      | Transaction Date           | No |
      | Transaction Type           | No |
      | Transaction Control Number | No |
      | FAS Drawing Power          | No |
      | FOS Drawing Power          | No |
      | Total Drawing Power        | No |
      | Sanctioned Credit Limit    | No |
      | New Drawing Power          | No |
      | LTV %                      | No |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

     #FeatureID-ACAUTOCAS-10863
    # ${ProductType:["FAS"]}
   # ${ApplicationStage:["Certificate rectification"]}
  Scenario Outline: Certificate rectification details Mandatory fields in Security Details Section
    And user has application ID of <ProductType> on sent to ops stage
    And user opens FAS Activity Reinitaion
    And fill the provided applicationID
    And  select certificate rectification details
    And  user clicks on start workflow button
    And <ApplicationStage> Grid opens
    When user opens the same application from the grid
    Then  user should be able to which fields are mandatory in Security Details Section
      | Collateral Id     | No  |
      | Collateral Number | No  |
      | Security          | Yes |
      | Status            | Yes |
      | Form of Security  | Yes |
      | Agency            | Yes |
      | Dp calculated on  | No  |
      | DP %              | No  |
      | Value             | No  |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
    #FeatureID-ACAUTOCAS-10863
    # ${ProductType:["FAS"]}
   # ${ApplicationStage:["Certificate rectification"]}

  Scenario Outline: Certificate rectification details Scrip Details Mandatory field
    And user has application ID of <ProductType> on sent to ops stage
    And user opens FAS Activity Reinitaion
    And fill the provided applicationID
    And  select certificate rectification details
    And  user clicks on start workflow button
    And <ApplicationStage> Grid opens
    And  user opens the same application from the grid
    When user views Scrip Details
    Then  user should be able to which fields are mandatory in Scrip Details Section
      | Collateral Id           | No  |
      | Collateral Number       | No  |
      | Scrip                   | Yes |
      | Unique Scrip Identifier | No  |
      | Status                  | No  |
      | Demat Quantity          | Yes |
      | Physical Quantity       | No  |
      | Market Value            | No  |
      | Value                   | No  |
      | DP% *                   | Yes |
      | Revised DP%             | No  |
      | Portfolio%              | No  |
      | Additional Field1       | No  |
      | Additional Field2       | No  |
      | Additional Field3       | No  |
      | Certificate Details     | No  |
      | Actions                 | No  |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-10863
    # ${ProductType:["FAS"]}
   # ${ApplicationStage:["Certificate rectification"]}

  Scenario Outline: Certificate rectification details history
    And user has application ID of <ProductType> on sent to ops stage
    And user opens FAS Activity Reinitaion
    And fill the provided applicationID
    And  select certificate rectification details
    And  user clicks on start workflow button
    And <ApplicationStage> Grid opens
    And  user opens the same application from the grid
    When user views CERTIFICATION RECTIFICATION HISTORY
    Then stage should come selected as Certificate_Rectification

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-10863
    # ${ProductType:["FAS"]}
   # ${ApplicationStage:["Certificate rectification"]}
  Scenario Outline: Certificate rectification details history fields
    And user has application ID of <ProductType> on sent to ops stage
    And user opens FAS Activity Reinitaion
    And fill the provided applicationID
    And  select certificate rectification details
    And  user clicks on start workflow button
    And <ApplicationStage> Grid opens
    And  user opens the same application from the grid
    When  user views CERTIFICATION RECTIFICATION HISTORY
    Then Then user should be able to see fields
      | Stage                   |
      | S.No                    |
      | Transaction Number      |
      | Transaction Date        |
      | Current A/C Balance     |
      | Drawing Power           |
      | Sanctioned Credit Limit |
      | Verdict                 |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-10863
    # ${ProductType:["FAS"]}
   # ${ApplicationStage:["Certificate rectification"]}

  Scenario Outline: Certificate rectification details history data
    And user has application ID of <ProductType> on sent to ops stage
    And user opens FAS Activity Reinitaion
    And fill the provided applicationID
    And  select certificate rectification details
    And  user clicks on start workflow button
    And <ApplicationStage> Grid opens
    And  user opens the same application from the grid
    And user views CERTIFICATION RECTIFICATION HISTORY
    When user selects stage as "<Stage>"
    Then Records exist should get populated.
    Examples:
      | Stage                       | ProductType | ApplicationStage |
      | All                         | ProductType | ApplicationStage |
      | CERTIFICATION_RECTIFICATION | ProductType | ApplicationStage |
      | Cloure                      | ProductType | ApplicationStage |
      | Lodgement                   | ProductType | ApplicationStage |
      | Additional_Lodgement        | ProductType | ApplicationStage |
      | Swap                        | ProductType | ApplicationStage |
      | Withdrawal                  | ProductType | ApplicationStage |
      | Account Modification        | ProductType | ApplicationStage |
      | Share_Sale                  | ProductType | ApplicationStage |




    #FeatureID-ACAUTOCAS-10863
    # ${ProductType:["FAS"]}
   # ${ApplicationStage:["Certificate rectification"]}
  Scenario Outline: Certificate rectification details customer Communication History
    And user has application ID of <ProductType> on sent to ops stage
    And user opens FAS Activity Reinitaion
    And fill the provided applicationID
    And  select certificate rectification details
    And  user clicks on start workflow button
    And <ApplicationStage> Grid opens
    And  user opens the same application from the grid
    When user views Customer Communication History
    Then user should be able to see fields
      | Reports                |
      | Attachments            |
      | Mode                   |
      | Contacted By           |
      | Added By               |
      | Added On               |
      | Messages/Notifications |
      | Status                 |
      | History                |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
  #FeatureID-ACAUTOCAS-10863
    # ${ProductType:["FAS"]}
   # ${ApplicationStage:["Certificate rectification"]}
  Scenario Outline: Certificate rectification details Activity
    And user has application ID of <ProductType> on sent to ops stage
    And user opens FAS Activity Reinitaion
    And fill the provided applicationID
    And  select certificate rectification details
    And  user clicks on start workflow button
    And <ApplicationStage> Grid opens
    And  user opens the same application from the grid
    When user views Activity
    Then user should be able to see fields
      | Comments              |
      | Activity              |
      | History               |
      | Notes                 |
      | Tags                  |
      | Rule Execution Result |
      | Messages              |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
  #FeatureID-ACAUTOCAS-10863
    # ${ProductType:["FAS"]}
   # ${ApplicationStage:["Certificate rectification"]}
  Scenario Outline: Certificate rectification details required fields
    And user has application ID of <ProductType> on sent to ops stage
    And user opens FAS Activity Reinitaion
    And fill the provided applicationID
    And  select certificate rectification details
    And  user clicks on start workflow button
    And <ApplicationStage> Grid opens
    And  user opens the same application from the grid
    When user selects required fields
    Then user should be able to see following sections
      | Security Details                    |
      | Scrip Details                       |
      | CERTIFICATION RECTIFICATION HISTORY |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
  #FeatureID-ACAUTOCAS-10863
    # ${ProductType:["FAS"]}
   # ${ApplicationStage:["Certificate rectification"]}
  Scenario Outline:Certificate rectification details fields visible if Collateral ID selected
    And user has application ID of <ProductType> on sent to ops stage
    And user opens FAS Activity Reinitaion
    And fill the provided applicationID
    And  selects certificate rectification details
    And  user clicks on start workflow button
    And <ApplicationStage> Grid opens
    And User navigates to Security Details
    When User only selects Collateral ID
    Then Collateral ID field should be visible in Security Details grid with other mandatory fields
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  #FeatureID-ACAUTOCAS-10863
    # ${ProductType:["FAS"]}
   # ${ApplicationStage:["Certificate rectification"]}
  Scenario Outline: Certificate rectification details fields not visible if Collateral ID selected
    And user has application ID of <ProductType> on sent to ops stage
    And user opens FAS Activity Reinitaion
    And fill the provided applicationID
    And  select certificate rectification details
    And  user clicks on start workflow button
    And <ApplicationStage> Grid opens
    And User navigates to Security Details
    When User only selects Collateral ID
    Then  user should not be able to see fields
      | Collateral Number |
      | Additional Field1 |
      | Additional Field2 |
      | Additional Field3 |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  #FeatureID-ACAUTOCAS-10863
    # ${ProductType:["FAS"]}
   # ${ApplicationStage:["Certificate rectification"]}
  Scenario Outline: Certificate rectification details fields visible if Collateral Number selected
    And user has application ID of <ProductType> on sent to ops stage
    And user opens FAS Activity Reinitaion
    And fill the provided applicationID
    And  select certificate rectification details
    And  user clicks on start workflow button
    And <ApplicationStage> Grid opens
    And User navigates to Security Details
    When User only selects Collateral Number
    Then Collateral Number field should be visible in Security Details grid with other mandatory fields

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  #FeatureID-ACAUTOCAS-10863
    # ${ProductType:["FAS"]}
   # ${ApplicationStage:["Certificate rectification"]}
  Scenario Outline: Certificate rectification details fields not visible if Collateral Number selected
    And user has application ID of <ProductType> on sent to ops stage
    And user opens FAS Activity Reinitaion
    And fill the provided applicationID
    And  select certificate rectification details
    And  user clicks on start workflow button
    And <ApplicationStage> Grid opens
    And User navigates to Security Details
    When User only selects Collateral Number
    Then  user should not be able to see fields
      | Collateral ID     |
      | Additional Field1 |
      | Additional Field2 |
      | Additional Field3 |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #Pre-Requisite - FAS application at Certificate Rectification Details
     #FeatureID-ACAUTOCAS-10863
    # ${ProductType:["FAS"]}
   # ${ApplicationStage:["Certificate rectification"]}
  Scenario Outline: Certificate Details popup tabs
    And opens <ApplicationStage> Grid of <ProductType>
    And User navigates to Scrip Deatils
    When click on certificate details link
    Then popup should come containing following tabs
      | Physical Quantity |
      | Demat Quantity    |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


#Pre-Requisite - FAS application at Certificate Rectification Details
     #FeatureID-ACAUTOCAS-10863
    # ${ProductType:["FAS"]}
   # ${ApplicationStage:["Certificate rectification"]}
  Scenario Outline: Physical Quantity tabs fields
    And opens <ApplicationStage> Grid of <ProductType>
    And User navigates to Scrip Details
    And click on certificate details link
    When popup opens
    Then Physical Quantity tabs contain following fields
      | Scrip Description         |
      | Demat Quantity            |
      | Physical Quantity         |
      | Demat                     |
      | Folio/Pledge Order Number |
      | ISIN No.                  |
      | Certificate Number        |
      | Distinctive Numbers From  |
      | Distinctive Numbers To    |
      | Quantity                  |
      | Holder 1                  |
      | Holder 2                  |
      | Holder 3                  |
      | ACA Number                |
      | Pledgor DP ID             |
      | Pledgor DP Name           |
      | Pledgor Client Id         |
      | Pledgee DP ID             |
      | Pledgee DP Name           |
      | Pledgee Client Id         |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |



#Pre-Requisite - FAS application at Certificate Rectification Details
     #FeatureID-ACAUTOCAS-10863
    # ${ProductType:["FAS"]}
   # ${ApplicationStage:["Certificate rectification"]}
  Scenario Outline: Demat Quantity tabs fields  of <ProductType>
    And opens <ApplicationStage> Grid
    And User navigates to Scrip Details
    And click on certificate details link
    When popup opens
    Then Demat Quantity tabs contain following fields
      | Scrip Description         |
      | Demat Quantity            |
      | Physical Quantity         |
      | Demat                     |
      | Folio/Pledge Order Number |
      | ISIN No.                  |
      | Certificate Number        |
      | Distinctive Numbers From  |
      | Distinctive Numbers To    |
      | Quantity                  |
      | Holder 1                  |
      | Holder 2                  |
      | Holder 3                  |
      | ACA Number                |
      | Pledgor DP ID             |
      | Pledgor DP Name           |
      | Pledgor Client Id         |
      | Pledgee DP ID             |
      | Pledgee DP Name           |
      | Pledgee Client Id         |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

 #Pre-Requisite - FAS application at Certificate Rectification Details
     #FeatureID-ACAUTOCAS-10863
    # ${ProductType:["FAS"]}
   # ${ApplicationStage:["Certificate rectification"]}
  Scenario Outline: Close popup with cancel
    And opens <ApplicationStage> Grid  of <ProductType>
    And User navigates to Scrip Details
    And click on certificate details link
    And popup opens
    When user clicks on cancel
    Then popup will be closed

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #Pre-Requisite - FAS application at Certificate Rectification Details
     #FeatureID-ACAUTOCAS-10863
    # ${ProductType:["FAS"]}
   # ${ApplicationStage:["Certificate rectification"]}
  Scenario Outline: Close popup with close icon
    And opens <ApplicationStage> Grid  of <ProductType>
    And User navigates to Scrip Details
    And click on certificate details link
    And popup opens
    When user clicks on close icon
    Then popup will be closed

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


    #Pre-Requisite - FAS application at Certificate Rectification Details
     #FeatureID-ACAUTOCAS-10863
    # ${ProductType:["FAS"]}
   # ${ApplicationStage:["Certificate rectification"]}
  Scenario Outline: Minimize popup Certificate details
    And opens <ApplicationStage> Grid  of <ProductType>
    And User navigates to Scrip Details
    And click on certificate details link
    And popup opens
    When user clicks on minimze icon
    Then popup will be minimized

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #Pre-Requisite - FAS application at Certificate Rectification Details
     #FeatureID-ACAUTOCAS-10863
    # ${ProductType:["FAS"]}
   # ${ApplicationStage:["Certificate rectification"]}
  Scenario Outline: Maximize popup Certificate details
    And opens <ApplicationStage> Grid  of <ProductType>
    And User navigates to Scrip Details
    And click on certificate details link
    And popup opens
    And user clicks on minimze icon
    When user clicks on maximize icon
    Then popup will be maximized

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #Pre-Requisite - FAS application at Certificate Rectification Details
     #FeatureID-ACAUTOCAS-10863
    # ${ProductType:["FAS"]}
   # ${ApplicationStage:["Certificate rectification"]}
  Scenario Outline: Edit Physical Quantity in Certificate details link
    And opens <ApplicationStage> Grid  of <ProductType>
    And User navigates to Scrip Details
    And click on certificate details link
    And opens Physical Quantity tab
    When user views data from workbook "<SourceFile>" under sheet name in "<SheetName>" and row number as "<rownum>" accordingly
    Then the field should be edited in with value present

    Examples:
      | ApplicationStage | ProductType        | SourceFile                   | SheetName | rownum |
      | <ProductType>    | <ApplicationStage> | CertificateRectification.XLS | SHEET1    | 0      |
      | <ProductType>    | <ApplicationStage> | CertificateRectification.XLS | SHEET1    | 1      |
      | <ProductType>    | <ApplicationStage> | CertificateRectification.XLS | SHEET1    | 2      |
      | <ProductType>    | <ApplicationStage> | CertificateRectification.XLS | SHEET1    | 3      |
      | <ProductType>    | <ApplicationStage> | CertificateRectification.XLS | SHEET1    | 4      |


    #Pre-Requisite - FAS application at Certificate Rectification Details
     #FeatureID-ACAUTOCAS-10863
    # ${ProductType:["FAS"]}
   # ${ApplicationStage:["Certificate rectification"]}
  Scenario Outline: Edit Demat Quantity in Certificate details link
    And opens <ApplicationStage> Grid  of <ProductType>
    And User navigates to Scrip Details
    And click on certificate details link
    And opens Demat Quantity tab
    When user views data from workbook "<SourceFile>" under sheet name in "<SheetName>" and row number as "<rownum>" accordingly
    Then the field should be edited in with value present

    Examples:
      | ApplicationStage | ProductType        | SourceFile                   | SheetName | rownum |
      | <ProductType>    | <ApplicationStage> | CertificateRectification.XLS | SHEET1    | 0      |
      | <ProductType>    | <ApplicationStage> | CertificateRectification.XLS | SHEET1    | 1      |
      | <ProductType>    | <ApplicationStage> | CertificateRectification.XLS | SHEET1    | 2      |
      | <ProductType>    | <ApplicationStage> | CertificateRectification.XLS | SHEET1    | 3      |
      | <ProductType>    | <ApplicationStage> | CertificateRectification.XLS | SHEET1    | 4      |



     #Pre-Requisite - User has edited Physical and Demat Quantity in Certificate Rectificate Details
     #FeatureID-ACAUTOCAS-10863
    # ${ProductType:["FAS"]}
   # ${ApplicationStage:["Certificate rectification"]}
  Scenario Outline: Save certificate rectification details
    And opens <ApplicationStage> Grid  of <ProductType>
    And User navigates to Scrip Details
    When user clicks on save and proceed
    Then application is moved to Certificate Rectification QC grid

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |



  #FeatureID - ACAUTOCAS-10863
# ${ ProductType : ["FAS"]}
#   # ${ApplicationStage:["Certificate rectification QC"]}
  Scenario Outline: Verify fields of stage decision tab are visible on <ApplicationStage> in <ProductType>
    And user opens "<ProductType>" application at "<ApplicationStage>"  of <ProductType>
    When user opens stage decision tab
    Then user should be able to see below fields
      | FieldName         | MandatoryFlag |
      | Decision Sheet    | mandatory     |
      | Reason            | mandatory     |
      | Description       | mandatory     |
      | Decision Comments | non mandatory |
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

#FeatureID - ACAUTOCAS-10863
# ${ ProductType : ["FAS"]}
#${ApplicationStage : ["Certificate rectification QC"]}
  Scenario Outline: <FieldName> field validation on <ApplicationStage> in <ProductType>
    And user opens "<ProductType>" application at "<ApplicationStage>" of <ProductType>
    And user read data from workbook "<StageDecisionWB>" under "<StageDecision_default>" and "<StageDecision_default_rowNum>"
    When user fills all fields except "<FieldName>" field
    And saves the data
    Then an error occurred to fill "<FieldName>" field
    Examples:
      | ApplicationStage   | ProductType    | StageDecisionWB                             | StageDecision_default | StageDecision_default_rowNum | FieldName     |
      | <ApplicationStage> | <ProductType>  | Additional_Lodgement_QC_Stage_Decision.xlsx | Negative              | 0                            | Reason        |
      | <ApplicationStage> | <ProductType>  | Additional_Lodgement_QC_Stage_Decision.xlsx | Negative              | 1                            | Description   |
      | <ApplicationStage> | <<ProductType> | Additional_Lodgement_QC_Stage_Decision.xlsx | Negative              | 2                            | DecisionSheet |


#FeatureID - ACAUTOCAS-108
# ${ ProductType : ["FAS"]}
#${ApplicationStage : ["Certificate rectification QC"]}
  Scenario Outline: validate cancellation of data entered in stage decision tab
    And user opens "<ProductType>" application at "<ApplicationStage>"  of <ProductType>
    And user opens stage decision tab
    And user reads data from workbook "<StageDecisionWB>" under "<StageDecision_default>" and "<StageDecision_default_rowNum>"
    When user cancels the data
    Then verify data gets removed from the screen
    Examples:
      | ApplicationStage   | ProductType   | StageDecisionWB                             | StageDecision_default | StageDecision_default_rowNum |
      | <ApplicationStage> | <ProductType> | Additional_Lodgement_QC_Stage_Decision.xlsx | Cancel                | 0                            |
      | <ApplicationStage> | <ProductType> | Additional_Lodgement_QC_Stage_Decision.xlsx | Cancel                | 1                            |
      | <ApplicationStage> | <ProductType> | Additional_Lodgement_QC_Stage_Decision.xlsx | Cancel                | 2                            |
      | <ApplicationStage> | <ProductType> | Additional_Lodgement_QC_Stage_Decision.xlsx | Cancel                | 3                            |
      | <ApplicationStage> | <ProductType> | Additional_Lodgement_QC_Stage_Decision.xlsx | Cancel                | 4                            |
      | <ApplicationStage> | <ProductType> | Additional_Lodgement_QC_Stage_Decision.xlsx | Cancel                | 5                            |

#FeatureID - ACAUTOCAS-10863
# ${ ProductType : ["FAS"]}
#${ApplicationStage : ["Certificate rectification QC"]}
  Scenario Outline: Validate approval of record at <ApplicationStage>
    And user opens "<ProductType>" application at "<ApplicationStage>"
    And user opens stage decision tab
    And user reads data from workbook "<StageDecisionWB>" under "<StageDecision_default>" and "<StageDecision_default_rowNum>"
    When user saves the data
    Then verify application moves to next stage
    Examples:
      | ApplicationStage   | ProductType   | StageDecisionWB                             | StageDecision_default | StageDecision_default_rowNum |
      | <ApplicationStage> | <ProductType> | Additional_Lodgement_QC_Stage_Decision.xlsx | Save                  | 0                            |

#FeatureID - ACAUTOCAS-10863
# ${ ProductType : ["FAS"]}
#${ApplicationStage : ["Certificate rectification QC"]}
  Scenario Outline:  Validate rejection of record at <ApplicationStage>
    And user opens "<ProductType>" application at "<ApplicationStage>"
    And user opens stage decision tab
    And user reads data from workbook "<StageDecisionWB>" under "<StageDecision_default>" and "<StageDecision_default_rowNum>"
    When user saves the data
    Then verify application moves back to the previous stage Certificate rectification with unsaved data
    Examples:
      | ApplicationStage   | ProductType   | StageDecisionWB                             | StageDecision_default | StageDecision_default_rowNum |
      | <ApplicationStage> | <ProductType> | Additional_Lodgement_QC_Stage_Decision.xlsx | Save                  | 1                            |

#FeatureID - ACAUTOCAS-10863
# ${ ProductType : ["FAS"]}
#${ApplicationStage : ["Certificate rectification QC"]}
  Scenario Outline: Validation of send back of record at <ApplicationStage>
    And user opens "<ProductType>" application at "<ApplicationStage>"
    And user opens stage decision tab
    And user reads data from workbook "<StageDecisionWB>" under "<StageDecision_default>" and "<StageDecision_default_rowNum>"
    When user saves the data
    Then verify application moves back to the previous stage Lodgement with saved data
    Examples:
      | ApplicationStage   | ProductType   | StageDecisionWB                             | StageDecision_default | StageDecision_default_rowNum |
      | <ApplicationStage> | <ProductType> | Additional_Lodgement_QC_Stage_Decision.xlsx | Save                  | 2                            |

#FeatureID - ACAUTOCAS-10863
# ${ ProductType : ["FAS"]}
#${ApplicationStage : ["Certificate rectification QC"]}
  Scenario Outline: Verify required fields are visible on <ApplicationStage> in <ProductType>
    And user opens "<ProductType>" application at "<ApplicationStage>"
    And user opens stage decision tab
    When user selects required fields
    Then user should be able to see below fields
      | FieldName      |
      | Decision Sheet |
      | Reason         |
      | Description    |
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |


#FeatureID - ACAUTOCAS-10863
# ${ ProductType : ["FAS"]}
#${ApplicationStage : ["Certificate rectification QC"]}
  Scenario Outline: Verify all fields are visible on <ApplicationStage> in <ProductType>
    And user opens "<ProductType>" application at "<ApplicationStage>"
    And user opens stage decision tab
    When user selects All fields
    Then user should be able to see below fields
      | FieldName         |
      | Decision          |
      | Reason            |
      | Description       |
      | Decision Comments |
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

