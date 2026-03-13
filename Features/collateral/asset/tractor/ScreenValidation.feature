@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ReviewedByDEV
@Release
@Part-2


Feature: Tractor Screen Validation

#  Pre-Requisites---
#  In this feature we will validate the screen layout when an Asset Tractor is attached to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  Scenario Outline: ACAUTOCAS-2185: user selects collateral type as Asset in Consumer Durable
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user attempts to select a collateral type
    Then application should allow only the type which is linked to the product
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | indiv         |

    #${ProductType:["IPF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


        #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |




  Scenario Outline: ACAUTOCAS-2186: user chooses sub collateral as Tractor
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to capture the collateral sub type
        #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | indiv         |


      #${ProductType:["IPF"]}
    #${ApplicationStage:["DDE", "Credit", "Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE", "Credit", "Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-2975: User is able to see <EntityName> entity for new collateral Tractor in Tractor Details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see "<EntityName>"
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional
    Examples:
      | EntityName                           | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Tractor Details                      | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | RC Authentication Details in Tractor | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | PPSR Registration Details            | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Invoice Details                      | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Reason                               | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


      #${ProductType:["IPF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | EntityName                           | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | Tractor Details                      | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | RC Authentication Details in Tractor | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | PPSR Registration Details            | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Invoice Details                      | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Reason                               | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


    #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | EntityName                           | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Tractor Details                      | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | RC Authentication Details in Tractor | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | PPSR Registration Details            | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Invoice Details                      | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Reason                               | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |




  Scenario Outline: ACAUTOCAS-2976: User is able to see <FieldName> for new collateral Tractor
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see "<FieldName>" field marked as "<Mandatory>"
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit", "Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional
    Examples:
      | FieldName                    | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Collateral Ref No            | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Description                  | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Category               | mandatory     | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Manufacturer                 | mandatory     | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Model                  | mandatory     | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Variant                | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Level                  | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | OLV Grid Value               | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Insured Declared Value       | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Accepted Value               | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Overall Evaluated Value Type | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Overall Accepted Value       | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Usage                  | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Location               | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Cost                   | mandatory     | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Revaluation Date             | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Reverification Date          | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Reason Code                  | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Reason Description           | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Remarks                      | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


      #${ProductType:["IPF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | FieldName                    | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | Collateral Ref No            | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Description                  | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Asset Category               | mandatory     | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Manufacturer                 | mandatory     | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Asset Model                  | mandatory     | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Asset Variant                | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Asset Level                  | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | OLV Grid Value               | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Insured Declared Value       | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Accepted Value               | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Overall Evaluated Value Type | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Overall Accepted Value       | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Asset Usage                  | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Asset Location               | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Asset Cost                   | mandatory     | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Revaluation Date             | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Reverification Date          | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Reason Code                  | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Reason Description           | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Remarks                      | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


          #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | FieldName                    | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Collateral Ref No            | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Description                  | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Category               | mandatory     | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Manufacturer                 | mandatory     | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Model                  | mandatory     | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Variant                | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Level                  | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | OLV Grid Value               | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Insured Declared Value       | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Accepted Value               | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Overall Evaluated Value Type | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Overall Accepted Value       | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Usage                  | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Location               | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Cost                   | mandatory     | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Revaluation Date             | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Reverification Date          | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Reason Code                  | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Reason Description           | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Remarks                      | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-2187:  CollateralPage asset details <Validity> <FieldName> with <InputType> validation for collateral Sub Type Tractor for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | Validity | FieldName              | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Collateral Ref No      | positive digits                  | does not throw any error        | collateral.xlsx | asset_details           | 82                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No      | characters                       | does not throw any error        | collateral.xlsx | asset_details           | 83                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No      | both digits and characters       | does not throw any error        | collateral.xlsx | asset_details           | 84                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No      | negative                         | does not throw any error        | collateral.xlsx | asset_details           | 85                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No      | hyphen                           | does not throw any error        | collateral.xlsx | asset_details           | 86                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No      | space                            | does not throw any error        | collateral.xlsx | asset_details           | 87                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Collateral Ref No      | special characters               | throws error with error message | collateral.xlsx | asset_details           | 88                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description            | positive digits                  | does not throw any error        | collateral.xlsx | asset_details           | 89                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description            | characters                       | does not throw any error        | collateral.xlsx | asset_details           | 90                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description            | both digits and characters       | does not throw any error        | collateral.xlsx | asset_details           | 91                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description            | negative                         | does not throw any error        | collateral.xlsx | asset_details           | 92                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description            | space                            | does not throw any error        | collateral.xlsx | asset_details           | 93                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description            | special characters except hyphen | does not throw any error        | collateral.xlsx | asset_details           | 94                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | OLV Grid Value         | positive digits                  | does not throw any error        | collateral.xlsx | asset_details           | 95                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | OLV Grid Value         | characters                       | throws error with error message | collateral.xlsx | asset_details           | 96                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | OLV Grid Value         | both digits and characters       | throws error with error message | collateral.xlsx | asset_details           | 97                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | OLV Grid Value         | negative                         | throws error with error message | collateral.xlsx | asset_details           | 98                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | OLV Grid Value         | hyphen                           | throws error with error message | collateral.xlsx | asset_details           | 99                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | OLV Grid Value         | space                            | throws error with error message | collateral.xlsx | asset_details           | 100                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | OLV Grid Value         | special characters               | throws error with error message | collateral.xlsx | asset_details           | 101                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Insured Declared Value | positive digits                  | does not throw any error        | collateral.xlsx | asset_details           | 102                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Insured Declared Value | characters                       | throws error with error message | collateral.xlsx | asset_details           | 103                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Insured Declared Value | both digits and characters       | throws error with error message | collateral.xlsx | asset_details           | 104                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Insured Declared Value | negative                         | throws error with error message | collateral.xlsx | asset_details           | 105                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Insured Declared Value | hyphen                           | throws error with error message | collateral.xlsx | asset_details           | 106                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Insured Declared Value | space                            | throws error with error message | collateral.xlsx | asset_details           | 107                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Insured Declared Value | special characters               | throws error with error message | collateral.xlsx | asset_details           | 108                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

      #${ProductType:["IPF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | Validity | FieldName              | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | valid    | Collateral Ref No      | positive digits                  | does not throw any error        | collateral.xlsx | asset_details           | 82                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Collateral Ref No      | characters                       | does not throw any error        | collateral.xlsx | asset_details           | 83                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Collateral Ref No      | both digits and characters       | does not throw any error        | collateral.xlsx | asset_details           | 84                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Collateral Ref No      | negative                         | does not throw any error        | collateral.xlsx | asset_details           | 85                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Collateral Ref No      | hyphen                           | does not throw any error        | collateral.xlsx | asset_details           | 86                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Collateral Ref No      | space                            | does not throw any error        | collateral.xlsx | asset_details           | 87                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Collateral Ref No      | special characters               | throws error with error message | collateral.xlsx | asset_details           | 88                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Description            | positive digits                  | does not throw any error        | collateral.xlsx | asset_details           | 89                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Description            | characters                       | does not throw any error        | collateral.xlsx | asset_details           | 90                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Description            | both digits and characters       | does not throw any error        | collateral.xlsx | asset_details           | 91                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Description            | negative                         | does not throw any error        | collateral.xlsx | asset_details           | 92                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Description            | space                            | does not throw any error        | collateral.xlsx | asset_details           | 93                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Description            | special characters except hyphen | does not throw any error        | collateral.xlsx | asset_details           | 94                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | OLV Grid Value         | positive digits                  | does not throw any error        | collateral.xlsx | asset_details           | 95                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | OLV Grid Value         | characters                       | throws error with error message | collateral.xlsx | asset_details           | 96                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | OLV Grid Value         | both digits and characters       | throws error with error message | collateral.xlsx | asset_details           | 97                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | OLV Grid Value         | negative                         | throws error with error message | collateral.xlsx | asset_details           | 98                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | OLV Grid Value         | hyphen                           | throws error with error message | collateral.xlsx | asset_details           | 99                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | OLV Grid Value         | space                            | throws error with error message | collateral.xlsx | asset_details           | 100                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | OLV Grid Value         | special characters               | throws error with error message | collateral.xlsx | asset_details           | 101                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Insured Declared Value | positive digits                  | does not throw any error        | collateral.xlsx | asset_details           | 102                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Insured Declared Value | characters                       | throws error with error message | collateral.xlsx | asset_details           | 103                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Insured Declared Value | both digits and characters       | throws error with error message | collateral.xlsx | asset_details           | 104                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Insured Declared Value | negative                         | throws error with error message | collateral.xlsx | asset_details           | 105                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Insured Declared Value | hyphen                           | throws error with error message | collateral.xlsx | asset_details           | 106                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Insured Declared Value | space                            | throws error with error message | collateral.xlsx | asset_details           | 107                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Insured Declared Value | special characters               | throws error with error message | collateral.xlsx | asset_details           | 108                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |



    #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | Validity | FieldName              | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Collateral Ref No      | positive digits                  | does not throw any error        | collateral.xlsx | asset_details           | 82                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No      | characters                       | does not throw any error        | collateral.xlsx | asset_details           | 83                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No      | both digits and characters       | does not throw any error        | collateral.xlsx | asset_details           | 84                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No      | negative                         | does not throw any error        | collateral.xlsx | asset_details           | 85                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No      | hyphen                           | does not throw any error        | collateral.xlsx | asset_details           | 86                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No      | space                            | does not throw any error        | collateral.xlsx | asset_details           | 87                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Collateral Ref No      | special characters               | throws error with error message | collateral.xlsx | asset_details           | 88                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description            | positive digits                  | does not throw any error        | collateral.xlsx | asset_details           | 89                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description            | characters                       | does not throw any error        | collateral.xlsx | asset_details           | 90                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description            | both digits and characters       | does not throw any error        | collateral.xlsx | asset_details           | 91                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description            | negative                         | does not throw any error        | collateral.xlsx | asset_details           | 92                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description            | space                            | does not throw any error        | collateral.xlsx | asset_details           | 93                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description            | special characters except hyphen | does not throw any error        | collateral.xlsx | asset_details           | 94                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | OLV Grid Value         | positive digits                  | does not throw any error        | collateral.xlsx | asset_details           | 95                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | OLV Grid Value         | characters                       | throws error with error message | collateral.xlsx | asset_details           | 96                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | OLV Grid Value         | both digits and characters       | throws error with error message | collateral.xlsx | asset_details           | 97                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | OLV Grid Value         | negative                         | throws error with error message | collateral.xlsx | asset_details           | 98                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | OLV Grid Value         | hyphen                           | throws error with error message | collateral.xlsx | asset_details           | 99                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | OLV Grid Value         | space                            | throws error with error message | collateral.xlsx | asset_details           | 100                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | OLV Grid Value         | special characters               | throws error with error message | collateral.xlsx | asset_details           | 101                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Insured Declared Value | positive digits                  | does not throw any error        | collateral.xlsx | asset_details           | 102                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Insured Declared Value | characters                       | throws error with error message | collateral.xlsx | asset_details           | 103                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Insured Declared Value | both digits and characters       | throws error with error message | collateral.xlsx | asset_details           | 104                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Insured Declared Value | negative                         | throws error with error message | collateral.xlsx | asset_details           | 105                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Insured Declared Value | hyphen                           | throws error with error message | collateral.xlsx | asset_details           | 106                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Insured Declared Value | space                            | throws error with error message | collateral.xlsx | asset_details           | 107                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Insured Declared Value | special characters               | throws error with error message | collateral.xlsx | asset_details           | 108                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  @SkippedFormatValidation
  Scenario Outline: ACAUTOCAS-2188: CollateralPage Equipment details format validation of <FieldName> in Invoice Details for collateral Sub Type Tractor
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And opens Invoice Details section
    Then user should be able to see "<FieldName>" with proper format
    Examples:
      | FieldName    | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Invoice Date | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | indiv         |


  Scenario Outline: ACAUTOCAS-2507: CollateralPage asset details of <FieldName> for collateral Sub Type Tractor
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user sees the "<SectionName>"
    Then user should be able to see "<FieldName>" of Asset Details with proper label

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional
    Examples:
      | FieldName                    | SectionName   | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Collateral Ref No            | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Description                  | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Category               | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Manufacturer                 | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Model                  | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Variant                | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Level                  | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | OLV Grid Value               | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Insured Declared Value       | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Overall Evaluated Value Type | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Usage                  | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Location               | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Cost                   | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |



      #${ProductType:["IPF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | FieldName                    | SectionName   | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | Collateral Ref No            | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Description                  | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Asset Category               | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Manufacturer                 | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Asset Model                  | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Asset Variant                | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Asset Level                  | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | OLV Grid Value               | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Insured Declared Value       | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Overall Evaluated Value Type | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Asset Usage                  | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Asset Location               | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Asset Cost                   | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


    #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | FieldName                    | SectionName   | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Collateral Ref No            | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Description                  | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Category               | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Manufacturer                 | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Model                  | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Variant                | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Level                  | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | OLV Grid Value               | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Insured Declared Value       | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Overall Evaluated Value Type | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Usage                  | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Location               | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Cost                   | Asset Details | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |



  Scenario Outline: ACAUTOCAS-2977: User is able to see <FieldName> for new collateral Tractor in Tractor Details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user opens Tractor Details section
    Then user should be able to see "<FieldName>" marked as "<Mandatory>"
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional
    Examples:
      | FieldName                                 | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Engine Number                             | mandatory     | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Chassis Number                            | mandatory     | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | FIP Number                                | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Date of Delivery                          | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | VIN Number                                | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Registration Number for RC Authentication | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Registration Date                         | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Registration Transport Office             | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Registration in Name of                   | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Registration Expiry Date                  | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | RC Received Date                          | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Vehicle Capacity                          | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Life (Months)                       | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Age (Months)                        | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Initial Odometer Reading                  | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Tractor Sr. No/Fuel Pump No               | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Initial Hour Meter Reading                | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Color                                     | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Year of Manufacture                       | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | State                                     | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Color Type                                | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


      #${ProductType:["IPF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | FieldName                                 | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | Engine Number                             | mandatory     | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Chassis Number                            | mandatory     | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | FIP Number                                | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Date of Delivery                          | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | VIN Number                                | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Registration Number for RC Authentication | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Registration Date                         | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Registration Transport Office             | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Registration in Name of                   | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Registration Expiry Date                  | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | RC Received Date                          | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Vehicle Capacity                          | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Asset Life (Months)                       | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Asset Age (Months)                        | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Initial Odometer Reading                  | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Tractor Sr. No/Fuel Pump No               | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Initial Hour Meter Reading                | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Color                                     | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Year of Manufacture                       | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | State                                     | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Color Type                                | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

     #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | FieldName                                 | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Engine Number                             | mandatory     | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Chassis Number                            | mandatory     | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | FIP Number                                | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Date of Delivery                          | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | VIN Number                                | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Registration Number for RC Authentication | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Registration Date                         | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Registration Transport Office             | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Registration in Name of                   | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Registration Expiry Date                  | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | RC Received Date                          | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Vehicle Capacity                          | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Life (Months)                       | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Age (Months)                        | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Initial Odometer Reading                  | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Tractor Sr. No/Fuel Pump No               | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Initial Hour Meter Reading                | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Color                                     | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Year of Manufacture                       | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | State                                     | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Color Type                                | non mandatory | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-2190:  CollateralPage vehicle details <Validity> Engine Number with <InputType> validation for collateral Sub Type Tractor
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user opens Tractor Details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    When user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | Validity | FieldName     | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Engine Number | positive digits                    | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 151                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Engine Number | characters                         | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 152                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Engine Number | both digits and characters         | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 153                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Engine Number | negative                           | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 154                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Engine Number | space                              | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 155                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Engine Number | first character as special symbols | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 156                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Engine Number | last character as special symbols  | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 157                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Engine Number | consecutive special characters     | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 158                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Engine Number | non-consecutive special characters | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 159                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


      #${ProductType:["IPF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | Validity | FieldName     | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | valid    | Engine Number | positive digits                    | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 151                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Engine Number | characters                         | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 152                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Engine Number | both digits and characters         | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 153                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Engine Number | negative                           | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 154                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Engine Number | space                              | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 155                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Engine Number | first character as special symbols | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 156                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Engine Number | last character as special symbols  | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 157                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Engine Number | consecutive special characters     | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 158                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Engine Number | non-consecutive special characters | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 159                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |



     #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | Validity | FieldName     | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Engine Number | positive digits                    | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 151                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Engine Number | characters                         | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 152                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Engine Number | both digits and characters         | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 153                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Engine Number | negative                           | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 154                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Engine Number | space                              | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 155                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Engine Number | first character as special symbols | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 156                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Engine Number | last character as special symbols  | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 157                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Engine Number | consecutive special characters     | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 158                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Engine Number | non-consecutive special characters | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 159                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |



  @ImplementedBy-aditya.tomar
    @Release3
