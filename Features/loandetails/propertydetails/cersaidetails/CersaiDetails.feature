@Epic-Loan_Application_Details
@AuthoredBy-shalini.garg
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
@NotImplemented
@Conventional
Feature: CERSAI Details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


    #${ ProductType : ["HL","LAP","MHF"]}
    #${ApplicationStage : ["LEAD DETAILS", "DDE", "Login Acceptance", "Credit Approval"]}
    ###Story:CAS-96841
  #FeatureID-ACAUTOCAS-11133
  Scenario Outline: Validate CERSAI Details tab at stage "<ApplicationStage>"
    And user drafts an application of "<ProductType>" at stage "<ApplicationStage>"
    And HIDE_CERSAI_TAB flag is 1 in collateral_sub_type table for respective collateral sub type "<CollateralSubType>"
    When user opens Property Details tab
    And save Property Details for Property Identified
    Then CERSAI Details subtab should not be visible to user
    Examples:
      | ProductType   | ApplicationStage   | CollateralSubType   |
      | <ProductType> | <ApplicationStage> | <CollateralSubType> |

    #${ ProductType : ["HL","LAP","MHF"]}
    #${ApplicationStage : ["LEAD DETAILS", "DDE", "Login Acceptance", "Credit Approval"]}
    ###Story:CAS-96841
  #FeatureID-ACAUTOCAS-11133
  Scenario Outline: Validate CERSAI Details tab not displayed for given configuration at stage "<ApplicationStage>"
    And user drafts an application of "<ProductType>" at stage "<ApplicationStage>"
    And HIDE_CERSAI_TAB flag is 1 in collateral_sub_type table for respective collateral sub type "<CollateralSubType>"
    When user opens Property Details tab
    And save Property Details for Property Non-Identified
    Then CERSAI Details subtab should not be visible to user
    Examples:
      | ProductType   | ApplicationStage   | CollateralSubType   |
      | <ProductType> | <ApplicationStage> | <CollateralSubType> |

    #${ ProductType : ["HL","LAP","MHF"]}
    #${ApplicationStage : ["LEAD DETAILS", "DDE", "Login Acceptance", "Credit Approval"]}
    ###Story:CAS-96841
  #FeatureID-ACAUTOCAS-11133
  Scenario Outline: Validate CERSAI Details tab displayed for given configuration at stage "<ApplicationStage>"
    And user drafts an application of "<ProductType>" at stage "<ApplicationStage>"
    And HIDE_CERSAI_TAB flag is 0 in collateral_sub_type table for respective collateral sub type "<CollateralSubType>"
    When user opens Property Details tab
    And save Property Details for Property Identified having Collateral sub type "<CollateralSubType>" for which HIDE_CERSAI_TAB flag is 0
    Then CERSAI Details subtab should be visible to user
    Examples:
      | ProductType   | ApplicationStage   | CollateralSubType   |
      | <ProductType> | <ApplicationStage> | <CollateralSubType> |

    # ${ ProductType : ["HL","LAP","MHF"]}
    #${ApplicationStage : ["LEAD DETAILS", "DDE", "Login Acceptance", "Credit Approval"]}
    ###Story:CAS-96841
  #FeatureID-ACAUTOCAS-11133
  Scenario Outline: Validate CERSAI Details tab not displayed at stage "<ApplicationStage>"
    And user drafts an application of "<ProductType>" at stage "<ApplicationStage>"
    And HIDE_CERSAI_TAB flag is 0 in collateral_sub_type table for respective collateral sub type "<CollateralSubType>"
    When user opens Property Details tab
    And save Property Details for Property Non-Identified
    Then CERSAI Details subtab should not be visible to user
    Examples:
      | ProductType   | ApplicationStage   | CollateralSubType   |
      | <ProductType> | <ApplicationStage> | <CollateralSubType> |

    # ${ ProductType : ["HL","LAP","MHF"]}
    #${ApplicationStage : ["LEAD DETAILS", "DDE", "Login Acceptance", "Credit Approval"]}
    ###Story:CAS-96841
  #FeatureID-ACAUTOCAS-11133
  Scenario Outline: Validate CERSAI Details tab not visible to user at stage "<ApplicationStage>"
    And user drafts an application of "<ProductType>" at stage "<ApplicationStage>"
    And HIDE_CERSAI_TAB flag is 0 in collateral_sub_type table for respective collateral sub type "<CollateralSubType>"
    When user opens Property Details tab
    And save Property Details for Property Identified having Collateral sub type for which HIDE_CERSAI_TAB flag is 1
    Then CERSAI Details subtab should not be visible to user
    Examples:
      | ProductType   | ApplicationStage   | CollateralSubType   |
      | <ProductType> | <ApplicationStage> | <CollateralSubType> |


    # ${ ProductType : ["HL","LAP","MHF"]}
    #${ApplicationStage : ["LEAD DETAILS", "DDE", "Login Acceptance", "Credit Approval"]}
  #FeatureID-ACAUTOCAS-11133
  Scenario Outline:  Validate fields on CERSAI Details tab at stage "<ApplicationStage>"
    And user drafts an application of "<ProductType>" at stage "<ApplicationStage>" having Collateral sub type "<CollateralSubType>"
    When user opens CERSAI Details tab
    Then following fields should be visible in CERSAI Details section
      | FieldName            | MandatoryFlag |
      | Serial No            | mandatory     |
      | No. of Documents     | mandatory     |
      | Document Type        | mandatory     |
      | Locality             | non mandatory |
      | Title Document No    | mandatory     |
      | Survey No            | non mandatory |
      | Sub Registrar Office | mandatory     |
      | Document Taluka      | non mandatory |
      | Document Pincode     | mandatory     |
      | Document District    | non mandatory |
      | Document State       | mandatory     |
      | Registration Date    | non mandatory |
      | Remarks              | non mandatory |
    Examples:
      | ProductType   | ApplicationStage   | CollateralSubType   |
      | <ProductType> | <ApplicationStage> | <CollateralSubType> |

    # ${ ProductType : ["HL","LAP","MHF"]}
     #${ApplicationStage : ["LEAD DETAILS", "DDE", "Login Acceptance", "Credit Approval"]}
  #FeatureID-ACAUTOCAS-11133
  Scenario Outline: CERSAI details label validation at stage "<ApplicationStage>"
    And user drafts an application of "<ProductType>" at stage "<ApplicationStage>" having Collateral sub type "<CollateralSubType>"
    When user opens CERSAI Details tab
    Then user should be able to see all fields of "<CERSAIDetails>" with proper labels
    Examples:
      | CERSAIDetails        | ProductType   | ApplicationStage   | CollateralSubType   |
      | Serial No            | <ProductType> | <ApplicationStage> | <CollateralSubType> |
      | No. of Documents     | <ProductType> | <ApplicationStage> | <CollateralSubType> |
      | Document Type        | <ProductType> | <ApplicationStage> | <CollateralSubType> |
      | Locality             | <ProductType> | <ApplicationStage> | <CollateralSubType> |
      | Title Document No    | <ProductType> | <ApplicationStage> | <CollateralSubType> |
      | Survey No            | <ProductType> | <ApplicationStage> | <CollateralSubType> |
      | Sub Registrar Office | <ProductType> | <ApplicationStage> | <CollateralSubType> |
      | Document Taluka      | <ProductType> | <ApplicationStage> | <CollateralSubType> |
      | Document Pincode     | <ProductType> | <ApplicationStage> | <CollateralSubType> |
      | Document District    | <ProductType> | <ApplicationStage> | <CollateralSubType> |
      | Document State       | <ProductType> | <ApplicationStage> | <CollateralSubType> |
      | Registration Date    | <ProductType> | <ApplicationStage> | <CollateralSubType> |
      | Remarks              | <ProductType> | <ApplicationStage> | <CollateralSubType> |

     # ${ ProductType : ["HL","LAP","MHF"]}
    #${ApplicationStage : ["LEAD DETAILS", "DDE", "Login Acceptance", "Credit Approval"]}
  #FeatureID-ACAUTOCAS-11133
  Scenario Outline: Save CERSAI Details at stage <ApplicationStage> for <ProductType>
    And CERSAI Details tab is open for an application of "<ProductType>" at stage "<ApplicationStage>"
    When user reads data from the excel file "<CERSAIDetailsWB>" under sheet "<CERSAIDetailsWB_sheetName>" and row <CERSAIDetailsWB_sheetName_rowNum>
    And saves the entered data
    Then CERSAI Details should be saved successfully
    Examples:
      | CERSAIDetailsWB     | CERSAIDetailsWB_sheetName | CERSAIDetailsWB_sheetName_rowNum | ProductType   | ApplicationStage   |
      | CERSAI_Details.xlsx | Create                    | 1                                | <ProductType> | <ApplicationStage> |


    # ${ ProductType : ["HL","LAP","MHF"]}
    #${ApplicationStage : ["LEAD DETAILS", "DDE", "Login Acceptance", "Credit Approval"]}
   #FeatureID-ACAUTOCAS-11133
  Scenario Outline: Update CERSAI Details at stage <ApplicationStage> for <ProductType>
    And CERSAI Details tab is open for an application of "<ProductType>" at stage "<ApplicationStage>"
    And CERSAI Details are already entered
    When user reads data from the excel file "<CERSAIDetailsWB>" under sheet "<CERSAIDetailsWB_sheetName>" and row <CERSAIDetailsWB_sheetName_rowNum>
    And user updates the data
    Then CERSAI Details should be updated successfully
    Examples:
      | CERSAIDetailsWB     | CERSAIDetailsWB_sheetName | CERSAIDetailsWB_sheetName_rowNum | ProductType   | ApplicationStage   |
      | CERSAI_Details.xlsx | Update                    | 1                                | <ProductType> | <ApplicationStage> |

    # ${ ProductType : ["HL","LAP","MHF"]}
    #${ApplicationStage : ["LEAD DETAILS", "DDE", "Login Acceptance", "Credit Approval"]}
   #FeatureID-ACAUTOCAS-11133
  Scenario Outline: Validate All fields option on CERSAI Details tab at stage <ApplicationStage> for <ProductType>
    And User drafts an application of "<ProductType>" at stage "<ApplicationStage>"
    And CERSAI Details tab is open after saving Property Details
    When user clicks All fields
    Then all the fields should be displayed on screen
      | fieldName            |
      | Serial No.           |
      | No. of Documents     |
      | Document Type        |
      | Locality             |
      | Title Document No    |
      | Survey No            |
      | Sub Registrar Office |
      | Document Taluka      |
      | Document Pincode     |
      | Document District    |
      | Document State       |
      | Registration Date    |
      | Remarks              |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    # ${ ProductType : ["HL","LAP","MHF"]}
    #${ApplicationStage : ["LEAD DETAILS", "DDE", "Login Acceptance", "Credit Approval","Recommendation", "Disbursal", "Post Approval"]}
   #FeatureID-ACAUTOCAS-11133
  Scenario Outline: Validate Required fields option on CERSAI Details tab
    And User drafts an application of "<ProductType>" at stage "<ApplicationStage>"
    And CERSAI Details tab is open after saving Property Details
    When user clicks Required fields
    Then Only mandatory fields should be displayed on screen
      | fieldName            |
      | Serial No.           |
      | No. of Documents     |
      | Document Type        |
      | Title Document No    |
      | Sub Registrar Office |
      | Document Pincode     |
      | Document State       |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

   # ${ ProductType : ["HL","LAP","MHF"]}
    #${ApplicationStage : ["LEAD DETAILS", "DDE", "Login Acceptance", "Credit Approval"]}
    #FeatureID-ACAUTOCAS-11133
  Scenario Outline: Validate CERSAI Details in CAS for a collateral which is in LMS
    And User drafts an application of "<ProductType>" at stage "<ApplicationStage>"
    When user adds a property collateral which is in LMS
    Then correct CERSAI Details should be visible to user
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    # ${ ProductType : ["HL","LAP","MHF"]}
    #${ApplicationStage : ["LEAD DETAILS", "DDE", "Login Acceptance", "Credit Approval"]}
    #FeatureID-ACAUTOCAS-11133
  Scenario Outline: Validate CERSAI Details on "<ValidateStage>"
    And an application is at "<ValidateStage>" having CERSAI details added on "<ApplicationStage>" stage
    When user adds CERSAI Details on stage "<ApplicationStage>"
    Then CERSAI Details added on should be visible to user on stage "<ValidateStage>"
    Examples:
      | ApplicationStage   | ValidateStage |
      | <ApplicationStage> | Disbursal     |

     #${ ProductType : ["HL","LAP","MHF"]}
    #${ApplicationStage : ["Disbursal"]}
    #FeatureID-ACAUTOCAS-11133
  Scenario Outline: Disburse the application from "<ApplicationStage>" having CERSAI details
    And an application of "<ProductType>" is at stage "<ApplicationStage>" having CERSAI details
    When user disburses the application having CERSAI Details
    Then Application should be disbursed successfully
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |


    #${ ProductType : ["HL","LAP","MHF"]}
      #FeatureID-ACAUTOCAS-11133
  Scenario Outline: Validate CERSAI Details in LMS
    And an application of "<ProductType>" having CERSAI details is disbursed successfully
    When user validates the CERSAI Details in LMS
    Then CERSAI Details in LMS should be displayed correctly
    Examples:
      | ProductType   |
      | <ProductType> |
