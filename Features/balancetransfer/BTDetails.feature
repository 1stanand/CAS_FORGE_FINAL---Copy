@Epic-Balance_Transfer
@AuthoredBy-Anshu.bhaduri
@ImplementedBy-
#@Release2
#@BT
@Reconciled

Feature: BTdetails

  Background:
    Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"

  @NotImplemented
    #FeatureID-ACAUTOCAS-14,ACAUTOCAS-338,CAS-111451
  Scenario Outline: ACAUTOCAS-4107: Balance Transfer functionality not allowed for "<LOB>"
    And Loan application is at Lead Details Loan Details Sourcing Details screen
    When user enters BT details for "<LOB>"
    Then Balance Transfer functionality not allowed for "<LOB>"
     Examples:
      | LOB        |
      | Gold Loans |
      | SHG        |
      | JLG        |
      | KCC        |
      | FAS        |
      | CC         |
      | Lease      |
      | OD Loans   |

  #3. Gold LOAN, FAS, Lease, OD LANs should not be allowed for BT- Handled operationally - no changes to be done
  #4. SHG/ JLG, KCC, CC should not be allowed for BT :Handled operationally - no changes to be done


  @ImplementedBy-ashutosh.kumar2
  #FeatureID-ACAUTOCAS-14,ACAUTOCAS-338,CAS-111451
  Scenario Outline: ACAUTOCAS-5447: Capturing of Application Type for Balance Transfer functionality
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    When user creates new application for "<LoanType>"
    And user clicks on loan details tab
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And users select the application type
    Then user should see "<application_type>" values on sourcing screen
    Examples:
      | application_type                | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | LoanType  | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Balance Transfer without Top-up | personal_information.xlsx | home              | 0                        | Home Loan | sourcing_details.xlsx | home                 | 175                         |
      | Balance Transfer with Top-up    | personal_information.xlsx | home              | 0                        | Home Loan | sourcing_details.xlsx | home                 | 176                         |
      | Top-up without closure          | personal_information.xlsx | home              | 0                        | Home Loan | sourcing_details.xlsx | home                 | 177                         |
      | New application                 | personal_information.xlsx | home              | 0                        | Home Loan | sourcing_details.xlsx | home                 | 160                         |
      | Multiple Assets                 | personal_information.xlsx | home              | 0                        | Home Loan | sourcing_details.xlsx | home                 | 175                         |


  @ImplementedBy-ashutosh.kumar2
    #FeatureID-ACAUTOCAS-14,ACAUTOCAS-338,CAS-111451
  Scenario Outline: ACAUTOCAS-5448: Capturing of Additional fields as per application type selected as "<application_type>" for Balance Transfer
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    When user creates new application for "<LoanType>"
    And user clicks on loan details tab
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And users select the application type
    And user reads data from the excel file "<BalanceTransferWB>" under sheet "<BalanceTransfer_home>" and row <BalanceTransfer_home_rowNum>
    Then user should see values according to fields
    Examples:
      | application_type                | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | BalanceTransferWB     | BalanceTransfer_home | BalanceTransfer_home_rowNum | LoanType  | SourcingDetailsWB     | SourcingDetails_home | BalanceTransferWB     | BalanceTransfer_home | BalanceTransfer_home_rowNum | LoanType  | SourcingDetails_home_rowNum |
      | Balance Transfer without Top-up | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 0                           | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 39                          | Home Loan | 175                         |
      | Balance Transfer without Top-up | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 1                           | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 40                          | Home Loan | 175                         |
      | Balance Transfer without Top-up | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 2                           | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 41                          | Home Loan | 175                         |
      | Balance Transfer without Top-up | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 3                           | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 42                          | Home Loan | 175                         |
      | Balance Transfer without Top-up | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 4                           | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 43                          | Home Loan | 175                         |
      | Balance Transfer without Top-up | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 5                           | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 44                          | Home Loan | 175                         |
      | Balance Transfer without Top-up | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 6                           | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 45                          | Home Loan | 175                         |
      | Balance Transfer without Top-up | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 7                           | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 46                          | Home Loan | 175                         |
      | Balance Transfer without Top-up | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 8                           | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 47                          | Home Loan | 175                         |
      | Balance Transfer without Top-up | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 9                           | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 48                          | Home Loan | 175                         |
      | Balance Transfer without Top-up | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 10                          | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 49                          | Home Loan | 175                         |
      | Balance Transfer without Top-up | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 11                          | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 50                          | Home Loan | 175                         |
      | Balance Transfer without Top-up | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 12                          | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 51                          | Home Loan | 175                         |
      | Balance Transfer without Top-up | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 13                          | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 52                          | Home Loan | 175                         |
      | Balance Transfer without Top-up | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 14                          | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 53                          | Home Loan | 175                         |
      | Balance Transfer without Top-up | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 15                          | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 54                          | Home Loan | 175                         |
      | Balance Transfer without Top-up | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 16                          | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 55                          | Home Loan | 175                         |
      | Balance Transfer without Top-up | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 17                          | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 56                          | Home Loan | 175                         |
      | Balance Transfer with Top-up    | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 18                          | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 57                          | Home Loan | 176                         |
      | Balance Transfer with Top-up    | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 19                          | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 58                          | Home Loan | 176                         |
      | Balance Transfer with Top-up    | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 20                          | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 59                          | Home Loan | 176                         |
      | Balance Transfer with Top-up    | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 21                          | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 60                          | Home Loan | 176                         |
      | Balance Transfer with Top-up    | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 22                          | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 61                          | Home Loan | 176                         |
      | Balance Transfer with Top-up    | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 23                          | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 62                          | Home Loan | 176                         |
      | Balance Transfer with Top-up    | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 24                          | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 63                          | Home Loan | 176                         |
      | Balance Transfer with Top-up    | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 25                          | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 64                          | Home Loan | 176                         |
      | Balance Transfer with Top-up    | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 26                          | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 65                          | Home Loan | 176                         |
      | Balance Transfer with Top-up    | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 27                          | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 66                          | Home Loan | 176                         |
      | Balance Transfer with Top-up    | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 28                          | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 67                          | Home Loan | 176                         |
      | Balance Transfer with Top-up    | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 29                          | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 68                          | Home Loan | 176                         |
      | Balance Transfer with Top-up    | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 30                          | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 69                          | Home Loan | 176                         |
      | Balance Transfer with Top-up    | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 31                          | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 70                          | Home Loan | 176                         |
      | Balance Transfer with Top-up    | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 32                          | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 71                          | Home Loan | 176                         |
      | Balance Transfer with Top-up    | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 33                          | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 72                          | Home Loan | 176                         |
      | Balance Transfer with Top-up    | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 34                          | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 73                          | Home Loan | 176                         |
      | Balance Transfer with Top-up    | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 35                          | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 74                          | Home Loan | 176                         |
      | Balance Transfer with Top-up    | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 36                          | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 75                          | Home Loan | 176                         |
      | Top-up without closure          | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 37                          | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 76                          | Home Loan | 177                         |
      | New application                 | personal_information.xlsx | home              | 0                        | balance_transfer.xlsx | home                 | 38                          | Home Loan | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 77                          | Home Loan | 177                         |


  @ImplementedBy-ashutosh.kumar2
