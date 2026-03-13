@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ReviewedByDEV
@ReviewedSecCollateral

#${CollateralSubType:["Construction On Land"]}
#${ApplicantType:["indiv", "nonindiv"]}
Feature: Construction On Land Screen Validation

#  Pre-Requisites---
#  In this feature we will validate the screen layout when an Property Construction On Land is attached to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  Scenario Outline: ACAUTOCAS-2266: user selects collateral type as Property
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type
    Then application should allow only the collateral type which is linked to the product
        #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-2267: user chooses sub collateral as Construction On Land
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    Then application should allow only the sub type which is linked to the product
            #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


##Collateral Construction On Land Entity Validation
  Scenario Outline: ACAUTOCAS-1362: User is able to see all entities for new collateral <CollateralSubType> of <ApplicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then User should be able to see "<SectionName>"
            #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | SectionName                       | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Collateral Details                | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Other Details                     | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Property Address                  | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Ownership Details                 | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
#
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName                       | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Collateral Details                | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Other Details                     | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Property Address                  | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Ownership Details                 | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
#
	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName                       | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Collateral Details                | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Other Details                     | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Property Address                  | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Ownership Details                 | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
#

##Collateral Details Field Validation
  Scenario Outline: ACAUTOCAS-1363: User is able to see all fields for new collateral <CollateralSubType> of <ApplicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see field "<FieldName>" marked mandatory as "<Mandatory>" in Collateral Details
        #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | FieldName            | Mandatory | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Collateral Ref No    | No        | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Description          | No        | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Property Type        | Yes       | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Nature of Property   | Yes       | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Contractor           | No        | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Architect            | No        | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Cost of Construction | No        | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName            | Mandatory | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Collateral Ref No    | No        | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Description          | No        | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Property Type        | Yes       | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Nature of Property   | Yes       | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Contractor           | No        | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Architect            | No        | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Cost of Construction | No        | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName            | Mandatory | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Collateral Ref No    | No        | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Description          | No        | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Property Type        | Yes       | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Nature of Property   | Yes       | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Contractor           | No        | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Architect            | No        | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Cost of Construction | No        | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-227
  Scenario Outline: ACAUTOCAS-2268: CollateralPage Property Details <Validity> Collateral Ref No with <InputType> validation for collateral Sub Type <CollateralSubType> of <ApplicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "Property" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" in "Property" in collateral details
        #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | Validity | FieldName         | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum |
      | valid    | Collateral Ref No | positive digits                  | does not throw any error        | collateral.xlsx | default            | 507                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 130                            |
      | valid    | Collateral Ref No | characters                       | does not throw any error        | collateral.xlsx | default            | 508                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 131                            |
      | valid    | Collateral Ref No | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 509                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 132                            |
      | valid    | Collateral Ref No | negative                         | does not throw any error        | collateral.xlsx | default            | 510                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 133                            |
      | valid    | Collateral Ref No | hyphen                           | does not throw any error        | collateral.xlsx | default            | 511                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 134                            |
      | valid    | Collateral Ref No | space                            | does not throw any error        | collateral.xlsx | default            | 512                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 135                            |
      | invalid  | Collateral Ref No | special characters except hyphen | throws error with error message | collateral.xlsx | default            | 513                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 136                            |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName         | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum |
      | valid    | Collateral Ref No | positive digits                  | does not throw any error        | collateral.xlsx | default            | 507                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 130                            |
      | valid    | Collateral Ref No | characters                       | does not throw any error        | collateral.xlsx | default            | 508                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 131                            |
      | valid    | Collateral Ref No | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 509                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 132                            |
      | valid    | Collateral Ref No | negative                         | does not throw any error        | collateral.xlsx | default            | 510                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 133                            |
      | valid    | Collateral Ref No | hyphen                           | does not throw any error        | collateral.xlsx | default            | 511                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 134                            |
      | valid    | Collateral Ref No | space                            | does not throw any error        | collateral.xlsx | default            | 512                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 135                            |
      | invalid  | Collateral Ref No | special characters except hyphen | throws error with error message | collateral.xlsx | default            | 513                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 136                            |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar

    Examples:
      | Validity | FieldName         | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum |
      | valid    | Collateral Ref No | positive digits                  | does not throw any error        | collateral.xlsx | default            | 507                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 130                            |
      | valid    | Collateral Ref No | characters                       | does not throw any error        | collateral.xlsx | default            | 508                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 131                            |
      | valid    | Collateral Ref No | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 509                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 132                            |
      | valid    | Collateral Ref No | negative                         | does not throw any error        | collateral.xlsx | default            | 510                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 133                            |
      | valid    | Collateral Ref No | hyphen                           | does not throw any error        | collateral.xlsx | default            | 511                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 134                            |
      | valid    | Collateral Ref No | space                            | does not throw any error        | collateral.xlsx | default            | 512                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 135                            |
      | invalid  | Collateral Ref No | special characters except hyphen | throws error with error message | collateral.xlsx | default            | 513                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 136                            |


