@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-
@ImplementedBy-rishabh.sachan
@new
@Release
Feature: Addition of multiple different sub collaterals to the application

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


# ${CollType:[]}
# ${CollSubType:[]}
###Squash:137607
###Story:CAS-23473
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228,ACAUTOCAS-230,ACAUTOCAS-231,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-234,ACAUTOCAS-235,ACAUTOCAS-236,ACAUTOCAS-237,ACAUTOCAS-238,ACAUTOCAS-239,ACAUTOCAS-243,ACAUTOCAS-8108,ACAUTOCAS-8447,ACAUTOCAS-8448,ACAUTOCAS-2
Scenario Outline: ACAUTOCAS-16688: user adds multiple different collateral to <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    When user fills mandatory fields of collateral details to attach collateral from the excel file "<SourceDataFile>":
      | SourceSheet                 | SourceSheetRow | CollSubType                         |
      | default                     | 3              | Commercial Equipment                |
      | default                     | 2              | Commercial Vehicle                  |
      | default                     | 1              | Consumer Durable                    |
      | default                     | 0              | Consumer Vehicle                    |
      | default                     | 733            | Implements and Attachments          |
      | default                     | 4              | Tractor                             |
      | stock_details               | 58             | Stock and Book Debts                |
      | fixed_deposit               | 92             | Fixed Deposit                       |
      | kisan_vikas_patra           | 0              | Kisan Vikas Patra                   |
      | national_saving_certificate | 3              | National Saving Certificate         |
      | default                     | 734            | Corporate Guarantee                 |
      | default                     | 8              | Mortgage Guarantee                  |
      | insurance_details           | 341            | Insurance                           |
      | agriculture_details         | 0              | Agricultural Land                   |
      | default                     | 533            | Builder Property Under Construction |
      | default                     | 730            | Construction On Land                |
      | default                     | 731            | Plot + Self Construction            |
      | default                     | 732            | Ready Property                      |
    Then collateral details of below mentioned subtype should be saved successfully:
      | CollSubType                         |
      | Commercial Equipment                |
      | Commercial Vehicle                  |
      | Consumer Durable                    |
      | Consumer Vehicle                    |
      | Implements and Attachments          |
      | Tractor                             |
      | Stock and Book Debts                |
      | Fixed Deposit                       |
      | Kisan Vikas Patra                   |
      | National Saving Certificate         |
      | Corporate Guarantee                 |
      | Mortgage Guarantee                  |
      | Insurance                           |
      | Agricultural Land                   |
      | Builder Property Under Construction |
      | Construction On Land                |
      | Plot + Self Construction            |
      | Ready Property                      |

    @Conventional
    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key | SourceDataFile  |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | collateral.xlsx |

    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category   | Key | SourceDataFile  |
      | <ProductType> | <ApplicationStage> | indiv         | <Category> |     | collateral.xlsx |

    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key | SourceDataFile  |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | collateral.xlsx |


# ${CollType:[]}
# ${CollSubType:[]}
###Squash:137607
###Story:CAS-23473
###Bug:
#FeatureID-ACAUTOCAS-234,ACAUTOCAS-2
  @Sanity
Scenario Outline: ACAUTOCAS-16689: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    When user fills mandatory fields of collateral details to attach collateral from the excel file "<SourceDataFile>":
      | SourceSheet                 | SourceSheetRow | CollSubType                         |
      | default                     | 3              | Commercial Equipment                |
      | default                     | 2              | Commercial Vehicle                  |
      | default                     | 1              | Consumer Durable                    |
      | default                     | 0              | Consumer Vehicle                    |
      | default                     | 733            | Implements and Attachments          |
      | default                     | 4              | Tractor                             |
      | stock_details               | 58             | Stock and Book Debts                |
      | fixed_deposit               | 92             | Fixed Deposit                       |
      | kisan_vikas_patra           | 0              | Kisan Vikas Patra                   |
      | national_saving_certificate | 3              | National Saving Certificate         |
      | default                     | 734            | Corporate Guarantee                 |
      | default                     | 8              | Mortgage Guarantee                  |
      | insurance_details           | 341            | Insurance                           |
      | agriculture_details         | 0              | Agricultural Land                   |
      | default                     | 533            | Builder Property Under Construction |
      | default                     | 730            | Construction On Land                |
      | default                     | 731            | Plot + Self Construction            |
      | default                     | 732            | Ready Property                      |
    Then user should be able to reconcile the data for below mentioned collaterals successfully from the excel file "<SourceDataFile>":
      | SourceSheet                 | SourceSheetRow | CollSubType                         |
      | default                     | 3              | Commercial Equipment                |
      | default                     | 2              | Commercial Vehicle                  |
      | default                     | 1              | Consumer Durable                    |
      | default                     | 0              | Consumer Vehicle                    |
      | default                     | 733            | Implements and Attachments          |
      | default                     | 4              | Tractor                             |
      | stock_details               | 58             | Stock and Book Debts                |
      | fixed_deposit               | 92             | Fixed Deposit                       |
      | kisan_vikas_patra           | 0              | Kisan Vikas Patra                   |
      | national_saving_certificate | 3              | National Saving Certificate         |
      | default                     | 734            | Corporate Guarantee                 |
      | default                     | 8              | Mortgage Guarantee                  |
      | insurance_details           | 341            | Insurance                           |
      | agriculture_details         | 0              | Agricultural Land                   |
      | default                     | 533            | Builder Property Under Construction |
      | default                     | 730            | Construction On Land                |
      | default                     | 731            | Plot + Self Construction            |
      | default                     | 732            | Ready Property                      |

    @Conventional
    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
    # ${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key | SourceDataFile  |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | collateral.xlsx |

    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Disbursal"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category   | Key | SourceDataFile  |
      | <ProductType> | <ApplicationStage> | indiv         | <Category> |     | collateral.xlsx |

    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key | SourceDataFile  |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | collateral.xlsx |