#FeatureID-ACAUTOCAS-14,ACAUTOCAS-338,ACAUTOCAS-340,CAS-111451
  Scenario Outline: ACAUTOCAS-5449: Capturing of Balance Transfer details on Balance Transfer Details Screen
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    When user creates new application for "<LoanType>"
    And user clicks on loan details tab
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details along with Balance Transfer Details
    And user navigate to balance transfer Screen
    And user reads data from the excel file "<BalanceTransferWB>" under sheet "<BalanceTransfer_home>" and row <BalanceTransfer_home_rowNum>
    Then user verifies the values according to the values

    Examples:
      | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | SourcingDetailsWB     | SourcingDetails_home | BalanceTransferWB     | BalanceTransfer_home | BalanceTransfer_home_rowNum | LoanType  | SourcingDetails_home_rowNum |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 39                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 40                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 41                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 42                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 43                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 44                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 45                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 46                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 47                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 48                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 49                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 50                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 51                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 52                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 53                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 54                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 55                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 56                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 57                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 58                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 59                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 60                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 61                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 62                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 63                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 64                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 65                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 66                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 67                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 68                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 69                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 70                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 71                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 72                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 73                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 74                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 75                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 76                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 77                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 78                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 79                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 80                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 81                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 82                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 83                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 84                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 85                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 86                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 87                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 88                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 89                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 90                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 91                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 92                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 93                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 94                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 95                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 96                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 97                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 98                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 99                          | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 100                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 101                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 102                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 103                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 104                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 105                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 106                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 107                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 108                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 109                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 110                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 111                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 112                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 113                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 114                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 115                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 116                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 117                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 118                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 119                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 120                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 121                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 122                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 123                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 124                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 125                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 126                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 127                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 128                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 129                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 130                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 131                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 132                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 133                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 134                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 135                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 136                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 137                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 138                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 139                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 140                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 141                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 142                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 143                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 144                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 145                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 146                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 147                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 148                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 149                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 150                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 151                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 152                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 153                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 154                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 155                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 156                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 157                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 158                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 159                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 160                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 161                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 162                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 163                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 164                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 165                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 166                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 167                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 168                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 169                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 170                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 171                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 172                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 173                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 174                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 235                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 236                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 237                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 238                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 239                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 240                         | Home Loan | 175                         |
      | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | balance_transfer.xlsx | home                 | 241                         | Home Loan | 175                         |


  @ImplementedBy-akash.bansal
    #FeatureID-ACAUTOCAS-14,ACAUTOCAS-338,ACAUTOCAS-340,CAS-111451
  Scenario Outline: ACAUTOCAS-5450: Additional fields capturing on Balance Transfer screen for <application_type> if <internal_external> field value is <BT_Type_values>
    And user creates new application for "Home Loan"
    And user clicks on loan details tab
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    When user fills and saves mandatory sourcing details with application type
    And user navigate to balance transfer Screen
    And user reads data from the excel file "<BalanceTransferWB>" under sheet "<BalanceTransfer_home>" and row <BalanceTransfer_home_rowNum>
    And user inputs balance transfer type
    Then user verifies additional fields "<add_field>" for "<application_type>"

    Examples:
      | application_type             | internal_external | BT_Type_values | add_fields          | add_fields_value           |
      | Balance Transfer with Top-up | internal external | internal       | Source System       | Core Banking               |
      | Balance Transfer with Top-up | internal external | internal       | Source System       | NEO LMS                    |
      | Balance Transfer with Top-up | internal external | internal       | Waiver Type         | Total Waiver               |
      | Balance Transfer with Top-up | internal external | internal       | Waiver Type         | Break Up Waiver            |
      | Balance Transfer with Top-up | internal external | internal       | Total Waiver Amount |                            |
      | Top-up without closure       | internal external | internal       | Top Up Option       | Account Number Card number |
      | Top-up without closure       | internal external | internal       | Top Up Option       | Application ID             |
      | Top-up without closure       | internal external | internal       | Source System       | Core Banking               |
      | Top-up without closure       | internal external | internal       | Source System       | NEO LMS                    |
      | Top-up without closure       | internal external | internal       | Waiver Type         | Break Up Waiver            |
      | Top-up without closure       | internal external | internal       | Waiver Type         | Total Waiver               |
      | Top-up without closure       | internal external | internal       | Total Waiver Amount |                            |


  @ImplementedBy-akash.bansal
