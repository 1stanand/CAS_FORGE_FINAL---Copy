@Epic-Charges_&_FP
@AuthoredBy-Anshu.bhaduri
#@Createdby
#@eviewedby
#@AuthorBy_Anshu
#@Release2



Feature: ChargesScenarios

  Background:
    Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
#    And Chargecodes should be maintained in Charge Code Definition Master with all Transaction types mapped
#    And Charges should be maintained in Charge Definition Master with computation details maintained

  Scenario Outline: ACAUTOCAS-2694:  To define receivable payable charges on different BP along with Customer so that the charges commission payouts can be levied on the same
    #CAS-44218_ReceivablePayable charges of Different BP's
    When user define the payable receivable charges of different "<BP>" in masters
    And  user saves the record
    Then user should be able to apply the payable receivable charges of different BP's at transaction

    Examples:

      | BP                |
      | Customer          |
      | Manufacturer      |
      | Builder           |
      | Dealer            |
      | Agency            |
      | DSA               |
      | Insurance Company |


  Scenario Outline: ACAUTOCAS-2695:  To adjust receivable payable charges on Disbursal
    #CAS-44218_ReceivablePayable charges of Different BP's
#    Given Payable Receivable charges already maintained in masters of different "<BP>"
    When user adjusts the payable receivable charges of different "<BP>" at disbursement stage
    And  user saves the record
    Then user should be able to disburse the loan with payable receivable charges of different BP
    #The payable/receivable charges will be adjusted during disbursal with the same BP only.

    Examples:

      | BP                |
      | Customer          |
      | Manufacturer      |
      | Builder           |
      | Dealer            |
      | Agency            |
      | DSA               |
      | Insurance Company |


  Scenario Outline: ACAUTOCAS-2696:  To define rule based "<Amount_Rate>" for charges in the system
      #CAS-52345-Rule Based Charges
    Given Charges already maintained, rule matrix mapped with events
    When user attaches the rule matrix while mapping charges in charge policy
    And user saves the record
    Then user should be able to define the "<Amount_Rate>" on rules in the system
    And "<Amount_Rate>"should be passed to rule engine for computation on the charge candidate attribute
    And user should be able to execute charge policy at transaction

    Examples:

      | Amount_Rate  |
      | rate % based |
      | amount based |


  Scenario Outline: ACAUTOCAS-974:  New Charge policy should be created for products and schemes of "<LOB>" product types
    #Given Events should be present in Charge policy master for Source System LMS
    When user creates new charge policy for products and schemes of "<LOB>" product types
    And  user saves the record
    Then new charge policy should be created for products and schemes of "<LOB>" product types

    Examples:


      | LOB                  |
      | Personal Finance     |
      | Education Loan       |
      | Home Loan            |
      | Commercial Vehicle   |
      | Commercial Equipment |
      | Agriculture Loans    |
      | Self Help Group      |
      | Consumer Vehicle     |
      | Consumer Loans       |
#      | Kisan Credit Card     |
#      | Cash Credit           |
#      | Credit Card           |
#      | Loan Against Property |
#      | Business Loans        |
#      | Bank Guarantee        |
#      | Bill Discounting      |
#      | Gold Loan             |
#      | Micro Housing Finance |
#      | Letter of Credit      |
#      | Farm Equipment        |
#      | Multi Facility        |
#      | Omni Loan             |
#      | Joint Liability Group |



        #CAS-60801_Charge Policy Changes
  Scenario Outline: ACAUTOCAS-975: For CAS Source System CAS Events should be available while "<create_modify>" Charge policy
    And user navigated to Charge Policy Master and all CAS Events already maintained
    When user select source system as CAS while "<create_modify>" charge policy
    And  user checks CAS events "<CAS_Events>" with disbursal data entry level as "<Disbursal_Data_Level>" are present in the event list
    Then CAS events "<CAS_Events>" should be present in the event List while "<create_modify>" charge policy

    Examples:
      | CAS_Events    | Disbursal_Data_Level | create_modify |
      | Pre-Approval  |                      | creating      |
      | Post-Approval |                      | creating      |
      | Disbursal     | Disbursal Entry      | creating      |
      | Disbursal     | Disbursal Operations | creating      |
      | Renewal       |                      | creating      |
      | Pre-Approval  |                      | modifying     |
      | Post-Approval |                      | modifying     |
      | Disbursal     | Disbursal Entry      | modifying     |
      | Disbursal     | Disbursal Operations | modifying     |
      | Renewal       |                      | modifying     |


        #CAS-60801_Charge Policy Changes
  Scenario Outline: ACAUTOCAS-976:  For LMS Source System LMS Events should be available as per Transaction Types maintained while creating new Charge policy
    Given All LMS Transaction Types already maintained
    When user select source system as LMS while creating new charge policy
    And  user checks LMS events "<LMS_Events>" are present in the event list
    Then "<LMS_Events>" should be present in the event List as LMS events

    Examples:

      | LMS_Events                   |
      | Loan Closure/Early Closure   |
      | Reschdeuling Part Prepayment |