#FeatureID-ACAUTOCAS-227
  Scenario Outline: ACAUTOCAS-17013: CollateralPage Property Details <Validity> Description with <InputType> validation for collateral Sub Type <CollateralSubType> of <ApplicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "Property" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" in "Property" in collateral details
        #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | Validity | FieldName   | InputType                  | Throws_NotThrows         | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum |
      | valid    | Description | positive digits            | does not throw any error | collateral.xlsx | default            | 507                       | other_details           | 129                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 130                            |
      | valid    | Description | characters                 | does not throw any error | collateral.xlsx | default            | 508                       | other_details           | 130                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 130                            |
      | valid    | Description | both digits and characters | does not throw any error | collateral.xlsx | default            | 509                       | other_details           | 131                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 130                            |
      | valid    | Description | negative                   | does not throw any error | collateral.xlsx | default            | 510                       | other_details           | 132                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 130                            |
      | valid    | Description | space                      | does not throw any error | collateral.xlsx | default            | 511                       | other_details           | 133                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 130                            |
      | valid    | Description | special characters         | does not throw any error | collateral.xlsx | default            | 512                       | other_details           | 134                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 130                            |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName   | InputType                  | Throws_NotThrows         | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum |
      | valid    | Description | positive digits            | does not throw any error | collateral.xlsx | default            | 507                       | other_details           | 129                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 130                            |
      | valid    | Description | characters                 | does not throw any error | collateral.xlsx | default            | 508                       | other_details           | 130                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 130                            |
      | valid    | Description | both digits and characters | does not throw any error | collateral.xlsx | default            | 509                       | other_details           | 131                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 130                            |
      | valid    | Description | negative                   | does not throw any error | collateral.xlsx | default            | 510                       | other_details           | 132                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 130                            |
      | valid    | Description | space                      | does not throw any error | collateral.xlsx | default            | 511                       | other_details           | 133                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 130                            |
      | valid    | Description | special characters         | does not throw any error | collateral.xlsx | default            | 512                       | other_details           | 134                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 130                            |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName   | InputType                  | Throws_NotThrows         | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum |
      | valid    | Description | positive digits            | does not throw any error | collateral.xlsx | default            | 507                       | other_details           | 129                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 130                            |
      | valid    | Description | characters                 | does not throw any error | collateral.xlsx | default            | 508                       | other_details           | 130                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 130                            |
      | valid    | Description | both digits and characters | does not throw any error | collateral.xlsx | default            | 509                       | other_details           | 131                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 130                            |
      | valid    | Description | negative                   | does not throw any error | collateral.xlsx | default            | 510                       | other_details           | 132                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 130                            |
      | valid    | Description | space                      | does not throw any error | collateral.xlsx | default            | 511                       | other_details           | 133                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 130                            |
      | valid    | Description | special characters         | does not throw any error | collateral.xlsx | default            | 512                       | other_details           | 134                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 130                            |



    #FeatureID-ACAUTOCAS-227
  Scenario Outline: ACAUTOCAS-17014: CollateralPage Property Details <Validity> Cost Of Construction with <InputType> validation for collateral Sub Type <CollateralSubType> of <ApplicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "Property" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" in "Property" in collateral details
        #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | Validity | FieldName            | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Cost of Construction | positive digits            | does not throw any error        | collateral.xlsx | default            | 526                       | other_details           | 136                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cost of Construction | characters                 | throws error with error message | collateral.xlsx | default            | 527                       | other_details           | 137                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cost of Construction | both digits and characters | throws error with error message | collateral.xlsx | default            | 528                       | other_details           | 138                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cost of Construction | negative                   | throws error with error message | collateral.xlsx | default            | 529                       | other_details           | 139                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cost of Construction | space                      | throws error with error message | collateral.xlsx | default            | 530                       | other_details           | 140                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cost of Construction | special characters         | throws error with error message | collateral.xlsx | default            | 531                       | other_details           | 141                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Cost of Construction | zero                       | does not throw any error        | collateral.xlsx | default            | 532                       | other_details           | 142                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName            | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Cost of Construction | positive digits            | does not throw any error        | collateral.xlsx | default            | 526                       | other_details           | 136                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cost of Construction | characters                 | throws error with error message | collateral.xlsx | default            | 527                       | other_details           | 137                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cost of Construction | both digits and characters | throws error with error message | collateral.xlsx | default            | 528                       | other_details           | 138                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cost of Construction | negative                   | throws error with error message | collateral.xlsx | default            | 529                       | other_details           | 139                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cost of Construction | space                      | throws error with error message | collateral.xlsx | default            | 530                       | other_details           | 140                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cost of Construction | special characters         | throws error with error message | collateral.xlsx | default            | 531                       | other_details           | 141                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Cost of Construction | zero                       | does not throw any error        | collateral.xlsx | default            | 532                       | other_details           | 142                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName            | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Cost of Construction | positive digits            | does not throw any error        | collateral.xlsx | default            | 526                       | other_details           | 136                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cost of Construction | characters                 | throws error with error message | collateral.xlsx | default            | 527                       | other_details           | 137                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cost of Construction | both digits and characters | throws error with error message | collateral.xlsx | default            | 528                       | other_details           | 138                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cost of Construction | negative                   | throws error with error message | collateral.xlsx | default            | 529                       | other_details           | 139                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cost of Construction | space                      | throws error with error message | collateral.xlsx | default            | 530                       | other_details           | 140                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cost of Construction | special characters         | throws error with error message | collateral.xlsx | default            | 531                       | other_details           | 141                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Cost of Construction | zero                       | does not throw any error        | collateral.xlsx | default            | 532                       | other_details           | 142                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |



    #FeatureID-ACAUTOCAS-227
  Scenario Outline: ACAUTOCAS-17015: CollateralPage Property Details <Validity> Contractor with <InputType> validation for collateral Sub Type <CollateralSubType> of <ApplicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
            #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | Validity | FieldName  | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Contractor | positive digits                  | does not throw any error | 22                         | collateral.xlsx | other_details           | 25                             | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Contractor | characters                       | does not throw any error | 22                         | collateral.xlsx | other_details           | 26                             | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Contractor | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | other_details           | 27                             | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Contractor | negative                         | does not throw any error | 22                         | collateral.xlsx | other_details           | 28                             | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Contractor | hyphen                           | does not throw any error | 22                         | collateral.xlsx | other_details           | 29                             | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Contractor | space                            | does not throw any error | 22                         | collateral.xlsx | other_details           | 30                             | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Contractor | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | other_details           | 31                             | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName  | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | valid    | Contractor | positive digits                  | does not throw any error | 22                         | collateral.xlsx | other_details           | 25                             | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Contractor | characters                       | does not throw any error | 22                         | collateral.xlsx | other_details           | 26                             | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Contractor | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | other_details           | 27                             | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Contractor | negative                         | does not throw any error | 22                         | collateral.xlsx | other_details           | 28                             | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Contractor | hyphen                           | does not throw any error | 22                         | collateral.xlsx | other_details           | 29                             | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Contractor | space                            | does not throw any error | 22                         | collateral.xlsx | other_details           | 30                             | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Contractor | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | other_details           | 31                             | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName  | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Contractor | positive digits                  | does not throw any error | 22                         | collateral.xlsx | other_details           | 25                             | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Contractor | characters                       | does not throw any error | 22                         | collateral.xlsx | other_details           | 26                             | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Contractor | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | other_details           | 27                             | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Contractor | negative                         | does not throw any error | 22                         | collateral.xlsx | other_details           | 28                             | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Contractor | hyphen                           | does not throw any error | 22                         | collateral.xlsx | other_details           | 29                             | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Contractor | space                            | does not throw any error | 22                         | collateral.xlsx | other_details           | 30                             | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Contractor | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | other_details           | 31                             | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


    #FeatureID-ACAUTOCAS-227
  Scenario Outline: ACAUTOCAS-17016: CollateralPage Property Details <Validity> Architect with <InputType> validation for collateral Sub Type <CollateralSubType> of <ApplicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
            #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | Validity | FieldName | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Architect | positive digits                  | does not throw any error | 22                         | collateral.xlsx | other_details           | 25                             | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Architect | characters                       | does not throw any error | 22                         | collateral.xlsx | other_details           | 26                             | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Architect | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | other_details           | 27                             | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Architect | negative                         | does not throw any error | 22                         | collateral.xlsx | other_details           | 28                             | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Architect | hyphen                           | does not throw any error | 22                         | collateral.xlsx | other_details           | 29                             | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Architect | space                            | does not throw any error | 22                         | collateral.xlsx | other_details           | 30                             | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Architect | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | other_details           | 31                             | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | valid    | Architect | positive digits                  | does not throw any error | 22                         | collateral.xlsx | other_details           | 25                             | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Architect | characters                       | does not throw any error | 22                         | collateral.xlsx | other_details           | 26                             | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Architect | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | other_details           | 27                             | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Architect | negative                         | does not throw any error | 22                         | collateral.xlsx | other_details           | 28                             | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Architect | hyphen                           | does not throw any error | 22                         | collateral.xlsx | other_details           | 29                             | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Architect | space                            | does not throw any error | 22                         | collateral.xlsx | other_details           | 30                             | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Architect | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | other_details           | 31                             | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Architect | positive digits                  | does not throw any error | 22                         | collateral.xlsx | other_details           | 25                             | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Architect | characters                       | does not throw any error | 22                         | collateral.xlsx | other_details           | 26                             | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Architect | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | other_details           | 27                             | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Architect | negative                         | does not throw any error | 22                         | collateral.xlsx | other_details           | 28                             | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Architect | hyphen                           | does not throw any error | 22                         | collateral.xlsx | other_details           | 29                             | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Architect | space                            | does not throw any error | 22                         | collateral.xlsx | other_details           | 30                             | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Architect | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | other_details           | 31                             | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


##Collateral Details Field Format Validation
  @SkippedFormatValidation
  @NotImplementable
  Scenario: ACAUTOCAS-2269:  CollateralPage <CollateralSubType> field format validation for Collateral details
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user opens "CollateralPage"
    When user adds a new collateral type as   "Property" and Sub Type "<CollateralSubType>"
    Then user should be able to see all fields of "<Collateral details>" with proper format