#FeatureID-ACAUTOCAS-14,ACAUTOCAS-338,ACAUTOCAS-340,CAS-111451
  Scenario Outline: ACAUTOCAS-5451: Mandatory and enabled <field> Fields Capturing on Lead Details Balance Transfer Details Screen application type <application_type> with BT Type as <internal_external>
    And user creates new application for "Home Loan"
    And user clicks on loan details tab
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    When user fills and saves mandatory sourcing details with application type
    And user navigate to balance transfer Screen
    And user reads data from the excel file "<BalanceTransferWB>" under sheet "<BalanceTransfer_home>" and row <BalanceTransfer_home_rowNum>
    And user inputs balance transfer type
    Then user verifies "<field>" fields as mandatory and enabled

    Examples:
      | application_type                | field                      | internal_external | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | BalanceTransferWB     | BalanceTransfer_home | BalanceTransfer_home_rowNum |
      | Balance Transfer without Top-up | internal external          | external          | sourcing_details.xlsx | home                 | 178                         | balance_transfer.xlsx | home                 | 175                         |
      | Balance Transfer without Top-up | Institution name           | external          | sourcing_details.xlsx | home                 | 178                         | balance_transfer.xlsx | home                 | 176                         |
      | Balance Transfer without Top-up | Account Number/Card Number | external          | sourcing_details.xlsx | home                 | 178                         | balance_transfer.xlsx | home                 | 177                         |
      | Balance Transfer without Top-up | Loan Type                  | external          | sourcing_details.xlsx | home                 | 178                         | balance_transfer.xlsx | home                 | 178                         |
      | Balance Transfer without Top-up | Original Sanction Amount   | external          | sourcing_details.xlsx | home                 | 178                         | balance_transfer.xlsx | home                 | 179                         |
      | Balance Transfer without Top-up | Principal Outstanding      | external          | sourcing_details.xlsx | home                 | 178                         | balance_transfer.xlsx | home                 | 180                         |
      | Balance Transfer without Top-up | Linked Applicant           | external          | sourcing_details.xlsx | home                 | 178                         | balance_transfer.xlsx | home                 | 181                         |
      | Balance Transfer without Top-up | Closure Amount             | external          | sourcing_details.xlsx | home                 | 178                         | balance_transfer.xlsx | home                 | 182                         |
      | Balance Transfer without Top-up | Closure Date               | external          | sourcing_details.xlsx | home                 | 178                         | balance_transfer.xlsx | home                 | 183                         |
      | Balance Transfer with Top-up    | internal external          | external          | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 184                         |
      | Balance Transfer with Top-up    | Institution name           | external          | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 185                         |
      | Balance Transfer with Top-up    | Account Number/Card Number | external          | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 186                         |
      | Balance Transfer with Top-up    | Loan Type                  | external          | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 187                         |
      | Balance Transfer with Top-up    | Original Sanction Amount   | external          | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 188                         |
      | Balance Transfer with Top-up    | Principal Outstanding      | external          | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 189                         |
      | Balance Transfer with Top-up    | Linked Applicant           | external          | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 190                         |
      | Balance Transfer with Top-up    | Closure Amount             | external          | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 191                         |
      | Balance Transfer with Top-up    | Closure Date               | external          | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 192                         |
      | Balance Transfer with Top-up    | Waiver Type                | external          | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 193                         |
      | Balance Transfer with Top-up    | Total Waiver Amount        | external          | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 194                         |
      | Balance Transfer without Top-up | internal external          | internal          | sourcing_details.xlsx | home                 | 178                         | balance_transfer.xlsx | home                 | 204                         |
      | Balance Transfer without Top-up | Account Number/Card Number | internal          | sourcing_details.xlsx | home                 | 178                         | balance_transfer.xlsx | home                 | 205                         |
      | Balance Transfer without Top-up | Loan Type                  | internal          | sourcing_details.xlsx | home                 | 178                         | balance_transfer.xlsx | home                 | 206                         |
      | Balance Transfer without Top-up | Linked Applicant           | internal          | sourcing_details.xlsx | home                 | 178                         | balance_transfer.xlsx | home                 | 207                         |
      | Balance Transfer without Top-up | Closure Date               | internal          | sourcing_details.xlsx | home                 | 178                         | balance_transfer.xlsx | home                 | 208                         |
      | Balance Transfer with Top-up    | internal external          | internal          | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 209                         |
      | Balance Transfer with Top-up    | Account Number/Card Number | internal          | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 210                         |
      | Balance Transfer with Top-up    | Loan Type                  | internal          | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 211                         |
      | Balance Transfer with Top-up    | Linked Applicant           | internal          | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 212                         |
      | Balance Transfer with Top-up    | Closure Date               | internal          | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 213                         |
      | Balance Transfer with Top-up    | Waiver Type                | internal          | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 214                         |
      | Balance Transfer with Top-up    | Total Waiver Amount        | internal          | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 215                         |
      | Top-up without closure          | internal external          | internal          | sourcing_details.xlsx | home                 | 180                         | balance_transfer.xlsx | home                 | 216                         |
      | Top-up without closure          | Account Number/Card Number | internal          | sourcing_details.xlsx | home                 | 180                         | balance_transfer.xlsx | home                 | 217                         |
      | Top-up without closure          | Loan Type                  | internal          | sourcing_details.xlsx | home                 | 180                         | balance_transfer.xlsx | home                 | 218                         |
      | Top-up without closure          | Linked Applicant           | internal          | sourcing_details.xlsx | home                 | 180                         | balance_transfer.xlsx | home                 | 219                         |
      | Top-up without closure          | Waiver Type                | internal          | sourcing_details.xlsx | home                 | 180                         | balance_transfer.xlsx | home                 | 220                         |
      | Top-up without closure          | Total Waiver Amount        | internal          | sourcing_details.xlsx | home                 | 180                         | balance_transfer.xlsx | home                 | 221                         |

  @ImplementedBy-akash.bansal
    #FeatureID-ACAUTOCAS-14,ACAUTOCAS-338,ACAUTOCAS-340,CAS-111451
  Scenario Outline:ACAUTOCAS-5452: Auto population with enabling and disabling of <field> field on Balance Transfer Details Screen for application type, BT Type  and source system as Neo LMS
    And user creates new application for "Home Loan"
    And user clicks on loan details tab
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    When user fills and saves mandatory sourcing details with application type
    And user navigate to balance transfer Screen
    And user reads data from the excel file "<BalanceTransferWB>" under sheet "<BalanceTransfer_home>" and row <BalanceTransfer_home_rowNum>
    And user inputs balance transfer type
    And user selects source system in BT details
    Then user verifies "<field>" field as "<enable_autoPopulate>" for application type "<application_type>"

    Examples:
      | application_type                | field                    | BT_Type  | enable_autoPopulate        | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | BalanceTransferWB     | BalanceTransfer_home | BalanceTransfer_home_rowNum |
      | Balance Transfer without Top-up | Institution name         | internal | autopopulated and disabled | sourcing_details.xlsx | home                 | 178                         | balance_transfer.xlsx | home                 | 222                         |
      | Balance Transfer without Top-up | Original Sanction Amount | internal | autopopulated and disabled | sourcing_details.xlsx | home                 | 178                         | balance_transfer.xlsx | home                 | 222                         |
      | Balance Transfer without Top-up | Principal Outstanding    | internal | autopopulated and disabled | sourcing_details.xlsx | home                 | 178                         | balance_transfer.xlsx | home                 | 222                         |
      | Balance Transfer without Top-up | Closure Amount           | internal | autopopulated and disabled | sourcing_details.xlsx | home                 | 178                         | balance_transfer.xlsx | home                 | 222                         |
      | Balance Transfer without Top-up | Product Type             | internal | disabled                   | sourcing_details.xlsx | home                 | 178                         | balance_transfer.xlsx | home                 | 222                         |
      | Balance Transfer without Top-up | Product                  | internal | disabled                   | sourcing_details.xlsx | home                 | 178                         | balance_transfer.xlsx | home                 | 222                         |
      | Balance Transfer without Top-up | Scheme                   | internal | disabled                   | sourcing_details.xlsx | home                 | 178                         | balance_transfer.xlsx | home                 | 222                         |
      | Balance Transfer without Top-up | Next Emi                 | internal | disabled                   | sourcing_details.xlsx | home                 | 178                         | balance_transfer.xlsx | home                 | 222                         |
      | Balance Transfer without Top-up | No Of Defaults           | internal | enabled                    | sourcing_details.xlsx | home                 | 178                         | balance_transfer.xlsx | home                 | 222                         |
      | Balance Transfer without Top-up | Days Past Due (DPD)      | internal | disabled                   | sourcing_details.xlsx | home                 | 178                         | balance_transfer.xlsx | home                 | 222                         |
      | Balance Transfer without Top-up | Emi Start Date           | internal | enabled                    | sourcing_details.xlsx | home                 | 178                         | balance_transfer.xlsx | home                 | 222                         |
      | Balance Transfer without Top-up | Maturity Date            | internal | disabled                   | sourcing_details.xlsx | home                 | 178                         | balance_transfer.xlsx | home                 | 222                         |
      | Balance Transfer without Top-up | Frequency                | internal | enabled                    | sourcing_details.xlsx | home                 | 178                         | balance_transfer.xlsx | home                 | 222                         |
      | Balance Transfer with Top-up    | Institution name         | internal | autopopulated and disabled | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 222                         |
      | Balance Transfer with Top-up    | Original Sanction Amount | internal | autopopulated and disabled | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 222                         |
      | Balance Transfer with Top-up    | Principal Outstanding    | internal | autopopulated and disabled | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 222                         |
      | Balance Transfer with Top-up    | Closure Amount           | internal | autopopulated and disabled | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 222                         |
      | Balance Transfer with Top-up    | Product Type             | internal | disabled                   | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 222                         |
      | Balance Transfer with Top-up    | Product                  | internal | disabled                   | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 222                         |
      | Balance Transfer with Top-up    | Scheme                   | internal | disabled                   | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 222                         |
      | Balance Transfer with Top-up    | Next Emi                 | internal | disabled                   | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 222                         |
      | Balance Transfer with Top-up    | No Of Defaults           | internal | enabled                    | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 222                         |
      | Balance Transfer with Top-up    | Days Past Due (DPD)      | internal | disabled                   | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 222                         |
      | Balance Transfer with Top-up    | Emi Start Date           | internal | enabled                    | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 222                         |
      | Balance Transfer with Top-up    | Maturity Date            | internal | disabled                   | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 222                         |
      | Balance Transfer with Top-up    | Frequency                | internal | enabled                    | sourcing_details.xlsx | home                 | 179                         | balance_transfer.xlsx | home                 | 222                         |
      | Top-up without Closure          | Institution name         | internal | autopopulated and disabled | sourcing_details.xlsx | home                 | 180                         | balance_transfer.xlsx | home                 | 222                         |
      | Top-up without Closure          | Original Sanction Amount | internal | autopopulated and disabled | sourcing_details.xlsx | home                 | 180                         | balance_transfer.xlsx | home                 | 222                         |
      | Top-up without Closure          | Principal Outstanding    | internal | autopopulated and disabled | sourcing_details.xlsx | home                 | 180                         | balance_transfer.xlsx | home                 | 222                         |
      | Top-up without Closure          | Product Type             | internal | disabled                   | sourcing_details.xlsx | home                 | 180                         | balance_transfer.xlsx | home                 | 222                         |
      | Top-up without Closure          | Product                  | internal | disabled                   | sourcing_details.xlsx | home                 | 180                         | balance_transfer.xlsx | home                 | 222                         |
      | Top-up without Closure          | Scheme                   | internal | disabled                   | sourcing_details.xlsx | home                 | 180                         | balance_transfer.xlsx | home                 | 222                         |
      | Top-up without Closure          | Next Emi                 | internal | disabled                   | sourcing_details.xlsx | home                 | 180                         | balance_transfer.xlsx | home                 | 222                         |
      | Top-up without Closure          | No Of Defaults           | internal | enabled                    | sourcing_details.xlsx | home                 | 180                         | balance_transfer.xlsx | home                 | 222                         |
      | Top-up without Closure          | Days Past Due (DPD)      | internal | disabled                   | sourcing_details.xlsx | home                 | 180                         | balance_transfer.xlsx | home                 | 222                         |
      | Top-up without Closure          | Emi Start Date           | internal | enabled                    | sourcing_details.xlsx | home                 | 180                         | balance_transfer.xlsx | home                 | 222                         |
      | Top-up without Closure          | Maturity Date            | internal | disabled                   | sourcing_details.xlsx | home                 | 180                         | balance_transfer.xlsx | home                 | 222                         |
      | Top-up without Closure          | Frequency                | internal | enabled                    | sourcing_details.xlsx | home                 | 180                         | balance_transfer.xlsx | home                 | 222                         |