Scenario Outline: ACAUTOCAS-16730: CollateralPage vehicle details <Validity> Chassis Number with <InputType> validation for collateral Sub Type Tractor
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user opens Tractor Details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    When user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details

        #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | Validity | FieldName      | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Chassis Number | positive digits                    | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 161                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Chassis Number | characters                         | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 162                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Chassis Number | both digits and characters         | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 163                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Chassis Number | negative                           | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 164                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Chassis Number | space                              | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 165                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Chassis Number | first character as special symbols | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 166                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Chassis Number | last character as special symbols  | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 167                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Chassis Number | consecutive special characters     | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 168                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Chassis Number | non-consecutive special characters | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 169                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

      #${ProductType:["IPF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | Validity | FieldName      | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType |
      | valid    | Chassis Number | positive digits                    | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 161                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType>         |
      | valid    | Chassis Number | characters                         | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 162                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType>         |
      | valid    | Chassis Number | both digits and characters         | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 163                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType>         |
      | valid    | Chassis Number | negative                           | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 164                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType>         |
      | valid    | Chassis Number | space                              | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 165                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType>         |
      | invalid  | Chassis Number | first character as special symbols | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 166                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType>         |
      | invalid  | Chassis Number | last character as special symbols  | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 167                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType>         |
      | invalid  | Chassis Number | consecutive special characters     | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 168                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType>         |
      | invalid  | Chassis Number | non-consecutive special characters | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 169                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType>         |

     #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | Validity | FieldName      | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Chassis Number | positive digits                    | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 161                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Chassis Number | characters                         | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 162                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Chassis Number | both digits and characters         | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 163                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Chassis Number | negative                           | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 164                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Chassis Number | space                              | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 165                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Chassis Number | first character as special symbols | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 166                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Chassis Number | last character as special symbols  | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 167                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Chassis Number | consecutive special characters     | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 168                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Chassis Number | non-consecutive special characters | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 169                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  @ImplementedBy-aditya.tomar
    @Release3