#
##Collateral Details Field Label Validation
  Scenario Outline: ACAUTOCAS-2270: CollateralPage Collateral details data type and labels for collateral Sub Type <CollateralSubType> of <ApplicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see all fields of "<FieldName>" with proper labels in Collateral Details
        #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | FieldName            | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Collateral Ref No    | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Description          | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Property Type        | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Nature of Property   | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Contractor           | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Architect            | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Cost of Construction | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName            | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Collateral Ref No    | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Description          | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Property Type        | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Nature of Property   | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Contractor           | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Architect            | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Cost of Construction | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName            | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Collateral Ref No    | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Description          | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Property Type        | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Nature of Property   | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Contractor           | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Architect            | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Cost of Construction | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#Other Details Field Validation
  Scenario Outline: ACAUTOCAS-1364: User is able to see all fields marked as mandatory for new collateral <CollateralSubType> in Other Details of <ApplicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And goes to "<SectionName>" section
    Then user should be able to see field "<FieldName>" marked mandatory as "<Mandatory>" in Other Details
            #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | FieldName                 | Mandatory | SectionName   | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Property Classification   | Yes       | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Property Ownership        | Yes       | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Market Value              | No        | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Accepted Value (CIC)      | No        | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Built Up Area             | Yes       | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Built Up Area Unit        | Yes       | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Carpet Area               | Yes       | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Carpet Area Unit          | Yes       | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Property Purpose          | Yes       | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Age Of Property(In Years) | Yes       | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Residual Age of Property  | Yes       | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Plan Type                 | No        | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Plan Number               | No        | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Property Lot Number       | No        | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Considered Value          | No        | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Accepted Valuation        | No        | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName                 | Mandatory | SectionName   | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Property Classification   | Yes       | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Property Ownership        | Yes       | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Market Value              | No        | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Accepted Value (CIC)      | No        | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Built Up Area             | Yes       | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Built Up Area Unit        | Yes       | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Carpet Area               | Yes       | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Carpet Area Unit          | Yes       | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Property Purpose          | Yes       | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Age Of Property(In Years) | Yes       | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Residual Age of Property  | Yes       | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Plan Type                 | No        | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Plan Number               | No        | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Property Lot Number       | No        | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Considered Value          | No        | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Accepted Valuation        | No        | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName                 | Mandatory | SectionName   | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Property Classification   | Yes       | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Property Ownership        | Yes       | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Market Value              | No        | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Accepted Value (CIC)      | No        | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Built Up Area             | Yes       | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Built Up Area Unit        | Yes       | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Carpet Area               | Yes       | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Carpet Area Unit          | Yes       | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Property Purpose          | Yes       | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Age Of Property(In Years) | Yes       | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Residual Age of Property  | Yes       | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Plan Type                 | No        | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Plan Number               | No        | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Property Lot Number       | No        | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Considered Value          | No        | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Accepted Valuation        | No        | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2271: CollateralPage Other details data type validation for collateral Sub Type <CollateralSubType> for Built Up Area of <ApplicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<SectionName>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" in "Property" in collateral details
        #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | Validity | FieldName     | SectionName   | CollateralWB    | Collateral_default | Collateral_default_rowNum | InputType                        | Throws_NotThrows                | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Built Up Area | Other Details | collateral.xlsx | default            | 97                        | positive digits                  | does not throw any error        | other_details           | 144                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Built Up Area | Other Details | collateral.xlsx | default            | 97                        | characters                       | throws error with error message | other_details           | 145                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Built Up Area | Other Details | collateral.xlsx | default            | 97                        | both digits and characters       | throws error with error message | other_details           | 146                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Built Up Area | Other Details | collateral.xlsx | default            | 97                        | negative                         | throws error with error message | other_details           | 147                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Built Up Area | Other Details | collateral.xlsx | default            | 97                        | hyphen                           | throws error with error message | other_details           | 148                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Built Up Area | Other Details | collateral.xlsx | default            | 97                        | space                            | throws error with error message | other_details           | 149                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Built Up Area | Other Details | collateral.xlsx | default            | 97                        | special characters except hyphen | throws error with error message | other_details           | 150                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName     | SectionName   | CollateralWB    | Collateral_default | Collateral_default_rowNum | InputType                        | Throws_NotThrows                | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Built Up Area | Other Details | collateral.xlsx | default            | 97                        | positive digits                  | does not throw any error        | other_details           | 144                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Built Up Area | Other Details | collateral.xlsx | default            | 97                        | characters                       | throws error with error message | other_details           | 145                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Built Up Area | Other Details | collateral.xlsx | default            | 97                        | both digits and characters       | throws error with error message | other_details           | 146                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Built Up Area | Other Details | collateral.xlsx | default            | 97                        | negative                         | throws error with error message | other_details           | 147                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Built Up Area | Other Details | collateral.xlsx | default            | 97                        | hyphen                           | throws error with error message | other_details           | 148                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Built Up Area | Other Details | collateral.xlsx | default            | 97                        | space                            | throws error with error message | other_details           | 149                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Built Up Area | Other Details | collateral.xlsx | default            | 97                        | special characters except hyphen | throws error with error message | other_details           | 150                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName     | SectionName   | CollateralWB    | Collateral_default | Collateral_default_rowNum | InputType                        | Throws_NotThrows                | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Built Up Area | Other Details | collateral.xlsx | default            | 97                        | positive digits                  | does not throw any error        | other_details           | 144                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Built Up Area | Other Details | collateral.xlsx | default            | 97                        | characters                       | throws error with error message | other_details           | 145                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Built Up Area | Other Details | collateral.xlsx | default            | 97                        | both digits and characters       | throws error with error message | other_details           | 146                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Built Up Area | Other Details | collateral.xlsx | default            | 97                        | negative                         | throws error with error message | other_details           | 147                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Built Up Area | Other Details | collateral.xlsx | default            | 97                        | hyphen                           | throws error with error message | other_details           | 148                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Built Up Area | Other Details | collateral.xlsx | default            | 97                        | space                            | throws error with error message | other_details           | 149                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Built Up Area | Other Details | collateral.xlsx | default            | 97                        | special characters except hyphen | throws error with error message | other_details           | 150                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


    #FeatureID-ACAUTOCAS-227
  Scenario Outline: ACAUTOCAS-17017: CollateralPage Property Details <Validity> Market Value with <InputType> validation for collateral Sub Type <CollateralSubType> of <ApplicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "Property" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" in "Property" in collateral details
        #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | Validity | FieldName    | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Market Value | positive digits            | does not throw any error        | collateral.xlsx | default            | 526                       | other_details           | 67                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Market Value | characters                 | throws error with error message | collateral.xlsx | default            | 527                       | other_details           | 68                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Market Value | both digits and characters | throws error with error message | collateral.xlsx | default            | 528                       | other_details           | 69                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Market Value | negative                   | throws error with error message | collateral.xlsx | default            | 529                       | other_details           | 70                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Market Value | space                      | throws error with error message | collateral.xlsx | default            | 530                       | other_details           | 71                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Market Value | special characters         | throws error with error message | collateral.xlsx | default            | 531                       | other_details           | 72                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Market Value | zero                       | does not throw any error        | collateral.xlsx | default            | 532                       | other_details           | 73                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName    | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Market Value | positive digits            | does not throw any error        | collateral.xlsx | default            | 526                       | other_details           | 67                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Market Value | characters                 | throws error with error message | collateral.xlsx | default            | 527                       | other_details           | 68                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Market Value | both digits and characters | throws error with error message | collateral.xlsx | default            | 528                       | other_details           | 69                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Market Value | negative                   | throws error with error message | collateral.xlsx | default            | 529                       | other_details           | 70                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Market Value | space                      | throws error with error message | collateral.xlsx | default            | 530                       | other_details           | 71                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Market Value | special characters         | throws error with error message | collateral.xlsx | default            | 531                       | other_details           | 72                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Market Value | zero                       | does not throw any error        | collateral.xlsx | default            | 532                       | other_details           | 73                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName    | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Market Value | positive digits            | does not throw any error        | collateral.xlsx | default            | 526                       | other_details           | 67                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Market Value | characters                 | throws error with error message | collateral.xlsx | default            | 527                       | other_details           | 68                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Market Value | both digits and characters | throws error with error message | collateral.xlsx | default            | 528                       | other_details           | 69                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Market Value | negative                   | throws error with error message | collateral.xlsx | default            | 529                       | other_details           | 70                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Market Value | space                      | throws error with error message | collateral.xlsx | default            | 530                       | other_details           | 71                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Market Value | special characters         | throws error with error message | collateral.xlsx | default            | 531                       | other_details           | 72                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Market Value | zero                       | does not throw any error        | collateral.xlsx | default            | 532                       | other_details           | 73                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |



    #FeatureID-ACAUTOCAS-227
  Scenario Outline: ACAUTOCAS-17018: CollateralPage Other details data type validation for collateral Sub Type <CollateralSubType> for Carpet Area of <ApplicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_OtherDetails>" and row <Collateral_default_rowNum2>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "Other Details - Carpet" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" in "Property" in collateral details
        #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | Validity | FieldName   | SectionName   | CollateralWB    | Collateral_default | Collateral_default_rowNum | InputType                        | Throws_NotThrows                | Collateral_OtherDetails | Collateral_default_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Carpet Area | Other Details | collateral.xlsx | default            | 97                        | positive digits                  | does not throw any error        | other_details           | 88                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Carpet Area | Other Details | collateral.xlsx | default            | 97                        | characters                       | throws error with error message | other_details           | 89                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Carpet Area | Other Details | collateral.xlsx | default            | 97                        | both digits and characters       | throws error with error message | other_details           | 90                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Carpet Area | Other Details | collateral.xlsx | default            | 97                        | negative                         | throws error with error message | other_details           | 91                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Carpet Area | Other Details | collateral.xlsx | default            | 97                        | hyphen                           | throws error with error message | other_details           | 92                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Carpet Area | Other Details | collateral.xlsx | default            | 97                        | space                            | throws error with error message | other_details           | 93                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Carpet Area | Other Details | collateral.xlsx | default            | 97                        | special characters except hyphen | throws error with error message | other_details           | 94                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName   | SectionName   | CollateralWB    | Collateral_default | Collateral_default_rowNum | InputType                        | Throws_NotThrows                | Collateral_OtherDetails | Collateral_default_rowNum2 | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Carpet Area | Other Details | collateral.xlsx | default            | 97                        | positive digits                  | does not throw any error        | other_details           | 88                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Carpet Area | Other Details | collateral.xlsx | default            | 97                        | characters                       | throws error with error message | other_details           | 89                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Carpet Area | Other Details | collateral.xlsx | default            | 97                        | both digits and characters       | throws error with error message | other_details           | 90                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Carpet Area | Other Details | collateral.xlsx | default            | 97                        | negative                         | throws error with error message | other_details           | 91                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Carpet Area | Other Details | collateral.xlsx | default            | 97                        | hyphen                           | throws error with error message | other_details           | 92                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Carpet Area | Other Details | collateral.xlsx | default            | 97                        | space                            | throws error with error message | other_details           | 93                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Carpet Area | Other Details | collateral.xlsx | default            | 97                        | special characters except hyphen | throws error with error message | other_details           | 94                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName   | SectionName   | CollateralWB    | Collateral_default | Collateral_default_rowNum | InputType                        | Throws_NotThrows                | Collateral_OtherDetails | Collateral_default_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Carpet Area | Other Details | collateral.xlsx | default            | 97                        | positive digits                  | does not throw any error        | other_details           | 88                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Carpet Area | Other Details | collateral.xlsx | default            | 97                        | characters                       | throws error with error message | other_details           | 89                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Carpet Area | Other Details | collateral.xlsx | default            | 97                        | both digits and characters       | throws error with error message | other_details           | 90                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Carpet Area | Other Details | collateral.xlsx | default            | 97                        | negative                         | throws error with error message | other_details           | 91                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Carpet Area | Other Details | collateral.xlsx | default            | 97                        | hyphen                           | throws error with error message | other_details           | 92                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Carpet Area | Other Details | collateral.xlsx | default            | 97                        | space                            | throws error with error message | other_details           | 93                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Carpet Area | Other Details | collateral.xlsx | default            | 97                        | special characters except hyphen | throws error with error message | other_details           | 94                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |



    #FeatureID-ACAUTOCAS-227
  Scenario Outline: ACAUTOCAS-17019: CollateralPage Other details data type validation for collateral Sub Type <CollateralSubType> for Plan type of <ApplicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_OtherDetails>" and row <Collateral_default_rowNum2>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "Plan Type" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" in "Property" in collateral details
        #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | Validity | FieldName | SectionName   | CollateralWB    | Collateral_default | Collateral_default_rowNum | InputType                        | Throws_NotThrows         | Collateral_OtherDetails | Collateral_default_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Plan type | Other Details | collateral.xlsx | default            | 97                        | positive digits                  | does not throw any error | other_details           | 95                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Plan type | Other Details | collateral.xlsx | default            | 97                        | characters                       | does not throw any error | other_details           | 96                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Plan type | Other Details | collateral.xlsx | default            | 97                        | both digits and characters       | does not throw any error | other_details           | 97                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Plan type | Other Details | collateral.xlsx | default            | 97                        | negative                         | does not throw any error | other_details           | 98                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Plan type | Other Details | collateral.xlsx | default            | 97                        | hyphen                           | does not throw any error | other_details           | 99                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Plan type | Other Details | collateral.xlsx | default            | 97                        | space                            | does not throw any error | other_details           | 100                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Plan type | Other Details | collateral.xlsx | default            | 97                        | special characters except hyphen | does not throw any error | other_details           | 101                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName | SectionName   | CollateralWB    | Collateral_default | Collateral_default_rowNum | InputType                        | Throws_NotThrows         | Collateral_OtherDetails | Collateral_default_rowNum2 | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Plan type | Other Details | collateral.xlsx | default            | 97                        | positive digits                  | does not throw any error | other_details           | 95                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Plan type | Other Details | collateral.xlsx | default            | 97                        | characters                       | does not throw any error | other_details           | 96                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Plan type | Other Details | collateral.xlsx | default            | 97                        | both digits and characters       | does not throw any error | other_details           | 97                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Plan type | Other Details | collateral.xlsx | default            | 97                        | negative                         | does not throw any error | other_details           | 98                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Plan type | Other Details | collateral.xlsx | default            | 97                        | hyphen                           | does not throw any error | other_details           | 99                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Plan type | Other Details | collateral.xlsx | default            | 97                        | space                            | does not throw any error | other_details           | 100                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Plan type | Other Details | collateral.xlsx | default            | 97                        | special characters except hyphen | does not throw any error | other_details           | 101                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName | SectionName   | CollateralWB    | Collateral_default | Collateral_default_rowNum | InputType                        | Throws_NotThrows         | Collateral_OtherDetails | Collateral_default_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Plan type | Other Details | collateral.xlsx | default            | 97                        | positive digits                  | does not throw any error | other_details           | 95                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Plan type | Other Details | collateral.xlsx | default            | 97                        | characters                       | does not throw any error | other_details           | 96                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Plan type | Other Details | collateral.xlsx | default            | 97                        | both digits and characters       | does not throw any error | other_details           | 97                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Plan type | Other Details | collateral.xlsx | default            | 97                        | negative                         | does not throw any error | other_details           | 98                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Plan type | Other Details | collateral.xlsx | default            | 97                        | hyphen                           | does not throw any error | other_details           | 99                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Plan type | Other Details | collateral.xlsx | default            | 97                        | space                            | does not throw any error | other_details           | 100                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Plan type | Other Details | collateral.xlsx | default            | 97                        | special characters except hyphen | does not throw any error | other_details           | 101                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |



    #FeatureID-ACAUTOCAS-227
  Scenario Outline: ACAUTOCAS-17020: CollateralPage Other details <Validity> Plot Land Area with <InputType> validation for collateral Sub Type <CollateralSubType> of <ApplicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens other details section of collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
            #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | Validity | FieldName      | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Plot Land Area | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 207                            | default            | 97                        |
      | invalid  | Plot Land Area | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 208                            | default            | 97                        |
      | invalid  | Plot Land Area | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 209                            | default            | 97                        |
      | invalid  | Plot Land Area | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 210                            | default            | 97                        |
      | invalid  | Plot Land Area | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 211                            | default            | 97                        |
      | invalid  | Plot Land Area | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 212                            | default            | 97                        |
      | invalid  | Plot Land Area | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 213                            | default            | 97                        |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName      | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Plot Land Area | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 207                            | default            | 97                        |
      | invalid  | Plot Land Area | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 208                            | default            | 97                        |
      | invalid  | Plot Land Area | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 209                            | default            | 97                        |
      | invalid  | Plot Land Area | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 210                            | default            | 97                        |
      | invalid  | Plot Land Area | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 211                            | default            | 97                        |
      | invalid  | Plot Land Area | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 212                            | default            | 97                        |
      | invalid  | Plot Land Area | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 213                            | default            | 97                        |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName      | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Plot Land Area | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 207                            | default            | 97                        |
      | invalid  | Plot Land Area | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 208                            | default            | 97                        |
      | invalid  | Plot Land Area | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 209                            | default            | 97                        |
      | invalid  | Plot Land Area | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 210                            | default            | 97                        |
      | invalid  | Plot Land Area | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 211                            | default            | 97                        |
      | invalid  | Plot Land Area | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 212                            | default            | 97                        |
      | invalid  | Plot Land Area | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 213                            | default            | 97                        |



    #FeatureID-ACAUTOCAS-227
  Scenario Outline: ACAUTOCAS-17021: CollateralPage Other details <Validity> Age Of Property(In Years) with <InputType> validation for collateral Sub Type <CollateralSubType> of <ApplicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens other details section of collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
            #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | Validity | FieldName       | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Age Of Property | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 81                             | default            | 97                        |
      | invalid  | Age Of Property | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 82                             | default            | 97                        |
      | invalid  | Age Of Property | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 83                             | default            | 97                        |
      | invalid  | Age Of Property | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 84                             | default            | 97                        |
      | invalid  | Age Of Property | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 85                             | default            | 97                        |
      | invalid  | Age Of Property | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 86                             | default            | 97                        |
      | invalid  | Age Of Property | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 87                             | default            | 97                        |


    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName       | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Age Of Property | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 81                             | default            | 97                        |
      | invalid  | Age Of Property | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 82                             | default            | 97                        |
      | invalid  | Age Of Property | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 83                             | default            | 97                        |
      | invalid  | Age Of Property | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 84                             | default            | 97                        |
      | invalid  | Age Of Property | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 85                             | default            | 97                        |
      | invalid  | Age Of Property | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 86                             | default            | 97                        |
      | invalid  | Age Of Property | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 87                             | default            | 97                        |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName       | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Age Of Property | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 81                             | default            | 97                        |
      | invalid  | Age Of Property | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 82                             | default            | 97                        |
      | invalid  | Age Of Property | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 83                             | default            | 97                        |
      | invalid  | Age Of Property | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 84                             | default            | 97                        |
      | invalid  | Age Of Property | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 85                             | default            | 97                        |
      | invalid  | Age Of Property | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 86                             | default            | 97                        |
      | invalid  | Age Of Property | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 87                             | default            | 97                        |


    #FeatureID-ACAUTOCAS-227
  Scenario Outline: ACAUTOCAS-17022: CollateralPage Other details <Validity> Plan Number with <InputType> validation for collateral Sub Type <CollateralSubType> of <ApplicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens other details section of collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
            #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | Validity | FieldName   | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Plan Number | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 214                            | default            | 97                        |
      | valid    | Plan Number | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 215                            | default            | 97                        |
      | valid    | Plan Number | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 216                            | default            | 97                        |
      | valid    | Plan Number | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 217                            | default            | 97                        |
      | valid    | Plan Number | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 218                            | default            | 97                        |
      | valid    | Plan Number | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 219                            | default            | 97                        |
      | valid    | Plan Number | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 220                            | default            | 97                        |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName   | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Plan Number | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 214                            | default            | 97                        |
      | valid    | Plan Number | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 215                            | default            | 97                        |
      | valid    | Plan Number | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 216                            | default            | 97                        |
      | valid    | Plan Number | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 217                            | default            | 97                        |
      | valid    | Plan Number | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 218                            | default            | 97                        |
      | valid    | Plan Number | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 219                            | default            | 97                        |
      | valid    | Plan Number | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 220                            | default            | 97                        |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar

    Examples:
      | Validity | FieldName   | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Plan Number | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 214                            | default            | 97                        |
      | valid    | Plan Number | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 215                            | default            | 97                        |
      | valid    | Plan Number | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 216                            | default            | 97                        |
      | valid    | Plan Number | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 217                            | default            | 97                        |
      | valid    | Plan Number | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 218                            | default            | 97                        |
      | valid    | Plan Number | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 219                            | default            | 97                        |
      | valid    | Plan Number | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 220                            | default            | 97                        |


    #FeatureID-ACAUTOCAS-227
  Scenario Outline: ACAUTOCAS-17023:CollateralPage Other details <Validity> Property Lot Number with <InputType> validation for collateral Sub Type <CollateralSubType> of <ApplicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens other details section of collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
            #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | Validity | FieldName           | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Property Lot Number | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 221                            | default            | 97                        |
      | valid    | Property Lot Number | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 222                            | default            | 97                        |
      | valid    | Property Lot Number | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 223                            | default            | 97                        |
      | valid    | Property Lot Number | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 224                            | default            | 97                        |
      | valid    | Property Lot Number | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 225                            | default            | 97                        |
      | valid    | Property Lot Number | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 226                            | default            | 97                        |
      | valid    | Property Lot Number | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 227                            | default            | 97                        |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName           | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Property Lot Number | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 221                            | default            | 97                        |
      | valid    | Property Lot Number | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 222                            | default            | 97                        |
      | valid    | Property Lot Number | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 223                            | default            | 97                        |
      | valid    | Property Lot Number | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 224                            | default            | 97                        |
      | valid    | Property Lot Number | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 225                            | default            | 97                        |
      | valid    | Property Lot Number | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 226                            | default            | 97                        |
      | valid    | Property Lot Number | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 227                            | default            | 97                        |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName           | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Property Lot Number | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 221                            | default            | 97                        |
      | valid    | Property Lot Number | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 222                            | default            | 97                        |
      | valid    | Property Lot Number | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 223                            | default            | 97                        |
      | valid    | Property Lot Number | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 224                            | default            | 97                        |
      | valid    | Property Lot Number | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 225                            | default            | 97                        |
      | valid    | Property Lot Number | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 226                            | default            | 97                        |
      | valid    | Property Lot Number | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 227                            | default            | 97                        |


  @SkippedFormatValidation
  @NotImplementable