@Notimplemented
#FeatureID-ACAUTOCAS-14,ACAUTOCAS-338,ACAUTOCAS-340,CAS-111451
  Scenario Outline: ACAUTOCAS-5453: Capturing BT details on Balance Transfer Details Screen for application type "<application_type>" for External BT Type
    And Sourcing details saved with application type "<application_type>" field already captured
    And user is already on balance transfer details tab
    When user selects BT Type value as "<BT_Type_values>" from "<fields>" drop down field
    And user enters all required details
    Then user should be able to save BT details with values reflecting in BT details summary section
    #And user checks that additional columns "<add_columns>" appears in bt details summary section

    Examples:
      | application_type                | fields            | BT_Type_values |
      | Balance Transfer without Top-up | internal external | external       |
      | Balance Transfer with Top-up    | internal external | external       |
      | Top-up without closure          | internal external | external       |


  @ImplementedBy-ashutosh.kumar2
  Scenario Outline: ACAUTOCAS-6087:  Capturing BT details on Balance Transfer Details Screen for application type for Internal BT Type
    When user creates new application for "<LoanType>"
    And user clicks on loan details tab
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details along with Balance Transfer Details
    And user navigate to balance transfer Screen
    And user reads data from the excel file "<BalanceTransferWB>" under sheet "<BalanceTransfer_home>" and row <BalanceTransfer_home_rowNum>
    And user fills balance transfer details
    Then user verifies that fetch details button is visible with done button

    Examples:
      | BalanceTransferWB     | BalanceTransfer_home | BalanceTransfer_home_rowNum | SourcingDetailsWB     | SourcingDetails_home_rowNum | LoanType  | SourcingDetailsWB     | SourcingDetails_home |
      | balance_transfer.xlsx | home                 | 0                           | sourcing_details.xlsx | 175                         | Home Loan | sourcing_details.xlsx | home                 |
      | balance_transfer.xlsx | home                 | 0                           | sourcing_details.xlsx | 176                         | Home Loan | sourcing_details.xlsx | home                 |
      | balance_transfer.xlsx | home                 | 0                           | sourcing_details.xlsx | 177                         | Home Loan | sourcing_details.xlsx | home                 |


  @ImplementedBy-ashutosh.kumar2
  Scenario Outline: ACAUTOCAS-3773: Availability of Edit or Delete icon on Balance Transfer Summary section for application type with BT Type value
    When user creates new application for "<LoanType>"
    And user clicks on loan details tab
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details along with Balance Transfer Details
    And user navigate to balance transfer Screen
    And user reads data from the excel file "<BalanceTransferWB>" under sheet "<BalanceTransfer_home>" and row <BalanceTransfer_home_rowNum>
    And user fills balance transfer details
    Then "<field>" icon should be visible

    Examples:
      | BalanceTransferWB     | BalanceTransfer_home | BalanceTransfer_home_rowNum | SourcingDetailsWB     | SourcingDetails_home | application_type                | field  | SourcingDetails_home_rowNum | LoanType  |
      | balance_transfer.xlsx | home                 | 0                           | sourcing_details.xlsx | home                 | Balance Transfer without Top-up | edit   | 175                         | Home Loan |
      | balance_transfer.xlsx | home                 | 1                           | sourcing_details.xlsx | home                 | Balance Transfer without Top-up | edit   | 175                         | Home Loan |
      | balance_transfer.xlsx | home                 | 0                           | sourcing_details.xlsx | home                 | Balance Transfer without Top-up | delete | 175                         | Home Loan |
      | balance_transfer.xlsx | home                 | 1                           | sourcing_details.xlsx | home                 | Balance Transfer without Top-up | delete | 175                         | Home Loan |
      | balance_transfer.xlsx | home                 | 0                           | sourcing_details.xlsx | home                 | Balance Transfer without Top-up | edit   | 176                         | Home Loan |
      | balance_transfer.xlsx | home                 | 1                           | sourcing_details.xlsx | home                 | Balance Transfer with Top-up    | edit   | 176                         | Home Loan |
      | balance_transfer.xlsx | home                 | 0                           | sourcing_details.xlsx | home                 | Balance Transfer with Top-up    | delete | 176                         | Home Loan |
      | balance_transfer.xlsx | home                 | 1                           | sourcing_details.xlsx | home                 | Balance Transfer with Top-up    | delete | 176                         | Home Loan |
      | balance_transfer.xlsx | home                 | 0                           | sourcing_details.xlsx | home                 | Top up without closure          | edit   | 177                         | Home Loan |
      | balance_transfer.xlsx | home                 | 1                           | sourcing_details.xlsx | home                 | Top up without closure          | edit   | 177                         | Home Loan |
      | balance_transfer.xlsx | home                 | 0                           | sourcing_details.xlsx | home                 | Top up without closure          | delete | 177                         | Home Loan |
      | balance_transfer.xlsx | home                 | 1                           | sourcing_details.xlsx | home                 | Top up without closure          | delete | 177                         | Home Loan |


