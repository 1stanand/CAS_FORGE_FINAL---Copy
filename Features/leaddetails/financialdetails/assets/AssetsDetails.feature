@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-
@TechReviewedBy-
@AppInfoAdoption
#${ApplicantType:["indiv"]}

Feature:Assets details in financial details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#  In default workflow Recommendation stage is not applicable for all LoBs. Please add comment for Recommendation stage - check workflow for recommendation stage and implement.

    #FeatureID-ACAUTOCAS-164
  @AppInfoFixed5
  Scenario Outline: ACAUTOCAS-13008: <Field_Name> field validation of assets details with <Validity> <InputType> for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3      | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open assets accordion in financial details page
    And user reads data from the excel file "financial_details.xlsx" under sheet "assets" and row <FinancialDetails_assets_rowNum>
    When user fills "<Validity>" "<Field_Name>" with "<InputType>" in assets details
    Then "<Field_Name>" field "<Throws_notThrows>" error in asset details
      #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-rishabh.sachan
    @Release @Part-2
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Field_Name             | Validity | InputType                          | Throws_notThrows         | Occupation   | FinancialDetails_assets_rowNum | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Value            | invalid  | more than 18 digits                | throw an                 | <Occupation> | 145                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Value            | valid    | less than 18 digits                | does not throw any error | <Occupation> | 146                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Value            | invalid  | character                          | throw an                 | <Occupation> | 147                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Value            | invalid  | special character                  | throw an                 | <Occupation> | 148                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Value            | invalid  | negative values                    | throw an                 | <Occupation> | 149                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Value            | invalid  | character with space               | throw an                 | <Occupation> | 150                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Value            | invalid  | digits with space                  | throw an                 | <Occupation> | 151                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Value            | valid    | positive values and Upto 18 digits | does not throw any error | <Occupation> | 152                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Type Description | valid    | max 255 characters                 | does not throw any error | <Occupation> | 153                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Type Description | valid    | special character                  | does not throw any error | <Occupation> | 154                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Type Description | valid    | negative values                    | does not throw any error | <Occupation> | 155                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Type Description | valid    | character with space               | does not throw any error | <Occupation> | 156                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Type Description | valid    | digits with space                  | does not throw any error | <Occupation> | 157                            | 53   | 91   |

     #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Field_Name             | Validity | InputType                          | Throws_notThrows         | Occupation                     | FinancialDetails_assets_rowNum | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Value            | invalid  | more than 18 digits                | throw an                 | Self Employed Non Professional | 145                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Value            | valid    | less than 18 digits                | does not throw any error | Salaried                       | 146                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Value            | invalid  | character                          | throw an                 | <Occupation>                   | 147                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Value            | invalid  | special character                  | throw an                 | <Occupation>                   | 148                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Value            | invalid  | negative values                    | throw an                 | <Occupation>                   | 149                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Value            | invalid  | character with space               | throw an                 | <Occupation>                   | 150                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Value            | invalid  | digits with space                  | throw an                 | <Occupation>                   | 151                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Value            | valid    | positive values and Upto 18 digits | does not throw any error | <Occupation>                   | 152                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Type Description | valid    | max 255 characters                 | does not throw any error | <Occupation>                   | 153                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Type Description | valid    | special character                  | does not throw any error | <Occupation>                   | 154                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Type Description | valid    | negative values                    | does not throw any error | <Occupation>                   | 155                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Type Description | valid    | character with space               | does not throw any error | <Occupation>                   | 156                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Type Description | valid    | digits with space                  | does not throw any error | <Occupation>                   | 157                            | 152  | 136  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | Field_Name             | Validity | InputType                          | Throws_notThrows         | Occupation                     | FinancialDetails_assets_rowNum | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Asset Value            | invalid  | more than 18 digits                | throw an                 | Self Employed Non Professional | 145                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Asset Value            | valid    | less than 18 digits                | does not throw any error | Salaried                       | 146                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Asset Value            | invalid  | character                          | throw an                 | <Occupation>                   | 147                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Asset Value            | invalid  | special character                  | throw an                 | <Occupation>                   | 148                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Asset Value            | invalid  | negative values                    | throw an                 | <Occupation>                   | 149                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Asset Value            | invalid  | character with space               | throw an                 | <Occupation>                   | 150                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Asset Value            | invalid  | digits with space                  | throw an                 | <Occupation>                   | 151                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Asset Value            | valid    | positive values and Upto 18 digits | does not throw any error | <Occupation>                   | 152                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Asset Type Description | valid    | max 255 characters                 | does not throw any error | <Occupation>                   | 153                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Asset Type Description | valid    | special character                  | does not throw any error | <Occupation>                   | 154                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Asset Type Description | valid    | negative values                    | does not throw any error | <Occupation>                   | 155                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Asset Type Description | valid    | character with space               | does not throw any error | <Occupation>                   | 156                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Asset Type Description | valid    | digits with space                  | does not throw any error | <Occupation>                   | 157                            | 152  | 136  |


     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Field_Name             | Validity | InputType                          | Throws_notThrows         | Occupation   | FinancialDetails_assets_rowNum | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Value            | invalid  | more than 18 digits                | throw an                 | <Occupation> | 145                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Value            | valid    | less than 18 digits                | does not throw any error | <Occupation> | 146                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Value            | invalid  | character                          | throw an                 | <Occupation> | 147                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Value            | invalid  | special character                  | throw an                 | <Occupation> | 148                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Value            | invalid  | negative values                    | throw an                 | <Occupation> | 149                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Value            | invalid  | character with space               | throw an                 | <Occupation> | 150                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Value            | invalid  | digits with space                  | throw an                 | <Occupation> | 151                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Value            | valid    | positive values and Upto 18 digits | does not throw any error | <Occupation> | 152                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Type Description | valid    | max 255 characters                 | does not throw any error | <Occupation> | 153                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Type Description | valid    | special character                  | does not throw any error | <Occupation> | 154                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Type Description | valid    | negative values                    | does not throw any error | <Occupation> | 155                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Type Description | valid    | character with space               | does not throw any error | <Occupation> | 156                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Asset Type Description | valid    | digits with space                  | does not throw any error | <Occupation> | 157                            | 53   | 91   |



  #FeatureID-ACAUTOCAS-164
  Scenario Outline: ACAUTOCAS-13009: <Field_Name> field validation with <Characters> characters in assets details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3      | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open assets accordion in financial details page
    And user reads data from the excel file "financial_details.xlsx" under sheet "assets" and row <FinancialDetails_assets_rowNum>
    When user fills "<Field_Name>" field with "<Characters>" characters in assets details
    Then <Left_Characters> characters should be remaining to fill in Asset Type Description field of assets details
     #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-rishabh.sachan
    @Release @Part-2
    Examples:
      | Field_Name             | Characters | Left_Characters | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | FinancialDetails_assets_rowNum | Row1 | Row2 |
      | Asset Type Description | 100        | 155             | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 158                            | 53   | 91   |
      | Asset Type Description | 155        | 100             | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 159                            | 53   | 91   |
      | Asset Type Description | 255        | 0               | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 153                            | 53   | 91   |

       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Field_Name             | Characters | Left_Characters | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | FinancialDetails_assets_rowNum | Row1 | Row2 |
      | Asset Type Description | 100        | 155             | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 158                            | 152  | 136  |
      | Asset Type Description | 155        | 100             | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 159                            | 152  | 136  |
      | Asset Type Description | 255        | 0               | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 153                            | 152  | 136  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Field_Name             | Characters | Left_Characters | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | Occupation   | FinancialDetails_assets_rowNum | Row1 | Row2 |
      | Asset Type Description | 100        | 155             | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | 158                            | 152  | 136  |
      | Asset Type Description | 155        | 100             | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | 159                            | 152  | 136  |
      | Asset Type Description | 255        | 0               | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | 153                            | 152  | 136  |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | Field_Name             | Characters | Left_Characters | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | FinancialDetails_assets_rowNum | Row1 | Row2 |
      | Asset Type Description | 100        | 155             | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 158                            | 53   | 91   |
      | Asset Type Description | 155        | 100             | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 159                            | 53   | 91   |
      | Asset Type Description | 255        | 0               | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 153                            | 53   | 91   |


  #FeatureID-ACAUTOCAS-164
  @Sanity
  Scenario Outline: ACAUTOCAS-13010: Add assets <NoOfAssets> details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3      | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user reads data from the excel file "financial_details.xlsx" under sheet "assets" and row 129
    When user fill assets details with "<NoOfAssets>" assets category
    And navigates to save and compute
    Then "<NoOfAssets>" assets details should be added successfully

     #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-rishabh.sachan
    @Release @Part-2
    Examples:
      | NoOfAssets | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Row1 | Row2 |
      | single     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |
      | multiple   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |


       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | NoOfAssets | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Row1 | Row2 |
      | single     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 152  | 136  |
      | multiple   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 152  | 136  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | NoOfAssets | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | Occupation   | Row1 | Row2 |
      | single     | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | 152  | 136  |
      | multiple   | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | 152  | 136  |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | NoOfAssets | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Row1 | Row2 |
      | single     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |
      | multiple   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |



  #FeatureID-ACAUTOCAS-164
  Scenario Outline: ACAUTOCAS-13011: Delete the added assets  details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3      | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user reads data from the excel file "financial_details.xlsx" under sheet "assets" and row 129
    And user fill assets details with "single" assets category
    And navigates to save and compute
    When user delete the added assets details
    Then assets details should be deleted successfully

          #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-rishabh.sachan
    @Release @Part-2
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |


       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 152  | 136  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | Occupation   | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | 152  | 136  |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType | Category | Key | Occupation   | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | indiv         |          |     | <Occupation> | 53   | 91   |



  #FeatureID-ACAUTOCAS-164
  @Perishable
  Scenario Outline: ACAUTOCAS-13012: Save assets details without filling <Field> field in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3      | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open assets accordion in financial details page
    And user reads data from the excel file "financial_details.xlsx" under sheet "assets" and row 161
    When user fills all fields except "<Field>" field in assets details
    And navigates to save and compute
    Then assets details did not saved with an error message
      #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-rishabh.sachan
    @Release @Part-2
    Examples:
      | Field                  | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Row1 | Row2 |
      | Asset Type             | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |
      | Asset Type Description | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |
      | Asset Value            | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |

        #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Field                  | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Row1 | Row2 |
      | Asset Type             | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 152  | 136  |
      | Asset Type Description | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 152  | 136  |
      | Asset Value            | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 152  | 136  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @FixedJsClick2
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Field                  | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | Occupation   | Row1 | Row2 |
      | Asset Type             | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | 152  | 136  |
      | Asset Type Description | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | 152  | 136  |
      | Asset Value            | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | 152  | 136  |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | Field                  | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Row1 | Row2 |
      | Asset Type             | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |
      | Asset Type Description | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |
      | Asset Value            | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |

  #FeatureID-ACAUTOCAS-164
  Scenario Outline: ACAUTOCAS-13013: Field type validation of <Field> in assets details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3      | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    When user open assets accordion in financial details page
    Then "<Field>" field should be "<Field_Type>" in asset details
       #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
       #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
        #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-rishabh.sachan
    @Release @Part-2
    Examples:
      | Field                  | Field_Type | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Row1 | Row2 |
      | Category               | drop down  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |
      | Asset Type             | drop down  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |
      | Asset Type Description | textarea   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |
      | Asset Value            | input      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |
      | Details                | hyperlink  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |
      | Actions                | image      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |


       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Field                  | Field_Type | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Row1 | Row2 |
      | Category               | drop down  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 152  | 136  |
      | Asset Type             | drop down  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 152  | 136  |
      | Asset Type Description | textarea   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 152  | 136  |
      | Asset Value            | input      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 152  | 136  |
      | Details                | hyperlink  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 152  | 136  |
      | Actions                | image      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 152  | 136  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Field                  | Field_Type | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | Occupation   | Row1 | Row2 |
      | Category               | drop down  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | 152  | 136  |
      | Asset Type             | drop down  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | 152  | 136  |
      | Asset Type Description | textarea   | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | 152  | 136  |
      | Asset Value            | input      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | 152  | 136  |
      | Details                | hyperlink  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | 152  | 136  |
      | Actions                | image      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | 152  | 136  |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | Field                  | Field_Type | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Row1 | Row2 |
      | Category               | drop down  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |
      | Asset Type             | drop down  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |
      | Asset Type Description | textarea   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |
      | Asset Value            | input      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |
      | Details                | hyperlink  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |
      | Actions                | image      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |



  #FeatureID-ACAUTOCAS-164
  Scenario Outline: ACAUTOCAS-13014: <PageType> page validation if assets type is <AssetType> in case of <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3      | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open assets accordion in financial details page
    And user reads data from the excel file "financial_details.xlsx" under sheet "assets" and row <FinancialDetails_assets_rowNum>
    When user selects asset type as "<AssetType>"
    Then asset details page should be open as "<PageType>"
     #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-rishabh.sachan
    @Release @Part-2
    Examples:
      | AssetType        | PageType  | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | FinancialDetails_assets_rowNum | Row1 | Row2 |
      | Savings Account  | customise | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 206                            | 53   | 91   |
      | Agriculture Land | default   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 129                            | 53   | 91   |
      | Mutual Funds     | customise | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 207                            | 53   | 91   |


       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | AssetType        | PageType  | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | FinancialDetails_assets_rowNum | Row1 | Row2 |
      | Savings Account  | customise | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 206                            | 152  | 136  |
      | Agriculture Land | default   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 129                            | 152  | 136  |
      | Mutual Funds     | customise | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 207                            | 152  | 136  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | AssetType        | PageType  | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | Occupation   | FinancialDetails_assets_rowNum | Row1 | Row2 |
      | Savings Account  | customise | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | 206                            | 152  | 136  |
      | Agriculture Land | default   | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | 129                            | 152  | 136  |
      | Mutual Funds     | customise | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | 207                            | 152  | 136  |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | AssetType        | PageType  | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | FinancialDetails_assets_rowNum | Row1 | Row2 |
      | Savings Account  | customise | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 206                            | 53   | 91   |
      | Agriculture Land | default   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 129                            | 53   | 91   |
      | Mutual Funds     | customise | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 207                            | 53   | 91   |



  #Bug:CAS-129993
   #FeatureID-ACAUTOCAS-164
  Scenario Outline: ACAUTOCAS-13015: Tooltip validation of <AssetsFields> field in case of <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3      | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open assets accordion in financial details page
    When user moves the mouse pointer over "<AssetsFields>" field
    Then tooltip appears with "<AssetsFields>" field name
      #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-rishabh.sachan
    @Release @Part-2
    Examples:
      | AssetsFields           | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Row1 | Row2 |
      | Category               | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |
      | Asset Type             | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |
      | Asset Type Description | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |
      | Asset Value            | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |


       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | AssetsFields           | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Row1 | Row2 |
      | Category               | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 152  | 136  |
      | Asset Type             | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 152  | 136  |
      | Asset Type Description | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 152  | 136  |
      | Asset Value            | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 152  | 136  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | AssetsFields           | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | Occupation   | Row1 | Row2 |
      | Category               | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | 152  | 136  |
      | Asset Type             | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | 152  | 136  |
      | Asset Type Description | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | 152  | 136  |
      | Asset Value            | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | 152  | 136  |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | AssetsFields           | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Row1 | Row2 |
      | Category               | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |
      | Asset Type             | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |
      | Asset Type Description | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |
      | Asset Value            | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |


    #Bug:CAS-129993
    #FeatureID-ACAUTOCAS-164
  Scenario Outline: ACAUTOCAS-13016: Place holder validation of <AssetsFields> field in case of <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3      | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    When user open assets accordion in financial details page
    Then place holder of "<AssetsFields>" field should be matched with field name
     #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-rishabh.sachan
    @Release @Part-2
    Examples:
      | AssetsFields | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Row1 | Row2 |
      | Asset Value  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |


       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | AssetsFields | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Row1 | Row2 |
      | Asset Value  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 152  | 153  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | AssetsFields | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | Occupation   | Row1 | Row2 |
      | Asset Value  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | 152  | 153  |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | AssetsFields | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Row1 | Row2 |
      | Asset Value  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |



  #Bug:CAS-169977
  #FeatureID-ACAUTOCAS-164
  @AppInfoFixed5
    @Perishable
  Scenario Outline: ACAUTOCAS-13017: Asset Details hyperlink validation in case of <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3      | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open assets accordion in financial details page
    And user reads data from the excel file "financial_details.xlsx" under sheet "assets" and row 160
    When user clicks on Details hyperlink under assets without filling any fields
    Then an error message occurred to first select asset type
     #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-rishabh.sachan
    @Release @Part-2
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | Occupation   | Row1 | Row2 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |


       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | Occupation   | Row1 | Row2 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <Occupation> | 152  | 136  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key | Occupation   | Row1 | Row2 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | <Occupation> | 152  | 136  |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | Occupation   | Row1 | Row2 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <Occupation> | 53   | 91   |



  #FeatureID-ACAUTOCAS-164
  Scenario Outline: ACAUTOCAS-13018: Required <Required_Field> field validation of assets details pop up screen in case of <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3      | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open assets accordion in financial details page
    And user reads data from the excel file "financial_details.xlsx" under sheet "assets" and row 129
    And user selects asset type as "<Assets_Type>"
    And user clicks on Details hyperlink under assets
    When user click on Required to check required fields of assets details pop up screen
    Then following field should be present in assets details pop up screen as required field
      | Ownership Status |
      | Survey Number    |
      | Irrigated        |
      | Landowner Name   |
      #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-rishabh.sachan
    @Release @Part-2
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Assets_Type      | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 53   | 91   |


       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Assets_Type      | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 152  | 136  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | Occupation   | Assets_Type      | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | Agriculture Land | 152  | 136  |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Assets_Type      | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 53   | 91   |




  #FeatureID-ACAUTOCAS-164
  Scenario Outline: ACAUTOCAS-13019: <Field> field validation in All Fields of assets details pop up screen in case of <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3      | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open assets accordion in financial details page
    And user reads data from the excel file "financial_details.xlsx" under sheet "assets" and row 129
    And user selects asset type as "<Assets_Type>"
    And user clicks on Details hyperlink under assets
    When user click on All Fields to check all fields of assets details pop up screen
    Then following field should be present in assets details pop up screen
      | Ownership Status      |
      | Land Area(Acres)      |
      | Survey Number         |
      | Landowner Name        |
      | Encumbrance           |
      | Mortgage              |
      | Irrigated             |
      | Patwari Circle        |
      | Revenue Circle        |
      | Last Landholding Date |
      #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-rishabh.sachan
    @Release @Part-2
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Assets_Type      | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 53   | 91   |

       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Assets_Type      | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 152  | 136  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | Occupation   | Assets_Type      | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | Agriculture Land | 152  | 136  |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Assets_Type      | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 53   | 91   |




  #FeatureID-ACAUTOCAS-164
  Scenario Outline: ACAUTOCAS-13020: Save assets details without filling <Field> field from pop up screen in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3      | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open assets accordion in financial details page
    And user reads data from the excel file "financial_details.xlsx" under sheet "assets" and row 161
    And user selects asset type as "<Assets_Type>"
    And user clicks on Details hyperlink under assets
    When user fills all fields except "<Field>" field to save assets details through pop screen
    Then assets details through pop screen did not saved with an error message
      #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-rishabh.sachan
    @Release @Part-2
    Examples:
      | Field          | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Assets_Type      | Row1 | Row2 |
      | Survey Number  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 53   | 91   |
      | Landowner Name | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 53   | 91   |
      | Irrigated      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 53   | 91   |



       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Field          | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Assets_Type      | Row1 | Row2 |
      | Survey Number  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 152  | 136  |
      | Landowner Name | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 152  | 136  |
      | Irrigated      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 152  | 136  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Field          | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | Occupation   | Assets_Type      | Row1 | Row2 |
      | Survey Number  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | Agriculture Land | 152  | 136  |
      | Landowner Name | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | Agriculture Land | 152  | 136  |
      | Irrigated      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | Agriculture Land | 152  | 136  |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | Field          | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Assets_Type      | Row1 | Row2 |
      | Survey Number  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 53   | 91   |
      | Landowner Name | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 53   | 91   |
      | Irrigated      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 53   | 91   |




    #FeatureID-ACAUTOCAS-164
  @AppInfoFixed5
  Scenario Outline: ACAUTOCAS-13021: Field type validation of <Field> in assets details pop screen in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3      | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open assets accordion in financial details page
    And user reads data from the excel file "financial_details.xlsx" under sheet "assets" and row 161
    And user selects asset type as "<Assets_Type>"
    When user clicks on Details hyperlink under assets
    Then "<Field>" field should be "<Field_Type>" in asset details hyperlink page
      #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-rishabh.sachan
    @Release @Part-2
    Examples:
      | Field                 | Field_Type     | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Assets_Type      | Row1 | Row2 |
      | Ownership Status      | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 53   | 91   |
      | Land Area(Acres)      | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 53   | 91   |
      | Survey Number         | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 53   | 91   |
      | Landowner Name        | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 53   | 91   |
      | Encumbrance           | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 53   | 91   |
      | Mortgage              | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 53   | 91   |
      | Irrigated             | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 53   | 91   |
      | Patwari Circle        | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 53   | 91   |
      | Revenue Circle        | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 53   | 91   |
      | Last Landholding Date | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 53   | 91   |



       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Field                 | Field_Type     | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Assets_Type      | Row1 | Row2 |
      | Ownership Status      | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 152  | 136  |
      | Land Area(Acres)      | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 152  | 136  |
      | Survey Number         | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 152  | 136  |
      | Landowner Name        | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 152  | 136  |
      | Encumbrance           | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 152  | 136  |
      | Mortgage              | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 152  | 136  |
      | Irrigated             | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 152  | 136  |
      | Patwari Circle        | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 152  | 136  |
      | Revenue Circle        | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 152  | 136  |
      | Last Landholding Date | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 152  | 136  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Field                 | Field_Type     | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | Occupation   | Assets_Type      | Row1 | Row2 |
      | Ownership Status      | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | Agriculture Land | 152  | 136  |
      | Land Area(Acres)      | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | Agriculture Land | 152  | 136  |
      | Survey Number         | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | Agriculture Land | 152  | 136  |
      | Landowner Name        | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | Agriculture Land | 152  | 136  |
      | Encumbrance           | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | Agriculture Land | 152  | 136  |
      | Mortgage              | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | Agriculture Land | 152  | 136  |
      | Irrigated             | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | Agriculture Land | 152  | 136  |
      | Patwari Circle        | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | Agriculture Land | 152  | 136  |
      | Revenue Circle        | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | Agriculture Land | 152  | 136  |
      | Last Landholding Date | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> | Agriculture Land | 152  | 136  |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Field                 | Field_Type     | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Assets_Type      | Row1 | Row2 |
      | Ownership Status      | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 53   | 91   |
      | Land Area(Acres)      | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 53   | 91   |
      | Survey Number         | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 53   | 91   |
      | Landowner Name        | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 53   | 91   |
      | Encumbrance           | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 53   | 91   |
      | Mortgage              | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 53   | 91   |
      | Irrigated             | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 53   | 91   |
      | Patwari Circle        | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 53   | 91   |
      | Revenue Circle        | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 53   | 91   |
      | Last Landholding Date | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Agriculture Land | 53   | 91   |





  #FeatureID-ACAUTOCAS-164
  Scenario Outline: ACAUTOCAS-13022: <Field_Name> field validation with <Validity> <InputType> in asset details pop up screen for <Occupation> occupation at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3      | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open assets accordion in financial details page
    And user reads data from the excel file "financial_details.xlsx" under sheet "assets" and row 161
    And user selects asset type as "<Assets_Type>"
    And user clicks on Details hyperlink under assets
    And user reads data from the excel file "financial_details.xlsx" under sheet "assets" and row <FinancialDetails_assets_rowNum>
    When user fills "<Validity>" "<Field_Name>" with "<InputType>" in asset details pop up screen
    And user save the assets details pop screen
    Then "<Field_Name>" field "<Throws_notThrows>" error in assets details pop screen
      #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-rishabh.sachan
    @Release @Part-2
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Field_Name       | Validity | InputType                      | Throws_notThrows                   | Occupation   | Assets_Type      | FinancialDetails_assets_rowNum | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Land Area(Acres) | valid    | digits                         | does not throw any error           | <Occupation> | Agriculture Land | 162                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Land Area(Acres) | valid    | max 4 digits                   | does not throw any error           | <Occupation> | Agriculture Land | 163                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Land Area(Acres) | invalid  | character                      | throws an error with error message | <Occupation> | Agriculture Land | 164                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Land Area(Acres) | invalid  | special character              | throws an error with error message | <Occupation> | Agriculture Land | 165                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Land Area(Acres) | invalid  | negative values                | throws an error with error message | <Occupation> | Agriculture Land | 166                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Land Area(Acres) | invalid  | digits with space              | throws an error with error message | <Occupation> | Agriculture Land | 167                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | digits                         | does not throw any error           | <Occupation> | Agriculture Land | 168                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | character                      | does not throw any error           | <Occupation> | Agriculture Land | 169                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | alphanumeric                   | does not throw any error           | <Occupation> | Agriculture Land | 170                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | negative values                | does not throw any error           | <Occupation> | Agriculture Land | 171                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | digits with space              | does not throw any error           | <Occupation> | Agriculture Land | 172                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | invalid  | special character except #     | throws an error with error message | <Occupation> | Agriculture Land | 173                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | character with #               | does not throw any error           | <Occupation> | Agriculture Land | 174                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | digits with #                  | does not throw any error           | <Occupation> | Agriculture Land | 175                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | character with space           | does not throw any error           | <Occupation> | Agriculture Land | 176                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | character with forward slash   | does not throw any error           | <Occupation> | Agriculture Land | 177                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | character with back slash      | does not throw any error           | <Occupation> | Agriculture Land | 178                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | character with comma           | does not throw any error           | <Occupation> | Agriculture Land | 179                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | character with dot             | does not throw any error           | <Occupation> | Agriculture Land | 180                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | digits with dot                | does not throw any error           | <Occupation> | Agriculture Land | 181                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | character with hyphen          | does not throw any error           | <Occupation> | Agriculture Land | 182                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | digits with hyphen             | does not throw any error           | <Occupation> | Agriculture Land | 183                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | digits                         | does not throw any error           | <Occupation> | Agriculture Land | 184                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | character                      | does not throw any error           | <Occupation> | Agriculture Land | 185                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | alphanumeric                   | does not throw any error           | <Occupation> | Agriculture Land | 186                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | negative values                | does not throw any error           | <Occupation> | Agriculture Land | 187                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | digits with space              | does not throw any error           | <Occupation> | Agriculture Land | 188                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | invalid  | special character except #,$,& | throws an error with error message | <Occupation> | Agriculture Land | 189                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | invalid  | character with #,$,&           | throws an error with error message | <Occupation> | Agriculture Land | 190                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | invalid  | digits with #,$,&              | throws an error with error message | <Occupation> | Agriculture Land | 191                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | character with space           | does not throw any error           | <Occupation> | Agriculture Land | 192                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | character with forward slash   | does not throw any error           | <Occupation> | Agriculture Land | 193                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | invalid  | character with backslash       | throws an error with error message | <Occupation> | Agriculture Land | 194                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | character with !               | does not throw any error           | <Occupation> | Agriculture Land | 195                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | character with comma           | does not throw any error           | <Occupation> | Agriculture Land | 196                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | invalid  | character with dot             | throws an error with error message | <Occupation> | Agriculture Land | 197                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | invalid  | digits with dot                | throws an error with error message | <Occupation> | Agriculture Land | 198                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | character with hyphen          | does not throw any error           | <Occupation> | Agriculture Land | 199                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | digits with hyphen             | does not throw any error           | <Occupation> | Agriculture Land | 200                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Patwari Circle   | valid    | mapped                         | does not throw any error           | <Occupation> | Agriculture Land | 201                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Revenue Circle   | valid    | mapped                         | does not throw any error           | <Occupation> | Agriculture Land | 202                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Patwari Circle   | invalid  | unmapped                       | throws an error with error message | <Occupation> | Agriculture Land | 203                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Revenue Circle   | invalid  | unmapped                       | throws an error with error message | <Occupation> | Agriculture Land | 204                            | 53   | 91   |




       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Field_Name       | Validity | InputType                      | Throws_notThrows                   | Occupation   | Assets_Type      | FinancialDetails_assets_rowNum | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Land Area(Acres) | valid    | digits                         | does not throw any error           | <Occupation> | Agriculture Land | 162                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Land Area(Acres) | valid    | max 4 digits                   | does not throw any error           | <Occupation> | Agriculture Land | 163                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Land Area(Acres) | invalid  | character                      | throws an error with error message | <Occupation> | Agriculture Land | 164                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Land Area(Acres) | invalid  | special character              | throws an error with error message | <Occupation> | Agriculture Land | 165                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Land Area(Acres) | invalid  | negative values                | throws an error with error message | <Occupation> | Agriculture Land | 166                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Land Area(Acres) | invalid  | digits with space              | throws an error with error message | <Occupation> | Agriculture Land | 167                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | digits                         | does not throw any error           | <Occupation> | Agriculture Land | 168                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | character                      | does not throw any error           | <Occupation> | Agriculture Land | 169                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | alphanumeric                   | does not throw any error           | <Occupation> | Agriculture Land | 170                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | negative values                | does not throw any error           | <Occupation> | Agriculture Land | 171                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | digits with space              | does not throw any error           | <Occupation> | Agriculture Land | 172                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | invalid  | special character except #     | throws an error with error message | <Occupation> | Agriculture Land | 173                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | character with #               | does not throw any error           | <Occupation> | Agriculture Land | 174                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | digits with #                  | does not throw any error           | <Occupation> | Agriculture Land | 175                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | character with space           | does not throw any error           | <Occupation> | Agriculture Land | 176                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | character with forward slash   | does not throw any error           | <Occupation> | Agriculture Land | 177                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | character with back slash      | does not throw any error           | <Occupation> | Agriculture Land | 178                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | character with comma           | does not throw any error           | <Occupation> | Agriculture Land | 179                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | character with dot             | does not throw any error           | <Occupation> | Agriculture Land | 180                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | digits with dot                | does not throw any error           | <Occupation> | Agriculture Land | 181                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | character with hyphen          | does not throw any error           | <Occupation> | Agriculture Land | 182                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | digits with hyphen             | does not throw any error           | <Occupation> | Agriculture Land | 183                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | digits                         | does not throw any error           | <Occupation> | Agriculture Land | 184                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | character                      | does not throw any error           | <Occupation> | Agriculture Land | 185                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | alphanumeric                   | does not throw any error           | <Occupation> | Agriculture Land | 186                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | negative values                | does not throw any error           | <Occupation> | Agriculture Land | 187                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | digits with space              | does not throw any error           | <Occupation> | Agriculture Land | 188                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | invalid  | special character except #,$,& | throws an error with error message | <Occupation> | Agriculture Land | 189                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | invalid  | character with #,$,&           | throws an error with error message | <Occupation> | Agriculture Land | 190                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | invalid  | digits with #,$,&              | throws an error with error message | <Occupation> | Agriculture Land | 191                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | character with space           | does not throw any error           | <Occupation> | Agriculture Land | 192                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | character with forward slash   | does not throw any error           | <Occupation> | Agriculture Land | 193                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | invalid  | character with backslash       | throws an error with error message | <Occupation> | Agriculture Land | 194                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | character with !               | does not throw any error           | <Occupation> | Agriculture Land | 195                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | character with comma           | does not throw any error           | <Occupation> | Agriculture Land | 196                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | invalid  | character with dot             | throws an error with error message | <Occupation> | Agriculture Land | 197                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | invalid  | digits with dot                | throws an error with error message | <Occupation> | Agriculture Land | 198                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | character with hyphen          | does not throw any error           | <Occupation> | Agriculture Land | 199                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | digits with hyphen             | does not throw any error           | <Occupation> | Agriculture Land | 200                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Patwari Circle   | valid    | mapped                         | does not throw any error           | <Occupation> | Agriculture Land | 201                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Revenue Circle   | valid    | mapped                         | does not throw any error           | <Occupation> | Agriculture Land | 202                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Patwari Circle   | invalid  | unmapped                       | throws an error with error message | <Occupation> | Agriculture Land | 203                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Revenue Circle   | invalid  | unmapped                       | throws an error with error message | <Occupation> | Agriculture Land | 204                            | 152  | 136  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | Field_Name       | Validity | InputType                      | Throws_notThrows                   | Occupation   | Assets_Type      | FinancialDetails_assets_rowNum | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Land Area(Acres) | valid    | digits                         | does not throw any error           | <Occupation> | Agriculture Land | 162                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Land Area(Acres) | valid    | max 4 digits                   | does not throw any error           | <Occupation> | Agriculture Land | 163                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Land Area(Acres) | invalid  | character                      | throws an error with error message | <Occupation> | Agriculture Land | 164                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Land Area(Acres) | invalid  | special character              | throws an error with error message | <Occupation> | Agriculture Land | 165                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Land Area(Acres) | invalid  | negative values                | throws an error with error message | <Occupation> | Agriculture Land | 166                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Land Area(Acres) | invalid  | digits with space              | throws an error with error message | <Occupation> | Agriculture Land | 167                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Survey Number    | valid    | digits                         | does not throw any error           | <Occupation> | Agriculture Land | 168                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Survey Number    | valid    | character                      | does not throw any error           | <Occupation> | Agriculture Land | 169                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Survey Number    | valid    | alphanumeric                   | does not throw any error           | <Occupation> | Agriculture Land | 170                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Survey Number    | valid    | negative values                | does not throw any error           | <Occupation> | Agriculture Land | 171                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Survey Number    | valid    | digits with space              | does not throw any error           | <Occupation> | Agriculture Land | 172                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Survey Number    | invalid  | special character except #     | throws an error with error message | <Occupation> | Agriculture Land | 173                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Survey Number    | valid    | character with #               | does not throw any error           | <Occupation> | Agriculture Land | 174                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Survey Number    | valid    | digits with #                  | does not throw any error           | <Occupation> | Agriculture Land | 175                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Survey Number    | valid    | character with space           | does not throw any error           | <Occupation> | Agriculture Land | 176                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Survey Number    | valid    | character with forward slash   | does not throw any error           | <Occupation> | Agriculture Land | 177                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Survey Number    | valid    | character with back slash      | does not throw any error           | <Occupation> | Agriculture Land | 178                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Survey Number    | valid    | character with comma           | does not throw any error           | <Occupation> | Agriculture Land | 179                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Survey Number    | valid    | character with dot             | does not throw any error           | <Occupation> | Agriculture Land | 180                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Survey Number    | valid    | digits with dot                | does not throw any error           | <Occupation> | Agriculture Land | 181                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Survey Number    | valid    | character with hyphen          | does not throw any error           | <Occupation> | Agriculture Land | 182                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Survey Number    | valid    | digits with hyphen             | does not throw any error           | <Occupation> | Agriculture Land | 183                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Landowner Name   | valid    | digits                         | does not throw any error           | <Occupation> | Agriculture Land | 184                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Landowner Name   | valid    | character                      | does not throw any error           | <Occupation> | Agriculture Land | 185                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Landowner Name   | valid    | alphanumeric                   | does not throw any error           | <Occupation> | Agriculture Land | 186                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Landowner Name   | valid    | negative values                | does not throw any error           | <Occupation> | Agriculture Land | 187                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Landowner Name   | valid    | digits with space              | does not throw any error           | <Occupation> | Agriculture Land | 188                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Landowner Name   | invalid  | special character except #,$,& | throws an error with error message | <Occupation> | Agriculture Land | 189                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Landowner Name   | invalid  | character with #,$,&           | throws an error with error message | <Occupation> | Agriculture Land | 190                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Landowner Name   | invalid  | digits with #,$,&              | throws an error with error message | <Occupation> | Agriculture Land | 191                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Landowner Name   | valid    | character with space           | does not throw any error           | <Occupation> | Agriculture Land | 192                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Landowner Name   | valid    | character with forward slash   | does not throw any error           | <Occupation> | Agriculture Land | 193                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Landowner Name   | invalid  | character with backslash       | throws an error with error message | <Occupation> | Agriculture Land | 194                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Landowner Name   | valid    | character with !               | does not throw any error           | <Occupation> | Agriculture Land | 195                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Landowner Name   | valid    | character with comma           | does not throw any error           | <Occupation> | Agriculture Land | 196                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Landowner Name   | invalid  | character with dot             | throws an error with error message | <Occupation> | Agriculture Land | 197                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Landowner Name   | invalid  | digits with dot                | throws an error with error message | <Occupation> | Agriculture Land | 198                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Landowner Name   | valid    | character with hyphen          | does not throw any error           | <Occupation> | Agriculture Land | 199                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Landowner Name   | valid    | digits with hyphen             | does not throw any error           | <Occupation> | Agriculture Land | 200                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Patwari Circle   | valid    | mapped                         | does not throw any error           | <Occupation> | Agriculture Land | 201                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Revenue Circle   | valid    | mapped                         | does not throw any error           | <Occupation> | Agriculture Land | 202                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Patwari Circle   | invalid  | unmapped                       | throws an error with error message | <Occupation> | Agriculture Land | 203                            | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Revenue Circle   | invalid  | unmapped                       | throws an error with error message | <Occupation> | Agriculture Land | 204                            | 152  | 136  |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Field_Name       | Validity | InputType                      | Throws_notThrows                   | Occupation   | Assets_Type      | FinancialDetails_assets_rowNum | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Land Area(Acres) | valid    | digits                         | does not throw any error           | <Occupation> | Agriculture Land | 162                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Land Area(Acres) | valid    | max 4 digits                   | does not throw any error           | <Occupation> | Agriculture Land | 163                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Land Area(Acres) | invalid  | character                      | throws an error with error message | <Occupation> | Agriculture Land | 164                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Land Area(Acres) | invalid  | special character              | throws an error with error message | <Occupation> | Agriculture Land | 165                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Land Area(Acres) | invalid  | negative values                | throws an error with error message | <Occupation> | Agriculture Land | 166                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Land Area(Acres) | invalid  | digits with space              | throws an error with error message | <Occupation> | Agriculture Land | 167                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | digits                         | does not throw any error           | <Occupation> | Agriculture Land | 168                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | character                      | does not throw any error           | <Occupation> | Agriculture Land | 169                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | alphanumeric                   | does not throw any error           | <Occupation> | Agriculture Land | 170                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | negative values                | does not throw any error           | <Occupation> | Agriculture Land | 171                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | digits with space              | does not throw any error           | <Occupation> | Agriculture Land | 172                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | invalid  | special character except #     | throws an error with error message | <Occupation> | Agriculture Land | 173                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | character with #               | does not throw any error           | <Occupation> | Agriculture Land | 174                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | digits with #                  | does not throw any error           | <Occupation> | Agriculture Land | 175                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | character with space           | does not throw any error           | <Occupation> | Agriculture Land | 176                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | character with forward slash   | does not throw any error           | <Occupation> | Agriculture Land | 177                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | character with back slash      | does not throw any error           | <Occupation> | Agriculture Land | 178                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | character with comma           | does not throw any error           | <Occupation> | Agriculture Land | 179                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | character with dot             | does not throw any error           | <Occupation> | Agriculture Land | 180                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | digits with dot                | does not throw any error           | <Occupation> | Agriculture Land | 181                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | character with hyphen          | does not throw any error           | <Occupation> | Agriculture Land | 182                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Survey Number    | valid    | digits with hyphen             | does not throw any error           | <Occupation> | Agriculture Land | 183                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | digits                         | does not throw any error           | <Occupation> | Agriculture Land | 184                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | character                      | does not throw any error           | <Occupation> | Agriculture Land | 185                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | alphanumeric                   | does not throw any error           | <Occupation> | Agriculture Land | 186                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | negative values                | does not throw any error           | <Occupation> | Agriculture Land | 187                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | digits with space              | does not throw any error           | <Occupation> | Agriculture Land | 188                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | invalid  | special character except #,$,& | throws an error with error message | <Occupation> | Agriculture Land | 189                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | invalid  | character with #,$,&           | throws an error with error message | <Occupation> | Agriculture Land | 190                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | invalid  | digits with #,$,&              | throws an error with error message | <Occupation> | Agriculture Land | 191                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | character with space           | does not throw any error           | <Occupation> | Agriculture Land | 192                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | character with forward slash   | does not throw any error           | <Occupation> | Agriculture Land | 193                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | invalid  | character with backslash       | throws an error with error message | <Occupation> | Agriculture Land | 194                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | character with !               | does not throw any error           | <Occupation> | Agriculture Land | 195                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | character with comma           | does not throw any error           | <Occupation> | Agriculture Land | 196                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | invalid  | character with dot             | throws an error with error message | <Occupation> | Agriculture Land | 197                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | invalid  | digits with dot                | throws an error with error message | <Occupation> | Agriculture Land | 198                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | character with hyphen          | does not throw any error           | <Occupation> | Agriculture Land | 199                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Landowner Name   | valid    | digits with hyphen             | does not throw any error           | <Occupation> | Agriculture Land | 200                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Patwari Circle   | valid    | mapped                         | does not throw any error           | <Occupation> | Agriculture Land | 201                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Revenue Circle   | valid    | mapped                         | does not throw any error           | <Occupation> | Agriculture Land | 202                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Patwari Circle   | invalid  | unmapped                       | throws an error with error message | <Occupation> | Agriculture Land | 203                            | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Revenue Circle   | invalid  | unmapped                       | throws an error with error message | <Occupation> | Agriculture Land | 204                            | 53   | 91   |







  #FeatureID-ACAUTOCAS-164
  @FixedTest
  Scenario Outline: ACAUTOCAS-13023: Dependent field <DependentFields> validation based on <Fields> field in assets details pop up screen for <Occupation> at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3      | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open assets accordion in financial details page
    And user reads data from the excel file "financial_details.xlsx" under sheet "assets" and row 161
    And user selects asset type as "<Assets_Type>"
    And user clicks on Details hyperlink under assets
    And user reads data from the excel file "financial_details.xlsx" under sheet "assets" and row 205
    When user fills "valid" "<Fields>" with "<Input>" in asset details pop up screen
    Then "<DependentFields>" field should display in asset details pop up screen
      #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-rishabh.sachan
    @Release @Part-2
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Fields           | Input      | DependentFields                      | Occupation   | Assets_Type      | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Ownership Status | Leased Out | Agriculture Lessee Details accordion | <Occupation> | Agriculture Land | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Irrigated        | Yes        | Irrigation Source                    | <Occupation> | Agriculture Land | 53   | 91   |


       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Fields           | Input      | DependentFields                      | Occupation   | Assets_Type      | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Ownership Status | Leased Out | Agriculture Lessee Details accordion | <Occupation> | Agriculture Land | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Irrigated        | Yes        | Irrigation Source                    | <Occupation> | Agriculture Land | 152  | 136  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | Fields           | Input      | DependentFields                      | Occupation   | Assets_Type      | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Ownership Status | Leased Out | Agriculture Lessee Details accordion | <Occupation> | Agriculture Land | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Irrigated        | Yes        | Irrigation Source                    | <Occupation> | Agriculture Land | 152  | 136  |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Fields           | Input      | DependentFields                      | Occupation   | Assets_Type      | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Ownership Status | Leased Out | Agriculture Lessee Details accordion | <Occupation> | Agriculture Land | 53   | 91   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Irrigated        | Yes        | Irrigation Source                    | <Occupation> | Agriculture Land | 53   | 91   |