# ${CollType:[]}
# ${CollSubType:[]}
###Squash:137607
###Story:CAS-23473
###Bug:
#FeatureID-ACAUTOCAS-234,ACAUTOCAS-2
  @Sanity
Scenario Outline: ACAUTOCAS-16690: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage at Enquiry
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user fills mandatory fields of collateral details to attach collateral from the excel file "<SourceDataFile>":
      | SourceSheet                 | SourceSheetRow | CollSubType                         |
      | default                     | 3              | Commercial Equipment                |
      | default                     | 2              | Commercial Vehicle                  |
      | default                     | 1              | Consumer Durable                    |
      | default                     | 0              | Consumer Vehicle                    |
      | default                     | 733            | Implements and Attachments          |
      | default                     | 4              | Tractor                             |
      | stock_details               | 58             | Stock and Book Debts                |
      | fixed_deposit               | 92             | Fixed Deposit                       |
      | kisan_vikas_patra           | 0              | Kisan Vikas Patra                   |
      | national_saving_certificate | 3              | National Saving Certificate         |
      | default                     | 734            | Corporate Guarantee                 |
      | default                     | 8              | Mortgage Guarantee                  |
      | insurance_details           | 341            | Insurance                           |
      | agriculture_details         | 0              | Agricultural Land                   |
      | default                     | 533            | Builder Property Under Construction |
      | default                     | 730            | Construction On Land                |
      | default                     | 731            | Plot + Self Construction            |
      | default                     | 732            | Ready Property                      |
    And user opens application from enquiry menu
    When user opens Collateral Page for viewing attached collaterals at "<ApplicationStage>"
    Then user should be able to reconcile the data for below mentioned collaterals successfully from the excel file "<SourceDataFile>":
      | SourceSheet                 | SourceSheetRow | CollSubType                         |
      | default                     | 3              | Commercial Equipment                |
      | default                     | 2              | Commercial Vehicle                  |
      | default                     | 1              | Consumer Durable                    |
      | default                     | 0              | Consumer Vehicle                    |
      | default                     | 733            | Implements and Attachments          |
      | default                     | 4              | Tractor                             |
      | stock_details               | 58             | Stock and Book Debts                |
      | fixed_deposit               | 92             | Fixed Deposit                       |
      | kisan_vikas_patra           | 0              | Kisan Vikas Patra                   |
      | national_saving_certificate | 3              | National Saving Certificate         |
      | default                     | 734            | Corporate Guarantee                 |
      | default                     | 8              | Mortgage Guarantee                  |
      | insurance_details           | 341            | Insurance                           |
      | agriculture_details         | 0              | Agricultural Land                   |
      | default                     | 533            | Builder Property Under Construction |
      | default                     | 730            | Construction On Land                |
      | default                     | 731            | Plot + Self Construction            |
      | default                     | 732            | Ready Property                      |

    @Conventional
    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
    # ${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key | SourceDataFile  |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | collateral.xlsx |

    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Disbursal"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category   | Key | SourceDataFile  |
      | <ProductType> | <ApplicationStage> | indiv         | <Category> |     | collateral.xlsx |

    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key | SourceDataFile  |
      | <ProductType> | <ApplicationStage> | indiv         |          |     | collateral.xlsx |