@NotImplemented
#FeatureID-ACAUTOCAS-14,ACAUTOCAS-338,CAS-111451
  Scenario Outline: ACAUTOCAS-5511:  Edit Balance Transfer Details for application type "<application_type>" with BT Type value as "<BT_Type_values>"
    And Sourcing details saved with application type "<application_type>" field already captured
    And user already sees edit icon on bt summary section for BT Type value as "<BT_Type_values>"
    When user clicks on "<Edit_delete>" icon on bt summary section
    And user updates mandatory enabled fields values on bt details screen against bt type selected as "<BT_Type_values>"
    And user clicks on done button
    Then user should be able to verify updated values in bt summary section against bt type selected as "<BT_Type_values>"

    Examples:
      | application_type                | Edit_delete | BT_Type_values |
      | Balance Transfer without Top-up | edit        | internal       |
      | Balance Transfer with Top-up    | edit        | internal       |
      | Top up without closure          | edit        | internal       |
      | Balance Transfer without Top-up | edit        | external       |
      | Balance Transfer with Top-up    | edit        | external       |
      | Top up without closure          | edit        | external       |


  @ImplementedBy-ashutosh.kumar2
  Scenario Outline: ACAUTOCAS-6089:  Delete Balance Transfer Details for application type with BT Type value
    And user creates new application for "<LoanType>"
    And user clicks on loan details tab
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details along with Balance Transfer Details
    And user navigate to balance transfer Screen
    And user reads data from the excel file "<BalanceTransferWB>" under sheet "<BalanceTransfer_home>" and row <BalanceTransfer_home_rowNum>
    And user fills balance transfer details
    When user click on delete Button
    Then user get the message record deleted Successfully

    Examples:
      | BalanceTransferWB     | BalanceTransfer_home | BalanceTransfer_home_rowNum | SourcingDetailsWB     | SourcingDetails_home_rowNum | LoanType  | SourcingDetailsWB     | SourcingDetails_home |
      | balance_transfer.xlsx | home                 | 0                           | sourcing_details.xlsx | 175                         | Home Loan | sourcing_details.xlsx | home                 |
      | balance_transfer.xlsx | home                 | 0                           | sourcing_details.xlsx | 175                         | Home Loan | sourcing_details.xlsx | home                 |
      | balance_transfer.xlsx | home                 | 0                           | sourcing_details.xlsx | 177                         | Home Loan | sourcing_details.xlsx | home                 |
      | balance_transfer.xlsx | home                 | 0                           | sourcing_details.xlsx | 176                         | Home Loan | sourcing_details.xlsx | home                 |
      | balance_transfer.xlsx | home                 | 0                           | sourcing_details.xlsx | 176                         | Home Loan | sourcing_details.xlsx | home                 |
      | balance_transfer.xlsx | home                 | 0                           | sourcing_details.xlsx | 177                         | Home Loan | sourcing_details.xlsx | home                 |

@NotImplemented
#FeatureID-ACAUTOCAS-14,ACAUTOCAS-343,ACAUTOCAS-344,CAS-111451
  Scenario Outline: ACAUTOCAS-5455: Viewing Copy checkboxes on Balance Transfer Summary section for application type "<application_type>" with BT Type value as "<BT_Type_values>"
    And Sourcing details saved with application type "<application_type>" field already captured
    And user has already entered required details for BT Type value as "<BT_Type_values>"
    When user checks on bt summary section on Balance Transfer Details Screen
    Then user will see new checkboxes "<copy_checkbox>" on bt details summary section against bt type selected as "<BT_Type_values>"

    Examples:
      | application_type                | BT_Type_values | copy_checkbox           |
      | Balance Transfer without Top-up | internal       | copy applicant          |
      | Balance Transfer without Top-up | internal       | copy primary collateral |
      | Balance Transfer with Top-up    | internal       | copy applicant          |
      | Balance Transfer with Top-up    | internal       | copy primary collateral |
      | Top up without closure          | internal       | copy applicant          |
      | Top up without closure          | internal       | copy primary collateral |
      | Balance Transfer without Top-up | external       | copy applicant          |
      | Balance Transfer without Top-up | external       | copy primary collateral |
      | Balance Transfer with Top-up    | external       | copy applicant          |
      | Balance Transfer with Top-up    | external       | copy primary collateral |
      | Top up without closure          | external       | copy applicant          |
      | Top up without closure          | external       | copy primary collateral |

  @ImplementedBy-ashutosh.kumar2
