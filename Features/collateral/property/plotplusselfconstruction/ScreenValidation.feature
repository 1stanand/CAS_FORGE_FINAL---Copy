@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-harshprit.kumar
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral
  
#${ApplicantType:["indiv, nonindiv"]}
#${CollateralSubType:["Plot Plus Self Construction"]}
Feature: Plot Plus Self Construction Screen Validation

#  Pre-Requisites---
#  In this feature we will validate the screen layout when an Property Plot Plus Self Construction is attached to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  Scenario Outline: ACAUTOCAS-2310:  user selects collateral type as Property for new collateral Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type
    Then application should allow only the collateral type which is linked to the product
     #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-2311:  user chooses sub collateral as Plot Plus Self Construction for new collateral Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    Then application should allow only the sub type which is linked to the product
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
  
    #Collateral Plot Plus Self Construction Entity Validation
  Scenario Outline: ACAUTOCAS-1396:  User is able to see Section <SectionName> for new collateral Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    Then User should be able to see "<SectionName>" section
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName                       | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Collateral Details                | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details                     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address                  | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details                 | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName                       | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Collateral Details                | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details                     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address                  | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details                 | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName                       | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Collateral Details                | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details                     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address                  | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details                 | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-1397:  User is able to see <FieldName> for new collateral Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens Collateral Page for adding new collateral
    And user selects collateral type along with collateral sub type
    Then user should be able to see "<FieldName>" field marked as "<Mandatory>"
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | FieldName            | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Collateral Ref No    | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Description(main)    | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Type        | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Nature of Property   | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Contractor           | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Architect            | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Cost of Construction | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName            | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Collateral Ref No    | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Description(main)    | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Type        | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Nature of Property   | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Contractor           | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Architect            | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Cost of Construction | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName            | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Collateral Ref No    | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Description(main)    | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Type        | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Nature of Property   | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Contractor           | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Architect            | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Cost of Construction | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  #Collateral Details Field Data Type Validation
  #ACAUTOCAS-2312: split in field type
  Scenario Outline: ACAUTOCAS-2312:  CollateralPage details <Validity> Collateral Ref No with <InputType> validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row 11
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | Validity | FieldName         | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Collateral Ref No | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | default            | 30                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No | characters                       | does not throw any error        | 22                         | collateral.xlsx | default            | 31                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No | both digits and characters       | does not throw any error        | 22                         | collateral.xlsx | default            | 32                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No | negative                         | does not throw any error        | 22                         | collateral.xlsx | default            | 33                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No | hyphen                           | does not throw any error        | 22                         | collateral.xlsx | default            | 34                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No | space                            | does not throw any error        | 22                         | collateral.xlsx | default            | 35                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Collateral Ref No | special characters except hyphen | throws error with error message | 23                         | collateral.xlsx | default            | 36                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName         | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | valid    | Collateral Ref No | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | default            | 30                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Collateral Ref No | characters                       | does not throw any error        | 22                         | collateral.xlsx | default            | 31                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Collateral Ref No | both digits and characters       | does not throw any error        | 22                         | collateral.xlsx | default            | 32                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Collateral Ref No | negative                         | does not throw any error        | 22                         | collateral.xlsx | default            | 33                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Collateral Ref No | hyphen                           | does not throw any error        | 22                         | collateral.xlsx | default            | 34                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Collateral Ref No | space                            | does not throw any error        | 22                         | collateral.xlsx | default            | 35                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Collateral Ref No | special characters except hyphen | throws error with error message | 23                         | collateral.xlsx | default            | 36                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName         | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Collateral Ref No | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | default            | 30                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No | characters                       | does not throw any error        | 22                         | collateral.xlsx | default            | 31                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No | both digits and characters       | does not throw any error        | 22                         | collateral.xlsx | default            | 32                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No | negative                         | does not throw any error        | 22                         | collateral.xlsx | default            | 33                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No | hyphen                           | does not throw any error        | 22                         | collateral.xlsx | default            | 34                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No | space                            | does not throw any error        | 22                         | collateral.xlsx | default            | 35                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Collateral Ref No | special characters except hyphen | throws error with error message | 23                         | collateral.xlsx | default            | 36                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    
    #Collateral Details Field Data Type Validation
  #FeatureID-ACAUTOCAS-228
Scenario Outline: ACAUTOCAS-17104: CollateralPage details <Validity> Description with <InputType> validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row 11
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | Validity | FieldName   | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Description | positive digits                  | does not throw any error | 22                         | collateral.xlsx | default            | 37                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description | characters                       | does not throw any error | 22                         | collateral.xlsx | default            | 38                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | default            | 39                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description | negative                         | does not throw any error | 22                         | collateral.xlsx | default            | 40                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description | space                            | does not throw any error | 22                         | collateral.xlsx | default            | 41                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | default            | 42                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName   | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | valid    | Description | positive digits                  | does not throw any error | 22                         | collateral.xlsx | default            | 37                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Description | characters                       | does not throw any error | 22                         | collateral.xlsx | default            | 38                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Description | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | default            | 39                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Description | negative                         | does not throw any error | 22                         | collateral.xlsx | default            | 40                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Description | space                            | does not throw any error | 22                         | collateral.xlsx | default            | 41                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Description | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | default            | 42                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName   | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Description | positive digits                  | does not throw any error | 22                         | collateral.xlsx | default            | 37                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description | characters                       | does not throw any error | 22                         | collateral.xlsx | default            | 38                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | default            | 39                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description | negative                         | does not throw any error | 22                         | collateral.xlsx | default            | 40                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description | space                            | does not throw any error | 22                         | collateral.xlsx | default            | 41                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | default            | 42                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #Collateral Details Field Data Type Validation
#FeatureID-ACAUTOCAS-228

Scenario Outline: ACAUTOCAS-17105: CollateralPage details <Validity> Contractor with <InputType> validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | Validity | FieldName  | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Contractor | positive digits                  | does not throw any error | 22                         | collateral.xlsx | other_details           | 25                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Contractor | characters                       | does not throw any error | 22                         | collateral.xlsx | other_details           | 26                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Contractor | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | other_details           | 27                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Contractor | negative                         | does not throw any error | 22                         | collateral.xlsx | other_details           | 28                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Contractor | hyphen                           | does not throw any error | 22                         | collateral.xlsx | other_details           | 29                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Contractor | space                            | does not throw any error | 22                         | collateral.xlsx | other_details           | 30                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Contractor | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | other_details           | 31                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName  | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | valid    | Contractor | positive digits                  | does not throw any error | 22                         | collateral.xlsx | other_details           | 25                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Contractor | characters                       | does not throw any error | 22                         | collateral.xlsx | other_details           | 26                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Contractor | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | other_details           | 27                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Contractor | negative                         | does not throw any error | 22                         | collateral.xlsx | other_details           | 28                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Contractor | hyphen                           | does not throw any error | 22                         | collateral.xlsx | other_details           | 29                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Contractor | space                            | does not throw any error | 22                         | collateral.xlsx | other_details           | 30                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Contractor | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | other_details           | 31                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName  | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Contractor | positive digits                  | does not throw any error | 22                         | collateral.xlsx | other_details           | 25                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Contractor | characters                       | does not throw any error | 22                         | collateral.xlsx | other_details           | 26                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Contractor | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | other_details           | 27                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Contractor | negative                         | does not throw any error | 22                         | collateral.xlsx | other_details           | 28                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Contractor | hyphen                           | does not throw any error | 22                         | collateral.xlsx | other_details           | 29                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Contractor | space                            | does not throw any error | 22                         | collateral.xlsx | other_details           | 30                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Contractor | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | other_details           | 31                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #Collateral Details Field Data Type Validation
    #FeatureID-ACAUTOCAS-228

Scenario Outline: ACAUTOCAS-17106: CollateralPage details <Validity> Architect with <InputType> validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | Validity | FieldName | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Architect | positive digits                  | does not throw any error | 22                         | collateral.xlsx | other_details           | 25                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Architect | characters                       | does not throw any error | 22                         | collateral.xlsx | other_details           | 26                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Architect | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | other_details           | 27                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Architect | negative                         | does not throw any error | 22                         | collateral.xlsx | other_details           | 28                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Architect | hyphen                           | does not throw any error | 22                         | collateral.xlsx | other_details           | 29                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Architect | space                            | does not throw any error | 22                         | collateral.xlsx | other_details           | 30                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Architect | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | other_details           | 31                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | valid    | Architect | positive digits                  | does not throw any error | 22                         | collateral.xlsx | other_details           | 25                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Architect | characters                       | does not throw any error | 22                         | collateral.xlsx | other_details           | 26                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Architect | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | other_details           | 27                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Architect | negative                         | does not throw any error | 22                         | collateral.xlsx | other_details           | 28                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Architect | hyphen                           | does not throw any error | 22                         | collateral.xlsx | other_details           | 29                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Architect | space                            | does not throw any error | 22                         | collateral.xlsx | other_details           | 30                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Architect | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | other_details           | 31                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Architect | positive digits                  | does not throw any error | 22                         | collateral.xlsx | other_details           | 25                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Architect | characters                       | does not throw any error | 22                         | collateral.xlsx | other_details           | 26                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Architect | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | other_details           | 27                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Architect | negative                         | does not throw any error | 22                         | collateral.xlsx | other_details           | 28                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Architect | hyphen                           | does not throw any error | 22                         | collateral.xlsx | other_details           | 29                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Architect | space                            | does not throw any error | 22                         | collateral.xlsx | other_details           | 30                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Architect | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | other_details           | 31                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #Collateral Details Field Data Type Validation
    #FeatureID-ACAUTOCAS-228