#Other Details Field Format Validation
  Scenario: ACAUTOCAS-2272:  CollateralPage Other details format validation for collateral Sub Type <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens "CollateralPage"
    When user adds a new collateral type as "Property" and Sub Type "<CollateralSubType>"
    Then user should be able to see all fields of "<Other Details>" with proper format

##Other Details Field Label Validation
  Scenario Outline: ACAUTOCAS-2273: CollateralPage Other details data type and labels for collateral Sub Type <CollateralSubType> of <ApplicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And goes to "<SectionName>" section
    Then user should be able to see all fields of "<FieldName>" with proper labels in Other Details
        #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | FieldName                 | SectionName   | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Property Classification   | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Property Ownership        | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Market Value              | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Accepted Value (CIC)      | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Built Up Area             | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Carpet Area               | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Property Purpose          | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Age Of Property(In Years) | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Residual Age of Property  | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Plan Type                 | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Plan Number               | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Property Lot Number       | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
#
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName                 | SectionName   | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Property Classification   | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Property Ownership        | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Market Value              | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Accepted Value (CIC)      | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Built Up Area             | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Carpet Area               | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Property Purpose          | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Age Of Property(In Years) | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Residual Age of Property  | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Plan Type                 | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Plan Number               | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Property Lot Number       | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
#
	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName                 | SectionName   | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Property Classification   | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Property Ownership        | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Market Value              | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Accepted Value (CIC)      | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Built Up Area             | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Carpet Area               | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Property Purpose          | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Age Of Property(In Years) | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Residual Age of Property  | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Plan Type                 | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Plan Number               | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Property Lot Number       | Other Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