#9. Copy button shall be active once for selection, post which the applicants/ collaterals can only be added manually.
  Scenario Outline: ACAUTOCAS-6090:  Copy Details Button shall be active on Balance Transfer Summary section for application type with BT Type value
    And user creates new application for "<LoanType>"
    And user clicks on loan details tab
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details along with Balance Transfer Details
    And user navigate to balance transfer Screen
    And user reads data from the excel file "<BalanceTransferWB>" under sheet "<BalanceTransfer_home>" and row <BalanceTransfer_home_rowNum>
    When user fills balance transfer details
    Then user will see the copy checkbox according to Balance Transfer Type

    Examples:
      | BalanceTransferWB     | BalanceTransfer_home | BalanceTransfer_home_rowNum | SourcingDetailsWB     | SourcingDetails_home_rowNum | LoanType  | SourcingDetailsWB     | SourcingDetails_home |
      | balance_transfer.xlsx | home                 | 0                           | sourcing_details.xlsx | 175                         | Home Loan | sourcing_details.xlsx | home                 |
      | balance_transfer.xlsx | home                 | 2                           | sourcing_details.xlsx | 175                         | Home Loan | sourcing_details.xlsx | home                 |
      | balance_transfer.xlsx | home                 | 0                           | sourcing_details.xlsx | 176                         | Home Loan | sourcing_details.xlsx | home                 |
      | balance_transfer.xlsx | home                 | 2                           | sourcing_details.xlsx | 176                         | Home Loan | sourcing_details.xlsx | home                 |
      | balance_transfer.xlsx | home                 | 0                           | sourcing_details.xlsx | 177                         | Home Loan | sourcing_details.xlsx | home                 |
      | balance_transfer.xlsx | home                 | 2                           | sourcing_details.xlsx | 177                         | Home Loan | sourcing_details.xlsx | home                 |


  @ImplementedBy-ashutosh.kumar2
  Scenario Outline: ACAUTOCAS-6091:  To check Either of the checkbox must be ticked on click of copy details button on bt details screen for application type <application_type> with BT Type value
    And user creates new application for "<LoanType>"
    And user clicks on loan details tab
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details along with Balance Transfer Details
    And user navigate to balance transfer Screen
    And user reads data from the excel file "<BalanceTransferWB>" under sheet "<BalanceTransfer_home>" and row <BalanceTransfer_home_rowNum>
    And user fills balance transfer details
    When user clicks on the copy checkbox
    Then user will able to see the copy details checkbox

    Examples:
      | BalanceTransferWB     | BalanceTransfer_home | BalanceTransfer_home_rowNum | SourcingDetailsWB     | SourcingDetails_home_rowNum | LoanType  | SourcingDetailsWB     | SourcingDetails_home | application_type                |
      | balance_transfer.xlsx | home                 | 0                           | sourcing_details.xlsx | 175                         | Home Loan | sourcing_details.xlsx | home                 | Balance Transfer without Top-up |
      | balance_transfer.xlsx | home                 | 2                           | sourcing_details.xlsx | 175                         | Home Loan | sourcing_details.xlsx | home                 | Balance Transfer without Top-up |
      | balance_transfer.xlsx | home                 | 0                           | sourcing_details.xlsx | 176                         | Home Loan | sourcing_details.xlsx | home                 | Balance Transfer with Top-up    |
      | balance_transfer.xlsx | home                 | 2                           | sourcing_details.xlsx | 176                         | Home Loan | sourcing_details.xlsx | home                 | Balance Transfer with Top-up    |
      | balance_transfer.xlsx | home                 | 0                           | sourcing_details.xlsx | 177                         | Home Loan | sourcing_details.xlsx | home                 | Top up with closure             |
      | balance_transfer.xlsx | home                 | 2                           | sourcing_details.xlsx | 177                         | Home Loan | sourcing_details.xlsx | home                 | Top up with closure             |

   @NotImplemented
 #10. Copy button shall remain enabled for applicant till the time applicant(s) are not added(as is working currently).
  #  Copy button shall remain enabled for collateral till the time a primary collateral has not been added in product types other than Omni Product Type
  #FeatureID-ACAUTOCAS-14,ACAUTOCAS-343,ACAUTOCAS-344,CAS-111451
  Scenario Outline: ACAUTOCAS-6092:  Copy Details Button shall be enabled for "<copy_checkbox>" till "<copy_checkbox>" is copied on Balance Transfer Summary section for application type "<application_type>" with BT Type value as "<BT_Type_values>"
    And BT details are already saved for BT Type value as "<BT_Type_values>"
    When user checks copy "<copy_checkbox>" checkbox on Balance Transfer Details Screen for application type "<application_type>"
    And user checks that copy details button is enabled
    Then copy details button shall remain enabled on bt details screen till the time "<copy_checkbox>" has not been added

    Examples:
      | application_type                | BT_Type_values | copy_checkbox      |
      | Balance Transfer without Top-up | internal       | applicant          |
      | Balance Transfer without Top-up | internal       | primary collateral |
      | Balance Transfer with Top-up    | internal       | applicant          |
      | Balance Transfer with Top-up    | internal       | primary collateral |
      | Top up without closure          | internal       | applicant          |
      | Top up without closure          | internal       | primary collateral |


  @ImplementedBy-ashutosh.kumar2
  Scenario Outline: ACAUTOCAS-6093:  Validation for applicant and collateral should not be copied from External BT record on Balance Transfer Summary section for application type
    And user creates new application for "<LoanType>"
    And user clicks on loan details tab
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details along with Balance Transfer Details
    And user navigate to balance transfer Screen
    And user reads data from the excel file "<BalanceTransferWB>" under sheet "<BalanceTransfer_home>" and row <BalanceTransfer_home_rowNum>
    And user fills balance transfer details
    When user clicks on the copy checkbox
    And user click on copy Details
    Then user get error message as Cannot Copy External Bank Application

    Examples:
      | application_type                | BT_Type_values | copy_checkbox      | BalanceTransferWB     | BalanceTransfer_home | BalanceTransfer_home_rowNum | SourcingDetailsWB     | SourcingDetails_home_rowNum | LoanType  | SourcingDetailsWB     | SourcingDetails_home |
      | Balance Transfer without Top-up | external       | applicant          | balance_transfer.xlsx | home                 | 1                           | sourcing_details.xlsx | 175                         | Home Loan | sourcing_details.xlsx | home                 |
      | Balance Transfer with Top-up    | external       | applicant          | balance_transfer.xlsx | home                 | 1                           | sourcing_details.xlsx | 176                         | Home Loan | sourcing_details.xlsx | home                 |
      | Top up without closure          | external       | applicant          | balance_transfer.xlsx | home                 | 1                           | sourcing_details.xlsx | 177                         | Home Loan | sourcing_details.xlsx | home                 |
      | Balance Transfer without Top-up | external       | primary collateral | balance_transfer.xlsx | home                 | 3                           | sourcing_details.xlsx | 175                         | Home Loan | sourcing_details.xlsx | home                 |
      | Balance Transfer with Top-up    | external       | primary collateral | balance_transfer.xlsx | home                 | 3                           | sourcing_details.xlsx | 176                         | Home Loan | sourcing_details.xlsx | home                 |
      | Top up without closure          | external       | primary collateral | balance_transfer.xlsx | home                 | 3                           | sourcing_details.xlsx | 177                         | Home Loan | sourcing_details.xlsx | home                 |

@NotImplemented
  #FeatureID-ACAUTOCAS-14,ACAUTOCAS-338,ACAUTOCAS-339,ACAUTOCAS-343,ACAUTOCAS-344,CAS-111451
  Scenario Outline: ACAUTOCAS-5512:  Working of Copy checkboxes for internal BT Type on Balance Transfer Summary section for application type "<application_type>"
    And BT details already saved with application type "<application_type>" for BT Type value as "<BT_Type_values>"
    And "<applicant_copy_checkbox>" check box is "<applicant_ticked_unticked>"
    And "<collateral_copy_checkbox>" check box is "<collateral_ticked_unticked>"
    When user click on copy details button on Balance Transfer Details Screen against bt type selected as "<BT_Type_values>"
    Then user verifies that "<APP_Coapp_Grntr>" details "<result>"

     #All collaterals should get copied as secondary collaterals
  #  Copy Applicant	Copy Primary Collateral	Action