Scenario Outline: ACAUTOCAS-17107: CollateralPage details <Validity> Cost of Construction with <InputType> validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | Validity | FieldName            | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Cost of Construction | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | other_details           | 25                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cost of Construction | characters                       | throws error with error message | 24                         | collateral.xlsx | other_details           | 26                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cost of Construction | both digits and characters       | throws error with error message | 24                         | collateral.xlsx | other_details           | 27                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cost of Construction | negative                         | throws error with error message | 25                         | collateral.xlsx | other_details           | 28                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cost of Construction | hyphen                           | throws error with error message | 25                         | collateral.xlsx | other_details           | 29                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cost of Construction | space                            | throws error with error message | 24                         | collateral.xlsx | other_details           | 30                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cost of Construction | special characters except hyphen | throws error with error message | 24                         | collateral.xlsx | other_details           | 31                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName            | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | valid    | Cost of Construction | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | other_details           | 25                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Cost of Construction | characters                       | throws error with error message | 24                         | collateral.xlsx | other_details           | 26                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Cost of Construction | both digits and characters       | throws error with error message | 24                         | collateral.xlsx | other_details           | 27                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Cost of Construction | negative                         | throws error with error message | 25                         | collateral.xlsx | other_details           | 28                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Cost of Construction | hyphen                           | throws error with error message | 25                         | collateral.xlsx | other_details           | 29                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Cost of Construction | space                            | throws error with error message | 24                         | collateral.xlsx | other_details           | 30                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Cost of Construction | special characters except hyphen | throws error with error message | 24                         | collateral.xlsx | other_details           | 31                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName            | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Cost of Construction | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | other_details           | 25                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cost of Construction | characters                       | throws error with error message | 24                         | collateral.xlsx | other_details           | 26                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cost of Construction | both digits and characters       | throws error with error message | 24                         | collateral.xlsx | other_details           | 27                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cost of Construction | negative                         | throws error with error message | 25                         | collateral.xlsx | other_details           | 28                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cost of Construction | hyphen                           | throws error with error message | 25                         | collateral.xlsx | other_details           | 29                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cost of Construction | space                            | throws error with error message | 24                         | collateral.xlsx | other_details           | 30                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cost of Construction | special characters except hyphen | throws error with error message | 24                         | collateral.xlsx | other_details           | 31                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #Collateral Details Field Data Type Validation
    #FeatureID-ACAUTOCAS-228

Scenario Outline: ACAUTOCAS-17108: CollateralPage details <Validity> Cost of Land with <InputType> validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | Validity | FieldName    | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Cost of Land | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | other_details           | 25                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cost of Land | characters                       | throws error with error message | 24                         | collateral.xlsx | other_details           | 26                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cost of Land | both digits and characters       | throws error with error message | 24                         | collateral.xlsx | other_details           | 27                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cost of Land | negative                         | throws error with error message | 25                         | collateral.xlsx | other_details           | 28                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cost of Land | hyphen                           | throws error with error message | 25                         | collateral.xlsx | other_details           | 29                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cost of Land | space                            | throws error with error message | 24                         | collateral.xlsx | other_details           | 30                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cost of Land | special characters except hyphen | throws error with error message | 24                         | collateral.xlsx | other_details           | 31                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName    | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | valid    | Cost of Land | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | other_details           | 25                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Cost of Land | characters                       | throws error with error message | 24                         | collateral.xlsx | other_details           | 26                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Cost of Land | both digits and characters       | throws error with error message | 24                         | collateral.xlsx | other_details           | 27                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Cost of Land | negative                         | throws error with error message | 25                         | collateral.xlsx | other_details           | 28                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Cost of Land | hyphen                           | throws error with error message | 25                         | collateral.xlsx | other_details           | 29                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Cost of Land | space                            | throws error with error message | 24                         | collateral.xlsx | other_details           | 30                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Cost of Land | special characters except hyphen | throws error with error message | 24                         | collateral.xlsx | other_details           | 31                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName    | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Cost of Land | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | other_details           | 25                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cost of Land | characters                       | throws error with error message | 24                         | collateral.xlsx | other_details           | 26                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cost of Land | both digits and characters       | throws error with error message | 24                         | collateral.xlsx | other_details           | 27                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cost of Land | negative                         | throws error with error message | 25                         | collateral.xlsx | other_details           | 28                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cost of Land | hyphen                           | throws error with error message | 25                         | collateral.xlsx | other_details           | 29                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cost of Land | space                            | throws error with error message | 24                         | collateral.xlsx | other_details           | 30                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cost of Land | special characters except hyphen | throws error with error message | 24                         | collateral.xlsx | other_details           | 31                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  @SkippedFormatValidation
  @NotImplementable
#Collateral Details Field Format Validation
  Scenario: ACAUTOCAS-2313: CollateralPage Property details format validation for collateral Sub Type Plot Plus Self Construction
    And user opens "CollateralPage"
    When user selects collateral type as "Property"
    And Collateral Sub Types as "Plot + Self Construction"
    Then user should be able to see all fields of "<Collateral details>" with proper format

#Collateral Details Field Label Validation

  Scenario Outline: ACAUTOCAS-2314:  CollateralPage details <FieldName> label validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    Then user should be able to see "<FieldName>" with proper label
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | FieldName            | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Collateral Ref No    | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Description(main)    | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Type        | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Nature of Property   | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Contractor           | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Architect            | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Cost of Construction | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Cost of Land         | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName            | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Collateral Ref No    | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Description(main)    | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Type        | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Nature of Property   | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Contractor           | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Architect            | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Cost of Construction | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Cost of Land         | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName            | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Collateral Ref No    | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Description(main)    | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Type        | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Nature of Property   | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Contractor           | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Architect            | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Cost of Construction | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Cost of Land         | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#Other Details Field Validation

  Scenario Outline: ACAUTOCAS-1398:  User is able to see <FieldName> for new collateral Plot Plus Self Construction in Other Details of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When goes to "<SectionName>" container
    Then user should be able to see "<FieldName>" field marked as "<Mandatory>"
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName   | FieldName                     | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Other Details | Property Classification       | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Property Ownership            | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Market Value                  | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Accepted Value (CIC)          | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Considered Accepted Valuation | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Built Up Area                 | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Built Up Area Unit            | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Carpet Area                   | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Carpet Area Unit              | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Property Purpose              | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Age Of Property(In Years)     | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Residual Age of Property      | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Considered Valuation          | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Plan Type                     | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Plan Number                   | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Property Lot Number           | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName   | FieldName                     | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Other Details | Property Classification       | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | Property Ownership            | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | Market Value                  | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | Accepted Value (CIC)          | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | Considered Accepted Valuation | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | Built Up Area                 | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | Built Up Area Unit            | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | Carpet Area                   | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | Carpet Area Unit              | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | Property Purpose              | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | Age Of Property(In Years)     | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | Residual Age of Property      | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | Considered Valuation          | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | Plan Type                     | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | Plan Number                   | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | Property Lot Number           | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName   | FieldName                     | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Other Details | Property Classification       | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Property Ownership            | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Market Value                  | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Accepted Value (CIC)          | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Considered Accepted Valuation | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Built Up Area                 | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Built Up Area Unit            | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Carpet Area                   | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Carpet Area Unit              | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Property Purpose              | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Age Of Property(In Years)     | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Residual Age of Property      | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Considered Valuation          | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Plan Type                     | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Plan Number                   | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Property Lot Number           | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

      #Other Details Field Data Type Validation
    #ACAUTOCAS-2315: split in field type

  Scenario Outline: ACAUTOCAS-2315:  CollateralPage Other Details <Validity> Market Value with <InputType> validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" container
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName   | Validity | FieldName    | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Other Details | valid    | Market Value | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | other_details           | 25                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Market Value | characters                       | throws error with error message | 24                         | collateral.xlsx | other_details           | 26                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Market Value | both digits and characters       | throws error with error message | 24                         | collateral.xlsx | other_details           | 27                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Market Value | negative                         | throws error with error message | 25                         | collateral.xlsx | other_details           | 28                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Market Value | hyphen                           | throws error with error message | 25                         | collateral.xlsx | other_details           | 29                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Market Value | space                            | throws error with error message | 24                         | collateral.xlsx | other_details           | 30                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Market Value | special characters except hyphen | throws error with error message | 24                         | collateral.xlsx | other_details           | 31                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName   | Validity | FieldName    | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Other Details | valid    | Market Value | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | other_details           | 25                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | invalid  | Market Value | characters                       | throws error with error message | 24                         | collateral.xlsx | other_details           | 26                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | invalid  | Market Value | both digits and characters       | throws error with error message | 24                         | collateral.xlsx | other_details           | 27                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | invalid  | Market Value | negative                         | throws error with error message | 25                         | collateral.xlsx | other_details           | 28                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | invalid  | Market Value | hyphen                           | throws error with error message | 25                         | collateral.xlsx | other_details           | 29                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | invalid  | Market Value | space                            | throws error with error message | 24                         | collateral.xlsx | other_details           | 30                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | invalid  | Market Value | special characters except hyphen | throws error with error message | 24                         | collateral.xlsx | other_details           | 31                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName   | Validity | FieldName    | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Other Details | valid    | Market Value | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | other_details           | 25                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Market Value | characters                       | throws error with error message | 24                         | collateral.xlsx | other_details           | 26                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Market Value | both digits and characters       | throws error with error message | 24                         | collateral.xlsx | other_details           | 27                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Market Value | negative                         | throws error with error message | 25                         | collateral.xlsx | other_details           | 28                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Market Value | hyphen                           | throws error with error message | 25                         | collateral.xlsx | other_details           | 29                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Market Value | space                            | throws error with error message | 24                         | collateral.xlsx | other_details           | 30                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Market Value | special characters except hyphen | throws error with error message | 24                         | collateral.xlsx | other_details           | 31                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #Other Details Field Data Type Validation
#FeatureID-ACAUTOCAS-228

Scenario Outline: ACAUTOCAS-17109: CollateralPage Other Details <Validity> Built Up Area(Collateral) with <InputType> validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" container
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName   | Validity | FieldName                 | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Other Details | valid    | Built Up Area(Collateral) | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | other_details           | 25                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Built Up Area(Collateral) | characters                       | throws error with error message | 26                         | collateral.xlsx | other_details           | 26                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Built Up Area(Collateral) | both digits and characters       | throws error with error message | 26                         | collateral.xlsx | other_details           | 27                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Built Up Area(Collateral) | negative                         | throws error with error message | 27                         | collateral.xlsx | other_details           | 28                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Built Up Area(Collateral) | hyphen                           | throws error with error message | 26                         | collateral.xlsx | other_details           | 29                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Built Up Area(Collateral) | space                            | throws error with error message | 26                         | collateral.xlsx | other_details           | 30                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Built Up Area(Collateral) | special characters except hyphen | throws error with error message | 26                         | collateral.xlsx | other_details           | 31                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName   | Validity | FieldName                 | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Other Details | valid    | Built Up Area(Collateral) | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | other_details           | 25                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | invalid  | Built Up Area(Collateral) | characters                       | throws error with error message | 26                         | collateral.xlsx | other_details           | 26                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | invalid  | Built Up Area(Collateral) | both digits and characters       | throws error with error message | 26                         | collateral.xlsx | other_details           | 27                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | invalid  | Built Up Area(Collateral) | negative                         | throws error with error message | 27                         | collateral.xlsx | other_details           | 28                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | invalid  | Built Up Area(Collateral) | hyphen                           | throws error with error message | 26                         | collateral.xlsx | other_details           | 29                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | invalid  | Built Up Area(Collateral) | space                            | throws error with error message | 26                         | collateral.xlsx | other_details           | 30                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | invalid  | Built Up Area(Collateral) | special characters except hyphen | throws error with error message | 26                         | collateral.xlsx | other_details           | 31                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName   | Validity | FieldName                 | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Other Details | valid    | Built Up Area(Collateral) | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | other_details           | 25                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Built Up Area(Collateral) | characters                       | throws error with error message | 26                         | collateral.xlsx | other_details           | 26                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Built Up Area(Collateral) | both digits and characters       | throws error with error message | 26                         | collateral.xlsx | other_details           | 27                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Built Up Area(Collateral) | negative                         | throws error with error message | 27                         | collateral.xlsx | other_details           | 28                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Built Up Area(Collateral) | hyphen                           | throws error with error message | 26                         | collateral.xlsx | other_details           | 29                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Built Up Area(Collateral) | space                            | throws error with error message | 26                         | collateral.xlsx | other_details           | 30                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Built Up Area(Collateral) | special characters except hyphen | throws error with error message | 26                         | collateral.xlsx | other_details           | 31                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #Other Details Field Data Type Validation
#FeatureID-ACAUTOCAS-228