#      | Adhoc Receivable/Payable Cancellation(V1) |
#      | AAdhoc Receivable/Payable(V)              |
#      | Backdated Closure(TB)                     |
#      | Backdated Rescheduling(FB)                |
#      | Cashback(F8)                              |
#      | Installment Billing(I)                    |
#      | Early Closure(T1)                         |
#      | Loan Closure/Early Closure                |
#      | Loan Closure/Early Closure Cancellation   |


      #CAS-60801_Charge Policy Changes
  Scenario Outline: ACAUTOCAS-977:  Charges list should be available as per Masters in the 'Charge to be applied' Modal Window while adding charges in new Charge policy
    Given All Charges already maintained in Masters
    When user clicks on charges hyperlink for adding charges in charges section
    Then user should see all "<Charges_CASLMS>" charges in the Charge to be applied new modal window
    And user can select charges to be added from list
    And user saves the record

    Examples:

      | Charges_CASLMS |
      | CAS related    |
      | LMS related    |


      #CAS-60801_Charge Policy Changes
  Scenario Outline: ACAUTOCAS-978:  Marking of Charge Nature in 'Charge to be applied' Modal Window while adding charges in new Charge policy
    Given All Charges already maintained in Masters
    When user selects charge nature from drop down while adding charges in charges section
    Then user should be able to mark a charge nature as "<Charge_Nature>" for "<Charges_CASLMS>"  in charge to be applied modal window
    And user saves the record

    Examples:

      | Charges_CASLMS | Charge_Nature      |
      | CAS            | Fixed For Contract |
      | LMS            | Dynamic Charge     |
      | LMS            | Fixed For Contract |


    #CAS-60801_Charge Policy Changes
  Scenario Outline: ACAUTOCAS-979:  Rules and Assignment Matrix attachment in 'Charge to be applied' Modal Window while adding charges in new Charge policy
    Given All Charges already maintained in Masters
    When user checks rule based checkbox
    And user selects rule from rules List drop down for "<Charges_CASLMS>"
    And user selects assignment matrix from drop down for "<Charges_CASLMS>"
    Then user should be able to map rule matrix to charge

    Examples:

      | Charges_CASLMS |
      | CAS            |
      | LMS            |


    #CAS-60801_Charge Policy Changes
  Scenario Outline: ACAUTOCAS-2697:  Refund Rules and Refund % capturing in 'Charge to be applied' Modal Window while adding charges in new Charge policy
    Given All Charges already maintained in Masters
    When user selects refund rule from rules List drop down for "<Charges_CASLMS>"
    And user enters refund percent
    Then user should be able to attach refund rules in charge to be applied modal Window
    And user should be able to capture refund percentage in charge to be applied modal Window

    Examples:

      | Charges_CASLMS |
      | CAS            |
      | LMS            |


    #CAS-60801_Charge Policy Changes
  Scenario Outline: ACAUTOCAS-2698:  Different Flags "<Flags>" capturing in 'Charge to be applied' Modal Window while adding charges in new Charge policy
    Given All Charges already maintained in Masters
    When user selects "<Flags>" against all charges to be applied for "<Charges_CASLMS>"
    Then user should be able to capture "<Flags>" against all charges to be applied in charge to be applied modal Window

    Examples:

      | Charges_CASLMS | Flags                |
      | CAS            | Is Waiver Allowed    |
      | CAS            | Is Charge Refundable |
      | CAS            | Periodic Charge      |
      | LMS            | Is Waiver Allowed    |
      | LMS            | Is Charge Refundable |
      | LMS            | Periodic Charge      |


    #CAS-60801_Charge Policy Changes
  Scenario Outline:ACAUTOCAS-2699: Search Criteria of Charge Name, Charge Type and Business Partner in 'Charge to be applied' Modal Window while adding charges in new Charge policy
    Given All Charges already maintained in Masters
    When user enters "<Charge_Name>" as a search criteria with charge type entered as "<Charge_Type>" with business_partner as "<Business_Partner>" for "<Charges_CASLMS>"
    Then user should be able to search the charges from the grid as per the criteria entered

    Examples:

      | Charges_CASLMS | Charge_Name                | Charge_Type | Business_Partner  |
      | CAS            | Any 3 characters of charge | Both        | Manufacturer      |
      | CAS            | Any 3 characters of charge | Both        | Customer          |
      | CAS            | Any 3 characters of charge | Both        | Dealer Supplier   |
      | CAS            | Any 3 characters of charge | Both        | Agency            |
      | CAS            | Any 3 characters of charge | Both        | DSA               |
      | CAS            | Any 3 characters of charge | Both        | Insurance Company |
      | CAS            | Any 3 characters of charge | Both        | Builder Company   |
      | CAS            | Any 3 characters of charge | Both        | Colending Partner |
      | CAS            | Any 3 characters of charge | Receivable  | Manufacturer      |
      | CAS            | Any 3 characters of charge | Receivable  | Customer          |
      | CAS            | Any 3 characters of charge | Receivable  | Dealer Supplier   |
      | CAS            | Any 3 characters of charge | Receivable  | Agency            |
      | CAS            | Any 3 characters of charge | Receivable  | DSA               |
      | CAS            | Any 3 characters of charge | Receivable  | Insurance Company |
      | CAS            | Any 3 characters of charge | Receivable  | Builder Company   |
      | CAS            | Any 3 characters of charge | Receivable  | Colending Partner |
      | CAS            | Any 3 characters of charge | Payable     | Manufacturer      |
      | CAS            | Any 3 characters of charge | Payable     | Customer          |
      | CAS            | Any 3 characters of charge | Payable     | Dealer Supplier   |
      | CAS            | Any 3 characters of charge | Payable     | Agency            |
      | CAS            | Any 3 characters of charge | Payable     | DSA               |
      | CAS            | Any 3 characters of charge | Payable     | Insurance Company |
      | CAS            | Any 3 characters of charge | Payable     | Builder Company   |
      | CAS            | Any 3 characters of charge | Payable     | Colending Partner |
      | LMS            | Any 3 characters of charge | Both        | Manufacturer      |
      | LMS            | Any 3 characters of charge | Both        | Customer          |
      | LMS            | Any 3 characters of charge | Both        | Dealer Supplier   |
      | LMS            | Any 3 characters of charge | Both        | Agency            |
      | LMS            | Any 3 characters of charge | Both        | DSA               |
      | LMS            | Any 3 characters of charge | Both        | Insurance Company |
      | LMS            | Any 3 characters of charge | Both        | Builder Company   |
      | LMS            | Any 3 characters of charge | Both        | Colending Partner |
      | LMS            | Any 3 characters of charge | Receivable  | Manufacturer      |
      | LMS            | Any 3 characters of charge | Receivable  | Customer          |
      | LMS            | Any 3 characters of charge | Receivable  | Dealer Supplier   |
      | LMS            | Any 3 characters of charge | Receivable  | Agency            |
      | LMS            | Any 3 characters of charge | Receivable  | DSA               |
      | LMS            | Any 3 characters of charge | Receivable  | Insurance Company |
      | LMS            | Any 3 characters of charge | Receivable  | Builder Company   |
      | LMS            | Any 3 characters of charge | Receivable  | Colending Partner |
      | LMS            | Any 3 characters of charge | Payable     | Manufacturer      |
      | LMS            | Any 3 characters of charge | Payable     | Customer          |
      | LMS            | Any 3 characters of charge | Payable     | Dealer Supplier   |
      | LMS            | Any 3 characters of charge | Payable     | Agency            |
      | LMS            | Any 3 characters of charge | Payable     | DSA               |
      | LMS            | Any 3 characters of charge | Payable     | Insurance Company |
      | LMS            | Any 3 characters of charge | Payable     | Builder Company   |
      | LMS            | Any 3 characters of charge | Payable     | Colending Partner |


      #CAS-60801_Charge Policy Changes
  Scenario Outline: ACAUTOCAS-980:  Default Charge Nature in 'Charge to be applied' Modal Window while adding charges in Charge policy
    Given All Charges already maintained in Masters
    When user clicks on charges hyperlink for adding charges in charges section
    Then user sees the default charge nature as "<Charge_Nature_Default>" for "<Charges_CASLMS>"

    Examples:

      | Charges_CASLMS | Charge_Nature_Default |
      | CAS            | Dynamic Charge        |
      | LMS            | Fixed For Contract    |
      | LMS            | Fixed For Contract    |



  #CAS-71126_Cas- Prioritization of charges and receipt auto allocation.
  Scenario Outline: ACAUTOCAS-2700:  Defining Priority in 'Charge to be applied' Modal Window while adding charges in new Charge policy
    Given All Charges already maintained in Masters
    When user enters priority as "<Priority_Value>" in priority column while adding charges in charges section
    Then user should be "<Priority_Result>" with success or error messages in charge to be applied modal window
    And user gets message as "<Err_Msg>"

    Examples:

      | Priority_Value          | Priority_Result                          | Err_Msg                            |
      | Numbers between 1 to 99 | able to capture priority as numbers only | Charge Policy updated successfully |
      | Alphabets               | not able to capture priority             |                                    |
      | Special Characters      | not able to capture priority             |                                    |
      | 0                       | not able to capture priority             | Priority should be between 1 to 99 |
      | Duplicate Values        | not able to capture priority             | Priorities are duplicate           |
      | Alphanumeric Characters | not able to capture priority             |                                    |



  #CAS-71126_Cas- Prioritization of charges and receipt auto allocation.
  Scenario: ACAUTOCAS-2039:  Same Priority could be defined to different charges in 'Charge to be applied' Modal Window while adding charges in new Charge policy
    Given All Charges already maintained in Masters
    When user enters same priority to different charges in the list while adding charges in charges section
    Then user should be able to save the record without any error


  #CAS-71126_Cas- Prioritization of charges and receipt auto allocation.
  Scenario Outline: ACAUTOCAS-2701:  High and Low Priority for "<Charge_Types>" charge types in 'Charge to be applied' Modal Window for auto allocation of receipts basis charges priority
    Given All Charges already maintained in Masters
    When user defines priority value to charges while adding charges in charges section
    Then there will be "<Priority_Result>"  priority for "<Charge_Types>" charge types while auto allocation of receipts on disbursal

    Examples:

      | Charge_Types          | Priority_Result |
      | Receivables           | high            |
      | Collectible           | high            |
      | Functional Parameters | low             |
      | Manual                | low             |

  Scenario Outline: ACAUTOCAS-981:  Mapping of New Charge policy to Products and Schemes for "<LOB>" Product Types
    Given New Charge policy already created for "<LOB>"
    When user attaches the new charge policy with products and schemes for "<LOB>" product types
    And user saves the record
    Then new charge policy should be successfully mapped to products and schemes for "<LOB>" product types

    Examples:

      | LOB                  |
      | Personal Finance     |
      | Education Loan       |
      | Home Loan            |
      | Commercial Vehicle   |
      | Commercial Equipment |
      | Agriculture Loans    |
      | Self Help Group      |
      | Consumer Vehicle     |
      | Consumer Loans       |