#

##Property Address Field Validation
  Scenario Outline: ACAUTOCAS-1365: User is able to see all fields for new collateral <CollateralSubType> in Property Address of <ApplicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And goes to "<SectionName>" section
    Then user should be able to see field "<FieldName>" marked mandatory as "<Mandatory>" in Property Address
            #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | FieldName           | Mandatory | SectionName      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Address Type        | Yes       | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Full Address        | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Country             | Yes       | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Plot Number         | Yes       | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Address Line 2      | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Address Line 3      | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | PinCode             | Yes       | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Region              | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | State               | Yes       | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | City                | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | District            | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Taluka              | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Village             | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Residence Status    | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Residence Type      | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Landmark            | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Primary Phone       | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Mobile Phone        | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Is address verified | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName           | Mandatory | SectionName      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Address Type        | Yes       | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Full Address        | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Country             | Yes       | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Plot Number         | Yes       | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Address Line 2      | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Address Line 3      | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | PinCode             | Yes       | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Region              | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | State               | Yes       | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | City                | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | District            | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Taluka              | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Village             | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Residence Status    | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Residence Type      | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Landmark            | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Primary Phone       | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Mobile Phone        | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Is address verified | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName           | Mandatory | SectionName      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Address Type        | Yes       | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Full Address        | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Country             | Yes       | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Plot Number         | Yes       | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Address Line 2      | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Address Line 3      | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | PinCode             | Yes       | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Region              | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | State               | Yes       | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | City                | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | District            | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Taluka              | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Village             | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Residence Status    | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Residence Type      | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Landmark            | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Primary Phone       | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Mobile Phone        | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Is address verified | No        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#Property Address Field Data Type Validation
    #FeatureID-ACAUTOCAS-227
  Scenario Outline: ACAUTOCAS-2274: CollateralPage Property details data type validation in Mobile Phone in Property Address for collateral Sub Type <CollateralSubType> of <ApplicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_PropertyAddress>" and row <Collateral_default_rowNum2>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<SectionName>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" in "<SectionName>" in collateral details
        #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | Validity | FieldName    | SectionName      | CollateralWB    | Collateral_default | Collateral_default_rowNum | InputType                        | Throws_NotThrows                | Collateral_PropertyAddress | Collateral_default_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Mobile Phone | Property Address | collateral.xlsx | default            | 97                        | positive digits                  | does not throw any error        | property_address           | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Mobile Phone | Property Address | collateral.xlsx | default            | 97                        | characters                       | throws error with error message | property_address           | 1                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Mobile Phone | Property Address | collateral.xlsx | default            | 97                        | both digits and characters       | throws error with error message | property_address           | 2                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Mobile Phone | Property Address | collateral.xlsx | default            | 97                        | negative                         | throws error with error message | property_address           | 3                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Mobile Phone | Property Address | collateral.xlsx | default            | 97                        | hyphen                           | throws error with error message | property_address           | 4                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Mobile Phone | Property Address | collateral.xlsx | default            | 97                        | space                            | throws error with error message | property_address           | 5                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Mobile Phone | Property Address | collateral.xlsx | default            | 97                        | special characters except hyphen | throws error with error message | property_address           | 6                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName    | SectionName      | CollateralWB    | Collateral_default | Collateral_default_rowNum | InputType                        | Throws_NotThrows                | Collateral_PropertyAddress | Collateral_default_rowNum2 | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Mobile Phone | Property Address | collateral.xlsx | default            | 97                        | positive digits                  | does not throw any error        | property_address           | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Mobile Phone | Property Address | collateral.xlsx | default            | 97                        | characters                       | throws error with error message | property_address           | 1                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Mobile Phone | Property Address | collateral.xlsx | default            | 97                        | both digits and characters       | throws error with error message | property_address           | 2                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Mobile Phone | Property Address | collateral.xlsx | default            | 97                        | negative                         | throws error with error message | property_address           | 3                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Mobile Phone | Property Address | collateral.xlsx | default            | 97                        | hyphen                           | throws error with error message | property_address           | 4                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Mobile Phone | Property Address | collateral.xlsx | default            | 97                        | space                            | throws error with error message | property_address           | 5                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Mobile Phone | Property Address | collateral.xlsx | default            | 97                        | special characters except hyphen | throws error with error message | property_address           | 6                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName    | SectionName      | CollateralWB    | Collateral_default | Collateral_default_rowNum | InputType                        | Throws_NotThrows                | Collateral_PropertyAddress | Collateral_default_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Mobile Phone | Property Address | collateral.xlsx | default            | 97                        | positive digits                  | does not throw any error        | property_address           | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Mobile Phone | Property Address | collateral.xlsx | default            | 97                        | characters                       | throws error with error message | property_address           | 1                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Mobile Phone | Property Address | collateral.xlsx | default            | 97                        | both digits and characters       | throws error with error message | property_address           | 2                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Mobile Phone | Property Address | collateral.xlsx | default            | 97                        | negative                         | throws error with error message | property_address           | 3                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Mobile Phone | Property Address | collateral.xlsx | default            | 97                        | hyphen                           | throws error with error message | property_address           | 4                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Mobile Phone | Property Address | collateral.xlsx | default            | 97                        | space                            | throws error with error message | property_address           | 5                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Mobile Phone | Property Address | collateral.xlsx | default            | 97                        | special characters except hyphen | throws error with error message | property_address           | 6                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |



    #FeatureID-ACAUTOCAS-227
  Scenario Outline: ACAUTOCAS-17024: CollateralPage Property details data type validation in Primary Phone STD in Property Address for collateral Sub Type <CollateralSubType> of <ApplicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_PropertyAddress>" and row <Collateral_default_rowNum2>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<SectionName>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" in "<SectionName>" in collateral details
            #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | Validity | FieldName | SectionName      | CollateralWB    | Collateral_default | Collateral_default_rowNum | InputType                        | Throws_NotThrows                | Collateral_PropertyAddress | Collateral_default_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | STD       | Property Address | collateral.xlsx | default            | 97                        | positive digits                  | does not throw any error        | property_address           | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | STD       | Property Address | collateral.xlsx | default            | 97                        | characters                       | throws error with error message | property_address           | 1                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | STD       | Property Address | collateral.xlsx | default            | 97                        | both digits and characters       | throws error with error message | property_address           | 2                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | STD       | Property Address | collateral.xlsx | default            | 97                        | negative                         | throws error with error message | property_address           | 3                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | STD       | Property Address | collateral.xlsx | default            | 97                        | hyphen                           | throws error with error message | property_address           | 4                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | STD       | Property Address | collateral.xlsx | default            | 97                        | space                            | throws error with error message | property_address           | 5                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | STD       | Property Address | collateral.xlsx | default            | 97                        | special characters except hyphen | throws error with error message | property_address           | 6                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName | SectionName      | CollateralWB    | Collateral_default | Collateral_default_rowNum | InputType                        | Throws_NotThrows                | Collateral_PropertyAddress | Collateral_default_rowNum2 | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | STD       | Property Address | collateral.xlsx | default            | 97                        | positive digits                  | does not throw any error        | property_address           | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | STD       | Property Address | collateral.xlsx | default            | 97                        | characters                       | throws error with error message | property_address           | 1                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | STD       | Property Address | collateral.xlsx | default            | 97                        | both digits and characters       | throws error with error message | property_address           | 2                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | STD       | Property Address | collateral.xlsx | default            | 97                        | negative                         | throws error with error message | property_address           | 3                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | STD       | Property Address | collateral.xlsx | default            | 97                        | hyphen                           | throws error with error message | property_address           | 4                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | STD       | Property Address | collateral.xlsx | default            | 97                        | space                            | throws error with error message | property_address           | 5                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | STD       | Property Address | collateral.xlsx | default            | 97                        | special characters except hyphen | throws error with error message | property_address           | 6                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName | SectionName      | CollateralWB    | Collateral_default | Collateral_default_rowNum | InputType                        | Throws_NotThrows                | Collateral_PropertyAddress | Collateral_default_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | STD       | Property Address | collateral.xlsx | default            | 97                        | positive digits                  | does not throw any error        | property_address           | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | STD       | Property Address | collateral.xlsx | default            | 97                        | characters                       | throws error with error message | property_address           | 1                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | STD       | Property Address | collateral.xlsx | default            | 97                        | both digits and characters       | throws error with error message | property_address           | 2                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | STD       | Property Address | collateral.xlsx | default            | 97                        | negative                         | throws error with error message | property_address           | 3                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | STD       | Property Address | collateral.xlsx | default            | 97                        | hyphen                           | throws error with error message | property_address           | 4                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | STD       | Property Address | collateral.xlsx | default            | 97                        | space                            | throws error with error message | property_address           | 5                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | STD       | Property Address | collateral.xlsx | default            | 97                        | special characters except hyphen | throws error with error message | property_address           | 6                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


    #FeatureID-ACAUTOCAS-227
  Scenario Outline: ACAUTOCAS-17025: CollateralPage Property details data type validation in Primary Phone EXTN in Property Address for collateral Sub Type <CollateralSubType> of <ApplicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_PropertyAddress>" and row <Collateral_default_rowNum2>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<SectionName>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" in "<SectionName>" in collateral details
            #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | Validity | FieldName | SectionName      | CollateralWB    | Collateral_default | Collateral_default_rowNum | InputType                        | Throws_NotThrows                | Collateral_PropertyAddress | Collateral_default_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | EXTN      | Property Address | collateral.xlsx | default            | 97                        | positive digits                  | does not throw any error        | property_address           | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | EXTN      | Property Address | collateral.xlsx | default            | 97                        | characters                       | throws error with error message | property_address           | 1                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | EXTN      | Property Address | collateral.xlsx | default            | 97                        | both digits and characters       | throws error with error message | property_address           | 2                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | EXTN      | Property Address | collateral.xlsx | default            | 97                        | negative                         | throws error with error message | property_address           | 3                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | EXTN      | Property Address | collateral.xlsx | default            | 97                        | hyphen                           | throws error with error message | property_address           | 4                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | EXTN      | Property Address | collateral.xlsx | default            | 97                        | space                            | throws error with error message | property_address           | 5                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | EXTN      | Property Address | collateral.xlsx | default            | 97                        | special characters except hyphen | throws error with error message | property_address           | 6                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName | SectionName      | CollateralWB    | Collateral_default | Collateral_default_rowNum | InputType                        | Throws_NotThrows                | Collateral_PropertyAddress | Collateral_default_rowNum2 | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | EXTN      | Property Address | collateral.xlsx | default            | 97                        | positive digits                  | does not throw any error        | property_address           | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | EXTN      | Property Address | collateral.xlsx | default            | 97                        | characters                       | throws error with error message | property_address           | 1                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | EXTN      | Property Address | collateral.xlsx | default            | 97                        | both digits and characters       | throws error with error message | property_address           | 2                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | EXTN      | Property Address | collateral.xlsx | default            | 97                        | negative                         | throws error with error message | property_address           | 3                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | EXTN      | Property Address | collateral.xlsx | default            | 97                        | hyphen                           | throws error with error message | property_address           | 4                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | EXTN      | Property Address | collateral.xlsx | default            | 97                        | space                            | throws error with error message | property_address           | 5                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | EXTN      | Property Address | collateral.xlsx | default            | 97                        | special characters except hyphen | throws error with error message | property_address           | 6                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName | SectionName      | CollateralWB    | Collateral_default | Collateral_default_rowNum | InputType                        | Throws_NotThrows                | Collateral_PropertyAddress | Collateral_default_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | EXTN      | Property Address | collateral.xlsx | default            | 97                        | positive digits                  | does not throw any error        | property_address           | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | EXTN      | Property Address | collateral.xlsx | default            | 97                        | characters                       | throws error with error message | property_address           | 1                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | EXTN      | Property Address | collateral.xlsx | default            | 97                        | both digits and characters       | throws error with error message | property_address           | 2                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | EXTN      | Property Address | collateral.xlsx | default            | 97                        | negative                         | throws error with error message | property_address           | 3                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | EXTN      | Property Address | collateral.xlsx | default            | 97                        | hyphen                           | throws error with error message | property_address           | 4                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | EXTN      | Property Address | collateral.xlsx | default            | 97                        | space                            | throws error with error message | property_address           | 5                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | EXTN      | Property Address | collateral.xlsx | default            | 97                        | special characters except hyphen | throws error with error message | property_address           | 6                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |



    #FeatureID-ACAUTOCAS-227
  Scenario Outline: ACAUTOCAS-17026: CollateralPage Property details data type validation in Flat Plot Number in Property Address for collateral Sub Type <CollateralSubType> of <ApplicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_PropertyAddress>" and row <Collateral_default_rowNum2>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<SectionName>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" in "<SectionName>" in collateral details
            #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | Validity | FieldName | SectionName      | CollateralWB    | Collateral_default | Collateral_default_rowNum | InputType                        | Throws_NotThrows         | Collateral_PropertyAddress | Collateral_default_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | FLAT      | Property Address | collateral.xlsx | default            | 97                        | positive digits                  | does not throw any error | property_address           | 59                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | FLAT      | Property Address | collateral.xlsx | default            | 97                        | characters                       | does not throw any error | property_address           | 60                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | FLAT      | Property Address | collateral.xlsx | default            | 97                        | both digits and characters       | does not throw any error | property_address           | 61                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | FLAT      | Property Address | collateral.xlsx | default            | 97                        | negative                         | does not throw any error | property_address           | 62                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | FLAT      | Property Address | collateral.xlsx | default            | 97                        | hyphen                           | does not throw any error | property_address           | 63                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | FLAT      | Property Address | collateral.xlsx | default            | 97                        | space                            | does not throw any error | property_address           | 64                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | FLAT      | Property Address | collateral.xlsx | default            | 97                        | special characters except hyphen | does not throw any error | property_address           | 65                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName | SectionName      | CollateralWB    | Collateral_default | Collateral_default_rowNum | InputType                        | Throws_NotThrows         | Collateral_PropertyAddress | Collateral_default_rowNum2 | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | FLAT      | Property Address | collateral.xlsx | default            | 97                        | positive digits                  | does not throw any error | property_address           | 59                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | FLAT      | Property Address | collateral.xlsx | default            | 97                        | characters                       | does not throw any error | property_address           | 60                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | FLAT      | Property Address | collateral.xlsx | default            | 97                        | both digits and characters       | does not throw any error | property_address           | 61                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | FLAT      | Property Address | collateral.xlsx | default            | 97                        | negative                         | does not throw any error | property_address           | 62                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | FLAT      | Property Address | collateral.xlsx | default            | 97                        | hyphen                           | does not throw any error | property_address           | 63                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | FLAT      | Property Address | collateral.xlsx | default            | 97                        | space                            | does not throw any error | property_address           | 64                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | FLAT      | Property Address | collateral.xlsx | default            | 97                        | special characters except hyphen | does not throw any error | property_address           | 65                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName | SectionName      | CollateralWB    | Collateral_default | Collateral_default_rowNum | InputType                        | Throws_NotThrows         | Collateral_PropertyAddress | Collateral_default_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | FLAT      | Property Address | collateral.xlsx | default            | 97                        | positive digits                  | does not throw any error | property_address           | 59                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | FLAT      | Property Address | collateral.xlsx | default            | 97                        | characters                       | does not throw any error | property_address           | 60                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | FLAT      | Property Address | collateral.xlsx | default            | 97                        | both digits and characters       | does not throw any error | property_address           | 61                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | FLAT      | Property Address | collateral.xlsx | default            | 97                        | negative                         | does not throw any error | property_address           | 62                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | FLAT      | Property Address | collateral.xlsx | default            | 97                        | hyphen                           | does not throw any error | property_address           | 63                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | FLAT      | Property Address | collateral.xlsx | default            | 97                        | space                            | does not throw any error | property_address           | 64                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | FLAT      | Property Address | collateral.xlsx | default            | 97                        | special characters except hyphen | does not throw any error | property_address           | 65                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  @SkippedFormatValidation
  @NotImplementable
    #Property Address Field Format Validation
  Scenario: ACAUTOCAS-2275:  CollateralPage Property details format validation in Property Address for collateral Sub Type <CollateralSubType> of <ApplicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user opens "CollateralPage"
    When user adds a new collateral type as "Property" and Sub Type "<CollateralSubType>"
    Then user should be able to see all fields of "<Property Address>" with proper format