Scenario Outline: ACAUTOCAS-16731: CollateralPage vehicle details <Validity> Date of Delivery with <InputType> validation for collateral Sub Type Tractor
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user opens Tractor Details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    When user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | Validity | FieldName        | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Date of Delivery | valid date format   | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 151                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Date of Delivery | invalid date format | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 152                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Date of Delivery | special characters  | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 153                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Date of Delivery | past date           | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 154                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Date of Delivery | future date         | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 155                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Date of Delivery | year less than 1942 | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 156                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Date of Delivery | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 157                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


      #${ProductType:["IPF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | Validity | FieldName        | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | valid    | Date of Delivery | valid date format   | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 151                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Date of Delivery | invalid date format | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 152                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Date of Delivery | special characters  | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 153                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Date of Delivery | past date           | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 154                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Date of Delivery | future date         | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 155                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Date of Delivery | year less than 1942 | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 156                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Date of Delivery | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 157                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

     #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | Validity | FieldName        | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Date of Delivery | valid date format   | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 151                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Date of Delivery | invalid date format | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 152                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Date of Delivery | special characters  | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 153                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Date of Delivery | past date           | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 154                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Date of Delivery | future date         | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 155                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Date of Delivery | year less than 1942 | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 156                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Date of Delivery | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 157                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


