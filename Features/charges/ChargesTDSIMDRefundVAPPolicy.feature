@Epic-Charges_&_FP
#@Createdby
#@eviewedby
@AuthoredBy-Anshu.bhaduri
#@Release2

Feature: ChargesTDSIMDRefundVAPPolicy
#
#  Background:
#    Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
#    And Chargecodes should be maintained in Charge Code Definition Master with all Transaction types mapped
#    And Charges should be maintained in Charge Definition Master with computation details maintained


  Scenario Outline: ACAUTOCAS-2708:  Provision to attach TDS Policy with Product and execution of TDS Policy
    #CAS-71693_Csl Finance Limited-TDS not calculating on Broken period interest if it is marked as 'Charge Separately'
    Given TDS Policy already maintained computed on "<Computed_On>" with some defined TDS Rate
    And TDS policy is mapped to the Product
    When user punches the loan application of the same product with the TDS Applicable with same TDS Policy
    And user moves the application to "<Var_Stage>" stage
    And user checks for repayment schedule at "<Var_Stage>"
    Then user should be able to see effective charge amount
    And user should see column in repay schedule with calculated tds amount as per defined TDS policy attached with product
    And user verifies that charges are correctly calculated moving to the LMS Module as per defined TDS policy attached with product in the SYstem
    #It's calculations be like #Effective Charge = Charge Amount - TDS Amount
    Examples:

      | Var_Stage | Computed_On |
      | DDE       | Instalment  |
      | DDE       | Interest    |
      | Disbursal | Instalment  |
      | Disbursal | Interest    |


  Scenario Outline: ACAUTOCAS-2709:  IMD Refund Policy Master Details
    Given IMD Refund Policy already maintained
    When user navigates to IMD Refund Policy
    And user enters same charge code multiple times with same "<Activity>" activity
    And user enters other details
    And user saves the record
    Then user should get an error message
    And user should verify that activity with chargecode combination should be unique in each row

    Examples:

      | Activity        |
      | Cancel Confirm  |
      | Reject Confirm  |
      | Curtail Confirm |


  Scenario Outline: ACAUTOCAS-2710:  Provision to attach IMD Refund Policy with Product
    Given IMD Refund Policy already maintained in Masters
    When user verifies the activity field with values as "<Activity>" activity with fields
    And user enters charge description, income booking flag, percentage, manual edit allowed flag against "<Activity>" activity
    And user saves the record
    And user attaches the IMD refund policy with Product
    Then user should be able to attach IMD Refund policy

    Examples:

      | Activity        |
      | Cancel Confirm  |
      | Reject Confirm  |
      | Curtail Confirm |


  Scenario Outline: ACAUTOCAS-2711:  When no IMD Refund Policy is attached with Product
    Given IMD Refund Policy already maintained in Masters
    When user checks that product has no IMD Refund policy attached to it
    And user verifies on review "<Cancelled_Rejected>" application screen whether IMD refund amount is present as per the IMD Refund percentage
    Then no refund should be applicable to the applied charges in case of refund

    Examples:

      | Cancelled_Rejected |
      | Cancelled          |
      | Rejected           |


  Scenario Outline: ACAUTOCAS-2712: Application shall be "<cancel_reject_confirm>" with IMD boooked as "<income_refund>" when IMD Refund Policy is mapped with charges
    Given IMD Refund Policy already maintained with charges which were not maintained in loan through charge policy
    When user checks on review "<Cancelled_Rejected>" application screen whether IMD refund amount is present as per the IMD Refund percentage
    Then whole IMD shall be booked as "<income_refund>" as per the IMD refund Policy
    And application shall be "<cancel_reject_confirm>"

    Examples:

      | Cancelled_Rejected | cancel_reject_confirm | income_refund |
      | Cancelled          | cancel confirm        | income        |
      | Rejected           | reject confirm        | income        |
      | Cancelled          | cancel confirm        | refund        |
      | Rejected           | reject confirm        | refund        |

  Scenario Outline: ACAUTOCAS-2713:  IMD Refund Policy Button available on different screens
    Given IMD Refund Policy already maintained in Masters
    When user verifies the IMD Refund Policy Button on screen "<IMD_Button_Screen>"
    Then user should be able to attach IMD Refund policy

    Examples:

      | IMD_Button_Screen      |
      | Cancelled Applications |
      | Rejected Applications  |
      | Dibursal               |

  Scenario Outline: ACAUTOCAS-2714:  IMD Refund Screen details while reviewing "<Cancelled_Rejected>" applications
    Given Loan application is already "<Cancelled_Rejected>"
    #And charges already collected in application which is at Disbursal stage with "<Single_Multiple>" tranches
    When user opens review "<Cancelled_Rejected>" application screen from menu option
    Then user should be able to verify "<Sections>" sections on "<Cancelled_Rejected>" application screen
    Examples:

      | Cancelled_Rejected | Sections                                                |
      | Cancelled          | Select Recieveables to be collected                     |
      | Rejected           | Select Recieveables to be collected                     |
      | Cancelled          | Instrument Details for previously collected Recievables |
      | Rejected           | Instrument Details for previously collected Recievables |

  Scenario Outline: ACAUTOCAS-2715:  View Charges on IMD Refund Screen While reviewing "<Cancelled_Rejected>" applications
    Given Loan application is already "<Cancelled_Rejected>" from more actions menu options
    When user opens review "<Cancelled_Rejected>" application screen from menu option
    And user clicks on IMD refund policy button on review "<Cancelled_Rejected>" application screen
    Then user should be able to see IMD refund screen having charge details mapped with loan along with IMD receipt details
    And user should be able to verify that only "<charge_nature>" charges of customer are visible on IMD refund policy screen
    Examples:

      | Cancelled_Rejected | charge_nature              |
      | Cancelled          | Collectible                |
      | Cancelled          | Collectible and Deductible |
      | Rejected           | Collectible                |
      | Rejected           | Collectible and Deductible |


  Scenario Outline: ACAUTOCAS-2716:  Charge adjustment as per Manual Edit Allowed flag maintained in IMD Refund Policy on review "<Cancelled_Rejected>" application screen
    Given IMD Refund Policy already maintained in Masters
    And manual edit allowed flag value maintained as "<Manual_Edit_Allowed>" in IMD Refund Policy masters
    When user verifies the charges on IMD Refund modal window on review "<Cancelled_Rejected>" application screen
    Then user should be able to verify that "<Remarks>"
    Examples:

      | Manual_Edit_Allowed | Cancelled_Rejected | Remarks                                                                                                   |
      | No                  | Cancelled          | system will adjust the charges on the basis of default values set in IMD Refund Policy Masters            |
      | Yes                 | Cancelled          | the user can manually book the percentage of income against each charge on IMD Refund Policy Modal Window |
      | No                  | Rejected           | system will adjust the charges on the basis of default values set in IMD Refund Policy Masters            |
      | Yes                 | Rejected           | the user can manually book the percentage of income against each charge on IMD Refund Policy Modal Window |

  Scenario Outline: ACAUTOCAS-2717:  Income Booking Flag and Percentage on review "<Cancelled_Rejected>" application screen as per Manual Edit Allowed flag maintained in IMD Refund Policy Master
    Given IMD Refund Policy already maintained in Masters with charges mapped
    And income booking flag value maintained as "<Income_booking>" in IMD Refund Policy masters
    When user verifies that Income Booking is allowed on IMD Refund screen on review "<Cancelled_Rejected>" application screen
    Then income booking percentage field should be "<Editable_NonEditable>"
    Examples:

      | Cancelled_Rejected | Income_booking | Editable_NonEditable |
      | Cancelled          | Yes            | Editable             |
      | Cancelled          | No             | Non Editable         |
      | Rejected           | Yes            | Editable             |
      | Rejected           | No             | Non Editable         |


  Scenario Outline: ACAUTOCAS-2718:  Manual Edit Flag for Income Booking and Income Booking percentage on review "<Cancelled_Rejected>" application screen as per Manual Edit Allowed flag maintained in IMD Refund Policy Master
    Given IMD Refund Policy already maintained in Masters with charges mapped
    And Manual income booking flag value maintained as "<Manual_Edit>" in IMD Refund Policy masters
    When user verifies manual edit flag as "<Manual_Edit>" in the particular charge code on IMD Refund screen on review "<Cancelled_Rejected>" application screen
    Then income booking percentage field should be "<Editable_NonEditable>"
    Examples:

      | Cancelled_Rejected | Manual_Edit | Editable_NonEditable |
      | Cancelled          | Yes         | Editable             |
      | Cancelled          | No          | Non Editable         |
      | Rejected           | Yes         | Editable             |
      | Rejected           | No          | Non Editable         |

  Scenario Outline: ACAUTOCAS-2719:  Mapped charges in IMD Refund Policy should be visible in IMD Refund modal window for "<Cancelled_Rejected>" applications
    Given Loan application is already "<Cancelled_Rejected>"
    And user opens "<Cancelled_Rejected>" screen from menu option
    And user verifies IMD refund policy button on review screen
    And user clicks on IMD refund policy button
    When user verifies the mapped charges are visible in modal window with IMD Refund Policy
    Then user should be able to check that receipts saved against charges are available in instrument details
    And user should be able to check that refund amount is calculated as per charge and receipts allocation
    Examples:

      | Cancelled_Rejected |
      | Cancelled          |
      | Rejected           |


  Scenario Outline: ACAUTOCAS-2720:  IMD Income booking and Refund in case when Charge Amount is greater than the IMD amount
    #CAS-7063	IMD Refund
    Given Loan application is already "<Cancelled_Rejected>"
    And IMD receipt is taken of amount less than charge amount
    When user clicks on IMD refund policy button on review "<Cancelled_Rejected>" applications
    #verifies the mapped charges are visible in modal window with IMD Refund Policy
    Then full IMD amount needs to be booked as income with no amount to be refunded collected from the customer
        # Processing Fee Charge Amount is 2000/-.
    #  IMD Collected 2000/-.
    #    Then If Income Booking % = 70%
    #    Then Marked the Income Booking Amount as 1400/- and IMD to be refunded as 600/-.
    #  In case Income Booking Amount is greater than the IMD Collected amount
    #  then full IMD amount needs to be booked as Income,however no amount to be refunded or collected from the customer.
    Examples:

      | Cancelled_Rejected |
      | Cancelled          |
      | Rejected           |

  Scenario Outline: ACAUTOCAS-2721:  System should allow to process the case where IMD amount is excess then charges
    #CAS-34289	CLONE - IMD Refund
    Given Loan application is already "<Cancelled_Rejected>"
    And IMD receipt is taken of amount greater than charge amount
    When user clicks on IMD refund policy button on review "<Cancelled_Rejected>" applications
    Then refund amount should be visible in refund field on review "<Cancelled_Rejected>" applications
    And application should be rejected
    And amount to be refunded shall be sent to LMS while sending the receipts to LMS as a payable in application against LAN
    #And system shall allow disbursement with receipts which are un-allocated or partially allocated

    Examples:

      | Cancelled_Rejected |
      | Cancelled          |
      | Rejected           |


  Scenario Outline: ACAUTOCAS-2859: Income Booking percentage if changed, as per Manual Edit Allowed and income booking flag maintained in IMD Refund Policy on review "<Cancelled_Rejected>" application screen
    #CAS-7063	IMD Refund
    Given IMD Refund Policy already maintained in Masters with charges mapped
    And income booking flag value with income booking percentage is maintained as "<Income_booking>" in IMD Refund Policy masters
    And manual edit allowed flag value is maintained as "<Manual_Edit_Allowed>" in IMD Refund Policy masters
    And receipt is already taken for the receivables charge amount on receipt screen of loan details
    When user changes income booking percentage on IMD Refund screen against the charges on review "<Cancelled_Rejected>" application screen
    And user saves the record
    Then IMD receipt amount should be adjusted as per the updated income booking percentage after saving the recordon review "<Cancelled_Rejected>" application screen
    And refund amount should be calculated and visible in refund amount field accordingly

    Examples:

      | Income_booking | Manual_Edit_Allowed | Cancelled_Rejected |
      | Yes            | Yes                 | Cancelled          |
      | Yes            | Yes                 | Rejected           |


  Scenario Outline: ACAUTOCAS-2723:  Manual Charges addition While reviewing "<Cancelled_Rejected>" applications on IMD refund modal window
    Given Loan application is already "<Cancelled_Rejected>"
    When user opens "<Cancelled_Rejected>" screen from menu option
    And user clicks on IMD refund policy button
    And user adds manual charges on IMD refund screen with income booking percentage
    And user saves the record
    Then user should be able to view the changes added on the screen
    Examples:
      | Cancelled_Rejected |
      | Cancelled          |
      | Reviewed           |