#     Y	  Y	Applicants should get copied, Primary Collateral should get copied basis mapping and selection, others should get copied as secondary collaterals
#     Y	  N	Applicant should get copied, All collaterals should get copied as secondary collaterals
#     N	  Y	Applicant should not get copied, Primary Collateral should get copied basis mapping and selection, others should get copied as secondary collaterals
#     N	  N	Nothing would happen
    Examples:
      | application_type                | BT_Type_values | applicant_copy_checkbox | APP_Coapp_Grntr | applicant_ticked_unticked | collateral_copy_checkbox | collateral_ticked_unticked | result                                                                                                                                    |
      | Balance Transfer without Top-up | internal       | copy applicant          | applicant       | ticked                    | copy primary collateral  | unticked                   | shall be copied with all collaterals copied as secondary collaterals                                                                      |
      | Balance Transfer with Top-up    | internal       | copy applicant          | applicant       | ticked                    | copy primary collateral  | unticked                   | shall be copied with all collaterals copied as secondary collaterals                                                                      |
      | Top up without closure          | internal       | copy applicant          | applicant       | ticked                    | copy primary collateral  | unticked                   | shall be copied with all collaterals copied as secondary collaterals                                                                      |
      | Balance Transfer without Top-up | internal       | copy applicant          | coapplicant     | ticked                    | copy primary collateral  | unticked                   | shall be copied with all collaterals copied as secondary collaterals                                                                      |
      | Balance Transfer with Top-up    | internal       | copy applicant          | coapplicant     | ticked                    | copy primary collateral  | unticked                   | shall be copied with all collaterals copied as secondary collaterals                                                                      |
      | Top up without closure          | internal       | copy applicant          | coapplicant     | ticked                    | copy primary collateral  | unticked                   | shall be copied with all collaterals copied as secondary collaterals                                                                      |
      | Balance Transfer without Top-up | internal       | copy applicant          | guarantor       | ticked                    | copy primary collateral  | unticked                   | shall be copied with all collaterals copied as secondary collaterals                                                                      |
      | Balance Transfer with Top-up    | internal       | copy applicant          | guarantor       | ticked                    | copy primary collateral  | unticked                   | shall be copied with all collaterals copied as secondary collaterals                                                                      |
      | Top up without closure          | internal       | copy applicant          | guarantor       | ticked                    | copy primary collateral  | unticked                   | shall be copied with all collaterals copied as secondary collaterals                                                                      |
      | Balance Transfer without Top-up | internal       | copy applicant          | applicant       | unticked                  | copy primary collateral  | ticked                     | should not get copied, primary collateral should get copied basis mapping with product, others should get copied as secondary collaterals |
      | Balance Transfer with Top-up    | internal       | copy applicant          | applicant       | unticked                  | copy primary collateral  | ticked                     | should not get copied, primary collateral should get copied basis mapping with product, others should get copied as secondary collaterals |
      | Top up without closure          | internal       | copy applicant          | applicant       | unticked                  | copy primary collateral  | ticked                     | should not get copied, primary collateral should get copied basis mapping with product, others should get copied as secondary collaterals |
      | Balance Transfer without Top-up | internal       | copy applicant          | applicant       | ticked                    | copy primary collateral  | ticked                     | should  get copied, primary collateral should get copied basis mapping with product, others should get copied as secondary collaterals    |
      | Balance Transfer with Top-up    | internal       | copy applicant          | applicant       | ticked                    | copy primary collateral  | ticked                     | should  get copied, primary collateral should get copied basis mapping with product, others should get copied as secondary collaterals    |
      | Top up without closure          | internal       | copy applicant          | applicant       | ticked                    | copy primary collateral  | ticked                     | should  get copied, primary collateral should get copied basis mapping with product, others should get copied as secondary collaterals    |
      | Balance Transfer without Top-up | internal       | copy applicant          | coapplicant     | ticked                    | copy primary collateral  | ticked                     | should  get copied, primary collateral should get copied basis mapping with product, others should get copied as secondary collaterals    |
      | Balance Transfer with Top-up    | internal       | copy applicant          | coapplicant     | ticked                    | copy primary collateral  | ticked                     | should  get copied, primary collateral should get copied basis mapping with product, others should get copied as secondary collaterals    |
      | Top up without closure          | internal       | copy applicant          | coapplicant     | ticked                    | copy primary collateral  | ticked                     | should  get copied, primary collateral should get copied basis mapping with product, others should get copied as secondary collaterals    |
      | Balance Transfer without Top-up | internal       | copy applicant          | guarantor       | ticked                    | copy primary collateral  | ticked                     | should  get copied, primary collateral should get copied basis mapping with product, others should get copied as secondary collaterals    |
      | Balance Transfer with Top-up    | internal       | copy applicant          | guarantor       | ticked                    | copy primary collateral  | ticked                     | should  get copied, primary collateral should get copied basis mapping with product, others should get copied as secondary collaterals    |
      | Top up without closure          | internal       | copy applicant          | guarantor       | ticked                    | copy primary collateral  | ticked                     | should  get copied, primary collateral should get copied basis mapping with product, others should get copied as secondary collaterals    |

  @NotImplemented