Scenario Outline: ACAUTOCAS-16732: CollateralPage vehicle details <Validity> Registration Expiry Date with <InputType> validation for collateral Sub Type Tractor
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user opens Tractor Details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    When user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | Validity | FieldName                | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Registration Expiry Date | valid date format   | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 151                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Registration Expiry Date | invalid date format | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 152                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Registration Expiry Date | special characters  | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 153                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Registration Expiry Date | past date           | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 154                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Registration Expiry Date | future date         | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 155                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Registration Expiry Date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 156                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Registration Expiry Date | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 157                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |



      #${ProductType:["IPF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | Validity | FieldName                | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | valid    | Registration Expiry Date | valid date format   | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 151                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Registration Expiry Date | invalid date format | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 152                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Registration Expiry Date | special characters  | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 153                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Registration Expiry Date | past date           | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 154                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Registration Expiry Date | future date         | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 155                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Registration Expiry Date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 156                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Registration Expiry Date | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 157                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |



     #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | Validity | FieldName                | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Registration Expiry Date | valid date format   | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 151                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Registration Expiry Date | invalid date format | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 152                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Registration Expiry Date | special characters  | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 153                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Registration Expiry Date | past date           | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 154                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Registration Expiry Date | future date         | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 155                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Registration Expiry Date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 156                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Registration Expiry Date | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 157                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |



Scenario Outline: ACAUTOCAS-16733: CollateralPage vehicle details <Validity> RC Received Date with <InputType> validation for collateral Sub Type Tractor
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user opens Tractor Details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    When user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | Validity | FieldName        | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | RC Received Date | valid date format   | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 151                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | RC Received Date | invalid date format | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 152                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | RC Received Date | special characters  | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 153                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | RC Received Date | past date           | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 154                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | RC Received Date | future date         | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 155                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | RC Received Date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 156                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | RC Received Date | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 157                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


      #${ProductType:["IPF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | Validity | FieldName        | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | valid    | RC Received Date | valid date format   | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 151                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | RC Received Date | invalid date format | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 152                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | RC Received Date | special characters  | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 153                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | RC Received Date | past date           | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 154                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | RC Received Date | future date         | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 155                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | RC Received Date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 156                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | RC Received Date | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 157                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


     #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | Validity | FieldName        | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | RC Received Date | valid date format   | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 151                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | RC Received Date | invalid date format | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 152                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | RC Received Date | special characters  | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 153                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | RC Received Date | past date           | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 154                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | RC Received Date | future date         | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 155                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | RC Received Date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 156                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | RC Received Date | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 157                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |



  Scenario Outline: ACAUTOCAS-16734: CollateralPage vehicle details <Validity> Vehicle Capacity with <InputType> validation for collateral Sub Type Tractor
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user opens Tractor Details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    When user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | Validity | FieldName        | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Vehicle Capacity | positive digits                    | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 151                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Vehicle Capacity | characters                         | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 152                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Vehicle Capacity | both digits and characters         | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 153                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Vehicle Capacity | negative                           | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 154                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Vehicle Capacity | space                              | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 155                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Vehicle Capacity | first character as special symbols | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 156                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Vehicle Capacity | last character as special symbols  | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 157                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Vehicle Capacity | consecutive special characters     | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 157                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Vehicle Capacity | non-consecutive special characters | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 157                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


      #${ProductType:["IPF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | Validity | FieldName        | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | valid    | Vehicle Capacity | positive digits                    | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 151                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Vehicle Capacity | characters                         | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 152                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Vehicle Capacity | both digits and characters         | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 153                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Vehicle Capacity | negative                           | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 154                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Vehicle Capacity | space                              | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 155                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Vehicle Capacity | first character as special symbols | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 156                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Vehicle Capacity | last character as special symbols  | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 157                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Vehicle Capacity | consecutive special characters     | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 157                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Vehicle Capacity | non-consecutive special characters | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 157                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


     #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | Validity | FieldName        | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Vehicle Capacity | positive digits                    | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 151                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Vehicle Capacity | characters                         | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 152                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Vehicle Capacity | both digits and characters         | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 153                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Vehicle Capacity | negative                           | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 154                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Vehicle Capacity | space                              | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 155                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Vehicle Capacity | first character as special symbols | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 156                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Vehicle Capacity | last character as special symbols  | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 157                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Vehicle Capacity | consecutive special characters     | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 157                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Vehicle Capacity | non-consecutive special characters | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 157                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |





Scenario Outline: ACAUTOCAS-16735: CollateralPage vehicle details <Validity> Asset Life with <InputType> validation for collateral Sub Type Tractor
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user opens Tractor Details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    When user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details

        #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | Validity | FieldName  | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Asset Life | positive digits                    | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 151                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Asset Life | characters                         | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 152                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Asset Life | both digits and characters         | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 153                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Asset Life | negative                           | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 154                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Asset Life | space                              | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 155                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Asset Life | first character as special symbols | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 156                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Asset Life | last character as special symbols  | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 157                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Asset Life | consecutive special characters     | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 156                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Asset Life | non-consecutive special characters | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 157                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


      #${ProductType:["IPF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | Validity | FieldName  | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | valid    | Asset Life | positive digits                    | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 151                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Asset Life | characters                         | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 152                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Asset Life | both digits and characters         | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 153                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Asset Life | negative                           | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 154                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Asset Life | space                              | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 155                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Asset Life | first character as special symbols | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 156                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Asset Life | last character as special symbols  | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 157                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Asset Life | consecutive special characters     | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 156                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Asset Life | non-consecutive special characters | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 157                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


     #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | Validity | FieldName  | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Asset Life | positive digits                    | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 151                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Asset Life | characters                         | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 152                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Asset Life | both digits and characters         | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 153                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Asset Life | negative                           | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 154                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Asset Life | space                              | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 155                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Asset Life | first character as special symbols | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 156                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Asset Life | last character as special symbols  | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 157                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Asset Life | consecutive special characters     | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 156                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Asset Life | non-consecutive special characters | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 157                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |




Scenario Outline: ACAUTOCAS-16736: CollateralPage vehicle details <Validity> Earlier Registration Number with <InputType> validation for collateral Sub Type Tractor
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user opens PPSR registration details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    When user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | Validity | FieldName                   | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Earlier Registration Number | positive digits                    | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 151                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Earlier Registration Number | characters                         | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 152                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Earlier Registration Number | both digits and characters         | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 153                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Earlier Registration Number | negative                           | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 154                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Earlier Registration Number | space                              | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 165                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Earlier Registration Number | first character as special symbols | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 166                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Earlier Registration Number | last character as special symbols  | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 167                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Earlier Registration Number | consecutive special characters     | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 168                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Earlier Registration Number | non-consecutive special characters | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 169                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #${ProductType:["IPF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | Validity | FieldName                   | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | valid    | Earlier Registration Number | positive digits                    | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 151                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Earlier Registration Number | characters                         | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 152                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Earlier Registration Number | both digits and characters         | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 153                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Earlier Registration Number | negative                           | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 154                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Earlier Registration Number | space                              | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 165                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Earlier Registration Number | first character as special symbols | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 166                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Earlier Registration Number | last character as special symbols  | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 167                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Earlier Registration Number | consecutive special characters     | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 168                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Earlier Registration Number | non-consecutive special characters | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 169                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


     #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | Validity | FieldName                   | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Earlier Registration Number | positive digits                    | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 151                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Earlier Registration Number | characters                         | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 152                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Earlier Registration Number | both digits and characters         | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 153                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Earlier Registration Number | negative                           | does not throw any error        | collateral.xlsx | default            | 4                         | tractor_details           | 154                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Earlier Registration Number | space                              | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 165                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Earlier Registration Number | first character as special symbols | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 166                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Earlier Registration Number | last character as special symbols  | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 167                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Earlier Registration Number | consecutive special characters     | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 168                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Earlier Registration Number | non-consecutive special characters | throws error with error message | collateral.xlsx | default            | 4                         | tractor_details           | 169                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |



Scenario Outline: ACAUTOCAS-16737: CollateralPage vehicle details <Validity> Invoice Number with <InputType> validation for collateral Sub Type Tractor
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And opens Invoice Details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    When user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | Validity | FieldName      | InputType                          | Throws_NotThrows         | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Invoice Number | positive digits                    | does not throw any error | collateral.xlsx | default            | 4                         | tractor_details           | 151                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Invoice Number | characters                         | does not throw any error | collateral.xlsx | default            | 4                         | tractor_details           | 152                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Invoice Number | both digits and characters         | does not throw any error | collateral.xlsx | default            | 4                         | tractor_details           | 153                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Invoice Number | negative                           | does not throw any error | collateral.xlsx | default            | 4                         | tractor_details           | 154                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Invoice Number | space                              | does not throw any error | collateral.xlsx | default            | 4                         | tractor_details           | 155                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Invoice Number | first character as special symbols | does not throw any error | collateral.xlsx | default            | 4                         | tractor_details           | 156                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Invoice Number | last character as special symbols  | does not throw any error | collateral.xlsx | default            | 4                         | tractor_details           | 157                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Invoice Number | consecutive special characters     | does not throw any error | collateral.xlsx | default            | 4                         | tractor_details           | 158                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Invoice Number | non-consecutive special characters | does not throw any error | collateral.xlsx | default            | 4                         | tractor_details           | 159                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


    #${ProductType:["IPF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | Validity | FieldName      | InputType                          | Throws_NotThrows         | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | valid    | Invoice Number | positive digits                    | does not throw any error | collateral.xlsx | default            | 4                         | tractor_details           | 151                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Invoice Number | characters                         | does not throw any error | collateral.xlsx | default            | 4                         | tractor_details           | 152                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Invoice Number | both digits and characters         | does not throw any error | collateral.xlsx | default            | 4                         | tractor_details           | 153                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Invoice Number | negative                           | does not throw any error | collateral.xlsx | default            | 4                         | tractor_details           | 154                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Invoice Number | space                              | does not throw any error | collateral.xlsx | default            | 4                         | tractor_details           | 155                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Invoice Number | first character as special symbols | does not throw any error | collateral.xlsx | default            | 4                         | tractor_details           | 156                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Invoice Number | last character as special symbols  | does not throw any error | collateral.xlsx | default            | 4                         | tractor_details           | 157                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Invoice Number | consecutive special characters     | does not throw any error | collateral.xlsx | default            | 4                         | tractor_details           | 158                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Invoice Number | non-consecutive special characters | does not throw any error | collateral.xlsx | default            | 4                         | tractor_details           | 159                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |



     #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | Validity | FieldName      | InputType                          | Throws_NotThrows         | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Invoice Number | positive digits                    | does not throw any error | collateral.xlsx | default            | 4                         | tractor_details           | 151                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Invoice Number | characters                         | does not throw any error | collateral.xlsx | default            | 4                         | tractor_details           | 152                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Invoice Number | both digits and characters         | does not throw any error | collateral.xlsx | default            | 4                         | tractor_details           | 153                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Invoice Number | negative                           | does not throw any error | collateral.xlsx | default            | 4                         | tractor_details           | 154                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Invoice Number | space                              | does not throw any error | collateral.xlsx | default            | 4                         | tractor_details           | 155                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Invoice Number | first character as special symbols | does not throw any error | collateral.xlsx | default            | 4                         | tractor_details           | 156                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Invoice Number | last character as special symbols  | does not throw any error | collateral.xlsx | default            | 4                         | tractor_details           | 157                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Invoice Number | consecutive special characters     | does not throw any error | collateral.xlsx | default            | 4                         | tractor_details           | 158                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Invoice Number | non-consecutive special characters | does not throw any error | collateral.xlsx | default            | 4                         | tractor_details           | 159                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |



Scenario Outline: ACAUTOCAS-16738: CollateralPage vehicle details <Validity> Invoice Date with <InputType> validation for collateral Sub Type Tractor
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And opens Invoice Details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    When user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
        #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | Validity | FieldName    | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Invoice Date | valid date format   | does not throw any error        | collateral.xlsx | default            | 4                         | invoice_details           | 42                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Invoice Date | invalid date format | throws error with error message | collateral.xlsx | default            | 4                         | invoice_details           | 43                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Invoice Date | special characters  | throws error with error message | collateral.xlsx | default            | 4                         | invoice_details           | 44                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Invoice Date | past date           | does not throw any error        | collateral.xlsx | default            | 4                         | invoice_details           | 45                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Invoice Date | future date         | throws error with error message | collateral.xlsx | default            | 4                         | invoice_details           | 46                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Invoice Date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 4                         | invoice_details           | 47                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Invoice Date | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 4                         | invoice_details           | 48                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


    #${ProductType:["IPF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | Validity | FieldName    | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | valid    | Invoice Date | valid date format   | does not throw any error        | collateral.xlsx | default            | 4                         | invoice_details           | 42                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Invoice Date | invalid date format | throws error with error message | collateral.xlsx | default            | 4                         | invoice_details           | 43                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Invoice Date | special characters  | throws error with error message | collateral.xlsx | default            | 4                         | invoice_details           | 44                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Invoice Date | past date           | does not throw any error        | collateral.xlsx | default            | 4                         | invoice_details           | 45                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Invoice Date | future date         | throws error with error message | collateral.xlsx | default            | 4                         | invoice_details           | 46                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Invoice Date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 4                         | invoice_details           | 47                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Invoice Date | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 4                         | invoice_details           | 48                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


     #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | Validity | FieldName    | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Invoice Date | valid date format   | does not throw any error        | collateral.xlsx | default            | 4                         | invoice_details           | 42                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Invoice Date | invalid date format | throws error with error message | collateral.xlsx | default            | 4                         | invoice_details           | 43                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Invoice Date | special characters  | throws error with error message | collateral.xlsx | default            | 4                         | invoice_details           | 44                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Invoice Date | past date           | does not throw any error        | collateral.xlsx | default            | 4                         | invoice_details           | 45                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Invoice Date | future date         | throws error with error message | collateral.xlsx | default            | 4                         | invoice_details           | 46                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Invoice Date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 4                         | invoice_details           | 47                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Invoice Date | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 4                         | invoice_details           | 48                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


Scenario Outline: ACAUTOCAS-16739: CollateralPage vehicle details <Validity> Invoice Value with <InputType> validation for collateral Sub Type Tractor
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user opens invoice details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    When user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | Validity | FieldName     | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Invoice Value | positive                   | does not throw any error        | collateral.xlsx | invoice_details           | 49                               | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Invoice Value | negative                   | throws error with error message | collateral.xlsx | invoice_details           | 50                               | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Invoice Value | zero                       | does not throw any error        | collateral.xlsx | invoice_details           | 51                               | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Invoice Value | characters                 | throws error with error message | collateral.xlsx | invoice_details           | 52                               | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Invoice Value | both digits and characters | throws error with error message | collateral.xlsx | invoice_details           | 53                               | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Invoice Value | space                      | throws error with error message | collateral.xlsx | invoice_details           | 54                               | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Invoice Value | special characters         | throws error with error message | collateral.xlsx | invoice_details           | 55                               | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #${ProductType:["IPF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | Validity | FieldName     | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | valid    | Invoice Value | positive                   | does not throw any error        | collateral.xlsx | invoice_details           | 49                               | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Invoice Value | negative                   | throws error with error message | collateral.xlsx | invoice_details           | 50                               | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Invoice Value | zero                       | does not throw any error        | collateral.xlsx | invoice_details           | 51                               | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Invoice Value | characters                 | throws error with error message | collateral.xlsx | invoice_details           | 52                               | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Invoice Value | both digits and characters | throws error with error message | collateral.xlsx | invoice_details           | 53                               | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Invoice Value | space                      | throws error with error message | collateral.xlsx | invoice_details           | 54                               | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Invoice Value | special characters         | throws error with error message | collateral.xlsx | invoice_details           | 55                               | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


     #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | Validity | FieldName     | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Invoice Value | positive                   | does not throw any error        | collateral.xlsx | invoice_details           | 49                               | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Invoice Value | negative                   | throws error with error message | collateral.xlsx | invoice_details           | 50                               | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Invoice Value | zero                       | does not throw any error        | collateral.xlsx | invoice_details           | 51                               | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Invoice Value | characters                 | throws error with error message | collateral.xlsx | invoice_details           | 52                               | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Invoice Value | both digits and characters | throws error with error message | collateral.xlsx | invoice_details           | 53                               | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Invoice Value | space                      | throws error with error message | collateral.xlsx | invoice_details           | 54                               | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Invoice Value | special characters         | throws error with error message | collateral.xlsx | invoice_details           | 55                               | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