####====================Tax Policy Inclusive and Exclusive ======================================###
  @Release3
  @ImplementedBy-aman.nagarkoti
  Scenario Outline: ACAUTOCAS-2724: Tax Policy creation in CAS
    Given user is on CAS Login Page
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to tax policy master for creating new tax policy
    And user reads data from the excel file "tax_policy.xlsx" under sheet "new_tax_policy" and row <TaxPolicy_newTaxPolicy_rowNum>
    When user enters the required fields for creating a new policy
    And user "<tax_flag>" the tax inclusive checkbox to derive the tax calculation accordingly
    And user enters tax head as "<tax_head>" with tax code as "<tax_code>" in tax details section
    And user enters charge code, computed on, tax rate, assignment matrix details on tax details screen
    And user saves the tax policy
    Then new tax policy should be created to be attached with charges
    Examples:
      | tax_head               | tax_code       | tax_flag | TaxPolicy_newTaxPolicy_rowNum |
      | Goods and Services Tax | Additional Tax | checks   | 0                             |
      | Goods and Services Tax | IGST           | checks   | 1                             |
      | Goods and Services Tax | CGST           | checks   | 2                             |
      | Goods and Services Tax | SGST           | checks   | 3                             |
      | Goods and Services Tax | UTGST          | checks   | 4                             |
      | Goods and Services Tax | CESS           | checks   | 5                             |
      | Goods and Services Tax | Education CESS | checks   | 6                             |
      | Goods and Services Tax | Tax            | checks   | 7                             |
      | Goods and Services Tax | Additional Tax | uncheck  | 8                             |
      | Goods and Services Tax | IGST           | uncheck  | 9                             |
      | Goods and Services Tax | CGST           | uncheck  | 10                            |
      | Goods and Services Tax | SGST           | uncheck  | 11                            |
      | Goods and Services Tax | UTGST          | uncheck  | 12                            |
      | Goods and Services Tax | CESS           | uncheck  | 13                            |
      | Goods and Services Tax | Education CESS | uncheck  | 14                            |
      | Goods and Services Tax | Tax            | uncheck  | 15                            |
      | Service Tax            | Additional Tax | checks   | 16                            |
      | Service Tax            | IGST           | checks   | 17                            |
      | Service Tax            | CGST           | checks   | 18                            |
      | Service Tax            | SGST           | checks   | 19                            |
      | Service Tax            | UTGST          | checks   | 20                            |
      | Service Tax            | CESS           | checks   | 21                            |
      | Service Tax            | Education CESS | checks   | 22                            |
      | Service Tax            | Tax            | checks   | 23                            |
      | Service Tax            | Additional Tax | uncheck  | 24                            |
      | Service Tax            | IGST           | uncheck  | 25                            |
      | Service Tax            | CGST           | uncheck  | 26                            |
      | Service Tax            | SGST           | uncheck  | 27                            |
      | Service Tax            | UTGST          | uncheck  | 28                            |
      | Service Tax            | CESS           | uncheck  | 29                            |
      | Service Tax            | Education CESS | uncheck  | 30                            |
      | Service Tax            | Tax            | uncheck  | 31                            |
      | VAT                    | Additional Tax | checks   | 32                            |
      | VAT                    | IGST           | checks   | 33                            |
      | VAT                    | CGST           | checks   | 34                            |
      | VAT                    | SGST           | checks   | 35                            |
      | VAT                    | UTGST          | checks   | 36                            |
      | VAT                    | CESS           | checks   | 37                            |
      | VAT                    | Education CESS | checks   | 38                            |
      | VAT                    | Tax            | checks   | 39                            |
      | VAT                    | Additional Tax | uncheck  | 40                            |
      | VAT                    | IGST           | uncheck  | 41                            |
      | VAT                    | CGST           | uncheck  | 42                            |
      | VAT                    | SGST           | uncheck  | 43                            |
      | VAT                    | UTGST          | uncheck  | 44                            |
      | VAT                    | CESS           | uncheck  | 45                            |
      | VAT                    | Education CESS | uncheck  | 46                            |
      | VAT                    | Tax            | uncheck  | 47                            |

  Scenario Outline: ACAUTOCAS-2725:  Provision to attach Tax Policy with Charges
    Given Tax Policy already maintained in masters with details
    When user maps the charge definition with tax applicable value as "<tax_applicable>"
    Then tax policy drop down field is "<tax_policy>" on charge definition screen
    And user will see the list of all tax policies maintained in masters for selection
    And user saves the record

    Examples:

      | tax_applicable | tax_policy |
      | Internal       | enabled    |
      | External       | not vsible |
      | Not Applicable | not vsible |


  Scenario Outline: ACAUTOCAS-2726:  Verification of Tax Calculation on Charges at "<Var_Stage>" stage
    Given Tax Policy attached with charges
    When user navigates to charges fees section of loan application
    And user clicks on details hyperlink under effective charge amount on charges grid at "<Var_Stage>" Stage
    And user sees tax amount field with some calculated tax value
    And user clicks on tax amount hyperlink
    And user verifies tax calculation applied on charges at application charges details screen at "<Var_Stage>" stage
    Then tax calculation should be proper as per tax inclusive flag maintained in tax policy
    And user verifies the values in fields tax head, tax code, rate, computed on, tax amount
      #                         Rate    computed on   tax amt
      #  Inclusive Tax  policy	18%	    84.75	      15.255 	100.01
      #  Exclusive Tax  policy	18%	    100 	      18     	118

    Examples:

      | Var_Stage                 |
      | DDE                       |
      | Credit Approval           |
      | Post Approval             |
      | Recommendation            |
      | Reconsideration           |
      | Disbursal                 |
      | App Update Recommendation |
      | App Update Approval       |
      | Tranche Initiation        |
      | Tranche Approval          |

  Scenario Outline: ACAUTOCAS-2727:  Tax value flow from CAS to LMS in booking charges section
      #same tax value should flow to LMS in booking charges section
    Given Tax Policy attached with charges
    And user verifies tax calculation applied on charges at application charges details screen at "<Var_Stage>" stage
    When user disburse the loan application
    Then same tax calculated value should be flown to LMS
    And user verifies the tax value in LMS module in booking charges section


    Examples:

      | Var_Stage                 |
      | DDE                       |
      | Credit Approval           |
      | Post Approval             |
      | Recommendation            |
      | Reconsideration           |
      | Disbursal                 |
      | App Update Recommendation |
      | App Update Approval       |
      | Tranche Initiation        |
      | Tranche Approval          |