#      | Kisan Credit Card     |
#      | Cash Credit           |
#      | Credit Card           |
#      | Loan Against Property |
#      | Business Loans        |
#      | Bank Guarantee        |
#      | Bill Discounting      |
#      | Gold Loan             |
#      | Micro Housing Finance |
#      | Letter of Credit      |
#      | Farm Equipment        |
#      | Multi Facility        |
#      | Omni Loan             |
#      | Joint Liability Group |


  Scenario: ACAUTOCAS-2040:  Modifying Charge Policy in Master
    Given New Charge policy already created for "<LOB>"
    When user modifes or adds the charges in charge policy which is attached with product
    And user authorize the charge policy
    Then charge policy should be successfully authorized for specific product


  Scenario Outline: ACAUTOCAS-2702:  All Charges are available on repayment parameters or charges screen post charge policy executed  at  "<Var_Stage>" Stage
    Given Loan application is at "<Var_Stage>" Stage with charge policy executed
    When user checks all receivable payable charges list
    Then user should see all charges in charges fee section on charge details screen at "<Var_Stage>" Stage

    Examples:

      | Var_Stage          |
      | DDE                |
      | Recommendation     |
      | Credit Approval    |
      | Reconsideration    |
      | Post Approval      |
      | Disbursal          |
      | Tranche Initiation |
      | Tranche Approval   |


  Scenario: ACAUTOCAS-2041:  Charge amount capturing post applying charges on repayment parameters screen at DDE Stage
    Given Loan application is at DDE stage with charge policy executed on repayment parameters screen at DDE Stage
    And user see all receivable charges list
    When user updates effective charge amount against all populated charges on repayment parameters screen at DDE Stage
    Then user should be able to save the record


  Scenario Outline: ACAUTOCAS-2703:  Manual Charge Addition on repayment parameters or Charges details screen at  "<Var_Stage>" Stage
    Given Loan application is at DDE stage with charge policy executed on repayment parameters screen at "<Var_Stage>" Stage
    And user see all receivable charges list
    When user clicks on + icon to add manual charges on Charges details screen at "<Var_Stage>"  Stage
    And user selects charges to be added from list
    Then user should be able to add manual charges

    Examples:

      | Var_Stage            |
      | DDE                |
      | Recommendation     |
      | Credit Approval    |
      | Reconsideration    |
      | Post Approval      |
      | Disbursal          |
      | Tranche Initiation |
      | Tranche Approval   |



  Scenario Outline: ACAUTOCAS-2704:  Same charges maintained for Entry and Operation level in Policy are not applicable at "<Var_Stage>" stage
    Given Loan application is at "<Var_Stage>" stage
    And user maintains same charge for "<Entry_Operations>" at "<Var_Stage>" stage
    And user is on disbursal entry section in charge details grid on disbursal entry section
    When user executes the charge policy with apply charges option
    Then user should see only one charge in the list which was previously added from policy execution
    And no same charge is listed in the charges grid

    Examples:

      | Var_Stage            | Entry_Operations     |
      | Disbursal            | Disbursal Entry      |
      | Disbursal            | Disbursal Operations |
      | Subsequent Disbursal | Disbursal Entry      |
      | Subsequent Disbursal | Disbursal Operations |

  Scenario Outline: ACAUTOCAS-2705:  Different charges to be maintained for Entry Operation level in Policy
    Given Charge policy is already maintained attached with different products
    When user maps charges in policy for "<Entry_Operations>"
    Then user should have different charges maintained on "<Entry_Operations>" in charge policy

    Examples:

      | Entry_Operations     |
      | Disbursal Entry      |
      | Disbursal Operations |