Scenario Outline: ACAUTOCAS-17110: CollateralPage Other Details <Validity> Carpet Area(Collateral) with <InputType> validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" container
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName   | Validity | FieldName               | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Other Details | valid    | Carpet Area(Collateral) | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | other_details           | 25                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Carpet Area(Collateral) | characters                       | throws error with error message | 26                         | collateral.xlsx | other_details           | 26                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Carpet Area(Collateral) | both digits and characters       | throws error with error message | 26                         | collateral.xlsx | other_details           | 27                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Carpet Area(Collateral) | negative                         | throws error with error message | 27                         | collateral.xlsx | other_details           | 28                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Carpet Area(Collateral) | hyphen                           | throws error with error message | 26                         | collateral.xlsx | other_details           | 29                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Carpet Area(Collateral) | space                            | throws error with error message | 26                         | collateral.xlsx | other_details           | 30                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Carpet Area(Collateral) | special characters except hyphen | throws error with error message | 26                         | collateral.xlsx | other_details           | 31                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName   | Validity | FieldName               | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Other Details | valid    | Carpet Area(Collateral) | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | other_details           | 25                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | invalid  | Carpet Area(Collateral) | characters                       | throws error with error message | 26                         | collateral.xlsx | other_details           | 26                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | invalid  | Carpet Area(Collateral) | both digits and characters       | throws error with error message | 26                         | collateral.xlsx | other_details           | 27                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | invalid  | Carpet Area(Collateral) | negative                         | throws error with error message | 27                         | collateral.xlsx | other_details           | 28                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | invalid  | Carpet Area(Collateral) | hyphen                           | throws error with error message | 26                         | collateral.xlsx | other_details           | 29                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | invalid  | Carpet Area(Collateral) | space                            | throws error with error message | 26                         | collateral.xlsx | other_details           | 30                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | invalid  | Carpet Area(Collateral) | special characters except hyphen | throws error with error message | 26                         | collateral.xlsx | other_details           | 31                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName   | Validity | FieldName               | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Other Details | valid    | Carpet Area(Collateral) | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | other_details           | 25                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Carpet Area(Collateral) | characters                       | throws error with error message | 26                         | collateral.xlsx | other_details           | 26                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Carpet Area(Collateral) | both digits and characters       | throws error with error message | 26                         | collateral.xlsx | other_details           | 27                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Carpet Area(Collateral) | negative                         | throws error with error message | 27                         | collateral.xlsx | other_details           | 28                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Carpet Area(Collateral) | hyphen                           | throws error with error message | 26                         | collateral.xlsx | other_details           | 29                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Carpet Area(Collateral) | space                            | throws error with error message | 26                         | collateral.xlsx | other_details           | 30                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Carpet Area(Collateral) | special characters except hyphen | throws error with error message | 26                         | collateral.xlsx | other_details           | 31                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #Other Details Field Data Type Validation
#FeatureID-ACAUTOCAS-228

Scenario Outline: ACAUTOCAS-17111: CollateralPage Other Details <Validity> Age Of Property(In Years) with <InputType> validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" container
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName   | Validity | FieldName                 | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Other Details | valid    | Age Of Property(In Years) | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | other_details           | 32                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Age Of Property(In Years) | characters                       | throws error with error message | 28                         | collateral.xlsx | other_details           | 33                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Age Of Property(In Years) | both digits and characters       | throws error with error message | 28                         | collateral.xlsx | other_details           | 34                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Age Of Property(In Years) | negative                         | throws error with error message | 28                         | collateral.xlsx | other_details           | 35                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Age Of Property(In Years) | hyphen                           | throws error with error message | 28                         | collateral.xlsx | other_details           | 36                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Age Of Property(In Years) | space                            | throws error with error message | 28                         | collateral.xlsx | other_details           | 37                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Age Of Property(In Years) | special characters except hyphen | throws error with error message | 28                         | collateral.xlsx | other_details           | 38                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName   | Validity | FieldName                 | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Other Details | valid    | Age Of Property(In Years) | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | other_details           | 32                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | invalid  | Age Of Property(In Years) | characters                       | throws error with error message | 28                         | collateral.xlsx | other_details           | 33                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | invalid  | Age Of Property(In Years) | both digits and characters       | throws error with error message | 28                         | collateral.xlsx | other_details           | 34                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | invalid  | Age Of Property(In Years) | negative                         | throws error with error message | 28                         | collateral.xlsx | other_details           | 35                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | invalid  | Age Of Property(In Years) | hyphen                           | throws error with error message | 28                         | collateral.xlsx | other_details           | 36                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | invalid  | Age Of Property(In Years) | space                            | throws error with error message | 28                         | collateral.xlsx | other_details           | 37                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | invalid  | Age Of Property(In Years) | special characters except hyphen | throws error with error message | 28                         | collateral.xlsx | other_details           | 38                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName   | Validity | FieldName                 | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Other Details | valid    | Age Of Property(In Years) | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | other_details           | 32                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Age Of Property(In Years) | characters                       | throws error with error message | 28                         | collateral.xlsx | other_details           | 33                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Age Of Property(In Years) | both digits and characters       | throws error with error message | 28                         | collateral.xlsx | other_details           | 34                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Age Of Property(In Years) | negative                         | throws error with error message | 28                         | collateral.xlsx | other_details           | 35                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Age Of Property(In Years) | hyphen                           | throws error with error message | 28                         | collateral.xlsx | other_details           | 36                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Age Of Property(In Years) | space                            | throws error with error message | 28                         | collateral.xlsx | other_details           | 37                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | invalid  | Age Of Property(In Years) | special characters except hyphen | throws error with error message | 28                         | collateral.xlsx | other_details           | 38                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #Other Details Field Data Type Validation
#FeatureID-ACAUTOCAS-228

Scenario Outline: ACAUTOCAS-17112: CollateralPage Other Details <Validity> Plan Type with <InputType> validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" container
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName   | Validity | FieldName | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Other Details | valid    | Plan Type | positive digits                  | does not throw any error | 22                         | collateral.xlsx | other_details           | 25                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Plan Type | characters                       | does not throw any error | 22                         | collateral.xlsx | other_details           | 26                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Plan Type | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | other_details           | 27                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Plan Type | negative                         | does not throw any error | 22                         | collateral.xlsx | other_details           | 28                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Plan Type | hyphen                           | does not throw any error | 22                         | collateral.xlsx | other_details           | 29                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Plan Type | space                            | does not throw any error | 22                         | collateral.xlsx | other_details           | 30                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Plan Type | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | other_details           | 31                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName   | Validity | FieldName | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Other Details | valid    | Plan Type | positive digits                  | does not throw any error | 22                         | collateral.xlsx | other_details           | 25                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | valid    | Plan Type | characters                       | does not throw any error | 22                         | collateral.xlsx | other_details           | 26                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | valid    | Plan Type | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | other_details           | 27                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | valid    | Plan Type | negative                         | does not throw any error | 22                         | collateral.xlsx | other_details           | 28                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | valid    | Plan Type | hyphen                           | does not throw any error | 22                         | collateral.xlsx | other_details           | 29                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | valid    | Plan Type | space                            | does not throw any error | 22                         | collateral.xlsx | other_details           | 30                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | valid    | Plan Type | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | other_details           | 31                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName   | Validity | FieldName | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Other Details | valid    | Plan Type | positive digits                  | does not throw any error | 22                         | collateral.xlsx | other_details           | 25                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Plan Type | characters                       | does not throw any error | 22                         | collateral.xlsx | other_details           | 26                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Plan Type | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | other_details           | 27                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Plan Type | negative                         | does not throw any error | 22                         | collateral.xlsx | other_details           | 28                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Plan Type | hyphen                           | does not throw any error | 22                         | collateral.xlsx | other_details           | 29                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Plan Type | space                            | does not throw any error | 22                         | collateral.xlsx | other_details           | 30                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Plan Type | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | other_details           | 31                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #Other Details Field Data Type Validation
#FeatureID-ACAUTOCAS-228

Scenario Outline: ACAUTOCAS-17113: CollateralPage Other Details <Validity> Plan Number with <InputType> validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" container
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName   | Validity | FieldName   | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Other Details | valid    | Plan Number | positive digits                  | does not throw any error | 22                         | collateral.xlsx | other_details           | 25                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Plan Number | characters                       | does not throw any error | 22                         | collateral.xlsx | other_details           | 26                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Plan Number | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | other_details           | 27                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Plan Number | negative                         | does not throw any error | 22                         | collateral.xlsx | other_details           | 28                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Plan Number | hyphen                           | does not throw any error | 22                         | collateral.xlsx | other_details           | 29                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Plan Number | space                            | does not throw any error | 22                         | collateral.xlsx | other_details           | 30                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Plan Number | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | other_details           | 31                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName   | Validity | FieldName   | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Other Details | valid    | Plan Number | positive digits                  | does not throw any error | 22                         | collateral.xlsx | other_details           | 25                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | valid    | Plan Number | characters                       | does not throw any error | 22                         | collateral.xlsx | other_details           | 26                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | valid    | Plan Number | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | other_details           | 27                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | valid    | Plan Number | negative                         | does not throw any error | 22                         | collateral.xlsx | other_details           | 28                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | valid    | Plan Number | hyphen                           | does not throw any error | 22                         | collateral.xlsx | other_details           | 29                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | valid    | Plan Number | space                            | does not throw any error | 22                         | collateral.xlsx | other_details           | 30                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | valid    | Plan Number | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | other_details           | 31                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName   | Validity | FieldName   | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Other Details | valid    | Plan Number | positive digits                  | does not throw any error | 22                         | collateral.xlsx | other_details           | 25                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Plan Number | characters                       | does not throw any error | 22                         | collateral.xlsx | other_details           | 26                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Plan Number | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | other_details           | 27                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Plan Number | negative                         | does not throw any error | 22                         | collateral.xlsx | other_details           | 28                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Plan Number | hyphen                           | does not throw any error | 22                         | collateral.xlsx | other_details           | 29                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Plan Number | space                            | does not throw any error | 22                         | collateral.xlsx | other_details           | 30                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Plan Number | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | other_details           | 31                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #Other Details Field Data Type Validation
#FeatureID-ACAUTOCAS-228