##Property Address Field Label Validation
  Scenario Outline: ACAUTOCAS-2276: CollateralPage Property details label validation in Property Address for collateral Sub Type <CollateralSubType> of <ApplicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And goes to "<SectionName>" section
    Then user should be able to see all fields of "<Property Address>" with proper labels of Property Address
            #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | Property Address    | SectionName      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Address Type        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Full Address        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Country             | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Plot Number         | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Address Line 2      | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Address Line 3      | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | PinCode             | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Region              | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | State               | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | City                | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | District            | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Taluka              | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Village             | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Residence Status    | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Residence Type      | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Landmark            | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Primary Phone       | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Mobile Phone        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Is address verified | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Property Address    | SectionName      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Address Type        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Full Address        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Country             | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Plot Number         | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Address Line 2      | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Address Line 3      | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | PinCode             | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Region              | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | State               | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | City                | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | District            | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Taluka              | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Village             | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Residence Status    | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Residence Type      | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Landmark            | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Primary Phone       | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Mobile Phone        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Is address verified | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Property Address    | SectionName      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Address Type        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Full Address        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Country             | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Plot Number         | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Address Line 2      | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Address Line 3      | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | PinCode             | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Region              | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | State               | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | City                | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | District            | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Taluka              | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Village             | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Residence Status    | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Residence Type      | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Landmark            | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Primary Phone       | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Mobile Phone        | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Is address verified | Property Address | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |



#Property and Registration Details Entity Validation
  Scenario Outline: ACAUTOCAS-2277:  user is able to add multiple agreement details for <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user adds property and registration details to collateral data from
      | collateral.xlsx | property_registration_details | 16 |
      | collateral.xlsx | property_registration_details | 17 |
    Then user should be able to add multiple "<SectionName>" for "<CollSubType>"
        #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | SectionName                       | CollSubType          |
      | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Property and Registration Details | Construction On Land |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | SectionName                       | CollSubType          |
      | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Property and Registration Details | Construction On Land |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | SectionName                       | CollSubType          |
      | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Property and Registration Details | Construction On Land |


#
##Property and Registration Details Field Validation
  Scenario Outline: ACAUTOCAS-1366: User is able to see all fields for collateral <CollateralSubType> in Property and Registration Details of <ApplicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And goes to "<SectionName>" section
    Then user should be able to see field "<FieldName>" marked mandatory as "<Mandatory>" in Property And Registration Details
            #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | FieldName                 | Mandatory | SectionName                       | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Registration Number       | Yes       | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Agreement Type            | Yes       | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | SRO                       | Yes       | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Sale Deed Number          | No        | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Date         | Yes       | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Sale Deed Date            | No        | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Agreement Value           | No        | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Amenities Agreement Value | No        | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Remarks                   | No        | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName                 | Mandatory | SectionName                       | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Registration Number       | Yes       | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Agreement Type            | Yes       | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | SRO                       | Yes       | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Sale Deed Number          | No        | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Date         | Yes       | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Sale Deed Date            | No        | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Agreement Value           | No        | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Amenities Agreement Value | No        | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Remarks                   | No        | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName                 | Mandatory | SectionName                       | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Registration Number       | Yes       | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Agreement Type            | Yes       | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | SRO                       | Yes       | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Sale Deed Number          | No        | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Date         | Yes       | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Sale Deed Date            | No        | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Agreement Value           | No        | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Amenities Agreement Value | No        | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Remarks                   | No        | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


    #Property and Registration Details Field Data Type Validation
        #FeatureID-ACAUTOCAS-227
  Scenario Outline:ACAUTOCAS-2268: CollateralPage Property and Registration Details <Validity> Registration Number with <InputType> validation for collateral Sub Type Construction On Land of <ProductType> application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" container
    And click on new agreement details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agreementDetails>" and row <Collateral_agreementDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
            #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | SectionName                       | Validity | FieldName           | InputType                                                               | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property and Registration Details | valid    | Registration Number | positive digits                                                         | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 12                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | forward and backward slash                                              | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 13                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | dot                                                                     | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 14                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | characters                                                              | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 15                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | both digits and characters                                              | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 16                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | negative                                                                | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 17                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | hyphen                                                                  | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 18                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Registration Number | space                                                                   | throws error with error message | 29                         | collateral.xlsx | agreement_details           | 19                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Registration Number | special characters except hyphen ,forward slash, backward slash and dot | throws error with error message | 29                         | collateral.xlsx | agreement_details           | 20                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName                       | Validity | FieldName           | InputType                                                               | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Property and Registration Details | valid    | Registration Number | positive digits                                                         | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 12                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | forward and backward slash                                              | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 13                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | dot                                                                     | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 14                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | characters                                                              | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 15                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | both digits and characters                                              | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 16                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | negative                                                                | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 17                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | hyphen                                                                  | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 18                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Registration Number | space                                                                   | throws error with error message | 29                         | collateral.xlsx | agreement_details           | 19                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Registration Number | special characters except hyphen ,forward slash, backward slash and dot | throws error with error message | 29                         | collateral.xlsx | agreement_details           | 20                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName                       | Validity | FieldName           | InputType                                                               | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property and Registration Details | valid    | Registration Number | positive digits                                                         | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 12                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | forward and backward slash                                              | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 13                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | dot                                                                     | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 14                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | characters                                                              | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 15                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | both digits and characters                                              | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 16                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | negative                                                                | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 17                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | hyphen                                                                  | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 18                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Registration Number | space                                                                   | throws error with error message | 29                         | collateral.xlsx | agreement_details           | 19                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Registration Number | special characters except hyphen ,forward slash, backward slash and dot | throws error with error message | 29                         | collateral.xlsx | agreement_details           | 20                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


    #Property and Registration Details Field Data Type Validation
     #FeatureID-ACAUTOCAS-227
  Scenario Outline: ACAUTOCAS-17027: CollateralPage Property and Registration Details <Validity> Sale Deed Number with <InputType> validation for collateral Sub Type Construction On Land of <ProductType> application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" container
    And click on new agreement details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agreementDetails>" and row <Collateral_agreementDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
            #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | SectionName                       | Validity | FieldName        | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property and Registration Details | valid    | Sale Deed Number | positive digits                  | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 12                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | characters                       | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 13                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 14                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | negative                         | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 15                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | hyphen                           | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 16                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | space                            | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 17                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 18                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName                       | Validity | FieldName        | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Property and Registration Details | valid    | Sale Deed Number | positive digits                  | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 12                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | characters                       | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 13                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 14                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | negative                         | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 15                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | hyphen                           | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 16                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | space                            | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 17                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 18                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName                       | Validity | FieldName        | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property and Registration Details | valid    | Sale Deed Number | positive digits                  | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 12                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | characters                       | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 13                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 14                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | negative                         | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 15                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | hyphen                           | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 16                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | space                            | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 17                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 18                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


    #Property and Registration Details Field Data Type Validation
     #FeatureID-ACAUTOCAS-227
  Scenario Outline: ACAUTOCAS-17028: CollateralPage Property and Registration Details <Validity> Agreement Value with <InputType> validation for collateral Sub Type Construction On Land of <ProductType> application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" container
    And click on new agreement details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agreementDetails>" and row <Collateral_agreementDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
            #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | SectionName                       | Validity | FieldName       | InputType                           | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property and Registration Details | valid    | Agreement Value | positive digits less then 18 digits | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 12                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | positive digits more then 18 digits | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 13                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | characters                          | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 14                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | both digits and characters          | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 15                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | negative                            | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 16                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | hyphen                              | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 17                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | space                               | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 18                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | special characters except hyphen    | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 19                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName                       | Validity | FieldName       | InputType                           | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Property and Registration Details | valid    | Agreement Value | positive digits less then 18 digits | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 12                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | positive digits more then 18 digits | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 13                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | characters                          | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 14                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | both digits and characters          | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 15                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | negative                            | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 16                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | hyphen                              | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 17                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | space                               | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 18                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | special characters except hyphen    | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 19                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName                       | Validity | FieldName       | InputType                           | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property and Registration Details | valid    | Agreement Value | positive digits less then 18 digits | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 12                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | positive digits more then 18 digits | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 13                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | characters                          | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 14                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | both digits and characters          | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 15                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | negative                            | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 16                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | hyphen                              | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 17                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | space                               | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 18                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | special characters except hyphen    | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 19                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


    #Property and Registration Details Field Data Type Validation
     #FeatureID-ACAUTOCAS-227
  Scenario Outline: ACAUTOCAS-17029: CollateralPage Property and Registration Details <Validity> Amenities Agreement Value with <InputType> validation for collateral Sub Type Construction On Land of <ProductType> application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" container
    And click on new agreement details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agreementDetails>" and row <Collateral_agreementDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
            #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | SectionName                       | Validity | FieldName                 | InputType                           | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property and Registration Details | valid    | Amenities Agreement Value | positive digits less then 18 digits | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 12                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | positive digits more then 18 digits | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 13                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | characters                          | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 14                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | both digits and characters          | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 15                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | negative                            | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 16                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | hyphen                              | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 17                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | space                               | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 18                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | special characters except hyphen    | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 19                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName                       | Validity | FieldName                 | InputType                           | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Property and Registration Details | valid    | Amenities Agreement Value | positive digits less then 18 digits | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 12                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | positive digits more then 18 digits | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 13                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | characters                          | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 14                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | both digits and characters          | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 15                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | negative                            | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 16                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | hyphen                              | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 17                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | space                               | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 18                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | special characters except hyphen    | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 19                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName                       | Validity | FieldName                 | InputType                           | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property and Registration Details | valid    | Amenities Agreement Value | positive digits less then 18 digits | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 12                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | positive digits more then 18 digits | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 13                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | characters                          | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 14                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | both digits and characters          | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 15                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | negative                            | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 16                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | hyphen                              | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 17                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | space                               | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 18                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | special characters except hyphen    | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 19                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


    #Property and Registration Details Field Data Type Validation
     #FeatureID-ACAUTOCAS-227
  Scenario Outline: ACAUTOCAS-17030: CollateralPage Property and Registration Details <Validity> Remarks(Agreement) with <InputType> validation for collateral Sub Type Construction On Land of <ProductType> application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" container
    And click on new agreement details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agreementDetails>" and row <Collateral_agreementDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
            #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | SectionName                       | Validity | FieldName          | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property and Registration Details | valid    | Remarks(Agreement) | positive digits                  | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 12                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | characters                       | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 13                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 14                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | negative                         | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 15                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | hyphen                           | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 16                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | space                            | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 17                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 18                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName                       | Validity | FieldName          | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Property and Registration Details | valid    | Remarks(Agreement) | positive digits                  | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 12                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | characters                       | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 13                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 14                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | negative                         | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 15                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | hyphen                           | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 16                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | space                            | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 17                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 18                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName                       | Validity | FieldName          | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property and Registration Details | valid    | Remarks(Agreement) | positive digits                  | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 12                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | characters                       | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 13                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 14                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | negative                         | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 15                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | hyphen                           | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 16                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | space                            | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 17                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 18                                 | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  @SkippedFormatValidation
  @NotImplementable
