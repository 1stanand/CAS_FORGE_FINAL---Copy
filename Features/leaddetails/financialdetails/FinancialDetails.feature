@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@Reconciled
@AppInfoAdoption
#${ApplicantType:["indiv"]}
Feature:Financial details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#  In default workflow Recommendation stage is not applicable for all LoBs. Please add comment for Recommendation stage - check workflow for recommendation stage and implement.


    #Bug:CAS-168033
  #FeatureID-ACAUTOCAS-10503,CAS-168033
  Scenario Outline: ACAUTOCAS-13001: <Saved&Next> validation in financial details for <Occupation> occupation  at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | <Row1> | Salaried                       |
      | employment_details.xlsx | home | 3      | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row2> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user reads data from the excel file "financial_details.xlsx" under sheet "assets" and row 129
    And user fill assets details with "single" assets category
    When user "<Saved&Next>" the financial details
    Then financial details should be "<Saved&Next>" successfully
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-akash.bansal
    Examples:
      | Occupation   | ProductType   | ApplicationStage   | Saved&Next  | ApplicantType   | Category | key | Row1 | Row2 |
      | <Occupation> | <ProductType> | <ApplicationStage> | Save        | <ApplicantType> |          |     | 7    | 53   |
      | <Occupation> | <ProductType> | <ApplicationStage> | Save & Next | <ApplicantType> |          |     | 7    | 53   |

    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${ProductType:["IAF","IHF"]}
     # ${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Occupation   | ProductType   | ApplicationStage   | Saved&Next  | ApplicantType   | Category | key | Row1 | Row2 |
      | <Occupation> | <ProductType> | <ApplicationStage> | Save        | <ApplicantType> |          |     | 153  | 152  |
      | <Occupation> | <ProductType> | <ApplicationStage> | Save & Next | <ApplicantType> |          |     | 153  | 152  |

       # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
        # ${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Occupation   | ProductType   | ApplicationStage   | Saved&Next  | ApplicantType   | Category   | key | Row1 | Row2 |
      | <Occupation> | <ProductType> | <ApplicationStage> | Save        | <ApplicantType> | <Category> |     | 153  | 152  |
      | <Occupation> | <ProductType> | <ApplicationStage> | Save & Next | <ApplicantType> | <Category> |     | 153  | 152  |


      # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
   @NotImplemented
    Examples:
      | Occupation   | ProductType   | ApplicationStage   | Saved&Next  | ApplicantType   | Category | key | Row1 | Row2 |
      | <Occupation> | <ProductType> | <ApplicationStage> | Save        | <ApplicantType> |          |     | 7    | 53   |
      | <Occupation> | <ProductType> | <ApplicationStage> | Save & Next | <ApplicantType> |          |     | 7    | 53   |


    #FeatureID-ACAUTOCAS-10503,CAS-175396
  Scenario Outline: ACAUTOCAS-13002: financial details validation after deleting <Occupation> occupation at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | <Row1> | Salaried                       |
      | employment_details.xlsx | home | 3      | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row2> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user reads data from the excel file "financial_details.xlsx" under sheet "assets" and row 129
    And user fill assets details with "single" assets category
    And user "Save & Compute" the financial details
    And user open Employment Details
    When user deletes existing occupations
    And user open Financial Details
    Then financial details entry should be deleted
          # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-akash.bansal
    Examples:
      | Occupation   | ProductType   | ApplicationStage   | ApplicantType   | Category | key | Row1 | Row2 |
      | <Occupation> | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | 7    | 53   |


      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${ProductType:["IAF","IHF"]}
        # ${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Occupation   | ProductType   | ApplicationStage   | ApplicantType   | Category | key | Row1 | Row2 |
      | <Occupation> | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | 153  | 152  |

       # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
     # ${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Occupation   | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | Row1 | Row2 |
      | <Occupation> | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | 153  | 152  |



      # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
   @NotImplemented
    Examples:
      | Occupation   | ProductType   | ApplicationStage   | ApplicantType   | Category | key | Row1 | Row2 |
      | <Occupation> | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | 7    | 53   |


  #Bug:CAS-169654
  #FeatureID-ACAUTOCAS-10503,CAS-169654
  Scenario Outline: ACAUTOCAS-13003: Financial details validation after deleting "<Occupation>" occupation which is major occupation in financial details at "<ApplicationStage>" stage for "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | <Row1> | Salaried                       |
      | employment_details.xlsx | home | 3      | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row2> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user reads data from the excel file "financial_details.xlsx" under sheet "assets" and row 129
    And user fill assets details with "single" assets category
    And user "Save & Compute" the financial details
    And user open Employment Details
    When user deletes existing occupations
    And user open Financial Details
    Then an error display as A major occupation is required to fills Financial Details
     # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-akash.bansal
    Examples:
      | Occupation   | ProductType   | ApplicationStage   | ApplicantType   | Category | key | Row1 | Row2 |
      | <Occupation> | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | 7    | 53   |



      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${ProductType:["IAF","IHF"]}
     # ${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Occupation   | ProductType   | ApplicationStage   | ApplicantType   | Category | key | Row1 | Row2 |
      | <Occupation> | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | 153  | 152  |

       # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
      #${Category:["bonds"]}
      # ${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Occupation   | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | Row1 | Row2 |
      | <Occupation> | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | 153  | 152  |


      # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
   @NotImplemented
    Examples:
      | Occupation   | ProductType   | ApplicationStage   | ApplicantType   | Category | key | Row1 | Row2 |
      | <Occupation> | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | 7    | 53   |


  #Bug:CAS-173998,CAS-124502
  #FeatureID-ACAUTOCAS-10503,CAS-173998,CAS-124502
  @FixedExp
  Scenario Outline: ACAUTOCAS-13004: <Financial_Accordion> accordion validation at "<ApplicationStage>" stage in "<ProductType>" with occupation as "<Occupation>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    When user open "<Financial_Accordion>" accordion for occupation as "<Occupation>"
    Then "<Financial_Accordion>" accordion should be open successfully for occupation as "<Occupation>"
    # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-akash.bansal
    Examples:
      | ApplicationStage   | ProductType   | Occupation                     | Financial_Accordion  | ApplicantType   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Agriculture Income   | <ApplicantType> |          |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Crop Income          | <ApplicantType> |          |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Other Income Details | <ApplicantType> |          |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Agriculture Expense  | <ApplicantType> |          |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Expense Details      | <ApplicantType> |          |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Assets               | <ApplicantType> |          |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Lease Land Details   | <ApplicantType> |          |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Liability Details    | <ApplicantType> |          |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | Income Details       | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | Other Income Details | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | Deduction            | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | Expense Details      | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | Assets               | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | Liability Details    | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | Income Details       | <ApplicantType> |          |     | employment_details.xlsx | home                   | 33                            |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | Other Income Details | <ApplicantType> |          |     | employment_details.xlsx | home                   | 33                            |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | Deduction            | <ApplicantType> |          |     | employment_details.xlsx | home                   | 33                            |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | Expense Details      | <ApplicantType> |          |     | employment_details.xlsx | home                   | 33                            |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | Assets               | <ApplicantType> |          |     | employment_details.xlsx | home                   | 33                            |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | Liability Details    | <ApplicantType> |          |     | employment_details.xlsx | home                   | 33                            |
      | <ApplicationStage> | <ProductType> | Salaried                       | Income Details       | <ApplicantType> |          |     | employment_details.xlsx | home                   | 7                             |
      | <ApplicationStage> | <ProductType> | Salaried                       | Other Income Details | <ApplicantType> |          |     | employment_details.xlsx | home                   | 7                             |
      | <ApplicationStage> | <ProductType> | Salaried                       | Deduction            | <ApplicantType> |          |     | employment_details.xlsx | home                   | 7                             |
      | <ApplicationStage> | <ProductType> | Salaried                       | Expense Details      | <ApplicantType> |          |     | employment_details.xlsx | home                   | 7                             |
      | <ApplicationStage> | <ProductType> | Salaried                       | Assets               | <ApplicantType> |          |     | employment_details.xlsx | home                   | 7                             |
      | <ApplicationStage> | <ProductType> | Salaried                       | Liability Details    | <ApplicantType> |          |     | employment_details.xlsx | home                   | 7                             |
      | <ApplicationStage> | <ProductType> | Others                         | Income Details       | <ApplicantType> |          |     | employment_details.xlsx | home                   | 69                            |
      | <ApplicationStage> | <ProductType> | Others                         | Other Income Details | <ApplicantType> |          |     | employment_details.xlsx | home                   | 69                            |
      | <ApplicationStage> | <ProductType> | Others                         | Deduction            | <ApplicantType> |          |     | employment_details.xlsx | home                   | 69                            |
      | <ApplicationStage> | <ProductType> | Others                         | Expense Details      | <ApplicantType> |          |     | employment_details.xlsx | home                   | 69                            |
      | <ApplicationStage> | <ProductType> | Others                         | Assets               | <ApplicantType> |          |     | employment_details.xlsx | home                   | 69                            |
      | <ApplicationStage> | <ProductType> | Others                         | Liability Details    | <ApplicantType> |          |     | employment_details.xlsx | home                   | 69                            |

        # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | Occupation                     | Financial_Accordion  | ApplicantType   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Agriculture Income   | <ApplicantType> |          |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Crop Income          | <ApplicantType> |          |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Other Income Details | <ApplicantType> |          |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Agriculture Expense  | <ApplicantType> |          |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Expense Details      | <ApplicantType> |          |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Assets               | <ApplicantType> |          |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Lease Land Details   | <ApplicantType> |          |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Liability Details    | <ApplicantType> |          |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | Income Details       | <ApplicantType> |          |     | employment_details.xlsx | home                   | 152                           |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | Other Income Details | <ApplicantType> |          |     | employment_details.xlsx | home                   | 152                           |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | Deduction            | <ApplicantType> |          |     | employment_details.xlsx | home                   | 152                           |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | Expense Details      | <ApplicantType> |          |     | employment_details.xlsx | home                   | 152                           |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | Assets               | <ApplicantType> |          |     | employment_details.xlsx | home                   | 152                           |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | Liability Details    | <ApplicantType> |          |     | employment_details.xlsx | home                   | 152                           |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | Income Details       | <ApplicantType> |          |     | employment_details.xlsx | home                   | 33                            |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | Other Income Details | <ApplicantType> |          |     | employment_details.xlsx | home                   | 33                            |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | Deduction            | <ApplicantType> |          |     | employment_details.xlsx | home                   | 33                            |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | Expense Details      | <ApplicantType> |          |     | employment_details.xlsx | home                   | 33                            |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | Assets               | <ApplicantType> |          |     | employment_details.xlsx | home                   | 33                            |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | Liability Details    | <ApplicantType> |          |     | employment_details.xlsx | home                   | 33                            |
      | <ApplicationStage> | <ProductType> | Salaried                       | Income Details       | <ApplicantType> |          |     | employment_details.xlsx | home                   | 153                           |
      | <ApplicationStage> | <ProductType> | Salaried                       | Other Income Details | <ApplicantType> |          |     | employment_details.xlsx | home                   | 153                           |
      | <ApplicationStage> | <ProductType> | Salaried                       | Deduction            | <ApplicantType> |          |     | employment_details.xlsx | home                   | 153                           |
      | <ApplicationStage> | <ProductType> | Salaried                       | Expense Details      | <ApplicantType> |          |     | employment_details.xlsx | home                   | 153                           |
      | <ApplicationStage> | <ProductType> | Salaried                       | Assets               | <ApplicantType> |          |     | employment_details.xlsx | home                   | 153                           |
      | <ApplicationStage> | <ProductType> | Salaried                       | Liability Details    | <ApplicantType> |          |     | employment_details.xlsx | home                   | 153                           |
      | <ApplicationStage> | <ProductType> | Others                         | Income Details       | <ApplicantType> |          |     | employment_details.xlsx | home                   | 69                            |
      | <ApplicationStage> | <ProductType> | Others                         | Other Income Details | <ApplicantType> |          |     | employment_details.xlsx | home                   | 69                            |
      | <ApplicationStage> | <ProductType> | Others                         | Deduction            | <ApplicantType> |          |     | employment_details.xlsx | home                   | 69                            |
      | <ApplicationStage> | <ProductType> | Others                         | Expense Details      | <ApplicantType> |          |     | employment_details.xlsx | home                   | 69                            |
      | <ApplicationStage> | <ProductType> | Others                         | Assets               | <ApplicantType> |          |     | employment_details.xlsx | home                   | 69                            |
      | <ApplicationStage> | <ProductType> | Others                         | Liability Details    | <ApplicantType> |          |     | employment_details.xlsx | home                   | 69                            |

       # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | Occupation                     | Financial_Accordion  | ApplicantType   | Category   | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Agriculture Income   | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Crop Income          | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Other Income Details | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Agriculture Expense  | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Expense Details      | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Assets               | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Lease Land Details   | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Liability Details    | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | Income Details       | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 152                           |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | Other Income Details | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 152                           |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | Deduction            | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 152                           |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | Expense Details      | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 152                           |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | Assets               | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 152                           |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | Liability Details    | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 152                           |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | Income Details       | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 33                            |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | Other Income Details | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 33                            |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | Deduction            | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 33                            |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | Expense Details      | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 33                            |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | Assets               | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 33                            |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | Liability Details    | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 33                            |
      | <ApplicationStage> | <ProductType> | Salaried                       | Income Details       | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 153                           |
      | <ApplicationStage> | <ProductType> | Salaried                       | Other Income Details | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 153                           |
      | <ApplicationStage> | <ProductType> | Salaried                       | Deduction            | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 153                           |
      | <ApplicationStage> | <ProductType> | Salaried                       | Expense Details      | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 153                           |
      | <ApplicationStage> | <ProductType> | Salaried                       | Assets               | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 153                           |
      | <ApplicationStage> | <ProductType> | Salaried                       | Liability Details    | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 153                           |
      | <ApplicationStage> | <ProductType> | Others                         | Income Details       | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 69                            |
      | <ApplicationStage> | <ProductType> | Others                         | Other Income Details | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 69                            |
      | <ApplicationStage> | <ProductType> | Others                         | Deduction            | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 69                            |
      | <ApplicationStage> | <ProductType> | Others                         | Expense Details      | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 69                            |
      | <ApplicationStage> | <ProductType> | Others                         | Assets               | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 69                            |
      | <ApplicationStage> | <ProductType> | Others                         | Liability Details    | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 69                            |

      # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation                     | Financial_Accordion  | ApplicantType   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Agriculture Income   | <ApplicantType> |          |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Crop Income          | <ApplicantType> |          |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Other Income Details | <ApplicantType> |          |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Agriculture Expense  | <ApplicantType> |          |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Expense Details      | <ApplicantType> |          |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Assets               | <ApplicantType> |          |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Lease Land Details   | <ApplicantType> |          |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Agriculture                    | Liability Details    | <ApplicantType> |          |     | employment_details.xlsx | home                   | 3                             |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | Income Details       | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | Other Income Details | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | Deduction            | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | Expense Details      | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | Assets               | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | Liability Details    | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | Income Details       | <ApplicantType> |          |     | employment_details.xlsx | home                   | 33                            |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | Other Income Details | <ApplicantType> |          |     | employment_details.xlsx | home                   | 33                            |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | Deduction            | <ApplicantType> |          |     | employment_details.xlsx | home                   | 33                            |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | Expense Details      | <ApplicantType> |          |     | employment_details.xlsx | home                   | 33                            |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | Assets               | <ApplicantType> |          |     | employment_details.xlsx | home                   | 33                            |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | Liability Details    | <ApplicantType> |          |     | employment_details.xlsx | home                   | 33                            |
      | <ApplicationStage> | <ProductType> | Salaried                       | Income Details       | <ApplicantType> |          |     | employment_details.xlsx | home                   | 7                             |
      | <ApplicationStage> | <ProductType> | Salaried                       | Other Income Details | <ApplicantType> |          |     | employment_details.xlsx | home                   | 7                             |
      | <ApplicationStage> | <ProductType> | Salaried                       | Deduction            | <ApplicantType> |          |     | employment_details.xlsx | home                   | 7                             |
      | <ApplicationStage> | <ProductType> | Salaried                       | Expense Details      | <ApplicantType> |          |     | employment_details.xlsx | home                   | 7                             |
      | <ApplicationStage> | <ProductType> | Salaried                       | Assets               | <ApplicantType> |          |     | employment_details.xlsx | home                   | 7                             |
      | <ApplicationStage> | <ProductType> | Salaried                       | Liability Details    | <ApplicantType> |          |     | employment_details.xlsx | home                   | 7                             |
      | <ApplicationStage> | <ProductType> | Others                         | Income Details       | <ApplicantType> |          |     | employment_details.xlsx | home                   | 69                            |
      | <ApplicationStage> | <ProductType> | Others                         | Other Income Details | <ApplicantType> |          |     | employment_details.xlsx | home                   | 69                            |
      | <ApplicationStage> | <ProductType> | Others                         | Deduction            | <ApplicantType> |          |     | employment_details.xlsx | home                   | 69                            |
      | <ApplicationStage> | <ProductType> | Others                         | Expense Details      | <ApplicantType> |          |     | employment_details.xlsx | home                   | 69                            |
      | <ApplicationStage> | <ProductType> | Others                         | Assets               | <ApplicantType> |          |     | employment_details.xlsx | home                   | 69                            |
      | <ApplicationStage> | <ProductType> | Others                         | Liability Details    | <ApplicantType> |          |     | employment_details.xlsx | home                   | 69                            |



 #Bug:CAS-135841