Scenario Outline: ACAUTOCAS-17114: CollateralPage Other Details <Validity> Property Lot Number with <InputType> validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" container
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName   | Validity | FieldName           | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Other Details | valid    | Property Lot Number | positive digits                  | does not throw any error | 22                         | collateral.xlsx | other_details           | 25                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Property Lot Number | characters                       | does not throw any error | 22                         | collateral.xlsx | other_details           | 26                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Property Lot Number | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | other_details           | 27                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Property Lot Number | negative                         | does not throw any error | 22                         | collateral.xlsx | other_details           | 28                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Property Lot Number | hyphen                           | does not throw any error | 22                         | collateral.xlsx | other_details           | 29                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Property Lot Number | space                            | does not throw any error | 22                         | collateral.xlsx | other_details           | 30                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Property Lot Number | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | other_details           | 31                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName   | Validity | FieldName           | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Other Details | valid    | Property Lot Number | positive digits                  | does not throw any error | 22                         | collateral.xlsx | other_details           | 25                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | valid    | Property Lot Number | characters                       | does not throw any error | 22                         | collateral.xlsx | other_details           | 26                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | valid    | Property Lot Number | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | other_details           | 27                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | valid    | Property Lot Number | negative                         | does not throw any error | 22                         | collateral.xlsx | other_details           | 28                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | valid    | Property Lot Number | hyphen                           | does not throw any error | 22                         | collateral.xlsx | other_details           | 29                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | valid    | Property Lot Number | space                            | does not throw any error | 22                         | collateral.xlsx | other_details           | 30                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | valid    | Property Lot Number | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | other_details           | 31                             | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName   | Validity | FieldName           | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Other Details | valid    | Property Lot Number | positive digits                  | does not throw any error | 22                         | collateral.xlsx | other_details           | 25                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Property Lot Number | characters                       | does not throw any error | 22                         | collateral.xlsx | other_details           | 26                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Property Lot Number | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | other_details           | 27                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Property Lot Number | negative                         | does not throw any error | 22                         | collateral.xlsx | other_details           | 28                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Property Lot Number | hyphen                           | does not throw any error | 22                         | collateral.xlsx | other_details           | 29                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Property Lot Number | space                            | does not throw any error | 22                         | collateral.xlsx | other_details           | 30                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | valid    | Property Lot Number | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | other_details           | 31                             | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  @SkippedFormatValidation
  @NotImplementable
#Other Details Field Format Validation
  Scenario: ACAUTOCAS-2316: CollateralPage Other details format validation for collateral Sub Type Plot Plus Self Construction
    And user opens "CollateralPage"
    When user selects collateral type as "Property"
    And Collateral Sub Types as "Plot + Self Construction"
    Then user should be able to see all fields of "<Other Details>" with proper format

#Other Details Field Label Validation

  Scenario Outline: ACAUTOCAS-2317:  CollateralPage Other details <FieldName> label validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When goes to "<SectionName>" container
    Then user should be able to see "<FieldName>" of "<SectionName>" with proper label
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName   | FieldName                 | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Other Details | Property Classification   | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Property Ownership        | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Market Value              | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Accepted Value (CIC)      | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Built Up Area             | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Carpet Area               | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Property Purpose          | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Age Of Property(In Years) | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Residual Age of Property  | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Plan Type                 | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Plan Number               | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Property Lot Number       | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Accepted Valuation        | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Considered Value          | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName   | FieldName                 | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Other Details | Property Classification   | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | Property Ownership        | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | Market Value              | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | Accepted Value (CIC)      | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | Built Up Area             | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | Carpet Area               | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | Property Purpose          | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | Age Of Property(In Years) | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | Residual Age of Property  | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | Plan Type                 | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | Plan Number               | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | Property Lot Number       | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | Accepted Valuation        | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Other Details | Considered Value          | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName   | FieldName                 | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Other Details | Property Classification   | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Property Ownership        | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Market Value              | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Accepted Value (CIC)      | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Built Up Area             | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Carpet Area               | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Property Purpose          | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Age Of Property(In Years) | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Residual Age of Property  | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Plan Type                 | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Plan Number               | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Property Lot Number       | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Accepted Valuation        | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Other Details | Considered Value          | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#Property Address Field Validation

  Scenario Outline: ACAUTOCAS-1399:  User is able to see <FieldName> for new collateral Plot Plus Self Construction in Property Address of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When goes to "<SectionName>" container
    Then user should be able to see "<FieldName>" field marked as "<Mandatory>"
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName      | FieldName           | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property Address | Address Type        | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Full Address        | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Country             | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Plot Number         | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Address Line 2      | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Address Line 3      | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | PinCode             | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Region              | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | State               | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | City                | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | District            | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Taluka              | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Village             | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Residence Status    | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Residence Type      | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Landmark            | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Primary Phone       | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Mobile Phone        | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Is address verified | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName      | FieldName           | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Property Address | Address Type        | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | Full Address        | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | Country             | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | Plot Number         | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | Address Line 2      | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | Address Line 3      | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | PinCode             | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | Region              | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | State               | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | City                | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | District            | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | Taluka              | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | Village             | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | Residence Status    | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | Residence Type      | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | Landmark            | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | Primary Phone       | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | Mobile Phone        | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | Is address verified | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName      | FieldName           | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property Address | Address Type        | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Full Address        | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Country             | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Plot Number         | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Address Line 2      | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Address Line 3      | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | PinCode             | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Region              | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | State               | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | City                | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | District            | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Taluka              | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Village             | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Residence Status    | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Residence Type      | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Landmark            | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Primary Phone       | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Mobile Phone        | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Is address verified | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


      #Property Address Field Data Type Validation
#ACAUTOCAS-2318: split in field type

  Scenario Outline: ACAUTOCAS-2318:  CollateralPage Property Address <Validity> Full Address with <InputType> validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" container
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName      | Validity | FieldName    | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property Address | valid    | Full Address | positive digits                  | does not throw any error | 22                         | collateral.xlsx | address_details           | 0                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Full Address | characters                       | does not throw any error | 22                         | collateral.xlsx | address_details           | 1                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Full Address | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | address_details           | 2                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Full Address | negative                         | does not throw any error | 22                         | collateral.xlsx | address_details           | 3                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Full Address | hyphen                           | does not throw any error | 22                         | collateral.xlsx | address_details           | 4                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Full Address | space                            | does not throw any error | 22                         | collateral.xlsx | address_details           | 5                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Full Address | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | address_details           | 6                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName      | Validity | FieldName    | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Property Address | valid    | Full Address | positive digits                  | does not throw any error | 22                         | collateral.xlsx | address_details           | 0                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | valid    | Full Address | characters                       | does not throw any error | 22                         | collateral.xlsx | address_details           | 1                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | valid    | Full Address | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | address_details           | 2                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | valid    | Full Address | negative                         | does not throw any error | 22                         | collateral.xlsx | address_details           | 3                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | valid    | Full Address | hyphen                           | does not throw any error | 22                         | collateral.xlsx | address_details           | 4                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | valid    | Full Address | space                            | does not throw any error | 22                         | collateral.xlsx | address_details           | 5                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | valid    | Full Address | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | address_details           | 6                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName      | Validity | FieldName    | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property Address | valid    | Full Address | positive digits                  | does not throw any error | 22                         | collateral.xlsx | address_details           | 0                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Full Address | characters                       | does not throw any error | 22                         | collateral.xlsx | address_details           | 1                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Full Address | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | address_details           | 2                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Full Address | negative                         | does not throw any error | 22                         | collateral.xlsx | address_details           | 3                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Full Address | hyphen                           | does not throw any error | 22                         | collateral.xlsx | address_details           | 4                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Full Address | space                            | does not throw any error | 22                         | collateral.xlsx | address_details           | 5                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Full Address | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | address_details           | 6                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #Property Address Field Data Type Validation
#FeatureID-ACAUTOCAS-228

Scenario Outline: ACAUTOCAS-17115: CollateralPage Property Address <Validity> Plot Number with <InputType> validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" container
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName      | Validity | FieldName   | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property Address | valid    | Plot Number | positive digits                  | does not throw any error | 22                         | collateral.xlsx | address_details           | 4                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Plot Number | characters                       | does not throw any error | 22                         | collateral.xlsx | address_details           | 5                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Plot Number | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | address_details           | 6                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Plot Number | negative                         | does not throw any error | 22                         | collateral.xlsx | address_details           | 7                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Plot Number | hyphen                           | does not throw any error | 22                         | collateral.xlsx | address_details           | 8                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Plot Number | space                            | does not throw any error | 22                         | collateral.xlsx | address_details           | 9                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Plot Number | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | address_details           | 10                               | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName      | Validity | FieldName   | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Property Address | valid    | Plot Number | positive digits                  | does not throw any error | 22                         | collateral.xlsx | address_details           | 4                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | valid    | Plot Number | characters                       | does not throw any error | 22                         | collateral.xlsx | address_details           | 5                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | valid    | Plot Number | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | address_details           | 6                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | valid    | Plot Number | negative                         | does not throw any error | 22                         | collateral.xlsx | address_details           | 7                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | valid    | Plot Number | hyphen                           | does not throw any error | 22                         | collateral.xlsx | address_details           | 8                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | valid    | Plot Number | space                            | does not throw any error | 22                         | collateral.xlsx | address_details           | 9                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | valid    | Plot Number | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | address_details           | 10                               | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName      | Validity | FieldName   | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property Address | valid    | Plot Number | positive digits                  | does not throw any error | 22                         | collateral.xlsx | address_details           | 4                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Plot Number | characters                       | does not throw any error | 22                         | collateral.xlsx | address_details           | 5                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Plot Number | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | address_details           | 6                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Plot Number | negative                         | does not throw any error | 22                         | collateral.xlsx | address_details           | 7                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Plot Number | hyphen                           | does not throw any error | 22                         | collateral.xlsx | address_details           | 8                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Plot Number | space                            | does not throw any error | 22                         | collateral.xlsx | address_details           | 9                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Plot Number | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | address_details           | 10                               | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #Property Address Field Data Type Validation
#FeatureID-ACAUTOCAS-228