# To check if charge policy is executed if dealer subvention charge is included 'DLR SUBV-IRR-NDED' charge.

  Scenario Outline: ACAUTOCAS-1005:  Charge policy execution at save of loan parameter not mandatory at "<Var_Stage>" stage
    Given Charge Policy not attached with product at "<Var_Stage>" stage
    When user saves the loan parameters without applying charges
    Then loan parameters should be saved
    And user should get a warning as "Charge policy not applicable"

    Examples:

      | Var_Stage       |
      | DDE             |
      | Recommendation  |
      | Credit Approval |
      | Reconsideration |
      | Post Approval   |
      | Disbursal       |

  Scenario Outline: ACAUTOCAS-2706:  Provision to retain manual charges and waived % and amount as well on re-execution of charge policy at "<Var_Stage>"
    #CAS-95189_Provision to retain manual charges on re-run of charge policy and retain waived % and amount as well.
    Given Charge Policy already attached with product at "<Var_Stage>" stage
    When user adds manual charge by clicking on + icon on charges grid
    And user initiates the waiver in combination of rate and amount based to charges
    And user again clicks on collect charges to execute policy at "<Var_Stage>"
    Then user manual charges shall not be deleted
    And waived off amount with rate shall still remains same for both manual and policy charges
    #  Business scenarios:
  #  user might add some manual charges in application, and till the course of application journey,
  #  policy charges may get changed, hence requiring re-execution of charges.
    #  History to be maintained and visible for all charges and waiver saved.

    Examples:
      | Var_Stage       |
      | DDE             |
      | Recommendation  |
      | Credit Approval |
      | Reconsideration |
      | Post Approval   |
      | Disbursal       |



  Scenario Outline: ACAUTOCAS-2707:  View Charges on Application Enquiry Screen
    And Loan applications are at "<Var_Stage>" stage
    And charges already mapped with the applications as per charge policy attached with product
    When user enters "<AppID_Other_Search_Criteria>" on application enquiry screen
    And user clicks on stage hyperlink in the below grid section
    Then user should be able to see application in below grid with details of Customer Name, Stage, application id
    And user should be able to view the application with charges details at "<Var_Stage>" stage
    Examples:
      | Var_Stage       | AppID_Other_Search_Criteria |
      | DDE             | Application Id              |
      | Credit Approval | Application Id              |
      | Post Approval   | Application Id              |
      | Recommendation  | Application Id              |
      | Reconsideration | Application Id              |
      | Disbursal       | Application Id              |
      | DDE             | any other search criteria   |
      | Credit Approval | any other search criteria   |
      | Post Approval   | any other search criteria   |
      | Recommendation  | any other search criteria   |
      | Reconsideration | any other search criteria   |
      | Disbursal       | any other search criteria   |



  Scenario Outline: ACAUTOCAS-2857:  View Charges on Committee Approval Screen
    Given Loan applications are at "<Var_Stage>" stage
    And applications are listed in committee approval screen
    When user selects any application from grid on committee approval screen
    And user navigates to charges fees section
    And user clicks on charge hyperlink in the charges grid section against the charges
    #Then user should be able to see application in below grid with details of Customer Name, Stage, application id
    Then user should be able to view the application charges details modal window having all charge related values
    And none of the charges application charges details would be editable with only view allowed

    Examples:

      | Var_Stage       |
      | Credit Approval |