#Property and Registration Details Field Format Validation
  Scenario: ACAUTOCAS-2269: CollateralPage Property details format validation for collateral Sub Type <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user opens "CollateralPage"
    When user adds a new collateral type as "Property" and Sub Type "<CollateralSubType>"
    Then user should be able to see all fields of "<Property and Registration Details>" with proper format

##Property and Registration Details Field Label Validation
  Scenario Outline: ACAUTOCAS-2270: CollateralPage Property details data type and labels for collateral Sub Type <CollateralSubType> of <ApplicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And goes to "<SectionName>" section
    Then user should be able to see all fields of "<FieldName>" with proper labels
        #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | FieldName                 | SectionName                       | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Registration Number       | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Agreement Type            | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | SRO                       | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Sale Deed Number          | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Date         | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Sale Deed Date            | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Agreement Value           | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Amenities Agreement Value | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Remarks Agreement         | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
#
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName                 | SectionName                       | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Registration Number       | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Agreement Type            | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | SRO                       | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Sale Deed Number          | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Date         | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Sale Deed Date            | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Agreement Value           | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Amenities Agreement Value | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Remarks Agreement         | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
#
	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName                 | SectionName                       | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Registration Number       | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Agreement Type            | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | SRO                       | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Sale Deed Number          | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Date         | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Sale Deed Date            | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Agreement Value           | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Amenities Agreement Value | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Remarks Agreement         | Property and Registration Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
#

##Ownership Details Field Validation
  Scenario Outline: ACAUTOCAS-1367:  User is able to see all fields for collateral <CollateralSubType> in Ownership Details of <ApplicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And goes to "<SectionName>" section
    Then user should be able to see field "<FieldName>" marked mandatory as "<Mandatory>" in Ownership Details
            #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | FieldName        | Mandatory | SectionName       | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Owner Type       | Yes       | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Ownership Status | Yes       | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Owner Name       | Yes       | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Linked Applicant | Yes       | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Percent Share    | Yes       | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Ownership Dates  | No        | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName        | Mandatory | SectionName       | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Owner Type       | Yes       | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Ownership Status | Yes       | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Owner Name       | Yes       | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Linked Applicant | Yes       | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Percent Share    | Yes       | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Ownership Dates  | No        | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName        | Mandatory | SectionName       | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Owner Type       | Yes       | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Ownership Status | Yes       | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Owner Name       | Yes       | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Linked Applicant | Yes       | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Percent Share    | Yes       | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Ownership Dates  | No        | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |



     #FeatureID-ACAUTOCAS-227
  Scenario Outline:ACAUTOCAS-2281: CollateralPage Ownership Details <Validity> Percent Share with <InputType> validation for collateral Sub Type Construction On Land of <ProductType> application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" container
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_ownership_details>" and row <Collateral_ownership_details_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
            #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | SectionName       | Validity | FieldName     | InputType                       | Throws_NotThrows                | CollateralWB    | Collateral_ownership_details | Collateral_ownership_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Ownership Details | valid    | Percent Share | positive digit less then 100    | does not throw any error        | collateral.xlsx | ownership_details            | 55                                  | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | valid    | Percent Share | zero                            | does not throw any error        | collateral.xlsx | ownership_details            | 56                                  | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Percent Share | both digits and characters      | throws error with error message | collateral.xlsx | ownership_details            | 57                                  | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Percent Share | positive digit greater then 100 | throws error with error message | collateral.xlsx | ownership_details            | 58                                  | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Percent Share | special character               | throws error with error message | collateral.xlsx | ownership_details            | 59                                  | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Percent Share | negative digit                  | throws error with error message | collateral.xlsx | ownership_details            | 60                                  | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Percent Share | decimal greater then 2 digit    | throws error with error message | collateral.xlsx | ownership_details            | 61                                  | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | valid    | Percent Share | decimal upto 2 digit            | does not throw any error        | collateral.xlsx | ownership_details            | 62                                  | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName       | Validity | FieldName     | InputType                       | Throws_NotThrows                | CollateralWB    | Collateral_ownership_details | Collateral_ownership_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Ownership Details | valid    | Percent Share | positive digit less then 100    | does not throw any error        | collateral.xlsx | ownership_details            | 55                                  | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | valid    | Percent Share | zero                            | does not throw any error        | collateral.xlsx | ownership_details            | 56                                  | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | invalid  | Percent Share | both digits and characters      | throws error with error message | collateral.xlsx | ownership_details            | 57                                  | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | invalid  | Percent Share | positive digit greater then 100 | throws error with error message | collateral.xlsx | ownership_details            | 58                                  | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | invalid  | Percent Share | special character               | throws error with error message | collateral.xlsx | ownership_details            | 59                                  | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | invalid  | Percent Share | negative digit                  | throws error with error message | collateral.xlsx | ownership_details            | 60                                  | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | invalid  | Percent Share | decimal greater then 2 digit    | throws error with error message | collateral.xlsx | ownership_details            | 61                                  | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | valid    | Percent Share | decimal upto 2 digit            | does not throw any error        | collateral.xlsx | ownership_details            | 62                                  | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName       | Validity | FieldName     | InputType                       | Throws_NotThrows                | CollateralWB    | Collateral_ownership_details | Collateral_ownership_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Ownership Details | valid    | Percent Share | positive digit less then 100    | does not throw any error        | collateral.xlsx | ownership_details            | 55                                  | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | valid    | Percent Share | zero                            | does not throw any error        | collateral.xlsx | ownership_details            | 56                                  | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Percent Share | both digits and characters      | throws error with error message | collateral.xlsx | ownership_details            | 57                                  | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Percent Share | positive digit greater then 100 | throws error with error message | collateral.xlsx | ownership_details            | 58                                  | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Percent Share | special character               | throws error with error message | collateral.xlsx | ownership_details            | 59                                  | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Percent Share | negative digit                  | throws error with error message | collateral.xlsx | ownership_details            | 60                                  | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Percent Share | decimal greater then 2 digit    | throws error with error message | collateral.xlsx | ownership_details            | 61                                  | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | valid    | Percent Share | decimal upto 2 digit            | does not throw any error        | collateral.xlsx | ownership_details            | 62                                  | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  @SkippedFormatValidation
  @NotImplementable
#Ownership Details Field Format Validation
  Scenario: ACAUTOCAS-2282: CollateralPage Ownership details format validation for collateral Sub Type <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user opens "CollateralPage"
    When user adds a new collateral type as "Property" and Sub Type "<CollateralSubType>"
    Then user should be able to see all fields of "<Ownership Details>" with proper format

##Ownership Details Field Label Validation
  Scenario Outline: ACAUTOCAS-2283: CollateralPage Ownership details data type and labels for collateral Sub Type <CollateralSubType> of <ApplicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And goes to "<SectionName>" section
    Then user should be able to see all fields of "<FieldName>" with proper labels
            #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | FieldName        | SectionName       | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Owner Type       | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Ownership Status | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Owner Name       | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Linked Applicant | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Percent Share    | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Ownership Dates  | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName        | SectionName       | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Owner Type       | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Ownership Status | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Owner Name       | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Linked Applicant | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Percent Share    | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Ownership Dates  | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName        | SectionName       | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Owner Type       | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Ownership Status | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Owner Name       | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Linked Applicant | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Percent Share    | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Ownership Dates  | Ownership Details | collateral.xlsx | default            | 97                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

	
##Sale Deed Date <= Registration Date
