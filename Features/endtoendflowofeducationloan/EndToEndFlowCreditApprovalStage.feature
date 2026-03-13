@Epic-E2E
@Conventional
@E2EOrder
@Release
@CreditApproval
@Order
  #FeatureID-ACAUTOCAS-17204
Feature: End to end work flow for All LOB Order Wise


######################################## STAGE 7: CREDIT APPROVAL #################################################################################################


  @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-20903: Update document status at credit approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "Credit Approval" stage from application grid
    And user selects document tab
    And user reads data from the excel file "<DocumentWB>" under sheet "<Document_home>" and row <Document_home_rowNum>
    And user selects the document
    And user selects document status as "<Status>"
    When user submit the document
    Then documents should be submitted successfully

    Examples:
      | LogicalID          | ProductType             | DocumentWB    | Document_home | Document_home_rowNum | Status              |
      | CEQ00001           | Commercial Equipment    | document.xlsx | home          | 525                  | Deferred            |
      | CEQ00001           | Commercial Equipment    | document.xlsx | home          | 526                  | Received & Uploaded |
      | CC00001            | Credit Card Application | document.xlsx | home          | 515                  | Received            |
      | CV00002            | Commercial Vehicle Loan | document.xlsx | home          | 526                  | Received & Uploaded |
      | HL00001            | Home Loan               | document.xlsx | home          | 544                  | Received & Uploaded |
      | CC00002            | Credit Card Application | document.xlsx | home          | 542                  | Received & Uploaded |
      | CAS_262309_CC00002 | Credit Card Application | document.xlsx | home          | 542                  | Received & Uploaded |
      | CC00003            | Credit Card Application | document.xlsx | home          | 536                  | Received & Uploaded |
      | MULF_BD_00001      | Multi Facility          | document.xlsx | home          | 536                  | Received & Uploaded |

    @PQMStory
    Examples:
      | LogicalID         | ProductType             | DocumentWB    | Document_home | Document_home_rowNum | Status              |
      | CV00CAS_88943_01  | Commercial Vehicle Loan | document.xlsx | home          | 526                  | Received & Uploaded |
      | CV00CAS_88943_02  | Commercial Vehicle Loan | document.xlsx | home          | 526                  | Received & Uploaded |
      | CV00CAS_88946_01  | Commercial Vehicle Loan | document.xlsx | home          | 526                  | Received & Uploaded |
      | CV00CAS_206825_01 | Commercial Vehicle Loan | document.xlsx | home          | 526                  | Received & Uploaded |
      | CV00CAS_80273_01  | Commercial Vehicle Loan | document.xlsx | home          | 526                  | Received & Uploaded |
      | CV00CAS_90456_01  | Commercial Vehicle Loan | document.xlsx | home          | 526                  | Received & Uploaded |
      | CV00CAS_90456_02  | Commercial Vehicle Loan | document.xlsx | home          | 526                  | Received & Uploaded |


  #For negative add on applicant with dynamic form scenario Logical ID is CAS_262309_CC00004
  #For positive add on applicant scenario with dynamic form logical id is CAS_262309_CC00002
  Scenario Outline: Edit dynamic form in personal information details of Add On Card for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "Credit Approval" stage from application grid
    And user opens add on applicant details
    And user fill data in dynamic form from the excel file "<PersonalDetails>" under sheet "<DynamicFormDetailsEdit> and row <DynamicForm_rowNum>"
    When user saves the personal information details for add on card
    Then personal information details should be saved successfully

    @AddOnCard
    Examples:

      | LogicalID          | ProductType             | PersonalDetails      | DynamicFormDetailsEdit      | DynamicForm_rowNum |
      | CAS_262309_CC00002 | Credit Card Application | PersonalDetails.xlsx | DynamicFormDetailsEdit.xlsx | 1                  |


  @ImplementedBy-anshika.gupta
    @AuthoredBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-20904: Update asset quantity in asset requested details at credit approval stage for <ProductType> multi asset LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application at "Credit Approval" stage from application grid
    When user navigates to asset requested page at "credit approval" stage
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_sheet>" and row <Asset_Details_multi_asset_rowNum>
    And user updates the asset quantity of first added asset
    And user save the asset requested data
    Then asset requested details should be saved successfully

    Examples:
      | LogicalID | AssetDetailsWB     | AssetDetails_sheet  | Asset_Details_multi_asset_rowNum | ProductType          |
      | CEQ00001  | asset_details.xlsx | multi_asset_details | 58                               | Commercial Equipment |
