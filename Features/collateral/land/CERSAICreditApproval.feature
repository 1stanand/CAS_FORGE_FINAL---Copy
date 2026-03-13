@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@CERSAIDataAddition @TypeLand
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral
@Sanity
   #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["Credit Approval"]}
Feature: CERSAI data addition for Land type collateral at credit approval

#COLLATERAL_SUB_TYPE.HIDE_CERSAI_TAB = 0 for COLLATERAL_TYPE_FK = Land

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-239
  @ImplementedBy-kanika.mahal
    @Release3
  Scenario Outline: ACAUTOCAS-8942:  CERSAI page data validation for "<CollateralWB_default_rowNum>" for "<ValidationField>" at Credit Approval stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page on "<ApplicationStage>" without adding New Collateral
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_default>" and row <CollateralWB_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters all mandatory information of collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_address>" and row <CollateralWB_address_rowNum>
    And user enters address details of land collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_otherDetails>" and row <CollateralWB_otherDetails_rowNum>
    And user enters other details of land collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_default>" and row <CollateralWB_default_rowNum>
    When user click on modify collateral subtype
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user input "<ValidationField>" in CERSAI section
    And user saves the CERSAI data
    Then user should be able to see "<SuccessFailure>" for field "<ValidationField>"
    Examples:
      | SuccessFailure | ValidationField               | CollateralWB    | Collateral_cersaiDetails | CollateralWB_default_rowNum | Collateral_cersaiDetails_rowNum | CollateralWB_default | CollateralWB_address | CollateralWB_address_rowNum | CollateralWB_otherDetails | CollateralWB_otherDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Unsuccessfully | Serial No.                    | collateral.xlsx | cersai_details           | 6                           | 122                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Serial No.                    | collateral.xlsx | cersai_details           | 6                           | 123                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Successfully   | Serial No.                    | collateral.xlsx | cersai_details           | 6                           | 124                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Serial No.                    | collateral.xlsx | cersai_details           | 6                           | 125                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Serial No.                    | collateral.xlsx | cersai_details           | 6                           | 126                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Serial No.                    | collateral.xlsx | cersai_details           | 6                           | 127                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Serial No.                    | collateral.xlsx | cersai_details           | 6                           | 128                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | No. of Documents              | collateral.xlsx | cersai_details           | 6                           | 129                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | No. of Documents              | collateral.xlsx | cersai_details           | 6                           | 130                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Successfully   | No. of Documents              | collateral.xlsx | cersai_details           | 6                           | 131                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | No. of Documents              | collateral.xlsx | cersai_details           | 6                           | 132                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | No. of Documents              | collateral.xlsx | cersai_details           | 6                           | 133                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | No. of Documents              | collateral.xlsx | cersai_details           | 6                           | 134                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | No. of Documents              | collateral.xlsx | cersai_details           | 6                           | 135                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Successfully   | Document Type                 | collateral.xlsx | cersai_details           | 6                           | 136                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Document Type(input)          | collateral.xlsx | cersai_details           | 6                           | 137                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Document Type                 | collateral.xlsx | cersai_details           | 6                           | 138                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Locality                      | collateral.xlsx | cersai_details           | 6                           | 139                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Locality                      | collateral.xlsx | cersai_details           | 6                           | 140                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Locality                      | collateral.xlsx | cersai_details           | 6                           | 141                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Successfully   | Locality                      | collateral.xlsx | cersai_details           | 6                           | 142                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Successfully   | Locality                      | collateral.xlsx | cersai_details           | 6                           | 143                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Successfully   | Title Document No             | collateral.xlsx | cersai_details           | 6                           | 144                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Title Document No             | collateral.xlsx | cersai_details           | 6                           | 145                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Successfully   | Title Document No             | collateral.xlsx | cersai_details           | 6                           | 146                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Title Document No             | collateral.xlsx | cersai_details           | 6                           | 147                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Successfully   | Title Document No             | collateral.xlsx | cersai_details           | 6                           | 148                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Successfully   | Title Document No             | collateral.xlsx | cersai_details           | 6                           | 149                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Survey No                     | collateral.xlsx | cersai_details           | 6                           | 152                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Survey No(length)             | collateral.xlsx | cersai_details           | 6                           | 153                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Sub Registrar Office          | collateral.xlsx | cersai_details           | 6                           | 154                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Sub Registrar Office(length)  | collateral.xlsx | cersai_details           | 6                           | 155                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Document Taluka               | collateral.xlsx | cersai_details           | 6                           | 156                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Document Taluka(length)       | collateral.xlsx | cersai_details           | 6                           | 157                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Document Pincode              | collateral.xlsx | cersai_details           | 6                           | 158                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Document Pincode(master data) | collateral.xlsx | cersai_details           | 6                           | 159                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Document District(length)     | collateral.xlsx | cersai_details           | 6                           | 160                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Document District             | collateral.xlsx | cersai_details           | 6                           | 161                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Document District             | collateral.xlsx | cersai_details           | 6                           | 162                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Registration Date             | collateral.xlsx | cersai_details           | 6                           | 163                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Registration Date             | collateral.xlsx | cersai_details           | 6                           | 164                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Registration Date             | collateral.xlsx | cersai_details           | 6                           | 165                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Successfully   | Remarks                       | collateral.xlsx | cersai_details           | 6                           | 166                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Remarks(length)               | collateral.xlsx | cersai_details           | 6                           | 167                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | No. of Documents              | collateral.xlsx | cersai_details           | 6                           | 169                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
    @LoggedBug
    Examples:
      | SuccessFailure | ValidationField  | CollateralWB    | Collateral_cersaiDetails | CollateralWB_default_rowNum | Collateral_cersaiDetails_rowNum | CollateralWB_default | CollateralWB_address | CollateralWB_address_rowNum | CollateralWB_otherDetails | CollateralWB_otherDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Unsuccessfully | Serial No.       | collateral.xlsx | cersai_details           | 6                           | 150                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Serial No.       | collateral.xlsx | cersai_details           | 6                           | 168                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | No. of Documents | collateral.xlsx | cersai_details           | 6                           | 151                             | default              | address_details      | 3                           | other_details             | 0                                | <ProductType> | <ApplicationStage> |     |          | indiv         |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-239
  @ImplementedBy-kanika.mahal
    @Release3
  Scenario Outline: ACAUTOCAS-8943: CERSAI page security interest details data validation for <CollateralWB_default_rowNum> for <ValidationField> at Credit Approval stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page on "<ApplicationStage>" without adding New Collateral
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_default>" and row <CollateralWB_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters all mandatory information of collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_address>" and row <CollateralWB_address_rowNum>
    And user enters address details of land collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_otherDetails>" and row <CollateralWB_otherDetails_rowNum>
    And user enters other details of land collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_default>" and row <CollateralWB_default_rowNum>
    And user click on modify collateral subtype
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user fills all fields in CERSAI section
    When user views the section Security Interest Details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_securityInterestDetails_rowNum>
    And user enters Security Interest Details
    And user saves the CERSAI data
    Then user should be able to see "<SuccessFailure>" for field "<ValidationField>"
    Examples:
      | SuccessFailure | ValidationField                 | CollateralWB    | Collateral_cersaiDetails | CollateralWB_default_rowNum | Collateral_securityInterestDetails_rowNum | CollateralWB_default | CollateralWB_address | CollateralWB_address_rowNum | CollateralWB_otherDetails | CollateralWB_otherDetails_rowNum | Collateral_cersaiDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Successfully   | Transaction Reference Number    | collateral.xlsx | cersai_details           | 6                           | 194                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Transaction Reference Number    | collateral.xlsx | cersai_details           | 6                           | 195                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Transaction Reference Number    | collateral.xlsx | cersai_details           | 6                           | 196                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Transaction Reference Number    | collateral.xlsx | cersai_details           | 6                           | 197                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Successfully   | Transaction Reference Number    | collateral.xlsx | cersai_details           | 6                           | 198                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Security Interest ID            | collateral.xlsx | cersai_details           | 6                           | 199                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Successfully   | Security Interest ID            | collateral.xlsx | cersai_details           | 6                           | 200                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Successfully   | No. of Borrowers                | collateral.xlsx | cersai_details           | 6                           | 201                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | No. of Borrowers(length)        | collateral.xlsx | cersai_details           | 6                           | 202                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | No. of Borrowers                | collateral.xlsx | cersai_details           | 6                           | 203                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | No. of Borrowers                | collateral.xlsx | cersai_details           | 6                           | 204                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Successfully   | No. of Borrowers                | collateral.xlsx | cersai_details           | 6                           | 205                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Successfully   | No. of Third Parties            | collateral.xlsx | cersai_details           | 6                           | 206                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | No. of Third Parties(length)    | collateral.xlsx | cersai_details           | 6                           | 207                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | No. of Third Parties            | collateral.xlsx | cersai_details           | 6                           | 208                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | No. of Third Parties            | collateral.xlsx | cersai_details           | 6                           | 209                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Successfully   | No. of Third Parties            | collateral.xlsx | cersai_details           | 6                           | 210                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Successfully   | No of Documents                 | collateral.xlsx | cersai_details           | 6                           | 211                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | No of Documents(length)         | collateral.xlsx | cersai_details           | 6                           | 212                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | No of Documents                 | collateral.xlsx | cersai_details           | 6                           | 213                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | No of Documents                 | collateral.xlsx | cersai_details           | 6                           | 214                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Successfully   | No of Documents                 | collateral.xlsx | cersai_details           | 6                           | 215                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Successfully   | No. of Loans                    | collateral.xlsx | cersai_details           | 6                           | 216                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | No. of Loans(length)            | collateral.xlsx | cersai_details           | 6                           | 217                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | No. of Loans                    | collateral.xlsx | cersai_details           | 6                           | 218                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | No. of Loans                    | collateral.xlsx | cersai_details           | 6                           | 219                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Successfully   | No. of Loans                    | collateral.xlsx | cersai_details           | 6                           | 220                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Successfully   | Security Interest Creation Date | collateral.xlsx | cersai_details           | 6                           | 221                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Successfully   | Security Interest Creation Date | collateral.xlsx | cersai_details           | 6                           | 222                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Security Interest Creation Date | collateral.xlsx | cersai_details           | 6                           | 223                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Successfully   | Asset Amount                    | collateral.xlsx | cersai_details           | 6                           | 224                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Successfully   | Asset Amount                    | collateral.xlsx | cersai_details           | 6                           | 225                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Successfully   | Asset Amount                    | collateral.xlsx | cersai_details           | 6                           | 226                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Asset Amount                    | collateral.xlsx | cersai_details           | 6                           | 227                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Asset Amount                    | collateral.xlsx | cersai_details           | 6                           | 228                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Unsuccessfully | Asset Amount                    | collateral.xlsx | cersai_details           | 6                           | 229                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Successfully   | Token Field                     | collateral.xlsx | cersai_details           | 6                           | 230                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Successfully   | Token Field                     | collateral.xlsx | cersai_details           | 6                           | 231                                       | default              | address_details      | 3                           | other_details             | 0                                | 250                             | <ProductType> | <ApplicationStage> |     |          | indiv         |

        #FeatureID-ACAUTOCAS-5077,ACAUTOCAS-239
  @ImplementedBy-priyanshu.kashyap
  Scenario Outline: ACAUTOCAS-8944:  CERSAI page security interest details data validation for multi record at Credit Approval stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_sheetName>" and row <Collateral_sheet_rowNum>
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user click on modify collateral subtype
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user fills all fields in section CERSAI Data
    And user views the section Security Interest Details
    And user adds Security Interest Details details to cersai data from
      | collateral.xlsx | cersai_details | 194 |
      | collateral.xlsx | cersai_details | 232 |
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_securityInterestDetails_rowNum>
    And user enters Security Interest Details
    And user saves the CERSAI data
    Then user should be able to see "<SuccessFailure>" for field "<ValidationField>"
    @LoggedBug
    Examples:
      | CollSubType       | CollateralWB    | Collateral_sheetName | Collateral_sheet_rowNum | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | Collateral_securityInterestDetails_rowNum | SuccessFailure | ValidationField                           | ProductType   | ApplicationStage   | key | category | applicantType |
      | Agricultural Land | collateral.xlsx | agriculture_details  | 16                      | cersai_details           | 119                             | 233                                       | Unsuccessfully | Transaction Reference Number, token field | PL            | Credit Approval    |     |          | indiv         |
      | Agricultural Land | collateral.xlsx | agriculture_details  | 16                      | cersai_details           | 119                             | 233                                       | Unsuccessfully | Token Field                               | <ProductType> | <ApplicationStage> |     |          | applicantType |
      | Agricultural Land | collateral.xlsx | agriculture_details  | 16                      | cersai_details           | 119                             | 233                                       | Unsuccessfully | Transaction Reference Number              | <ProductType> | <ApplicationStage> |     |          | applicantType |
    Examples:
      | CollSubType       | CollateralWB    | Collateral_sheetName | Collateral_sheet_rowNum | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | Collateral_securityInterestDetails_rowNum | SuccessFailure | ValidationField | ProductType   | ApplicationStage   | key | category | applicantType |
      | Agricultural Land | collateral.xlsx | agriculture_details  | 16                      | cersai_details           | 119                             | 233                                       | Successfully   |                 | <ProductType> | <ApplicationStage> |     |          | applicantType |


    #FeatureID-ACAUTOCAS-5077,ACAUTOCAS-239
  @ImplementedBy-kanika.mahal
    @Release3
  Scenario Outline: ACAUTOCAS-8945:  CERSAI page security interest details data should not be deleted at Credit Approval stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page on "<ApplicationStage>" without adding New Collateral
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_default>" and row <CollateralWB_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters all mandatory information of collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_address>" and row <CollateralWB_address_rowNum>
    And user enters address details of land collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_otherDetails>" and row <CollateralWB_otherDetails_rowNum>
    And user enters other details of land collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_default>" and row <CollateralWB_default_rowNum>
    And user click on modify collateral subtype
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user fills all fields in section CERSAI Data
    And user saves the CERSAI data
    When user views the section Security Interest Details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_securityInterestDetails_rowNum>
    And user enters Security Interest Details
    And user saves the CERSAI data
    And user navigates to Security Interest Details tab
    Then user should not be able to delete Security Interest Data
    Examples:
      | CollateralWB    | Collateral_cersaiDetails | CollateralWB_default_rowNum | CollateralWB_default | CollateralWB_address | CollateralWB_address_rowNum | CollateralWB_otherDetails | CollateralWB_otherDetails_rowNum | Collateral_cersaiDetails_rowNum | Collateral_securityInterestDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | cersai_details           | 6                           | default              | address_details      | 3                           | other_details             | 0                                | 250                             | 233                                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-239
  @ImplementedBy-priyanshu.kashyap
  Scenario Outline: ACAUTOCAS-8946:  CERSAI page security interest details data should not be modified at Credit Approval stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_sheetName>" and row <Collateral_sheet_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user click on modify collateral subtype
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user fills all fields in section CERSAI Data
    And user saves the CERSAI data
    When user views the section Security Interest Details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_securityInterestDetails_rowNum>
    And user enters Security Interest Details
    And user saves the CERSAI data
    And user navigates to Security Interest Details tab
    Then user should not be able to modify Security Interest Data
    Examples:
      | CollSubType       | CollateralWB    | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | Collateral_securityInterestDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralWB    | Collateral_sheetName | Collateral_sheet_rowNum |
      | Agricultural Land | collateral.xlsx | cersai_details           | 251                             | 233                                       | <ProductType> | <ApplicationStage> |     |          | indiv         | collateral.xlsx | agriculture_details  | 16                      |


  @ImplementedBy-priyanshu.kashyap
    #FeatureID-ACAUTOCAS-5077,ACAUTOCAS-239
  Scenario Outline: ACAUTOCAS-16919: CERSAI page security interest details data should not be modifiable at Credit Approval stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_sheetName>" and row <Collateral_sheet_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user click on modify collateral subtype
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user fills all fields in section CERSAI Data
    And user saves the CERSAI data
    When user views the section Security Interest Details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_securityInterestDetails_rowNum>
    And user enters Security Interest Details
    And user saves the CERSAI data
    And user navigates to Security Interest Details tab
    Then user should not be able to modify Security Interest Data grid
    Examples:
      | CollSubType       | CollateralWB    | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | Collateral_securityInterestDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralWB    | Collateral_sheetName | Collateral_sheet_rowNum |
      | Agricultural Land | collateral.xlsx | cersai_details           | 251                             | 233                                       | <ProductType> | <ApplicationStage> |     |          | indiv         | collateral.xlsx | agriculture_details  | 16                      |