#FeatureID-ACAUTOCAS-10503,CAS-135841
  @longRun
  Scenario Outline: ACAUTOCAS-13005: Adding <Financial_Details> duplicate header at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | <Row1> | Salaried                       |
      | employment_details.xlsx | home | 3      | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row2> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user open "<Financial_Details>" accordion for occupation as "<Occupation>"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_Sheet>" and row <FinancialDetailsRowNum>
    And user fills "<Financial_Details>" with duplicate header of "<Occupation>" type
    When user "Save & Compute" the financial details
    Then financial details does not save with error message
        # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-akash.bansal
    Examples:
      | Financial_Details    | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_Sheet | FinancialDetailsRowNum | Occupation   | ApplicantType   | Category | key | Row1 | Row2 |
      | income details       | <ApplicationStage> | <ProductType> | financial_details.xlsx | income_details         | 0                      | <Occupation> | <ApplicantType> |          |     | 7    | 53   |
      | other income details | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details   | 0                      | <Occupation> | <ApplicantType> |          |     | 7    | 53   |
      | deduction            | <ApplicationStage> | <ProductType> | financial_details.xlsx | deductions             | 0                      | <Occupation> | <ApplicantType> |          |     | 7    | 53   |
      | expense details      | <ApplicationStage> | <ProductType> | financial_details.xlsx | expense_details        | 0                      | <Occupation> | <ApplicantType> |          |     | 7    | 53   |


      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IAF","IHF"]}
        # ${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Financial_Details    | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_Sheet | FinancialDetailsRowNum | Occupation   | ApplicantType   | Category | key | Row1 | Row2 |
      | income details       | <ApplicationStage> | <ProductType> | financial_details.xlsx | income_details         | 0                      | <Occupation> | <ApplicantType> |          |     | 153  | 152  |
      | other income details | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details   | 0                      | <Occupation> | <ApplicantType> |          |     | 153  | 152  |
      | deduction            | <ApplicationStage> | <ProductType> | financial_details.xlsx | deductions             | 0                      | <Occupation> | <ApplicantType> |          |     | 153  | 152  |
      | expense details      | <ApplicationStage> | <ProductType> | financial_details.xlsx | expense_details        | 0                      | <Occupation> | <ApplicantType> |          |     | 153  | 152  |

       # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
      #${Category:["bonds"]}
     # ${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Financial_Details    | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_Sheet | FinancialDetailsRowNum | Occupation   | ApplicantType   | Category   | key | Row1 | Row2 |
      | income details       | <ApplicationStage> | <ProductType> | financial_details.xlsx | income_details         | 0                      | <Occupation> | <ApplicantType> | <Category> |     | 153  | 152  |
      | other income details | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details   | 0                      | <Occupation> | <ApplicantType> | <Category> |     | 153  | 152  |
      | deduction            | <ApplicationStage> | <ProductType> | financial_details.xlsx | deductions             | 0                      | <Occupation> | <ApplicantType> | <Category> |     | 153  | 152  |
      | expense details      | <ApplicationStage> | <ProductType> | financial_details.xlsx | expense_details        | 0                      | <Occupation> | <ApplicantType> | <Category> |     | 153  | 152  |


      # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
   @NotImplemented
    Examples:
      | Financial_Details    | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_Sheet | FinancialDetailsRowNum | Occupation   | ApplicantType   | Category | key | Row1 | Row2 |
      | income details       | <ApplicationStage> | <ProductType> | financial_details.xlsx | income_details         | 0                      | <Occupation> | <ApplicantType> |          |     | 7    | 53   |
      | other income details | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details   | 0                      | <Occupation> | <ApplicantType> |          |     | 7    | 53   |
      | deduction            | <ApplicationStage> | <ProductType> | financial_details.xlsx | deductions             | 0                      | <Occupation> | <ApplicantType> |          |     | 7    | 53   |
      | expense details      | <ApplicationStage> | <ProductType> | financial_details.xlsx | expense_details        | 0                      | <Occupation> | <ApplicantType> |          |     | 7    | 53   |