#      | CV00002   | asset_details.xlsx | multi_asset_details | 61                               | Commercial Vehicle Loan |

  @AuthoredBy-harshita.nayak
    @ImplementedBy-harshita.nayak
  Scenario Outline: ACAUTOCAS-19805: Add Identification details in customer details at credit approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "Credit Approval" stage from application grid
    And user opens applicant information page of "Credit Approval"
    And user views and edit applicant details for "nonindiv" "" applicant type
    When user fill identification details for customer details
      | customer_details.xlsx | identification | 176 |
    And user clicks on check for Duplicates
    And user clicks "Save" button
    Then customer Details should be Saved successfully
    Examples:
      | LogicalID | ProductType             |
      | CV00001   | Commercial Vehicle Loan |


  @AuthoredBy-anshika.gupta
    @ImplementedBy-rishabh.garg
  #decision - approve
  Scenario Outline: ACAUTOCAS-19806:[LogicalID-<LogicalID>][SendBack-<SendBack>] Re-run deviation policy at credit approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "Credit Approval" stage from application grid
    When user re-run the deviation policy
    Then deviation policy should re-run successfully
    Examples:
      | LogicalID          | ProductType                | SendBack |
      | EDU00001           | Education Loan             |          |
      | EDU00002           | Education Loan             |          |
      | AL00001            | Auto Loan                  |          |
      | CV00001            | Commercial Vehicle Loan    |          |
      | FE00001            | Farm Equipment             |          |
      | KCC00001           | Kisan Credit Card          |          |
      | GL00001            | Gold Loan                  |          |
      | CEQ00001           | Commercial Equipment       |          |
      | CC00001            | Credit Card Application    |          |
      | MHF00001           | Micro Housing Finance      |          |
      | AGRL00001          | Agriculture Loan           |          |
      | CV00003            | Commercial Vehicle Loan    |          |
      | CV00004            | Commercial Vehicle Loan    |          |
      | PL00001            | Personal Loan              |          |
      | HL00001            | Home Loan                  |          |
      | CV00002            | Commercial Vehicle Loan    |          |
      | SHG00001           | Self Help Group            |          |
      | JLG00001           | Joint Liability Group      |          |
      | LAP00001           | Loan Against Property      |          |
      | KCC00002           | Kisan Credit Card          |          |
      | PL00002            | Personal Loan              |          |
      | AL00003            | Auto Loan                  |          |
      | AL00002            | Auto Loan                  |          |
      | SB_AL00003         | Auto Loan                  | yes      |
      | SB_AL00004         | Auto Loan                  |          |
      | EDU00004           | Education Loan             |          |
      | EDU00004           | Education Loan             | yes      |
      | CC00002            | Credit Card Application    |          |
      | CAS_262309_CC00002 | Credit Card Application    |          |
      | CC00003            | Credit Card Application    |          |
      | FAS00001           | Finance Against Securities |          |
      | OL00001            | Omni Loan                  |          |
      | MHF00002           | Micro Housing Finance      |          |
      | CV00005            | Commercial Vehicle Loan    |          |
      | MULF_BD_00001      | Multi Facility             |          |


    @ICD
    Examples:
      | LogicalID | ProductType           |
      | MHF00002  | Micro Housing Finance |

    @PQMStory
    Examples:
      | LogicalID                        | ProductType             |
      | EDU_CAS_60813_ContractualIndiv01 | Education Loan          |
      | EDU_CAS_60813_ContractualIndiv02 | Education Loan          |
      | EDU_CAS_60813_ContractualIndiv03 | Education Loan          |
      | EDU_CAS_60813_ContractualIndiv04 | Education Loan          |
      | EDU_CAS_60813_ContractualIndiv05 | Education Loan          |
      | CV00CAS_88943_01                 | Commercial Vehicle Loan |
      | CV00CAS_88943_02                 | Commercial Vehicle Loan |
      | CV00CAS_88946_01                 | Commercial Vehicle Loan |
      | CV00CAS_206825_01                | Commercial Vehicle Loan |
      | CV00CAS_80273_01                 | Commercial Vehicle Loan |
      | CV00CAS_90456_01                 | Commercial Vehicle Loan |
      | CV00CAS_90456_02                 | Commercial Vehicle Loan |
      | AL_CAS_60813_ContractualIndiv01  | Auto Loan               |
      | AL_CAS_60813_ContractualIndiv02  | Auto Loan               |
      | AL_CAS_60813_ContractualIndiv03  | Auto Loan               |
      | AL_CAS_60813_ContractualIndiv04  | Auto Loan               |
      | AL_CAS_60813_ContractualIndiv05  | Auto Loan               |
      | CV_CAS_60813_ContractualIndiv01  | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv02  | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv03  | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv04  | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv05  | Commercial Vehicle Loan |


  @AuthoredBy-rishabh.garg
    @ImplementedBy-rishabh.garg
  Scenario Outline: ACAUTOCAS-21248: Generate CAM report at Credit Approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application at "Credit Approval" stage from application grid
    When user open CAM reports for credit approval
    Then user verify CAM report
    Examples:
      | LogicalID          | ProductType             |
      #Commented For Now as per sajja sir due to bug
