@Epic-Charges_&_FP
@AuthoredBy-Anshu.bhaduri
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
@ImplementedBy-deep.maurya

Feature: ChargesRenewal

  Background:
    Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    And Chargecodes already maintained in Charge Code Master
    And Charges should be maintained in Charge Definition Master with computation details

    #FeatureID-ACAUTOCAS-404
  Scenario Outline: ACAUTOCAS-5016:  Criteria for Loan Renewal functionality
    Given Single Loan application is already fully disbursed and flown to LMS
    And user should have role and authority to open Renew Application Menu option
    When user searches for an application on Renew application search screen
    Then user should verify "<criteria>" for initiating renewal process
    Examples:
      | criteria                                                            |
      | that loan number should be generated                                |
      | that loan should be partially or fully disbursed                    |
      | that application should either be on disbursal stage or Send to Ops |
      | that disbursal type of the application should be multiple           |

  #FeatureID-ACAUTOCAS-393
  Scenario: ACAUTOCAS-5017:  Charge Code mapping with Loan Renewal transaction event
    When user selects Transaction Event as Loan Renewal in chargecode master
    And user saves the record
    Then user should be able to map renewal transaction event with chargecode

  #FeatureID-ACAUTOCAS-393
  Scenario: ACAUTOCAS-5018:  Charge definition creation for Loan Renewal transaction event with module type as CAS
    When user creates charge definition with module type as CAS
    And user searches for transaction type Loan Renewal in drop down
    Then user should not be able to get Loan Renewal transaction type in drop down

  #FeatureID-ACAUTOCAS-393
  Scenario: ACAUTOCAS-5019:  Charge definition creation for Loan Renewal transaction event with module type as LMS
    When user creates charge definition with module type as LMS
    And user searches for transaction type Loan Renewal in drop down
    And user enter other details
    And user saves the record
    Then user should be able to create charge definition with Loan Renewal transaction type

  #FeatureID-ACAUTOCAS-393
  Scenario Outline: ACAUTOCAS-5007: Mapping of Loan Renewal Charges with Charge Policy for LMS transaction event
    Given Charge policy already created for respective LOBs
    And All LMS transaction types already maintained
    When user select source system as LMS while to map loan renewal charge in charge policy
    And  user checks LMS events "<LMS_Events>" present in the event list
    Then "<LMS_Events>" should be present in the event List as LMS events
    And user selects the LMS event
    And user maps the charges from charges hyperlink
    And user saves the record
    And charge policy should be successfully modified

    Examples:
      | LMS_Events                                |
      | Loan Closure/Early Closure                |
      | Rescheduling Part Prepayment              |
      | Loan Renewal                              |
      | Adhoc Receivable/Payable Cancellation(V1) |
      | AAdhoc Receivable/Payable(V)              |
      | Backdated Closure(TB)                     |
      | Backdated Rescheduling(FB)                |
      | Cashback(F8)                              |
      | Installment Billing(I)                    |
      | Early Closure(T1)                         |
      | Loan Closure/Early Closure                |
      | Loan Closure/Early Closure Cancellation   |

      #FeatureID-ACAUTOCAS-393
  Scenario Outline: ACAUTOCAS-5129:  Mapping of Renewal Charges with Charge Policy for CAS event of Renewal
    Given Charge policy already created for respective LOBs
    And All CAS transaction types already maintained
    When user select source system as CAS to map renewal charge in charge policy
    And  user checks CAS events "<CAS_Events>" present in the event list
    Then "<CAS_Events>" should be present in the event List
    And user selects the CAS event
    And user maps the charges from charges hyperlink
    And user saves the record
    And charge policy should be successfully modified

    Examples:
      | CAS_Events |
      | Renewal    |

  #FeatureID-ACAUTOCAS-393
  Scenario Outline: ACAUTOCAS-5008: Charge policy execution at transaction at "<Var_Stage>" stage
    Given Charge Policy already attached with product for which loan renewal is to be done
    When user opens an application from application grid at "<Var_Stage>" stage
    And user checks for app update recommendation screen at "<Var_Stage>" stage
    And user navigates to charges tab on app update recommendation screen
    And user applies charge policy
    Then user should see charges section with financial parameters details
    And user should be able to see all charges list in grid

    Examples:
      | Var_Stage                 |
      | App Update Recommendation |
      | App Update Approval       |

  #FeatureID-ACAUTOCAS-393
  Scenario Outline: ACAUTOCAS-5130:  Financial Parameters Details at transaction at "<Var_Stage>" stage
    Given Financial Parameters already created on App Update Process event with chargecodes mapped with charges
    And displays only CAS related charges with FP type as due generation only as per event selected
    When user opens an application from application grid at "<Var_Stage>" stage
    And user checks for app update recommendation screen at "<Var_Stage>" stage
    And user navigates to financial parameter details section on app update recommendation screen
    Then user should be able to see financial parameter details
    Examples:
      | Var_Stage                 |
      | App Update Recommendation |
      | App Update Approval       |


    #FeatureID-ACAUTOCAS-5021
  Scenario Outline: ACAUTOCAS-5009:   Charge amount updation on charges section at "<Var_Stage>" Stage
    Given Loan application is at "<Var_Stage>" stage with charge policy already executed
    And user see all receivable charges list in the grid
    When user updates effective charge amount against all populated charges at "<Var_Stage>" stage
    Then user should be able to update charge amount with other details

    Examples:
      | Var_Stage                 |
      | App Update Recommendation |
      | App Update Approval       |


    #FeatureID-ACAUTOCAS-5021
  Scenario Outline: ACAUTOCAS-5010:   Manual Charge Addition on Charges details screen at  "<Var_Stage>" Stage
    Given Loan application is at "<Var_Stage>" stage with charge policy already executed
    And user see all charges list in the grid
    When user clicks on + icon to add manual charges on charges details screen at "<Var_Stage>"  Stage
    And user selects charges to be added from list
    Then user should be able to add manual charges
    Examples:

      | Var_Stage                 |
      | App Update Recommendation |
      | App Update Approval       |

  #FeatureID-ACAUTOCAS-5023
  Scenario Outline: ACAUTOCAS-5011:  View Charges on Application Enquiry Screen
    Given Loan applications are at "<Var_Stage>" stage
    And charges already mapped with the applications as per charge policy attached with product
    When user enters application id with any other search criteria on application enquiry screen
    And user clicks on stage hyperlink in the below grid section
    Then user should be able to see application in grid with Customer Name, Stage, application id
    And user should be able to view the application details
    And user should be able to view charges section for given "<Var_Stage>" stage

    Examples:

      | Var_Stage                 |
      | App Update Recommendation |
      | App Update Approval       |

  #FeatureID-ACAUTOCAS-5023
  Scenario Outline: ACAUTOCAS-5012:  View Charges at "<Var_Stage>" stage
    Given Loan applications are at "<Var_Stage>" stage
    And charges already mapped with the applications as per charge policy attached with product
    When user navigates to charge section on app update approval screen
    #And user clicks on stage hyperlink in the below grid section
    Then user should be able to view charges section for given "<Var_Stage>" stage with details

    Examples:

      | Var_Stage                 |
      | App Update Recommendation |
      | App Update Approval       |
