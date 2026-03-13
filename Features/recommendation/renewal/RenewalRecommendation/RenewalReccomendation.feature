@Epic-RenewalAndRenewalRecom
@AuthoredBy-anshul.kant
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
@RenewalRecommendation
@NotImplemented
#Pre-Requisite:Formula for Ratios is defined in finnone_cas_messages.properties
Feature: DBR calculation verification

  Background:
    Given user is logged in CAS
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>



###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-10983
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["App Update Recommendation"]}

  Scenario Outline: Verify fields in Ability Indicator for <ProductType> at <ApplicationStage>
    When user opens an application of "<ProductType>" at "<ApplicationStage>" from application grid
    And click on Ability Indicator Accordion
    Then user should be able to view list of fields
      | DBR                       |
      | IIR                       |
      | Cheque Bounce percentage  |
      | ABB/EMI %                 |
      | Average Credit %          |
      | RATIO 4                   |
      | RATIO 5                   |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-10983
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["App Update Recommendation"]}

  Scenario Outline: Verify calculation of DBR for "<OccupationType>"
    When user opens an application of at "<ApplicationStage>" for "<ProductType>"
    And user reads data from the excel file "<EmploymentDetails>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_rowNum> with "<OccupationType>"
    And click on Ability Indicator Accordion
    Then "<Field>" should get calculated as per the formula seeded in the code
    Examples:
      | ProductType   | ApplicationStage   | Field | OccupationType                 | EmploymentDetails       | EmploymentDetails_home | EmploymentDetails_rowNum |
      | <ProductType> | <ApplicationStage> | DBR   | Agriculture                    | employment_details.xlsx | home                   | 0                        |
      | <ProductType> | <ApplicationStage> | DBR   | Salaried                       | employment_details.xlsx | home                   | 0                        |
      | <ProductType> | <ApplicationStage> | DBR   | Self Employed Non Professional | employment_details.xlsx | home                   | 0                        |
      | <ProductType> | <ApplicationStage> | DBR   | Self Employed Professional     | employment_details.xlsx | home                   | 0                        |
      | <ProductType> | <ApplicationStage> | DBR   | Others                         | employment_details.xlsx | home                   | 0                        |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-10983
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["App Update Recommendation"]}

  Scenario Outline: Verify calculation of IIR for "<OccupationType>"
    When user opens an application of at "<ApplicationStage>" for "<ProductType>"
    And user reads data from the excel file "<EmploymentDetails>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_rowNum> with "<OccupationType>"
    And click on Ability Indicator Accordion
    Then "<Field>" should get calculated as per the formula seeded in the code

    Examples:
      | ProductType   | ApplicationStage   | Field | OccupationType                 | EmploymentDetails       | EmploymentDetails_home | EmploymentDetails_rowNum |
      | <ProductType> | <ApplicationStage> | IIR   | Agriculture                    | employment_details.xlsx | home                   | 0                        |
      | <ProductType> | <ApplicationStage> | IIR   | Salaried                       | employment_details.xlsx | home                   | 0                        |
      | <ProductType> | <ApplicationStage> | IIR   | Self Employed Non Professional | employment_details.xlsx | home                   | 0                        |
      | <ProductType> | <ApplicationStage> | IIR   | Self Employed Professional     | employment_details.xlsx | home                   | 0                        |
      | <ProductType> | <ApplicationStage> | IIR   | Others                         | employment_details.xlsx | home                   | 0                        |



###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-10983
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["App Update Recommendation"]}

  Scenario Outline: Check the default name of "<Field>"
    When user opens an application of at "<ApplicationStage>" for "<ProductType>"
    And check Name of the Ratios in Ability Indicator Accordion
    Then Default Name of the "<Field>" should be displayed

    Examples:
      | ProductType   | ApplicationStage   | Field                    |
      | <ProductType> | <ApplicationStage> | Cheque Bounce percentage |
      | <ProductType> | <ApplicationStage> | ABB/EMI %                |
      | <ProductType> | <ApplicationStage> | Average Credit %         |


###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-10983
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["App Update Recommendation"]}

  Scenario Outline: Verify calculation of "<Field>"
    When user opens an application of at "<ApplicationStage>" for "<ProductType>"
    And click on Ability Indicator Accordion
    Then "<Field>" should get calculated as per the formula defined in finnone_cas_messages.properties

    Examples:
      | ProductType   | ApplicationStage   | Field                    |
      | <ProductType> | <ApplicationStage> | Cheque Bounce percentage |
      | <ProductType> | <ApplicationStage> | ABB/EMI %                |
      | <ProductType> | <ApplicationStage> | Average Credit %         |