#      | CV00002   | Commercial Vehicle Loan |
      | PL00001            | Personal Loan           |
      | PL00002            | Personal Loan           |
      | CC00002            | Credit Card Application |
      | CAS_262309_CC00002 | Credit Card Application |
      | CC00003            | Credit Card Application |


  @AuthoredBy-rishabh.sachan
    @ImplementedBy-rishabh.sachan
  #decision - approve
  Scenario Outline: ACAUTOCAS-19807: Validate application summary generation at credit approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application at "Credit Approval" stage from application grid
    When user clicks on application summary button
    Then application summary should be generated successfully
    Examples:
      | LogicalID     | ProductType             |
      | FE00001       | Farm Equipment          |
      | CEQ00001      | Commercial Equipment    |
      | CC00001       | Credit Card Application |
      | MHF00001      | Micro Housing Finance   |
      | AGRL00001     | Agriculture Loan        |
      | SHG00001      | Self Help Group         |
      | JLG00001      | Joint Liability Group   |
      | GL00001       | Gold Loan               |
      | PL00001       | Personal Loan           |
      | HL00001       | Home Loan               |
      | CV00002       | Commercial Vehicle Loan |
      | LAP00001      | Loan Against Property   |
      | PL00002       | Personal Loan           |
      | AL00003       | Auto Loan               |
      | CC00003       | Credit Card Application |
      | OL00001       | Omni Loan               |
      | MHF00002      | Micro Housing Finance   |
      | MULF_BD_00001 | Multi Facility          |

    @PQMStory
    Examples:
      | LogicalID         | ProductType             |
      | CV00CAS_88943_01  | Commercial Vehicle Loan |
      | CV00CAS_88943_02  | Commercial Vehicle Loan |
      | CV00CAS_88946_01  | Commercial Vehicle Loan |
      | CV00CAS_206825_01 | Commercial Vehicle Loan |
      | CV00CAS_80273_01  | Commercial Vehicle Loan |
      | CV00CAS_90456_01  | Commercial Vehicle Loan |
      | CV00CAS_90456_02  | Commercial Vehicle Loan |

  @AuthoredBy-richa.singh
    @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-19807: Validate data of application summary at credit approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application at "Credit Approval" stage from application grid
    When user clicks on application summary button
    And user reads data from the excel file "<excelWB>" under sheet "<excel_sheet>" and row <excel_sheet_rowNum>
    Then user should be able to validate the data of "<Section>" in application summary
    Examples:
      | LogicalID | ProductType       | excelWB                    | excel_sheet  | excel_sheet_rowNum | Section      |
      | KCC00001  | Kisan Credit Card | crop_details_end_flow.xlsx | crop_details | 0                  | Crop Details |
      | KCC00001  | Kisan Credit Card | crop_details_end_flow.xlsx | crop_details | 1                  | Crop Details |

  @AuthoredBy-richa.singh
    @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-19808: Validate data of pervious stage at credit approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application at "Credit Approval" stage from application grid
    And user reads data from the excel file "<excelWB>" under sheet "<excel_sheet>" and row <excel_sheet_rowNum>
    When user click on "<Section>" to validate data
    Then user should be validate the data of "<Section>" successfully
    Examples:
      | LogicalID | ProductType           | excelWB                            | excel_sheet          | excel_sheet_rowNum | Section              |
      | KCC00001  | Kisan Credit Card     | sourcing_details_end_flow.xlsx     | home                 | 13                 | Sourcing Details     |
      | KCC00001  | Kisan Credit Card     | repayment_parameters_end_flow.xlsx | repayment_parameters | 0                  | Repayment Parameters |
      | GL00001   | Gold Loan             | repayment_parameters.xlsx          | repayment_parameters | 2980               | Repayment Parameters |
      | MHF00001  | Micro Housing Finance | sourcing_details_end_flow.xlsx     | home                 | 15                 | Sourcing Details     |
      | LAP00001  | Loan Against Property | sourcing_details_end_flow.xlsx     | home                 | 15                 | Sourcing Details     |
      | KCC00002  | Kisan Credit Card     | sourcing_details_end_flow.xlsx     | home                 | 33                 | Sourcing Details     |
      | KCC00002  | Kisan Credit Card     | repayment_parameters_end_flow.xlsx | repayment_parameters | 12                 | Repayment Parameters |
      | AL00003   | Auto Loan             | sourcing_details_end_flow.xlsx     | home                 | 38                 | Sourcing Details     |
      | AL00003   | Auto Loan             | repayment_parameters_end_flow.xlsx | repayment_parameters | 21                 | Repayment Parameters |
      | MHF00002  | Micro Housing Finance | sourcing_details_end_flow.xlsx     | home                 | 42                 | Sourcing Details     |
      | MHF00002  | Micro Housing Finance | repayment_parameters_end_flow.xlsx | repayment_parameters | 22                 | Repayment Parameters |

  @AuthoredBy-tanya
    @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-20905: Save <Section> at credit approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application at "Credit Approval" stage from application grid
    When user click on "<Section>" to validate data
    And user save the data of "<Section>"
    Then user should be able to save the data of "<Section>" successfully
    Examples:
      | LogicalID | ProductType           | Section              |
      | SHG00001  | Self Help Group       | Sourcing Details     |
      | SHG00001  | Self Help Group       | Repayment Parameters |
      | JLG00001  | Joint Liability Group | Sourcing Details     |
      | JLG00001  | Joint Liability Group | Repayment Parameters |

  @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19809: Add Guarantor in application at credit approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application at "Credit Approval" stage from application grid
    And user opens applicant information page of "Credit Approval"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    When user adds another "Guarantor"
    Then guarantor should be added successfully in the application
    Examples:
      | LogicalID | ProductType           | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | AL00001   | Auto Loan             | personal_information.xlsx | home              | 24                       |
      | AL00002   | Auto Loan             | personal_information.xlsx | home              | 184                      |
      | MHF00002  | Micro Housing Finance | personal_information.xlsx | home              | 184                      |


  @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19810: Save personal information details of Guarantor for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user fills identification details on personal information
      | personal_information_end_flow.xlsx | identification_details | 6 |
    And user enters address details on personal information
      | personal_information_end_flow.xlsx | address_details | 3 |
    And user clicks on checks for duplicate
    And user click on save button of personal information details
    Then personal information details should be saved successfully
    Examples:
      | LogicalID | ProductType           |
      | AL00001   | Auto Loan             |
      | AL00002   | Auto Loan             |
      | MHF00002  | Micro Housing Finance |

  @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19811: Save KYC details of Guarantor for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<KycDetailsWB>" under sheet "<KycDetails_sheet>" and row <Kyc_details_rowNum>
    And user navigates to kyc details of applicant information
    And user fill kyc details of applicant information
    When user click on save button in Kyc details
    Then KYC Details of Guarantor should be saved successfully

    Examples:
      | LogicalID | KycDetailsWB                       | KycDetails_sheet       | Kyc_details_rowNum | ProductType           |
      | AL00001   | personal_information_end_flow.xlsx | identification_details | 6                  | Auto Loan             |
      | AL00002   | personal_information_end_flow.xlsx | identification_details | 6                  | Auto Loan             |
      | MHF00002  | personal_information_end_flow.xlsx | identification_details | 6                  | Micro Housing Finance |


  @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19812: KYC verification of added <Applicant_Type> at credit approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application at "Credit Approval" stage from application grid
    And user navigates to view Kyc details of "<Applicant_Type>"
    And user reads data from the excel file "<KYC_detailsWB>" under sheet "<KYC_details_sheet>" and row <KYC_details_rowNum>
    When user fills kyc check details for "<Applicant_Type>"
    And user saves the kyc check details
    And user re-run kyc
    Then Kyc Check Details should be saved successfully

    Examples:
      | LogicalID     | ProductType             | KYC_detailsWB        | KYC_details_sheet | KYC_details_rowNum | Applicant_Type |
      | AL00001       | Auto Loan               | credit_approval.xlsx | kyc_details       | 8                  | Guarantor      |
      | CV00001       | Commercial Vehicle Loan | credit_approval.xlsx | kyc_details       | 8                  | Co-Applicant   |
      | CEQ00001      | Commercial Equipment    | credit_approval.xlsx | kyc_details       | 8                  | Co-Applicant   |
      | CV00004       | Commercial Vehicle Loan | credit_approval.xlsx | kyc_details       | 8                  | Co-Applicant   |
      | CV00002       | Commercial Vehicle Loan | credit_approval.xlsx | kyc_details       | 8                  | Guarantor      |
      | PL00001       | Personal Loan           | credit_approval.xlsx | kyc_details       | 8                  | Co-Applicant   |
      | PL00002       | Personal Loan           | credit_approval.xlsx | kyc_details       | 8                  | Co-Applicant   |
      | MHF00002      | Micro Housing Finance   | credit_approval.xlsx | kyc_details       | 8                  | Guarantor      |
      | CV00005       | Commercial Vehicle Loan | credit_approval.xlsx | kyc_details       | 8                  | Co-Applicant   |
      | MULF_BD_00001 | Multi Facility          | credit_approval.xlsx | kyc_details       | 8                  | Co-Applicant   |


    @PQMStory
    Examples:
      | LogicalID         | ProductType             | KYC_detailsWB        | KYC_details_sheet | KYC_details_rowNum | Applicant_Type |
      | CV00CAS_88943_01  | Commercial Vehicle Loan | credit_approval.xlsx | kyc_details       | 8                  | Guarantor      |
      | CV00CAS_88943_02  | Commercial Vehicle Loan | credit_approval.xlsx | kyc_details       | 8                  | Guarantor      |
      | CV00CAS_88946_01  | Commercial Vehicle Loan | credit_approval.xlsx | kyc_details       | 8                  | Guarantor      |
      | CV00CAS_206825_01 | Commercial Vehicle Loan | credit_approval.xlsx | kyc_details       | 8                  | Guarantor      |
      | CV00CAS_80273_01  | Commercial Vehicle Loan | credit_approval.xlsx | kyc_details       | 8                  | Guarantor      |
      | CV00CAS_90456_01  | Commercial Vehicle Loan | credit_approval.xlsx | kyc_details       | 8                  | Guarantor      |
      | CV00CAS_90456_02  | Commercial Vehicle Loan | credit_approval.xlsx | kyc_details       | 8                  | Guarantor      |

  @AuthoredBy-akash.bansal
    @ImplementedBy-akash.bansal
  Scenario Outline: ACAUTOCAS-21249: Navigate to KYC details at credit approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "Credit Approval" stage from application grid
    When user navigates to view kyc details
    Then KYC details should be opened successfully
    Examples:
      | LogicalID | ProductType                |
      | JLG00001  | Joint Liability Group      |
      | SHG00001  | Self Help Group            |
      | AL00002   | Auto Loan                  |
      | FAS00001  | Finance Against Securities |

  @AuthoredBy-akash.bansal
    @ImplementedBy-akash.bansal
  Scenario Outline: ACAUTOCAS-21250: Add KYC verification details of <Applicant_Type> at credit approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application at "Credit Approval" stage from application grid
    And user reads data from the excel file "<KYC_detailsWB>" under sheet "<KYC_details_sheet>" and row <KYC_details_rowNum>
    When user fills kyc check details for existing "<Applicant_Type>"
    Then KYC check details should be added successfully

    Examples:
      | LogicalID | ProductType           | KYC_detailsWB        | KYC_details_sheet | KYC_details_rowNum | Applicant_Type    |
      | JLG00001  | Joint Liability Group | credit_approval.xlsx | kyc_details       | 15                 | Primary Applicant |
      | JLG00001  | Joint Liability Group | credit_approval.xlsx | kyc_details       | 16                 | Co-Applicant      |
      | JLG00001  | Joint Liability Group | credit_approval.xlsx | kyc_details       | 17                 | Co-Applicant      |
      | JLG00001  | Joint Liability Group | credit_approval.xlsx | kyc_details       | 18                 | Co-Applicant      |
      | JLG00001  | Joint Liability Group | credit_approval.xlsx | kyc_details       | 20                 | Co-Applicant      |
      | JLG00001  | Joint Liability Group | credit_approval.xlsx | kyc_details       | 19                 | Guarantor         |
      | SHG00001  | Self Help Group       | credit_approval.xlsx | kyc_details       | 21                 | Primary Applicant |
      | SHG00001  | Self Help Group       | credit_approval.xlsx | kyc_details       | 15                 | Co-Applicant      |
      | SHG00001  | Self Help Group       | credit_approval.xlsx | kyc_details       | 22                 | Co-Applicant      |
      | SHG00001  | Self Help Group       | credit_approval.xlsx | kyc_details       | 23                 | Co-Applicant      |
      | SHG00001  | Self Help Group       | credit_approval.xlsx | kyc_details       | 18                 | Co-Applicant      |
      | SHG00001  | Self Help Group       | credit_approval.xlsx | kyc_details       | 17                 | Co-Applicant      |
      | SHG00001  | Self Help Group       | credit_approval.xlsx | kyc_details       | 16                 | Co-Applicant      |
      | SHG00001  | Self Help Group       | credit_approval.xlsx | kyc_details       | 19                 | Guarantor         |

  @AuthoredBy-vaishnavi.agrawal
    @ImplementedBy-vaishnavi.agrawal
  Scenario Outline: KYC verification details of single <Applicant_Type> at credit approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application at "Credit Approval" stage from application grid
    And user reads data from the excel file "<KYC_detailsWB>" under sheet "<KYC_details_sheet>" and row <KYC_details_rowNum>
    When user fills kyc check details for single "<Applicant_Type>"
    Then KYC check details should be added successfully
    Examples:
      | LogicalID | ProductType                | KYC_detailsWB        | KYC_details_sheet | KYC_details_rowNum | Applicant_Type    |
      | AL00002   | Auto Loan                  | credit_approval.xlsx | kyc_details       | 8                  | Co-Applicant      |
      | AL00002   | Auto Loan                  | credit_approval.xlsx | kyc_details       | 17                 | Guarantor         |
      | FAS00001  | Finance Against Securities | credit_approval.xlsx | kyc_details       | 17                 | primary applicant |

  @AuthoredBy-akash.bansal
    @ImplementedBy-akash.bansal
  Scenario Outline: ACAUTOCAS-21251: KYC verification of <Applicant_Type> at credit approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application at "Credit Approval" stage from application grid
    When user saves the kyc check details
    And user re-run kyc
    Then Kyc Check Details should be saved successfully
    Examples:
      | LogicalID | ProductType                |
      | JLG00001  | Joint Liability Group      |
      | SHG00001  | Self Help Group            |
      | AL00002   | Auto Loan                  |
      | FAS00001  | Finance Against Securities |

  @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19813: Save asset approval on underwriter decision page at credit approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application at "Credit Approval" stage from application grid
    And user opens the underwriter decision tab
    When user opens the asset approval details on underwriter decision page
    And user saves the asset approval
    Then asset approval should be saved successfully

    Examples:
      | LogicalID | ProductType |
      | AL00001   | Auto Loan   |
    @PQMStory
    Examples:
      | LogicalID                       | ProductType |
      | AL_CAS_60813_ContractualIndiv01 | Auto Loan   |
      | AL_CAS_60813_ContractualIndiv02 | Auto Loan   |
      | AL_CAS_60813_ContractualIndiv03 | Auto Loan   |
      | AL_CAS_60813_ContractualIndiv04 | Auto Loan   |
      | AL_CAS_60813_ContractualIndiv05 | Auto Loan   |

  @AuthoredBy-harshita.nayak
    @ImplementedBy-harshita.nayak
  Scenario Outline: ACAUTOCAS-21252:Save asset approval for funded on underwriter decision page at credit approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application at "Credit Approval" stage from application grid
    And user opens the underwriter decision tab
    When user opens the asset approval details for funded on underwriter decision page
    And user select the asset approved checkbox for both
    And user saves the asset approval
    Then asset approval should be saved successfully

    Examples:
      | LogicalID | ProductType             |
      | CV00004   | Commercial Vehicle Loan |

  @DevTrack
    @GA-9.0
    @AuthoredBy-ankit.yadav
    @ImplementedBy-ankit.yadav
  Scenario Outline: [LogicalID-<LogicalID>] Save deal details on underwriter decision page at credit approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens the underwriter decision tab
    And user reads data from the excel file "<CreditApproval_WB>" under sheet "<CreditApproval_Sheet>" and row <CreditApproval_RowNum>
    When user opens more details of deal details on underwriter decision page
    And user fill deal details to save details
    Then deal details should be saved successfully
    Examples:
      | LogicalID     | ProductType    | CreditApproval_WB             | CreditApproval_Sheet | CreditApproval_RowNum |
      | MULF_BD_00001 | Multi Facility | credit_approval_end_flow.xlsx | covenant_details     | 0                     |

  @DevTrack
    @GA-9.0
    @AuthoredBy-ankit.yadav
    @ImplementedBy-ankit.yadav
  Scenario Outline: [LogicalID-<LogicalID>] Save facility details on underwriter decision page at credit approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens the underwriter decision tab
    And user reads data from the excel file "<CreditApproval_WB>" under sheet "<CreditApproval_Sheet>" and row <CreditApproval_RowNum>
    When user opens more details of facility details on underwriter decision page
    And user fill facility details to save details
    Then facility details should be saved successfully
    Examples:
      | LogicalID     | ProductType    | CreditApproval_WB             | CreditApproval_Sheet | CreditApproval_RowNum |
      | MULF_BD_00001 | Multi Facility | credit_approval_end_flow.xlsx | covenant_details     | 0                     |


  @AuthoredBy-anshika.gupta
    @ImplementedBy-rishabh.garg
  Scenario Outline: ACAUTOCAS-19814:[LogicalID-<LogicalID>][SendBack-<SendBack>] Save approval checklist on underwriter decision page at credit approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<CreditApproval_WB>" under sheet "<CreditApproval_Sheet>" and row <CreditApproval_RowNum>
    And user opens the underwriter decision tab
    When user fills approval checklist on underwriter decision page
    And user saves the approval checklist
    Then approval checklist should be saved successfully

    Examples:
      | LogicalID     | CreditApproval_WB             | CreditApproval_Sheet | CreditApproval_RowNum | ProductType                | SendBack |
      | EDU00001      | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Education Loan             |          |
      | EDU00002      | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Education Loan             |          |
      | AL00001       | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Auto Loan                  |          |
      | CV00001       | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Commercial Vehicle Loan    |          |
      | FE00001       | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Farm Equipment             |          |
      | KCC00001      | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Kisan Credit Card          |          |
      | SHG00001      | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Self Help Group            |          |
      | GL00001       | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Gold Loan                  |          |
      | CEQ00001      | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Commercial Equipment       |          |
      | MHF00001      | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Micro Housing Finance      |          |
      | AGRL00001     | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Agriculture Loan           |          |
      | JLG00001      | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Joint Liability Group      |          |
      | CV00003       | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Commercial Vehicle Loan    |          |
      | PL00001       | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Personal Loan              |          |
      | HL00001       | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Home Loan                  |          |
      | CV00002       | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Commercial Vehicle Loan    |          |
      | LAP00001      | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Loan Against Property      |          |
      | KCC00002      | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Kisan Credit Card          |          |
      | CV00004       | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Commercial Vehicle Loan    |          |
      | PL00002       | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Personal Loan              |          |
      | AL00003       | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Auto Loan                  |          |
      | AL00002       | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Auto Loan                  |          |
      | SB_AL00003    | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Auto Loan                  | yes      |
      | SB_AL00004    | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Auto Loan                  |          |
      | EDU00004      | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Education Loan             |          |
      | FAS00001      | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Finance Against Securities |          |
      | OL00001       | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Omni Loan                  |          |
      | MHF00002      | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Micro Housing Finance      |          |
      | CV00005       | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Commercial Vehicle Loan    |          |
      | AL00005       | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Auto Loan                  |          |
      | MULF_BD_00001 | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Multi Facility             |          |

    @ICD
    Examples:
      | LogicalID | CreditApproval_WB             | CreditApproval_Sheet | CreditApproval_RowNum | ProductType           |
      | MHF00002  | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Micro Housing Finance |

    @PQMStory
    Examples:
      | LogicalID                        | CreditApproval_WB             | CreditApproval_Sheet | CreditApproval_RowNum | ProductType             |
      | EDU_CAS_60813_ContractualIndiv01 | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Education Loan          |
      | EDU_CAS_60813_ContractualIndiv02 | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Education Loan          |
      | EDU_CAS_60813_ContractualIndiv03 | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Education Loan          |
      | EDU_CAS_60813_ContractualIndiv04 | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Education Loan          |
      | EDU_CAS_60813_ContractualIndiv05 | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Education Loan          |
      | CV00CAS_88943_01                 | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Commercial Vehicle Loan |
      | CV00CAS_88943_02                 | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Commercial Vehicle Loan |
      | CV00CAS_88946_01                 | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Commercial Vehicle Loan |
      | CV00CAS_206825_01                | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Commercial Vehicle Loan |
      | CV00CAS_80273_01                 | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Commercial Vehicle Loan |
      | CV00CAS_90456_01                 | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Commercial Vehicle Loan |
      | CV00CAS_90456_02                 | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Commercial Vehicle Loan |
      | AL_CAS_60813_ContractualIndiv01  | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Auto Loan               |
      | AL_CAS_60813_ContractualIndiv02  | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Auto Loan               |
      | AL_CAS_60813_ContractualIndiv03  | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Auto Loan               |
      | AL_CAS_60813_ContractualIndiv04  | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Auto Loan               |
      | AL_CAS_60813_ContractualIndiv05  | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Auto Loan               |
      | CV_CAS_60813_ContractualIndiv01  | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv02  | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv03  | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv04  | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv05  | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Commercial Vehicle Loan |


  @AuthoredBy-vaishnavi.agrawal
    @ImplementedBy-vaishnavi.agrawal
  Scenario Outline: Save special condition on underwriter decision page at credit approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
   # And user opens an application at "Credit Approval" stage from application grid
   # And user opens the underwriter decision tab
    And user reads data from the excel file "<CreditApproval_WB>" under sheet "<CreditApproval_Sheet>" and row <CreditApproval_RowNum>
    When user fills special condition on underwriter decision page
    And user saves the special condition
    Then special condition should be saved successfully
    Examples:
      | LogicalID     | CreditApproval_WB    | CreditApproval_Sheet | CreditApproval_RowNum | ProductType           |
      | AL00002       | credit_approval.xlsx | special_conditions   | 1                     | Auto Loan             |
      | MHF00002      | credit_approval.xlsx | special_conditions   | 1                     | Micro Housing Finance |
      | MULF_BD_00001 | credit_approval.xlsx | special_conditions   | 2                     | Multi Facility        |
      | MULF_BD_00001 | credit_approval.xlsx | special_conditions   | 3                     | Multi Facility        |