Scenario Outline: ACAUTOCAS-17116: CollateralPage Property Address <Validity> Address Line 2 with <InputType> validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" container
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName      | Validity | FieldName      | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property Address | valid    | Address Line 2 | positive digits                  | does not throw any error | 22                         | collateral.xlsx | address_details           | 12                               | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Address Line 2 | characters                       | does not throw any error | 22                         | collateral.xlsx | address_details           | 13                               | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Address Line 2 | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | address_details           | 14                               | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Address Line 2 | negative                         | does not throw any error | 22                         | collateral.xlsx | address_details           | 15                               | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Address Line 2 | hyphen                           | does not throw any error | 22                         | collateral.xlsx | address_details           | 16                               | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Address Line 2 | space                            | does not throw any error | 22                         | collateral.xlsx | address_details           | 17                               | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Address Line 2 | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | address_details           | 18                               | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName      | Validity | FieldName      | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Property Address | valid    | Address Line 2 | positive digits                  | does not throw any error | 22                         | collateral.xlsx | address_details           | 12                               | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | valid    | Address Line 2 | characters                       | does not throw any error | 22                         | collateral.xlsx | address_details           | 13                               | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | valid    | Address Line 2 | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | address_details           | 14                               | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | valid    | Address Line 2 | negative                         | does not throw any error | 22                         | collateral.xlsx | address_details           | 15                               | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | valid    | Address Line 2 | hyphen                           | does not throw any error | 22                         | collateral.xlsx | address_details           | 16                               | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | valid    | Address Line 2 | space                            | does not throw any error | 22                         | collateral.xlsx | address_details           | 17                               | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | valid    | Address Line 2 | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | address_details           | 18                               | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName      | Validity | FieldName      | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property Address | valid    | Address Line 2 | positive digits                  | does not throw any error | 22                         | collateral.xlsx | address_details           | 12                               | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Address Line 2 | characters                       | does not throw any error | 22                         | collateral.xlsx | address_details           | 13                               | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Address Line 2 | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | address_details           | 14                               | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Address Line 2 | negative                         | does not throw any error | 22                         | collateral.xlsx | address_details           | 15                               | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Address Line 2 | hyphen                           | does not throw any error | 22                         | collateral.xlsx | address_details           | 16                               | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Address Line 2 | space                            | does not throw any error | 22                         | collateral.xlsx | address_details           | 17                               | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Address Line 2 | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | address_details           | 18                               | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #Property Address Field Data Type Validation
#FeatureID-ACAUTOCAS-228

Scenario Outline: ACAUTOCAS-17117: CollateralPage Property Address <Validity> Address Line 3 with <InputType> validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" container
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName      | Validity | FieldName      | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property Address | valid    | Address Line 3 | positive digits                  | does not throw any error | 22                         | collateral.xlsx | address_details           | 19                               | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Address Line 3 | characters                       | does not throw any error | 22                         | collateral.xlsx | address_details           | 20                               | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Address Line 3 | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | address_details           | 21                               | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Address Line 3 | negative                         | does not throw any error | 22                         | collateral.xlsx | address_details           | 22                               | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Address Line 3 | hyphen                           | does not throw any error | 22                         | collateral.xlsx | address_details           | 23                               | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Address Line 3 | space                            | does not throw any error | 22                         | collateral.xlsx | address_details           | 24                               | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Address Line 3 | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | address_details           | 25                               | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName      | Validity | FieldName      | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Property Address | valid    | Address Line 3 | positive digits                  | does not throw any error | 22                         | collateral.xlsx | address_details           | 19                               | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | valid    | Address Line 3 | characters                       | does not throw any error | 22                         | collateral.xlsx | address_details           | 20                               | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | valid    | Address Line 3 | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | address_details           | 21                               | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | valid    | Address Line 3 | negative                         | does not throw any error | 22                         | collateral.xlsx | address_details           | 22                               | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | valid    | Address Line 3 | hyphen                           | does not throw any error | 22                         | collateral.xlsx | address_details           | 23                               | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | valid    | Address Line 3 | space                            | does not throw any error | 22                         | collateral.xlsx | address_details           | 24                               | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | valid    | Address Line 3 | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | address_details           | 25                               | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName      | Validity | FieldName      | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property Address | valid    | Address Line 3 | positive digits                  | does not throw any error | 22                         | collateral.xlsx | address_details           | 19                               | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Address Line 3 | characters                       | does not throw any error | 22                         | collateral.xlsx | address_details           | 20                               | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Address Line 3 | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | address_details           | 21                               | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Address Line 3 | negative                         | does not throw any error | 22                         | collateral.xlsx | address_details           | 22                               | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Address Line 3 | hyphen                           | does not throw any error | 22                         | collateral.xlsx | address_details           | 23                               | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Address Line 3 | space                            | does not throw any error | 22                         | collateral.xlsx | address_details           | 24                               | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Address Line 3 | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | address_details           | 25                               | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #Property Address Field Data Type Validation
#FeatureID-ACAUTOCAS-228

Scenario Outline: ACAUTOCAS-17118: CollateralPage Property Address <Validity> Landmark with <InputType> validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" container
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName      | Validity | FieldName | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property Address | valid    | Landmark  | positive digits                  | does not throw any error | 22                         | collateral.xlsx | address_details           | 0                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Landmark  | characters                       | does not throw any error | 22                         | collateral.xlsx | address_details           | 1                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Landmark  | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | address_details           | 2                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Landmark  | negative                         | does not throw any error | 22                         | collateral.xlsx | address_details           | 3                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Landmark  | hyphen                           | does not throw any error | 22                         | collateral.xlsx | address_details           | 4                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Landmark  | space                            | does not throw any error | 22                         | collateral.xlsx | address_details           | 5                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Landmark  | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | address_details           | 6                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName      | Validity | FieldName | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Property Address | valid    | Landmark  | positive digits                  | does not throw any error | 22                         | collateral.xlsx | address_details           | 0                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | valid    | Landmark  | characters                       | does not throw any error | 22                         | collateral.xlsx | address_details           | 1                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | valid    | Landmark  | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | address_details           | 2                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | valid    | Landmark  | negative                         | does not throw any error | 22                         | collateral.xlsx | address_details           | 3                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | valid    | Landmark  | hyphen                           | does not throw any error | 22                         | collateral.xlsx | address_details           | 4                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | valid    | Landmark  | space                            | does not throw any error | 22                         | collateral.xlsx | address_details           | 5                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | valid    | Landmark  | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | address_details           | 6                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName      | Validity | FieldName | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property Address | valid    | Landmark  | positive digits                  | does not throw any error | 22                         | collateral.xlsx | address_details           | 0                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Landmark  | characters                       | does not throw any error | 22                         | collateral.xlsx | address_details           | 1                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Landmark  | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | address_details           | 2                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Landmark  | negative                         | does not throw any error | 22                         | collateral.xlsx | address_details           | 3                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Landmark  | hyphen                           | does not throw any error | 22                         | collateral.xlsx | address_details           | 4                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Landmark  | space                            | does not throw any error | 22                         | collateral.xlsx | address_details           | 5                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | valid    | Landmark  | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | address_details           | 6                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #Property Address Field Data Type Validation
#FeatureID-ACAUTOCAS-228

Scenario Outline: ACAUTOCAS-17119: CollateralPage Property Address <Validity> Mobile Phone with <InputType> validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" container
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName      | Validity | FieldName    | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property Address | valid    | Mobile Phone | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | property_address          | 0                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | Mobile Phone | characters                       | throws error with error message | 28                         | collateral.xlsx | property_address          | 1                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | Mobile Phone | both digits and characters       | throws error with error message | 28                         | collateral.xlsx | property_address          | 2                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | Mobile Phone | negative                         | throws error with error message | 28                         | collateral.xlsx | property_address          | 3                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | Mobile Phone | hyphen                           | throws error with error message | 28                         | collateral.xlsx | property_address          | 4                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | Mobile Phone | space                            | throws error with error message | 28                         | collateral.xlsx | property_address          | 5                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | Mobile Phone | special characters except hyphen | throws error with error message | 28                         | collateral.xlsx | property_address          | 6                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName      | Validity | FieldName    | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Property Address | valid    | Mobile Phone | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | property_address          | 0                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | invalid  | Mobile Phone | characters                       | throws error with error message | 28                         | collateral.xlsx | property_address          | 1                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | invalid  | Mobile Phone | both digits and characters       | throws error with error message | 28                         | collateral.xlsx | property_address          | 2                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | invalid  | Mobile Phone | negative                         | throws error with error message | 28                         | collateral.xlsx | property_address          | 3                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | invalid  | Mobile Phone | hyphen                           | throws error with error message | 28                         | collateral.xlsx | property_address          | 4                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | invalid  | Mobile Phone | space                            | throws error with error message | 28                         | collateral.xlsx | property_address          | 5                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | invalid  | Mobile Phone | special characters except hyphen | throws error with error message | 28                         | collateral.xlsx | property_address          | 6                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName      | Validity | FieldName    | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property Address | valid    | Mobile Phone | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | property_address          | 0                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | Mobile Phone | characters                       | throws error with error message | 28                         | collateral.xlsx | property_address          | 1                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | Mobile Phone | both digits and characters       | throws error with error message | 28                         | collateral.xlsx | property_address          | 2                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | Mobile Phone | negative                         | throws error with error message | 28                         | collateral.xlsx | property_address          | 3                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | Mobile Phone | hyphen                           | throws error with error message | 28                         | collateral.xlsx | property_address          | 4                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | Mobile Phone | space                            | throws error with error message | 28                         | collateral.xlsx | property_address          | 5                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | Mobile Phone | special characters except hyphen | throws error with error message | 28                         | collateral.xlsx | property_address          | 6                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #Property Address Field Data Type Validation
#FeatureID-ACAUTOCAS-228