Scenario Outline: ACAUTOCAS-16740: CollateralPage vehicle details <Validity> Hypothecation with <InputType> validation for collateral Sub Type Tractor
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user opens invoice details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    When user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | Validity | FieldName     | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Hypothecation | characters                 | does not throw any error        | collateral.xlsx | invoice_details           | 56                               | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Hypothecation | space                      | does not throw any error        | collateral.xlsx | invoice_details           | 57                               | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Hypothecation | positive digits            | throws error with error message | collateral.xlsx | invoice_details           | 58                               | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Hypothecation | both digits and characters | throws error with error message | collateral.xlsx | invoice_details           | 59                               | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Hypothecation | negative                   | throws error with error message | collateral.xlsx | invoice_details           | 60                               | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Hypothecation | special characters         | throws error with error message | collateral.xlsx | invoice_details           | 61                               | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #${ProductType:["IPF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | Validity | FieldName     | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | valid    | Hypothecation | characters                 | does not throw any error        | collateral.xlsx | invoice_details           | 56                               | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Hypothecation | space                      | does not throw any error        | collateral.xlsx | invoice_details           | 57                               | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Hypothecation | positive digits            | throws error with error message | collateral.xlsx | invoice_details           | 58                               | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Hypothecation | both digits and characters | throws error with error message | collateral.xlsx | invoice_details           | 59                               | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Hypothecation | negative                   | throws error with error message | collateral.xlsx | invoice_details           | 60                               | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Hypothecation | special characters         | throws error with error message | collateral.xlsx | invoice_details           | 61                               | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

     #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | Validity | FieldName     | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | valid    | Hypothecation | characters                 | does not throw any error        | collateral.xlsx | invoice_details           | 56                               | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Hypothecation | space                      | does not throw any error        | collateral.xlsx | invoice_details           | 57                               | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Hypothecation | positive digits            | throws error with error message | collateral.xlsx | invoice_details           | 58                               | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Hypothecation | both digits and characters | throws error with error message | collateral.xlsx | invoice_details           | 59                               | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Hypothecation | negative                   | throws error with error message | collateral.xlsx | invoice_details           | 60                               | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Hypothecation | special characters         | throws error with error message | collateral.xlsx | invoice_details           | 61                               | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  @SkippedFormatValidation
  Scenario Outline: ACAUTOCAS-2191: CollateralPage Tractor details format validation of <FieldName> for collateral Sub Type Tractor
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When user opens Tractor Details section
    Then user should be able to see "<FieldName>" field with proper format
    Examples:
      | FieldName                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Registration Date        | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Registration Expiry Date | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | RC Received Date         | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | indiv         |


  Scenario Outline: ACAUTOCAS-2508: CollateralPage Tractor details label of <FieldName> for collateral Sub Type Tractor
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user opens Tractor Details section
    Then user should be able to see "<FieldName>" field of Tractor Details with proper label
        #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional
    Examples:
      | FieldName                                 | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Engine Number                             | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Chassis Number                            | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | FIP Number                                | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Date of Delivery                          | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | VIN Number                                | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Registration Number for RC Authentication | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Registration Date                         | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Registration Transport Office             | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Registration in Name of                   | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Registration Expiry Date                  | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | RC Received Date                          | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Vehicle Capacity                          | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Life (Months)                       | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Age (Months)                        | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Initial Odometer Reading                  | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Tractor Sr. No/Fuel Pump No               | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Initial Hour Meter Reading                | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Content Color                             | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Year of Manufacture                       | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | State                                     | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Color Type                                | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


    #${ProductType:["IPF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | FieldName                                 | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | Engine Number                             | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Chassis Number                            | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | FIP Number                                | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Date of Delivery                          | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | VIN Number                                | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Registration Number for RC Authentication | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Registration Date                         | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Registration Transport Office             | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Registration in Name of                   | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Registration Expiry Date                  | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | RC Received Date                          | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Vehicle Capacity                          | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Asset Life (Months)                       | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Asset Age (Months)                        | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Initial Odometer Reading                  | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Tractor Sr. No/Fuel Pump No               | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Initial Hour Meter Reading                | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Content Color                             | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Year of Manufacture                       | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | State                                     | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Color Type                                | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    
     #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | FieldName                                 | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Engine Number                             | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Chassis Number                            | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | FIP Number                                | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Date of Delivery                          | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | VIN Number                                | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Registration Number for RC Authentication | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Registration Date                         | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Registration Transport Office             | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Registration in Name of                   | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Registration Expiry Date                  | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | RC Received Date                          | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Vehicle Capacity                          | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Life (Months)                       | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Asset Age (Months)                        | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Initial Odometer Reading                  | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Tractor Sr. No/Fuel Pump No               | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Initial Hour Meter Reading                | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Content Color                             | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Year of Manufacture                       | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | State                                     | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Color Type                                | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