#------------------------Omni Loan Product Type Decision---------------------
  @AuthoredBy-vipin.kishor
    @ImplementedBy-vipin.kishor
  Scenario Outline:Save product type decision for credit card on underwriter decision page at credit approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application at "Credit Approval" stage from application grid
    And user opens the underwriter decision tab
    When user save product type decision
    Then product type decision list saved successfully
    Examples:
      | LogicalID | ProductType |
      | OL00001   | Omni Loan   |


  @AuthoredBy-anshika.gupta
    @ImplementedBy-rishabh.garg
  Scenario Outline: ACAUTOCAS-19815:[LogicalID-<LogicalID>][SendBack-<SendBack>] Save decision on underwriter decision page at credit approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<CreditApproval_WB>" under sheet "<CreditApproval_Sheet>" and row <CreditApproval_RowNum>
    When user fills decision details of underwriter decision
    And user submits the underwriter decision
    Then underwriter decision should be saved successfully

    Examples:
      | LogicalID     | CreditApproval_WB             | CreditApproval_Sheet | CreditApproval_RowNum | ProductType                | SendBack |
      | EDU00001      | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Education Loan             |          |
      | EDU00002      | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Education Loan             |          |
      | AL00001       | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Auto Loan                  |          |
      | CV00001       | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Commercial Vehicle Loan    |          |
      | FE00001       | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Farm Equipment             |          |
      | KCC00001      | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Kisan Credit Card          |          |
      | SHG00001      | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Self Help Group            |          |
      | GL00001       | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Gold Loan                  |          |
      | CEQ00001      | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Commercial Equipment       |          |
      | MHF00001      | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Micro Housing Finance      |          |
      | AGRL00001     | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Agriculture Loan           |          |
      | JLG00001      | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Joint Liability Group      |          |
      | CV00003       | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Commercial Vehicle Loan    |          |
      | CV00004       | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Commercial Vehicle Loan    |          |
      | PL00001       | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Personal Loan              |          |
      | HL00001       | credit_approval_end_flow.xlsx | underwriter_decision | 5                     | Home Loan                  |          |
      | LAP00001      | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Loan Against Property      |          |
      | CV00002       | credit_approval_end_flow.xlsx | underwriter_decision | 4                     | Commercial Vehicle Loan    |          |
      | KCC00002      | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Kisan Credit Card          |          |
      | PL00002       | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Personal Loan              |          |
      | AL00003       | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Auto Loan                  |          |
      | AL00002       | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Auto Loan                  |          |
      | SB_AL00003    | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Auto Loan                  | yes      |
      | SB_AL00004    | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Auto Loan                  |          |
      | SB_AL00004    | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Auto Loan                  | yes      |
      | OL00001       | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Omni Loan                  |          |
      | MHF00002      | credit_approval_end_flow.xlsx | underwriter_decision | 6                     | Micro Housing Finance      |          |
      | CV00005       | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Commercial Vehicle Loan    |          |
      | FAS00001      | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Finance Against Securities |          |
      | EDU00004      | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Education Loan             | yes      |
      | MULF_BD_00001 | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Multi Facility             |          |

    @ICD
    Examples:
      | LogicalID | CreditApproval_WB             | CreditApproval_Sheet | CreditApproval_RowNum | ProductType           |
      | MHF00002  | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Micro Housing Finance |

    @PQMStory
    Examples:
      | LogicalID                        | CreditApproval_WB             | CreditApproval_Sheet | CreditApproval_RowNum | ProductType             |
      | EDU_CAS_60813_ContractualIndiv01 | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Education Loan          |
      | EDU_CAS_60813_ContractualIndiv02 | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Education Loan          |
      | EDU_CAS_60813_ContractualIndiv03 | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Education Loan          |
      | EDU_CAS_60813_ContractualIndiv04 | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Education Loan          |
      | EDU_CAS_60813_ContractualIndiv05 | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Education Loan          |
      | CV00CAS_88943_01                 | credit_approval_end_flow.xlsx | underwriter_decision | 4                     | Commercial Vehicle Loan |
      | CV00CAS_88943_02                 | credit_approval_end_flow.xlsx | underwriter_decision | 4                     | Commercial Vehicle Loan |
      | CV00CAS_88946_01                 | credit_approval_end_flow.xlsx | underwriter_decision | 4                     | Commercial Vehicle Loan |
      | CV00CAS_206825_01                | credit_approval_end_flow.xlsx | underwriter_decision | 4                     | Commercial Vehicle Loan |
      | CV00CAS_80273_01                 | credit_approval_end_flow.xlsx | underwriter_decision | 4                     | Commercial Vehicle Loan |
      | CV00CAS_90456_01                 | credit_approval_end_flow.xlsx | underwriter_decision | 4                     | Commercial Vehicle Loan |
      | CV00CAS_90456_02                 | credit_approval_end_flow.xlsx | underwriter_decision | 4                     | Commercial Vehicle Loan |
      | AL_CAS_60813_ContractualIndiv01  | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Auto Loan               |
      | AL_CAS_60813_ContractualIndiv02  | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Auto Loan               |
      | AL_CAS_60813_ContractualIndiv03  | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Auto Loan               |
      | AL_CAS_60813_ContractualIndiv04  | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Auto Loan               |
      | AL_CAS_60813_ContractualIndiv05  | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Auto Loan               |
      | CV_CAS_60813_ContractualIndiv01  | credit_approval_end_flow.xlsx | underwriter_decision | 4                     | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv02  | credit_approval_end_flow.xlsx | underwriter_decision | 4                     | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv03  | credit_approval_end_flow.xlsx | underwriter_decision | 4                     | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv04  | credit_approval_end_flow.xlsx | underwriter_decision | 4                     | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv05  | credit_approval_end_flow.xlsx | underwriter_decision | 4                     | Commercial Vehicle Loan |


        #    #---------------- CHECKING REPAYMENT PARAMETERS -----------#
  @AuthoredBy-tanya
    @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-20922: Save repayment parameters details at Credit Approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Credit Approval" stage present in context from application grid
    And user moves to main tab of "Credit Approval"
    And user open repayment parameters page of "Credit Approval"
    When user save repayment parameters
    Then repayment parameters should save successfully

    Examples:
      | LogicalID | ProductType           |
      | SHG00001  | Self Help Group       |
      | JLG00001  | Joint Liability Group |


  Scenario Outline: ACAUTOCAS-19906:[LogicalID-<LogicalID>][SendBack-<SendBack>] Save repayment parameters at Credit Approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Credit Approval" stage present in context from application grid
    And user open repayment parameters page of "Credit Approval"
    And user reads data from the excel file "<RepaymentParameters_WB>" under sheet "<RepaymentParameters_Sheet>" and row <RepaymentParameters_RowNum>
    And user fills repayment parameter details
    And user save repayment parameters
    Then repayment parameters should be saved successfully
    Examples:
      | LogicalID  | RepaymentParameters_WB    | RepaymentParameters_Sheet | RepaymentParameters_RowNum | ProductType | SendBack |
      | SB_AL00004 | repayment_parameters.xlsx | repayment_parameters      | 2985                       | Auto Loan   | yes      |


  @AuthoredBy-harshita.nayak
    @ImplementedBy-harshita.nayak
  Scenario Outline: ACAUTOCAS-20906: Save decision checklist for credit card on underwriter decision page at credit approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<CreditApproval_WB>" under sheet "<CreditApproval_Sheet>" and row <CreditApproval_RowNum>
    And user opens an application at "Credit Approval" stage from application grid
    And user opens the underwriter decision tab
    When user fills Credit Card Credit Decision Checklist
    And user saves the approval checklist
    Then decision checklist should be saved successfully

    Examples:
      | LogicalID          | CreditApproval_WB             | CreditApproval_Sheet | CreditApproval_RowNum | ProductType             |
      | CC00001            | credit_approval_end_flow.xlsx | underwriter_decision | 0                     | Credit Card Application |
      | CC00002            | credit_approval_end_flow.xlsx | underwriter_decision | 0                     | Credit Card Application |
      | CAS_262309_CC00002 | credit_approval_end_flow.xlsx | underwriter_decision | 0                     | Credit Card Application |
      | CC00003            | credit_approval_end_flow.xlsx | underwriter_decision | 0                     | Credit Card Application |

  @AuthoredBy-harshita.nayak
    @ImplementedBy-harshita.nayak
  Scenario Outline: ACAUTOCAS-20907: Save card decision for credit card on underwriter decision page at credit approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<CreditApproval_WB>" under sheet "<CreditApproval_Sheet>" and row <CreditApproval_RowNum>