Scenario Outline: ACAUTOCAS-17120: CollateralPage Property Address <Validity> STD with <InputType> validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" container
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName      | Validity | FieldName | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property Address | valid    | STD       | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | property_address          | 0                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | STD       | characters                       | throws error with error message | 28                         | collateral.xlsx | property_address          | 1                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | STD       | both digits and characters       | throws error with error message | 28                         | collateral.xlsx | property_address          | 2                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | STD       | negative                         | throws error with error message | 28                         | collateral.xlsx | property_address          | 3                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | STD       | hyphen                           | throws error with error message | 28                         | collateral.xlsx | property_address          | 4                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | STD       | space                            | throws error with error message | 28                         | collateral.xlsx | property_address          | 5                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | STD       | special characters except hyphen | throws error with error message | 28                         | collateral.xlsx | property_address          | 6                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName      | Validity | FieldName | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Property Address | valid    | STD       | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | property_address          | 0                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | invalid  | STD       | characters                       | throws error with error message | 28                         | collateral.xlsx | property_address          | 1                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | invalid  | STD       | both digits and characters       | throws error with error message | 28                         | collateral.xlsx | property_address          | 2                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | invalid  | STD       | negative                         | throws error with error message | 28                         | collateral.xlsx | property_address          | 3                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | invalid  | STD       | hyphen                           | throws error with error message | 28                         | collateral.xlsx | property_address          | 4                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | invalid  | STD       | space                            | throws error with error message | 28                         | collateral.xlsx | property_address          | 5                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | invalid  | STD       | special characters except hyphen | throws error with error message | 28                         | collateral.xlsx | property_address          | 6                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName      | Validity | FieldName | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property Address | valid    | STD       | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | property_address          | 0                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | STD       | characters                       | throws error with error message | 28                         | collateral.xlsx | property_address          | 1                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | STD       | both digits and characters       | throws error with error message | 28                         | collateral.xlsx | property_address          | 2                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | STD       | negative                         | throws error with error message | 28                         | collateral.xlsx | property_address          | 3                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | STD       | hyphen                           | throws error with error message | 28                         | collateral.xlsx | property_address          | 4                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | STD       | space                            | throws error with error message | 28                         | collateral.xlsx | property_address          | 5                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | STD       | special characters except hyphen | throws error with error message | 28                         | collateral.xlsx | property_address          | 6                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #Property Address Field Data Type Validation
#FeatureID-ACAUTOCAS-228

Scenario Outline: ACAUTOCAS-17121: CollateralPage Property Address <Validity> EXTN with <InputType> validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" container
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName      | Validity | FieldName | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property Address | valid    | EXTN      | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | property_address          | 0                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | EXTN      | characters                       | throws error with error message | 28                         | collateral.xlsx | property_address          | 1                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | EXTN      | both digits and characters       | throws error with error message | 28                         | collateral.xlsx | property_address          | 2                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | EXTN      | negative                         | throws error with error message | 28                         | collateral.xlsx | property_address          | 3                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | EXTN      | hyphen                           | throws error with error message | 28                         | collateral.xlsx | property_address          | 4                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | EXTN      | space                            | throws error with error message | 28                         | collateral.xlsx | property_address          | 5                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | EXTN      | special characters except hyphen | throws error with error message | 28                         | collateral.xlsx | property_address          | 6                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName      | Validity | FieldName | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Property Address | valid    | EXTN      | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | property_address          | 0                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | invalid  | EXTN      | characters                       | throws error with error message | 28                         | collateral.xlsx | property_address          | 1                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | invalid  | EXTN      | both digits and characters       | throws error with error message | 28                         | collateral.xlsx | property_address          | 2                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | invalid  | EXTN      | negative                         | throws error with error message | 28                         | collateral.xlsx | property_address          | 3                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | invalid  | EXTN      | hyphen                           | throws error with error message | 28                         | collateral.xlsx | property_address          | 4                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | invalid  | EXTN      | space                            | throws error with error message | 28                         | collateral.xlsx | property_address          | 5                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | invalid  | EXTN      | special characters except hyphen | throws error with error message | 28                         | collateral.xlsx | property_address          | 6                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName      | Validity | FieldName | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property Address | valid    | EXTN      | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | property_address          | 0                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | EXTN      | characters                       | throws error with error message | 28                         | collateral.xlsx | property_address          | 1                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | EXTN      | both digits and characters       | throws error with error message | 28                         | collateral.xlsx | property_address          | 2                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | EXTN      | negative                         | throws error with error message | 28                         | collateral.xlsx | property_address          | 3                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | EXTN      | hyphen                           | throws error with error message | 28                         | collateral.xlsx | property_address          | 4                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | EXTN      | space                            | throws error with error message | 28                         | collateral.xlsx | property_address          | 5                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | EXTN      | special characters except hyphen | throws error with error message | 28                         | collateral.xlsx | property_address          | 6                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #Property Address Field Data Type Validation
#FeatureID-ACAUTOCAS-228

Scenario Outline: ACAUTOCAS-17122: CollateralPage Property Address <Validity> NUMBER with <InputType> validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" container
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName      | Validity | FieldName | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property Address | valid    | NUMBER    | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | property_address          | 0                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | NUMBER    | characters                       | throws error with error message | 28                         | collateral.xlsx | property_address          | 1                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | NUMBER    | both digits and characters       | throws error with error message | 28                         | collateral.xlsx | property_address          | 2                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | NUMBER    | negative                         | throws error with error message | 28                         | collateral.xlsx | property_address          | 3                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | NUMBER    | hyphen                           | throws error with error message | 28                         | collateral.xlsx | property_address          | 4                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | NUMBER    | space                            | throws error with error message | 28                         | collateral.xlsx | property_address          | 5                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | NUMBER    | special characters except hyphen | throws error with error message | 28                         | collateral.xlsx | property_address          | 6                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName      | Validity | FieldName | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Property Address | valid    | NUMBER    | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | property_address          | 0                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | invalid  | NUMBER    | characters                       | throws error with error message | 28                         | collateral.xlsx | property_address          | 1                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | invalid  | NUMBER    | both digits and characters       | throws error with error message | 28                         | collateral.xlsx | property_address          | 2                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | invalid  | NUMBER    | negative                         | throws error with error message | 28                         | collateral.xlsx | property_address          | 3                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | invalid  | NUMBER    | hyphen                           | throws error with error message | 28                         | collateral.xlsx | property_address          | 4                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | invalid  | NUMBER    | space                            | throws error with error message | 28                         | collateral.xlsx | property_address          | 5                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | invalid  | NUMBER    | special characters except hyphen | throws error with error message | 28                         | collateral.xlsx | property_address          | 6                                | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName      | Validity | FieldName | InputType                        | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property Address | valid    | NUMBER    | positive digits                  | does not throw any error        | 22                         | collateral.xlsx | property_address          | 0                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | NUMBER    | characters                       | throws error with error message | 28                         | collateral.xlsx | property_address          | 1                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | NUMBER    | both digits and characters       | throws error with error message | 28                         | collateral.xlsx | property_address          | 2                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | NUMBER    | negative                         | throws error with error message | 28                         | collateral.xlsx | property_address          | 3                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | NUMBER    | hyphen                           | throws error with error message | 28                         | collateral.xlsx | property_address          | 4                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | NUMBER    | space                            | throws error with error message | 28                         | collateral.xlsx | property_address          | 5                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | invalid  | NUMBER    | special characters except hyphen | throws error with error message | 28                         | collateral.xlsx | property_address          | 6                                | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  @SkippedFormatValidation
  @NotImplementable
##Property Address Field Format Validation
  Scenario: ACAUTOCAS-2320: CollateralPage Property details format validation in Property Address for collateral Sub Type Plot Plus Self Construction
    And user opens "CollateralPage"
    When user selects collateral type as "Property"
    And Collateral Sub Types as "Plot + Self Construction"
    Then user should be able to see all fields of "<Property Address>" with proper format

#Property Address Field Label Validation

  Scenario Outline: ACAUTOCAS-2320: CollateralPage Property address details <FieldName> label validation in Property Address for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When goes to "<SectionName>" container
    Then user should be able to see "<FieldName>" of "<SectionName>" with proper label
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName      | FieldName               | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property Address | Address Type(Plot Plus) | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Full Address(Plot Plus) | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Country                 | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Flat/Plot Number        | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Address Line 2          | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Address Line 3          | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | PinCode(Plot Plus)      | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Region                  | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | State(Plot Plus)        | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | City                    | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | District(Plot Plus)     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Taluka                  | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Village(Plot Plus)      | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Residence Status        | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Residence Type          | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Landmark                | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Primary Phone           | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Mobile Phone            | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Is address verified     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName      | FieldName               | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Property Address | Address Type(Plot Plus) | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | Full Address(Plot Plus) | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | Country                 | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | Flat/Plot Number        | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | Address Line 2          | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | Address Line 3          | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | PinCode(Plot Plus)      | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | Region                  | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | State(Plot Plus)        | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | City                    | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | District(Plot Plus)     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | Taluka                  | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | Village(Plot Plus)      | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | Residence Status        | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | Residence Type          | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | Landmark                | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | Primary Phone           | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | Mobile Phone            | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Address | Is address verified     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName      | FieldName               | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property Address | Address Type(Plot Plus) | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Full Address(Plot Plus) | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Country                 | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Flat/Plot Number        | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Address Line 2          | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Address Line 3          | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | PinCode(Plot Plus)      | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Region                  | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | State(Plot Plus)        | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | City                    | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | District(Plot Plus)     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Taluka                  | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Village(Plot Plus)      | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Residence Status        | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Residence Type          | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Landmark                | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Primary Phone           | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Mobile Phone            | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Address | Is address verified     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


#Property and Registration Details Entity Validation
  Scenario Outline: ACAUTOCAS-2321:  User is able to add multiple agreement details for Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user adds property and registration details to collateral data from
      | collateral.xlsx | property_registration_details | 16 |
      | collateral.xlsx | property_registration_details | 17 |
    Then user should be able to add multiple "<SectionName>" for Plot Plus Self Construction
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | SectionName                       |
      | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Property and Registration Details |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | SectionName                       |
      | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Property and Registration Details |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | SectionName                       |
      | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Property and Registration Details |

#Property and Registration Details Field Validation

  Scenario Outline: ACAUTOCAS-1400:  User is able to see <FieldName> for collateral Plot Plus Self Construction in Property and Registration Details of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When goes to "<SectionName>" container
    And click on new agreement details
    Then user should be able to see "<FieldName>" field marked as "<Mandatory>"
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName                       | FieldName                 | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property and Registration Details | Registration Number       | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | Agreement Type            | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | SRO                       | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | Sale Deed Number          | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | Registration Date         | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | Sale Deed Date            | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | Agreement Value           | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | Amenities Agreement Value | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | Remarks(Agreement)        | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName                       | FieldName                 | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Property and Registration Details | Registration Number       | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | Agreement Type            | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | SRO                       | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | Sale Deed Number          | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | Registration Date         | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | Sale Deed Date            | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | Agreement Value           | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | Amenities Agreement Value | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | Remarks(Agreement)        | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName                       | FieldName                 | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property and Registration Details | Registration Number       | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | Agreement Type            | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | SRO                       | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | Sale Deed Number          | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | Registration Date         | mandatory     | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | Sale Deed Date            | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | Agreement Value           | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | Amenities Agreement Value | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | Remarks(Agreement)        | non mandatory | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #Property and Registration Details Field Data Type Validation
    #FeatureID-ACAUTOCAS-228