#  Check once applicant and collateral are copied then checkbox should not come in BT grid.
    #FeatureID-ACAUTOCAS-14,ACAUTOCAS-338,ACAUTOCAS-339,ACAUTOCAS-343,CAS-111451
  Scenario Outline: ACAUTOCAS-6094:  Copy "copy_checkbox>" checkbox should not be available when "copy_checkbox>" details already added for "<BT_Type_values>" on Balance Transfer Summary section for application type "<application_type>"
    And BT details already saved with application type "<application_type>" for BT Type value as "<BT_Type_values>"
    And "copy_checkbox>" details already added in application
    When user checks for copy "<copy_checkbox>" checkbox on Balance Transfer Details Screen against loan application
    Then copy "copy_checkbox>" checkbox should not be available on Balance Transfer Details Screen against bt type selected as "<BT_Type_values>"
    #If a collateral is already added as Primary collateral, then option to copy primary collateral shall not be available

    Examples:
      | application_type                | BT_Type_values | copy_checkbox      |
      | Balance Transfer without Top-up | internal       | applicant          |
      | Balance Transfer with Top-up    | internal       | applicant          |
      | Top up without closure          | internal       | applicant          |
      | Balance Transfer without Top-up | external       | applicant          |
      | Balance Transfer with Top-up    | external       | applicant          |
      | Top up without closure          | external       | applicant          |
      | Balance Transfer without Top-up | internal       | primary collateral |
      | Balance Transfer with Top-up    | internal       | primary collateral |
      | Top up without closure          | internal       | primary collateral |
      | Balance Transfer without Top-up | external       | primary collateral |
      | Balance Transfer with Top-up    | external       | primary collateral |
      | Top up without closure          | external       | primary collateral |

  @NotImplemented
    #FeatureID-ACAUTOCAS-14,ACAUTOCAS-338,ACAUTOCAS-339,ACAUTOCAS-343,ACAUTOCAS-344,CAS-111451
  Scenario Outline: ACAUTOCAS-5513: Validation while Copying "<copy_checkbox>" for BT Type External on Balance Transfer Summary section for application type "<application_type>"
    And Sourcing details saved with application type "<application_type>" field already captured
    And user already saved bt details for BT Type value as "<BT_Type_values>"
    When user select the copy "<copy_checkbox>" checkbox on Balance Transfer Details Screen against bt type selected as "<BT_Type_values>"
    And user click on copy details button
    Then user should get a validation that application cannot copy "<copy_checkbox>" from external bank application

    Examples:
      | application_type                | BT_Type_values | copy_checkbox      |
      | Balance Transfer without Top-up | external       | applicant          |
      | Balance Transfer with Top-up    | external       | applicant          |
      | Top up without closure          | external       | applicant          |
      | Balance Transfer without Top-up | external       | primary collateral |
      | Balance Transfer with Top-up    | external       | primary collateral |
      | Top up without closure          | external       | primary collateral |

  @NotImplemented
    #FeatureID-ACAUTOCAS-14,ACAUTOCAS-338,ACAUTOCAS-339,ACAUTOCAS-343,ACAUTOCAS-344,CAS-111451
  Scenario Outline: ACAUTOCAS-6095:  Validation while Copying "<copy_checkbox>" for internal BT Type on Balance Transfer Summary section for application type "<application_type>"
    And BT details already entered for bt type "<BT_Type_values>" for application type "<application_type>"
    And application is not present in CAS DB
    When user select the copy "<copy_checkbox>" checkbox on Balance Transfer Details Screen against bt type selected as "<BT_Type_values>"
    And user click on copy details button
    Then user should get a validation that application is not present in CAS DB

    Examples:
      | application_type                | BT_Type_values | copy_checkbox      |
      | Balance Transfer without Top-up | internal       | applicant          |
      | Balance Transfer with Top-up    | internal       | applicant          |
      | Top up without closure          | internal       | applicant          |
      | Balance Transfer without Top-up | internal       | primary collateral |
      | Balance Transfer with Top-up    | internal       | primary collateral |
      | Top up without closure          | internal       | primary collateral |

  @NotImplemented
  #FeatureID-ACAUTOCAS-14,ACAUTOCAS-338,ACAUTOCAS-339,ACAUTOCAS-344,CAS-111451
  Scenario Outline: ACAUTOCAS-5514:  Working of Copy Primary Collateral checkbox on Balance Transfer Summary section for application type "<application_type>" having BT Type value as "<BT_Type_values>" with product collateral mapping maintained
    And BT details already entered for bt type "<BT_Type_values>" for application type "<application_type>"
    And product collateral mapping is maintained for new bt application in CAS
    When user select the "<copy_checkbox>" checkbox on Balance Transfer Details Screen against bt type selected as "<BT_Type_values>"
    And user click on copy details button
    Then user should be able to copy collateral details as either "<primary_secondary>" with product collateral mapping maintained

    Examples:
      | application_type                | BT_Type_values | copy_checkbox           | primary_secondary |
      | Balance Transfer without Top-up | internal       | copy primary collateral | primary           |
      | Balance Transfer without Top-up | external       | copy primary collateral | primary           |
      | Balance Transfer with Top-up    | internal       | copy primary collateral | primary           |
      | Balance Transfer with Top-up    | external       | copy primary collateral | primary           |
      | Top up without closure          | internal       | copy primary collateral | primary           |
      | Top up without closure          | external       | copy primary collateral | primary           |
      | Balance Transfer without Top-up | internal       | copy primary collateral | secondary         |
      | Balance Transfer without Top-up | external       | copy primary collateral | secondary         |
      | Balance Transfer with Top-up    | internal       | copy primary collateral | secondary         |
      | Balance Transfer with Top-up    | external       | copy primary collateral | secondary         |
      | Top up without closure          | internal       | copy primary collateral | secondary         |
      | Top up without closure          | external       | copy primary collateral | secondary         |

  @NotImplemented
  #6. All primary collaterals (which are not mapped as Primary Collateral) and secondary collaterals should get mapped as secondary collaterals in the new loan application.
    # If due to product collateral mapping not available, any of the collaterals cannot be mapped,
    # then the system should give a confirmation message to the user on BT Details Save that the collaterals which cannot be mapped shall be deleted
  #FeatureID-ACAUTOCAS-14,ACAUTOCAS-338,ACAUTOCAS-339,ACAUTOCAS-344,CAS-111451
  Scenario Outline: ACAUTOCAS-6096:  For new application all primary and secondary collaterals should get mapped as secondary collateral on Balance Transfer Summary section for application type "<application_type>"
    And for new loan application, user already saved bt details for BT Type value as "<BT_Type_values>" for application type "<application_type>"
    And product collateral mapping for the product is available for any one of the collaterals
    When user select the "<copy_checkbox>" checkbox on Balance Transfer Details Screen against bt type selected as "<BT_Type_values>"
    And user click on copy details button
    Then all primary and secondary collaterals should get mapped as secondary collateral

    Examples:
      | application_type                | BT_Type_values | copy_checkbox           |
      | Balance Transfer without Top-up | internal       | copy primary collateral |
      | Balance Transfer with Top-up    | internal       | copy primary collateral |
      | Top up without closure          | internal       | copy primary collateral |

  @NotImplemented
  #FeatureID-ACAUTOCAS-14,ACAUTOCAS-338,ACAUTOCAS-339,ACAUTOCAS-344,CAS-111451
  Scenario Outline: ACAUTOCAS-6097:  For new application any of the collaterals cannot be mapped due to product collateral mapping not available on Balance Transfer Summary section for application type "<application_type>"
    And for new loan application, user already saved bt details for BT Type value as "<BT_Type_values>" for application type "<application_type>"
    And product collateral mapping for the product is not available for any one of the collaterals
    When user select the "<copy_checkbox>" checkbox on Balance Transfer Details Screen against bt type selected as "<BT_Type_values>"
    And user click on copy details button
    Then system should give a confirmation message on BT Details save that the collaterals which cannot be mapped shall be deleted with no collaterals mapped

    Examples:
      | application_type                | BT_Type_values | copy_checkbox           |
      | Balance Transfer without Top-up | internal       | copy primary collateral |
      | Balance Transfer with Top-up    | internal       | copy primary collateral |
      | Top up without closure          | internal       | copy primary collateral |

  @NotImplemented
  #1. Secondary Collateral should be copied automatically basis product collateral mapping for the product selected in BT Loan Application (both Omni and otherwise)
  #FeatureID-ACAUTOCAS-14,ACAUTOCAS-338,ACAUTOCAS-339,ACAUTOCAS-344,CAS-111451
  Scenario Outline: ACAUTOCAS-6098:  Copying Secondary Collateral for internal BT Type when product collateral mapping is available on Balance Transfer Summary section for application type "<application_type>"
    And user already saved bt details for BT Type value as "<BT_Type_values>" for application type "<application_type>"
    And product collateral mapping for the product is available for any one of the collaterals
    When user select the "<copy_checkbox>" checkbox on Balance Transfer Details Screen against bt type selected as "<BT_Type_values>"
    And user click on copy details button
    Then secondary collateral should be copied automatically basis product collateral mapping for the product selected in BT Loan application

    Examples:
      | application_type                | BT_Type_values | copy_checkbox           |
      | Balance Transfer without Top-up | internal       | copy primary collateral |
      | Balance Transfer with Top-up    | internal       | copy primary collateral |
      | Top up without closure          | internal       | copy primary collateral |

  @NotImplemented
#2. If the product collateral mapping is not available, for any one of the collaterals, then a confirmation message to be displayed on save,
  #   stating the collateral which shall not be mapped in the BT Application.
#FeatureID-ACAUTOCAS-14,ACAUTOCAS-338,ACAUTOCAS-339,ACAUTOCAS-344,CAS-111451
  Scenario Outline: ACAUTOCAS-6099:  Validation while Copy Secondary Collateral for internal BT Type on Balance Transfer Summary section for application type "<application_type>"
    And user already saved bt details for BT Type value as "<BT_Type_values>" for application type "<application_type>"
    And product collateral mapping is not available for any one of the collaterals
    When user select the "<copy_checkbox>" checkbox on Balance Transfer Details Screen against bt type selected as "<BT_Type_values>"
    And user click on copy details button
    Then user should get a confirmation message on save stating the collateral details which shall not be mapped in the BT Application

    Examples:
      | application_type                | BT_Type_values | copy_checkbox           |
      | Balance Transfer without Top-up | internal       | copy primary collateral |
      | Balance Transfer with Top-up    | internal       | copy primary collateral |
      | Top up without closure          | internal       | copy primary collateral |

#########==================================###############
 # 5. If a collateral is mapped as Primary Collateral in a tranche then it should not get mapped as secondary collateral
 #    in the same tranche, however it can be mapped as primary/ secondary in some other tranche.
#########==================================###############