#    And user opens the underwriter decision tab
    When user opens Card Decision on credit approval
    And user fills Maximum card to be Issued
    And user approve card details with save
    Then credit card decision should be saved successfully

    Examples:
      | LogicalID | CreditApproval_WB             | CreditApproval_Sheet | CreditApproval_RowNum | ProductType             |
      | CC00001   | credit_approval_end_flow.xlsx | underwriter_decision | 0                     | Credit Card Application |
      | CC00003   | credit_approval_end_flow.xlsx | underwriter_decision | 0                     | Credit Card Application |


  @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
  Scenario Outline: Save card decision on underwriter decision page at credit approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens the underwriter decision tab
    When user opens Card Decision on credit approval
    And user approve card details
    And user saves the card decision
    Then credit card decision should be saved successfully
    Examples:
      | LogicalID          | ProductType             |
      | CC00002            | Credit Card Application |
      | CAS_262309_CC00002 | Credit Card Application |

  @AuthoredBy-harshita.nayak
    @ImplementedBy-harshita.nayak
  Scenario Outline: ACAUTOCAS-20908: Save decision for credit card on underwriter decision page at credit approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<CreditApproval_WB>" under sheet "<CreditApproval_Sheet>" and row <CreditApproval_RowNum>
    When user fills underwriter decision for Credit Card
    Then underwriter decision should be saved successfully

    Examples:
      | LogicalID          | CreditApproval_WB             | CreditApproval_Sheet | CreditApproval_RowNum | ProductType             |
      | CC00001            | credit_approval_end_flow.xlsx | underwriter_decision | 0                     | Credit Card Application |
      | CC00002            | credit_approval_end_flow.xlsx | underwriter_decision | 0                     | Credit Card Application |
      | CAS_262309_CC00002 | credit_approval_end_flow.xlsx | underwriter_decision | 0                     | Credit Card Application |
      | CC00003            | credit_approval_end_flow.xlsx | underwriter_decision | 0                     | Credit Card Application |


  @AuthoredBy-rishabh.sachan
    @ImplementedBy-rishabh.sachan
  Scenario Outline: Reject decision on underwriter decision page at credit approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<CreditApproval_WB>" under sheet "<CreditApproval_Sheet>" and row <CreditApproval_RowNum>
    When user fills decision details of underwriter decision
    And user submits the underwriter decision
    And user confirms rejection of credit approval decision
    Then Application should move to "<Stage>" Stage
    Examples:
      | LogicalID | CreditApproval_WB             | CreditApproval_Sheet | CreditApproval_RowNum | ProductType    | Stage     |
      | EDU00004  | credit_approval_end_flow.xlsx | underwriter_decision | 7                     | Education Loan | Rejection |
      | AL00005   | credit_approval_end_flow.xlsx | underwriter_decision | 7                     | Auto Loan      | Rejection |


  @AuthoredBy-rishabh.sachan
    @ImplementedBy-rishabh.sachan
  Scenario Outline: [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Save approve decision on underwriter decision page at credit approval stage after send back from reviewing rejected application for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<CreditApproval_WB>" under sheet "<CreditApproval_Sheet>" and row <CreditApproval_RowNum>
    And user opens an application at "Credit Approval" stage from application grid
    And user opens the underwriter decision tab
    When user fills decision details of underwriter decision
    And user submits the underwriter decision
    Then underwriter decision should be saved successfully
    @Reject
    Examples:
      | LogicalID | CreditApproval_WB             | CreditApproval_Sheet | CreditApproval_RowNum | ProductType    | RevisitCount |
      | EDU00004  | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Education Loan | 1            |



  #  @AuthoredBy-vaishnavi.agrawal
#  Scenario Outline: Calculate eligibility policy at credit approval stage for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    When user clicks on calculate eligibility
#    Then eligibility policy should run successfully
#    Examples:
#      | LogicalID | ProductType      |
#      |           | Consumer Durable |


  @DevTrack
    @GA-9.0
    @AuthoredBy-ankit.yadav
    @ImplementedBy-ankit.yadav
  Scenario Outline: [LogicalID-<LogicalID>] covenant details should be saved at credit approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<CreditApproval_WB>" under sheet "<CreditApproval_Sheet>" and row <CreditApproval_RowNum>
    And user opens the covenant tab with add covenant button
    When user fills all form details of covenant
    And user fill the question checklist of covenant
    And user fills penalty details of covenant
    And user check the charges details of covenant
    And user check the status of covenant
    And user submits the covenant details
    Then covenant details should be saved successfully
    Examples:
      | LogicalID     | CreditApproval_WB             | CreditApproval_Sheet | CreditApproval_RowNum | ProductType    |
      | MULF_BD_00001 | credit_approval_end_flow.xlsx | covenant_details     | 0                     | Multi Facility |

  @DevTrack
    @GA-9.0
    @AuthoredBy-ankit.yadav
    @ImplementedBy-ankit.yadav
  Scenario Outline: [LogicalID-<LogicalID>] re execute the covenant policy at credit approval stage after send back from reviewing rejected application for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<CreditApproval_WB>" under sheet "<CreditApproval_Sheet>" and row <CreditApproval_RowNum>
    When user re execute covenant policy
    Then covenant details should be saved successfully
    Examples:
      | LogicalID     | CreditApproval_WB             | CreditApproval_Sheet | CreditApproval_RowNum | ProductType    |
      | MULF_BD_00001 | credit_approval_end_flow.xlsx | covenant_details     | 0                     | Multi Facility |