Scenario Outline: ACAUTOCAS-17123: CollateralPage Property and Registration Details <Validity> Registration Number with <InputType> validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
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
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName                       | Validity | FieldName           | InputType                                                               | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property and Registration Details | valid    | Registration Number | positive digits                                                         | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 12                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | forward and backward slash                                              | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 13                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | dot                                                                     | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 14                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | characters                                                              | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 15                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | both digits and characters                                              | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 16                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | negative                                                                | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 17                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | hyphen                                                                  | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 18                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Registration Number | space                                                                   | throws error with error message | 29                         | collateral.xlsx | agreement_details           | 19                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Registration Number | special characters except hyphen ,forward slash, backward slash and dot | throws error with error message | 29                         | collateral.xlsx | agreement_details           | 20                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName                       | Validity | FieldName           | InputType                                                               | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Property and Registration Details | valid    | Registration Number | positive digits                                                         | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 12                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | forward and backward slash                                              | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 13                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | dot                                                                     | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 14                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | characters                                                              | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 15                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | both digits and characters                                              | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 16                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | negative                                                                | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 17                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | hyphen                                                                  | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 18                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Registration Number | space                                                                   | throws error with error message | 29                         | collateral.xlsx | agreement_details           | 19                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Registration Number | special characters except hyphen ,forward slash, backward slash and dot | throws error with error message | 29                         | collateral.xlsx | agreement_details           | 20                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName                       | Validity | FieldName           | InputType                                                               | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property and Registration Details | valid    | Registration Number | positive digits                                                         | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 12                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | forward and backward slash                                              | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 13                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | dot                                                                     | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 14                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | characters                                                              | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 15                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | both digits and characters                                              | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 16                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | negative                                                                | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 17                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Registration Number | hyphen                                                                  | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 18                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Registration Number | space                                                                   | throws error with error message | 29                         | collateral.xlsx | agreement_details           | 19                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Registration Number | special characters except hyphen ,forward slash, backward slash and dot | throws error with error message | 29                         | collateral.xlsx | agreement_details           | 20                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #Property and Registration Details Field Data Type Validation
    #FeatureID-ACAUTOCAS-228

Scenario Outline: ACAUTOCAS-17124: CollateralPage Property and Registration Details <Validity> Sale Deed Number with <InputType> validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
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
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName                       | Validity | FieldName        | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property and Registration Details | valid    | Sale Deed Number | positive digits                  | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 12                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | characters                       | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 13                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 14                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | negative                         | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 15                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | hyphen                           | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 16                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | space                            | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 17                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 18                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName                       | Validity | FieldName        | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Property and Registration Details | valid    | Sale Deed Number | positive digits                  | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 12                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | characters                       | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 13                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 14                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | negative                         | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 15                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | hyphen                           | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 16                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | space                            | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 17                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 18                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName                       | Validity | FieldName        | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property and Registration Details | valid    | Sale Deed Number | positive digits                  | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 12                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | characters                       | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 13                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 14                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | negative                         | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 15                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | hyphen                           | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 16                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | space                            | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 17                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Sale Deed Number | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 18                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #Property and Registration Details Field Data Type Validation
    #FeatureID-ACAUTOCAS-228

Scenario Outline: ACAUTOCAS-17125: CollateralPage Property and Registration Details <Validity> Agreement Value with <InputType> validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
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
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName                       | Validity | FieldName       | InputType                           | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property and Registration Details | valid    | Agreement Value | positive digits less then 18 digits | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 12                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | positive digits more then 18 digits | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 13                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | characters                          | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 14                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | both digits and characters          | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 15                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | negative                            | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 16                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | hyphen                              | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 17                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | space                               | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 18                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | special characters except hyphen    | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 19                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName                       | Validity | FieldName       | InputType                           | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Property and Registration Details | valid    | Agreement Value | positive digits less then 18 digits | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 12                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | positive digits more then 18 digits | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 13                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | characters                          | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 14                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | both digits and characters          | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 15                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | negative                            | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 16                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | hyphen                              | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 17                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | space                               | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 18                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | special characters except hyphen    | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 19                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName                       | Validity | FieldName       | InputType                           | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property and Registration Details | valid    | Agreement Value | positive digits less then 18 digits | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 12                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | positive digits more then 18 digits | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 13                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | characters                          | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 14                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | both digits and characters          | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 15                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | negative                            | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 16                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | hyphen                              | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 17                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | space                               | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 18                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Agreement Value | special characters except hyphen    | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 19                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #Property and Registration Details Field Data Type Validation
    #FeatureID-ACAUTOCAS-228

Scenario Outline: ACAUTOCAS-17126: CollateralPage Property and Registration Details <Validity> Amenities Agreement Value with <InputType> validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
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
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName                       | Validity | FieldName                 | InputType                           | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property and Registration Details | valid    | Amenities Agreement Value | positive digits less then 18 digits | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 12                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | positive digits more then 18 digits | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 13                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | characters                          | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 14                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | both digits and characters          | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 15                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | negative                            | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 16                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | hyphen                              | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 17                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | space                               | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 18                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | special characters except hyphen    | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 19                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName                       | Validity | FieldName                 | InputType                           | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Property and Registration Details | valid    | Amenities Agreement Value | positive digits less then 18 digits | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 12                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | positive digits more then 18 digits | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 13                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | characters                          | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 14                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | both digits and characters          | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 15                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | negative                            | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 16                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | hyphen                              | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 17                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | space                               | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 18                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | special characters except hyphen    | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 19                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName                       | Validity | FieldName                 | InputType                           | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property and Registration Details | valid    | Amenities Agreement Value | positive digits less then 18 digits | does not throw any error        | 22                         | collateral.xlsx | agreement_details           | 12                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | positive digits more then 18 digits | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 13                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | characters                          | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 14                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | both digits and characters          | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 15                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | negative                            | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 16                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | hyphen                              | throws error with error message | 25                         | collateral.xlsx | agreement_details           | 17                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | space                               | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 18                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | invalid  | Amenities Agreement Value | special characters except hyphen    | throws error with error message | 24                         | collateral.xlsx | agreement_details           | 19                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #Property and Registration Details Field Data Type Validation
    #FeatureID-ACAUTOCAS-228

Scenario Outline: ACAUTOCAS-17127: CollateralPage Property and Registration Details <Validity> Remarks(Agreement) with <InputType> validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
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
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName                       | Validity | FieldName          | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property and Registration Details | valid    | Remarks(Agreement) | positive digits                  | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 12                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | characters                       | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 13                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 14                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | negative                         | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 15                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | hyphen                           | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 16                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | space                            | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 17                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 18                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName                       | Validity | FieldName          | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Property and Registration Details | valid    | Remarks(Agreement) | positive digits                  | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 12                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | characters                       | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 13                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 14                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | negative                         | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 15                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | hyphen                           | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 16                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | space                            | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 17                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 18                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName                       | Validity | FieldName          | InputType                        | Throws_NotThrows         | Collateral_default_rowNum2 | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property and Registration Details | valid    | Remarks(Agreement) | positive digits                  | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 12                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | characters                       | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 13                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | both digits and characters       | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 14                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | negative                         | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 15                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | hyphen                           | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 16                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | space                            | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 17                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | valid    | Remarks(Agreement) | special characters except hyphen | does not throw any error | 22                         | collateral.xlsx | agreement_details           | 18                                 | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  @SkippedFormatValidation
  @NotImplementable
##Property and Registration Details Field Format Validation
#FeatureID-ACAUTOCAS-228
Scenario: ACAUTOCAS-17128: CollateralPage Property details format validation for collateral Sub Type Plot Plus Self Construction
    When user opens "CollateralPage"
    And User selects Collateral Type as "Property"
    And user selects sub collateral as "Plot Plus Self Construction"
    Then user should be able to see all fields of "<Property and Registration Details>" with proper format

#Property and Registration Details Field Label Validation
  #FeatureID-ACAUTOCAS-228