#      | Post Approval   |
#      | Recommendation  |
#      | Reconsideration |
#      | Disbursal       |


  Scenario Outline: ACAUTOCAS-2858:  View Charges history and validate on transaction screens at "<Var_Stage>" stage
    Given Loan applications are at "<Var_Stage>" stage
    And charges already mapped with the applications as per charge policy attached with product
    When user clicks on charge hyperlink of charges on charges fess section
    And user updates any charge details on application charges screen
    And user saves the record
    Then user should be able to see charges history in activity tab with the message that charges updated in loan application successfully by respective user

    Examples:

      | Var_Stage       |
      | Credit Approval |
      | Post Approval   |
      | DDE             |
      | Tranche Level   |
      | Disbursal       |

  #FeatureID-ACAUTOCAS-439
  Scenario Outline: ACAUTOCAS-4232:  View Charges on Sent to Ops Screen
  #Charges & FP-View Charges-Send to opts
    Given Loan applications are at "<Var_Stage>" stage flown to LMS
    And applications are listed in Sent to Ops screen
    When user selects any application from grid listed on Sent to Ops screen
    And user navigates to disbursal tab on disbursal entry section
    And user clicks on view charge hyperlink in disbursal entry section grid on disbursal tab screen
    Then user should be able to view the "<Charges>" details
    And none of the charges should be editable having only view access

    Examples:

      | Var_Stage   | Charges             |
      | Sent to Ops | Charges             |
      | Sent to Ops | Adjusted Receipt    |
      | Sent to Ops | Financial Parameter |
      | Sent to Ops | Contractual Charges |


  Scenario: ACAUTOCAS-5587:  Creating Charge Policy in Master
    And Charge code and Charge definition Masters already created
    When user creates new charge policy with charges mapped into it
    And user authorize the charge policy
    Then charge policy should be successfully created for specific product