Scenario Outline: ACAUTOCAS-17129: CollateralPage Property details <FieldName> labels validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user selects collateral type along with collateral sub type
    When goes to "<SectionName>" container
    And click on new agreement details
    Then user should be able to see "<FieldName>" of "<SectionName>" with proper label
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName                       | FieldName                      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property and Registration Details | Registration Number(Agreement) | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | Agreement Type                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | SRO                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | Sale Deed Number               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | Registration Date              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | Sale Deed Date                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | Agreement Value                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | Amenities Agreement Value      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | Remarks(Agreement)             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName                       | FieldName                      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Property and Registration Details | Registration Number(Agreement) | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | Agreement Type                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | SRO                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | Sale Deed Number               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | Registration Date              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | Sale Deed Date                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | Agreement Value                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | Amenities Agreement Value      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property and Registration Details | Remarks(Agreement)             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName                       | FieldName                      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Property and Registration Details | Registration Number(Agreement) | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | Agreement Type                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | SRO                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | Sale Deed Number               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | Registration Date              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | Sale Deed Date                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | Agreement Value                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | Amenities Agreement Value      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property and Registration Details | Remarks(Agreement)             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#Ownership Details Field Validation

  Scenario Outline: ACAUTOCAS-1401:  User is able to see <FieldName> for collateral Plot Plus Self Construction in Ownership Details of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user selects collateral type along with collateral sub type
    When goes to "<SectionName>" container
    Then user should be able to see "<FieldName>" field marked as "<Mandatory>"
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName       | FieldName        | Mandatory     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Ownership Details | Owner Type       | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | Ownership Status | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | Owner Name       | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | Linked Applicant | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | Percent Share    | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | Ownership Dates  | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName       | FieldName        | Mandatory     | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Ownership Details | Owner Type       | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | Ownership Status | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | Owner Name       | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | Linked Applicant | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | Percent Share    | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | Ownership Dates  | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName       | FieldName        | Mandatory     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Ownership Details | Owner Type       | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | Ownership Status | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | Owner Name       | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | Linked Applicant | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | Percent Share    | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | Ownership Dates  | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #Ownership Details Field Data Type Validation

  Scenario Outline: ACAUTOCAS-2325:  CollateralPage Ownership Details <Validity> Owner Name with <InputType> validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" container
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_ownership_details>" and row <Collateral_ownership_details_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName       | Validity | FieldName  | InputType                  | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_ownership_details | Collateral_ownership_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Ownership Details | valid    | Owner Name | positive digits            | does not throw any error        | 22                         | collateral.xlsx | ownership_details            | 32                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | valid    | Owner Name | characters                 | does not throw any error        | 22                         | collateral.xlsx | ownership_details            | 33                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | valid    | Owner Name | both digits and characters | does not throw any error        | 22                         | collateral.xlsx | ownership_details            | 34                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | valid    | Owner Name | dot                        | does not throw any error        | 22                         | collateral.xlsx | ownership_details            | 35                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Owner Name | special character          | throws error with error message | 30                         | collateral.xlsx | ownership_details            | 37                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Owner Name | doller                     | throws error with error message | 30                         | collateral.xlsx | ownership_details            | 41                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Owner Name | percentage                 | throws error with error message | 30                         | collateral.xlsx | ownership_details            | 42                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Owner Name | equal to                   | throws error with error message | 30                         | collateral.xlsx | ownership_details            | 43                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Owner Name | comma                      | throws error with error message | 30                         | collateral.xlsx | ownership_details            | 44                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | valid    | Owner Name | space                      | does not throw any error        | 22                         | collateral.xlsx | ownership_details            | 36                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | valid    | Owner Name | single quote               | does not throw any error        | 22                         | collateral.xlsx | ownership_details            | 38                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Owner Name | at a rate sign             | throws error with error message | 30                         | collateral.xlsx | ownership_details            | 39                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    @LoggedBug
    Examples:
      | SectionName       | Validity | FieldName  | InputType | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_ownership_details | Collateral_ownership_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Ownership Details | invalid  | Owner Name | hash      | throws error with error message | 30                         | collateral.xlsx | ownership_details            | 40                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName       | Validity | FieldName  | InputType                  | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_ownership_details | Collateral_ownership_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Ownership Details | valid    | Owner Name | positive digits            | does not throw any error        | 22                         | collateral.xlsx | ownership_details            | 32                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | valid    | Owner Name | characters                 | does not throw any error        | 22                         | collateral.xlsx | ownership_details            | 33                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | valid    | Owner Name | both digits and characters | does not throw any error        | 22                         | collateral.xlsx | ownership_details            | 34                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | valid    | Owner Name | dot                        | does not throw any error        | 22                         | collateral.xlsx | ownership_details            | 35                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | invalid  | Owner Name | special character          | throws error with error message | 30                         | collateral.xlsx | ownership_details            | 37                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | invalid  | Owner Name | doller                     | throws error with error message | 30                         | collateral.xlsx | ownership_details            | 41                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | invalid  | Owner Name | percentage                 | throws error with error message | 30                         | collateral.xlsx | ownership_details            | 42                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | invalid  | Owner Name | equal to                   | throws error with error message | 30                         | collateral.xlsx | ownership_details            | 43                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | invalid  | Owner Name | comma                      | throws error with error message | 30                         | collateral.xlsx | ownership_details            | 44                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | valid    | Owner Name | space                      | does not throw any error        | 22                         | collateral.xlsx | ownership_details            | 36                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | valid    | Owner Name | single quote               | does not throw any error        | 22                         | collateral.xlsx | ownership_details            | 38                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | invalid  | Owner Name | at a rate sign             | throws error with error message | 30                         | collateral.xlsx | ownership_details            | 39                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    @LoggedBug
    Examples:
      | SectionName       | Validity | FieldName  | InputType | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_ownership_details | Collateral_ownership_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Ownership Details | invalid  | Owner Name | hash      | throws error with error message | 30                         | collateral.xlsx | ownership_details            | 40                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName       | Validity | FieldName  | InputType                  | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_ownership_details | Collateral_ownership_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Ownership Details | valid    | Owner Name | positive digits            | does not throw any error        | 22                         | collateral.xlsx | ownership_details            | 32                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | valid    | Owner Name | characters                 | does not throw any error        | 22                         | collateral.xlsx | ownership_details            | 33                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | valid    | Owner Name | both digits and characters | does not throw any error        | 22                         | collateral.xlsx | ownership_details            | 34                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | valid    | Owner Name | dot                        | does not throw any error        | 22                         | collateral.xlsx | ownership_details            | 35                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Owner Name | special character          | throws error with error message | 30                         | collateral.xlsx | ownership_details            | 37                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Owner Name | doller                     | throws error with error message | 30                         | collateral.xlsx | ownership_details            | 41                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Owner Name | percentage                 | throws error with error message | 30                         | collateral.xlsx | ownership_details            | 42                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Owner Name | equal to                   | throws error with error message | 30                         | collateral.xlsx | ownership_details            | 43                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Owner Name | comma                      | throws error with error message | 30                         | collateral.xlsx | ownership_details            | 44                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | valid    | Owner Name | space                      | does not throw any error        | 22                         | collateral.xlsx | ownership_details            | 36                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | valid    | Owner Name | single quote               | does not throw any error        | 22                         | collateral.xlsx | ownership_details            | 38                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Owner Name | at a rate sign             | throws error with error message | 30                         | collateral.xlsx | ownership_details            | 39                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    @LoggedBug
    Examples:
      | SectionName       | Validity | FieldName  | InputType | Throws_NotThrows                | Collateral_default_rowNum2 | CollateralWB    | Collateral_ownership_details | Collateral_ownership_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Ownership Details | invalid  | Owner Name | hash      | throws error with error message | 30                         | collateral.xlsx | ownership_details            | 40                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #FeatureID-ACAUTOCAS-228

Scenario Outline: ACAUTOCAS-17130: CollateralPage Ownership Details <Validity> Percent Share with <InputType> validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And goes to "<SectionName>" container
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_ownership_details>" and row <Collateral_ownership_details_rowNum>
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName       | Validity | FieldName     | InputType                       | Throws_NotThrows                | CollateralWB    | Collateral_ownership_details | Collateral_ownership_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Ownership Details | valid    | Percent Share | positive digit less then 100    | does not throw any error        | collateral.xlsx | ownership_details            | 55                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | valid    | Percent Share | zero                            | does not throw any error        | collateral.xlsx | ownership_details            | 56                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Percent Share | both digits and characters      | throws error with error message | collateral.xlsx | ownership_details            | 57                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Percent Share | positive digit greater then 100 | throws error with error message | collateral.xlsx | ownership_details            | 58                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Percent Share | special character               | throws error with error message | collateral.xlsx | ownership_details            | 59                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Percent Share | negative digit                  | throws error with error message | collateral.xlsx | ownership_details            | 60                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Percent Share | decimal greater then 2 digit    | throws error with error message | collateral.xlsx | ownership_details            | 61                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | valid    | Percent Share | decimal upto 2 digit            | does not throw any error        | collateral.xlsx | ownership_details            | 62                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName       | Validity | FieldName     | InputType                       | Throws_NotThrows                | CollateralWB    | Collateral_ownership_details | Collateral_ownership_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Ownership Details | valid    | Percent Share | positive digit less then 100    | does not throw any error        | collateral.xlsx | ownership_details            | 55                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | valid    | Percent Share | zero                            | does not throw any error        | collateral.xlsx | ownership_details            | 56                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | invalid  | Percent Share | both digits and characters      | throws error with error message | collateral.xlsx | ownership_details            | 57                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | invalid  | Percent Share | positive digit greater then 100 | throws error with error message | collateral.xlsx | ownership_details            | 58                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | invalid  | Percent Share | special character               | throws error with error message | collateral.xlsx | ownership_details            | 59                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | invalid  | Percent Share | negative digit                  | throws error with error message | collateral.xlsx | ownership_details            | 60                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | invalid  | Percent Share | decimal greater then 2 digit    | throws error with error message | collateral.xlsx | ownership_details            | 61                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | valid    | Percent Share | decimal upto 2 digit            | does not throw any error        | collateral.xlsx | ownership_details            | 62                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

	
# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName       | Validity | FieldName     | InputType                       | Throws_NotThrows                | CollateralWB    | Collateral_ownership_details | Collateral_ownership_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Ownership Details | valid    | Percent Share | positive digit less then 100    | does not throw any error        | collateral.xlsx | ownership_details            | 55                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | valid    | Percent Share | zero                            | does not throw any error        | collateral.xlsx | ownership_details            | 56                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Percent Share | both digits and characters      | throws error with error message | collateral.xlsx | ownership_details            | 57                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Percent Share | positive digit greater then 100 | throws error with error message | collateral.xlsx | ownership_details            | 58                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Percent Share | special character               | throws error with error message | collateral.xlsx | ownership_details            | 59                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Percent Share | negative digit                  | throws error with error message | collateral.xlsx | ownership_details            | 60                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | invalid  | Percent Share | decimal greater then 2 digit    | throws error with error message | collateral.xlsx | ownership_details            | 61                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | valid    | Percent Share | decimal upto 2 digit            | does not throw any error        | collateral.xlsx | ownership_details            | 62                                  | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

##Ownership Details Field Format Validation
  @SkippedFormatValidation
  @NotImplementable
  Scenario: ACAUTOCAS-2326: CollateralPage Ownership details format validation for collateral Sub Type Plot Plus Self Construction
    When user opens "CollateralPage"
    And User selects Collateral Type as "Property"
    And user selects sub collateral as "Plot Plus Self Construction"
    Then user should be able to see all fields of "<Ownership Details>" with proper format

#Ownership Details Field Label Validation

  Scenario Outline: ACAUTOCAS-2327:  CollateralPage Ownership details <FieldName> label validation for collateral Sub Type Plot Plus Self Construction of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When goes to "<SectionName>" container
    Then user should be able to see "<FieldName>" of "<SectionName>" with proper label
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    @ImplementedBy-rishabh.garg
    Examples:
      | SectionName       | FieldName        | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Ownership Details | Owner Type       | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | Ownership Status | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | Owner Name       | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | Linked Applicant | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | Percent Share    | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | Ownership Dates  | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

      # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName       | FieldName        | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Ownership Details | Owner Type       | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | Ownership Status | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | Owner Name       | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | Linked Applicant | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | Percent Share    | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Details | Ownership Dates  | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
 
  # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName       | FieldName        | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Ownership Details | Owner Type       | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | Ownership Status | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | Owner Name       | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | Linked Applicant | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | Percent Share    | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Details | Ownership Dates  | collateral.xlsx | default            | 11                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#Sale Deed Date <= Registration Date
