@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral

#${ApplicantType:["indiv", "nonindiv"]}
#${CollateralSubType:["Builder Property Under Construction"]}

Feature: Builder Property Under Construction Screen Validation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @Release3
  Scenario Outline: ACAUTOCAS-3755: user selects collateral type as Property for new collateral sub type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then application should allow only the collateral type which is linked to the product
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 14                        |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 14                        |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 14                        |


  @Release3
  Scenario Outline: ACAUTOCAS-3756: user chooses sub type collateral as <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for new collateral
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user attempts to select a collateral type
    Then application should allow only the sub type which is linked to the product
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 14                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 14                        |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 14                        |


#Collateral Builder Property Under Construction Entity Validation
  @Release3
  Scenario Outline: ACAUTOCAS-3219: User is able to see <SectionName> for new collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    Then User should be able to see "<SectionName>" section
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | SectionName                       | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Collateral Details                | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Builder Details                   | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Other Details                     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Property Address                  | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Property and Registration Details | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Ownership Details                 | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Reason                            | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName                       | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Collateral Details                | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Builder Details                   | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Other Details                     | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Property Address                  | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Property and Registration Details | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Ownership Details                 | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Reason                            | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | SectionName                       | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Collateral Details                | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Builder Details                   | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Other Details                     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Property Address                  | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Property and Registration Details | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Ownership Details                 | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Reason                            | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |


#Collateral Details Field Validation
  @Release3
  Scenario Outline: ACAUTOCAS-3220: User is able to see <FieldName> for new collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    Then user should be able to see "<FieldName>" field marked as "<Mandatory>"
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | FieldName          | Mandatory     | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Collateral Ref No  | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Description(main)  | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Property Type      | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Nature of Property | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName          | Mandatory     | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Collateral Ref No  | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Description(main)  | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Property Type      | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Nature of Property | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |


	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName          | Mandatory     | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Collateral Ref No  | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Description(main)  | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Property Type      | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Nature of Property | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |


#Collateral Details Field Data Type Validation
  @Release3
  Scenario Outline: ACAUTOCAS-3757: CollateralPage details <Validity> Collateral Ref No with <InputType> validation <Throws_NotThrows> for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Validity | FieldName         | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | valid    | Collateral Ref No | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 411                       |
      | valid    | Collateral Ref No | characters                       | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 412                       |
      | invalid  | Collateral Ref No | both digits and characters       | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 413                       |
      | valid    | Collateral Ref No | negative                         | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 414                       |
      | valid    | Collateral Ref No | hyphen                           | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 415                       |
      | valid    | Collateral Ref No | space                            | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 416                       |
      | invalid  | Collateral Ref No | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 417                       |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName         | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | valid    | Collateral Ref No | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 411                       |
      | valid    | Collateral Ref No | characters                       | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 412                       |
      | invalid  | Collateral Ref No | both digits and characters       | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 413                       |
      | valid    | Collateral Ref No | negative                         | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 414                       |
      | valid    | Collateral Ref No | hyphen                           | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 415                       |
      | valid    | Collateral Ref No | space                            | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 416                       |
      | invalid  | Collateral Ref No | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 417                       |

	   # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName         | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | valid    | Collateral Ref No | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 411                       |
      | valid    | Collateral Ref No | characters                       | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 412                       |
      | invalid  | Collateral Ref No | both digits and characters       | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 413                       |
      | valid    | Collateral Ref No | negative                         | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 414                       |
      | valid    | Collateral Ref No | hyphen                           | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 415                       |
      | valid    | Collateral Ref No | space                            | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 416                       |
      | invalid  | Collateral Ref No | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 417                       |


#Collateral Details Field Label Validation
  #FeatureID-ACAUTOCAS-226
  @Release3
  Scenario Outline: CollateralPage details <Validity> Description with <InputType> validation <Throws_NotThrows> for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Validity | FieldName   | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | valid    | Description | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 418                       |
      | valid    | Description | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 419                       |
      | valid    | Description | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 420                       |
      | valid    | Description | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 421                       |
      | valid    | Description | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 422                       |
      | valid    | Description | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 423                       |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName   | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | valid    | Description | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 418                       |
      | valid    | Description | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 419                       |
      | valid    | Description | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 420                       |
      | valid    | Description | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 421                       |
      | valid    | Description | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 422                       |
      | valid    | Description | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 423                       |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName   | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | valid    | Description | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 418                       |
      | valid    | Description | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 419                       |
      | valid    | Description | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 420                       |
      | valid    | Description | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 421                       |
      | valid    | Description | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 422                       |
      | valid    | Description | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 423                       |


  @SkippedFormatValidation
  @NotImplementable
    #Property and Registration Details Field Format Validation
  Scenario: ACAUTOCAS-3758:  CollateralPage Property details format validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Property" and Sub Type "Builder Property Under Construction"
    Then user should be able to see all fields of "<Property and Registration Details>" with proper format

#Property and Registration Details Field Label Validation
  @Release3
  Scenario Outline: ACAUTOCAS-3759: CollateralPage Property details <FieldName> data type and labels for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens property and registration details section
    And click on new agreement details
    Then user should be able to see "<FieldName>" with proper label
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | FieldName                      | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Registration Number(Agreement) | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Agreement Type                 | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | SRO                            | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Sale Deed Number               | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Registration Date              | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Sale Deed Date                 | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Agreement Value                | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Amenities Agreement Value      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Remarks(Agreement)             | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName                      | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Registration Number(Agreement) | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Agreement Type                 | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | SRO                            | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Sale Deed Number               | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Registration Date              | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Sale Deed Date                 | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Agreement Value                | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Amenities Agreement Value      | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Remarks(Agreement)             | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |


	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName                      | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Registration Number(Agreement) | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Agreement Type                 | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | SRO                            | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Sale Deed Number               | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Registration Date              | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Sale Deed Date                 | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Agreement Value                | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Amenities Agreement Value      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Remarks(Agreement)             | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |


#Other Details Field Validation
  @Release3
  Scenario Outline: ACAUTOCAS-3221: User is able to see <FieldName> field marked as <Mandatory> for new collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage in Other Details
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens other details section of collateral page
    Then user should be able to see "<FieldName>" field marked as "<Mandatory>"
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | FieldName                 | Mandatory     | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Property Classification   | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Property Ownership        | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Market Value              | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Accepted Value (CIC)      | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Built Up Area             | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Built Up Area Unit        | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Carpet Area               | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Carpet Area Unit          | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Property Purpose          | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Age Of Property(In Years) | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Residual Age of Property  | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Plan Type                 | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Plan Number               | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Property Lot Number       | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Considered Value          | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Accepted Valuation        | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName                 | Mandatory     | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Property Classification   | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Property Ownership        | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Market Value              | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Accepted Value (CIC)      | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Built Up Area             | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Built Up Area Unit        | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Carpet Area               | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Carpet Area Unit          | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Property Purpose          | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Age Of Property(In Years) | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Residual Age of Property  | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Plan Type                 | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Plan Number               | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Property Lot Number       | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Considered Value          | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Accepted Valuation        | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |

     # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName                 | Mandatory     | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Property Classification   | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Property Ownership        | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Market Value              | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Accepted Value (CIC)      | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Built Up Area             | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Built Up Area Unit        | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Carpet Area               | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Carpet Area Unit          | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Property Purpose          | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Age Of Property(In Years) | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Residual Age of Property  | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Plan Type                 | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Plan Number               | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Property Lot Number       | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Considered Value          | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Accepted Valuation        | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |


#Other Details Field Data Type Validation
  @Release3
  Scenario Outline: ACAUTOCAS-3760: CollateralPage Other Details <Validity> Market Value with <InputType> validation <Throws_NotThrows> for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens other details section of collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Validity | FieldName    | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Market Value | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 67                             | default            | 99                        |
      | invalid  | Market Value | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 68                             | default            | 99                        |
      | invalid  | Market Value | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 69                             | default            | 99                        |
      | invalid  | Market Value | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 70                             | default            | 99                        |
      | invalid  | Market Value | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 71                             | default            | 99                        |
      | invalid  | Market Value | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 72                             | default            | 99                        |
      | invalid  | Market Value | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 73                             | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName    | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Market Value | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 67                             | default            | 99                        |
      | invalid  | Market Value | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 68                             | default            | 99                        |
      | invalid  | Market Value | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 69                             | default            | 99                        |
      | invalid  | Market Value | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 70                             | default            | 99                        |
      | invalid  | Market Value | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 71                             | default            | 99                        |
      | invalid  | Market Value | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 72                             | default            | 99                        |
      | invalid  | Market Value | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 73                             | default            | 99                        |

	   # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName    | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Market Value | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 67                             | default            | 99                        |
      | invalid  | Market Value | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 68                             | default            | 99                        |
      | invalid  | Market Value | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 69                             | default            | 99                        |
      | invalid  | Market Value | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 70                             | default            | 99                        |
      | invalid  | Market Value | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 71                             | default            | 99                        |
      | invalid  | Market Value | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 72                             | default            | 99                        |
      | invalid  | Market Value | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 73                             | default            | 99                        |


  #FeatureID-ACAUTOCAS-226
  @Release3
  Scenario Outline: CollateralPage Other Details <Validity> Built Up Area with <InputType> validation <Throws_NotThrows> for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens other details section of collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Validity | FieldName     | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Built Up Area | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 74                             | default            | 99                        |
      | invalid  | Built Up Area | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 75                             | default            | 99                        |
      | invalid  | Built Up Area | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 76                             | default            | 99                        |
      | invalid  | Built Up Area | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 77                             | default            | 99                        |
      | invalid  | Built Up Area | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 78                             | default            | 99                        |
      | invalid  | Built Up Area | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 79                             | default            | 99                        |
      | invalid  | Built Up Area | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 80                             | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar

    Examples:
      | Validity | FieldName     | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Built Up Area | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 74                             | default            | 99                        |
      | invalid  | Built Up Area | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 75                             | default            | 99                        |
      | invalid  | Built Up Area | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 76                             | default            | 99                        |
      | invalid  | Built Up Area | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 77                             | default            | 99                        |
      | invalid  | Built Up Area | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 78                             | default            | 99                        |
      | invalid  | Built Up Area | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 79                             | default            | 99                        |
      | invalid  | Built Up Area | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 80                             | default            | 99                        |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName     | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Built Up Area | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 74                             | default            | 99                        |
      | invalid  | Built Up Area | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 75                             | default            | 99                        |
      | invalid  | Built Up Area | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 76                             | default            | 99                        |
      | invalid  | Built Up Area | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 77                             | default            | 99                        |
      | invalid  | Built Up Area | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 78                             | default            | 99                        |
      | invalid  | Built Up Area | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 79                             | default            | 99                        |
      | invalid  | Built Up Area | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 80                             | default            | 99                        |


  #FeatureID-ACAUTOCAS-226
  @Release3
  Scenario Outline: CollateralPage Other Details <Validity> Carpet Area with <InputType> validation <Throws_NotThrows> for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens other details section of collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Validity | FieldName   | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Carpet Area | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 88                             | default            | 99                        |
      | invalid  | Carpet Area | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 89                             | default            | 99                        |
      | invalid  | Carpet Area | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 90                             | default            | 99                        |
      | invalid  | Carpet Area | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 91                             | default            | 99                        |
      | invalid  | Carpet Area | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 92                             | default            | 99                        |
      | invalid  | Carpet Area | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 93                             | default            | 99                        |
      | invalid  | Carpet Area | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 94                             | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar

    Examples:
      | Validity | FieldName   | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Carpet Area | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 88                             | default            | 99                        |
      | invalid  | Carpet Area | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 89                             | default            | 99                        |
      | invalid  | Carpet Area | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 90                             | default            | 99                        |
      | invalid  | Carpet Area | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 91                             | default            | 99                        |
      | invalid  | Carpet Area | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 92                             | default            | 99                        |
      | invalid  | Carpet Area | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 93                             | default            | 99                        |
      | invalid  | Carpet Area | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 94                             | default            | 99                        |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName   | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Carpet Area | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 88                             | default            | 99                        |
      | invalid  | Carpet Area | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 89                             | default            | 99                        |
      | invalid  | Carpet Area | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 90                             | default            | 99                        |
      | invalid  | Carpet Area | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 91                             | default            | 99                        |
      | invalid  | Carpet Area | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 92                             | default            | 99                        |
      | invalid  | Carpet Area | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 93                             | default            | 99                        |
      | invalid  | Carpet Area | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 94                             | default            | 99                        |


  #FeatureID-ACAUTOCAS-226
  @Release3
  Scenario Outline: CollateralPage Other Details <Validity> Age Of Property with <InputType> validation <Throws_NotThrows> for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens other details section of collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Validity | FieldName       | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Age Of Property | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 81                             | default            | 99                        |
      | invalid  | Age Of Property | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 82                             | default            | 99                        |
      | invalid  | Age Of Property | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 83                             | default            | 99                        |
      | invalid  | Age Of Property | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 84                             | default            | 99                        |
      | invalid  | Age Of Property | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 85                             | default            | 99                        |
      | invalid  | Age Of Property | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 86                             | default            | 99                        |
      | invalid  | Age Of Property | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 87                             | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName       | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Age Of Property | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 81                             | default            | 99                        |
      | invalid  | Age Of Property | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 82                             | default            | 99                        |
      | invalid  | Age Of Property | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 83                             | default            | 99                        |
      | invalid  | Age Of Property | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 84                             | default            | 99                        |
      | invalid  | Age Of Property | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 85                             | default            | 99                        |
      | invalid  | Age Of Property | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 86                             | default            | 99                        |
      | invalid  | Age Of Property | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 87                             | default            | 99                        |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName       | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Age Of Property | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 81                             | default            | 99                        |
      | invalid  | Age Of Property | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 82                             | default            | 99                        |
      | invalid  | Age Of Property | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 83                             | default            | 99                        |
      | invalid  | Age Of Property | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 84                             | default            | 99                        |
      | invalid  | Age Of Property | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 85                             | default            | 99                        |
      | invalid  | Age Of Property | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 86                             | default            | 99                        |
      | invalid  | Age Of Property | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 87                             | default            | 99                        |


  #FeatureID-ACAUTOCAS-226
  @Release3
  Scenario Outline: CollateralPage Other Details <Validity> Plan Type with <InputType> validation <Throws_NotThrows> for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens other details section of collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Validity | FieldName | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Plan Type | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 25                             | default            | 99                        |
      | valid    | Plan Type | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 26                             | default            | 99                        |
      | valid    | Plan Type | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 27                             | default            | 99                        |
      | valid    | Plan Type | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 28                             | default            | 99                        |
      | valid    | Plan Type | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 29                             | default            | 99                        |
      | valid    | Plan Type | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 30                             | default            | 99                        |
      | valid    | Plan Type | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 31                             | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Plan Type | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 25                             | default            | 99                        |
      | valid    | Plan Type | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 26                             | default            | 99                        |
      | valid    | Plan Type | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 27                             | default            | 99                        |
      | valid    | Plan Type | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 28                             | default            | 99                        |
      | valid    | Plan Type | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 29                             | default            | 99                        |
      | valid    | Plan Type | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 30                             | default            | 99                        |
      | valid    | Plan Type | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 31                             | default            | 99                        |

	   # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Plan Type | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 25                             | default            | 99                        |
      | valid    | Plan Type | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 26                             | default            | 99                        |
      | valid    | Plan Type | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 27                             | default            | 99                        |
      | valid    | Plan Type | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 28                             | default            | 99                        |
      | valid    | Plan Type | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 29                             | default            | 99                        |
      | valid    | Plan Type | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 30                             | default            | 99                        |
      | valid    | Plan Type | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 31                             | default            | 99                        |


  #FeatureID-ACAUTOCAS-226
  @Release3
  Scenario Outline: CollateralPage Other Details <Validity> Plan Number with <InputType> validation <Throws_NotThrows> for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens other details section of collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Validity | FieldName   | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Plan Number | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 25                             | default            | 99                        |
      | valid    | Plan Number | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 26                             | default            | 99                        |
      | valid    | Plan Number | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 27                             | default            | 99                        |
      | valid    | Plan Number | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 28                             | default            | 99                        |
      | valid    | Plan Number | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 29                             | default            | 99                        |
      | valid    | Plan Number | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 30                             | default            | 99                        |
      | valid    | Plan Number | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 31                             | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName   | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Plan Number | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 25                             | default            | 99                        |
      | valid    | Plan Number | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 26                             | default            | 99                        |
      | valid    | Plan Number | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 27                             | default            | 99                        |
      | valid    | Plan Number | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 28                             | default            | 99                        |
      | valid    | Plan Number | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 29                             | default            | 99                        |
      | valid    | Plan Number | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 30                             | default            | 99                        |
      | valid    | Plan Number | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 31                             | default            | 99                        |

	   # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName   | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Plan Number | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 25                             | default            | 99                        |
      | valid    | Plan Number | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 26                             | default            | 99                        |
      | valid    | Plan Number | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 27                             | default            | 99                        |
      | valid    | Plan Number | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 28                             | default            | 99                        |
      | valid    | Plan Number | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 29                             | default            | 99                        |
      | valid    | Plan Number | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 30                             | default            | 99                        |
      | valid    | Plan Number | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 31                             | default            | 99                        |

  #FeatureID-ACAUTOCAS-226
  @Release3
  Scenario Outline: CollateralPage Other Details <Validity> Property Lot Number with <InputType> validation <Throws_NotThrows> for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens other details section of collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Validity | FieldName           | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Property Lot Number | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 25                             | default            | 99                        |
      | valid    | Property Lot Number | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 26                             | default            | 99                        |
      | valid    | Property Lot Number | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 27                             | default            | 99                        |
      | valid    | Property Lot Number | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 28                             | default            | 99                        |
      | valid    | Property Lot Number | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 29                             | default            | 99                        |
      | valid    | Property Lot Number | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 30                             | default            | 99                        |
      | valid    | Property Lot Number | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 31                             | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName           | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Property Lot Number | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 25                             | default            | 99                        |
      | valid    | Property Lot Number | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 26                             | default            | 99                        |
      | valid    | Property Lot Number | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 27                             | default            | 99                        |
      | valid    | Property Lot Number | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 28                             | default            | 99                        |
      | valid    | Property Lot Number | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 29                             | default            | 99                        |
      | valid    | Property Lot Number | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 30                             | default            | 99                        |
      | valid    | Property Lot Number | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | other_details           | 31                             | default            | 99                        |


	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName           | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Property Lot Number | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 25                             | default            | 99                        |
      | valid    | Property Lot Number | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 26                             | default            | 99                        |
      | valid    | Property Lot Number | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 27                             | default            | 99                        |
      | valid    | Property Lot Number | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 28                             | default            | 99                        |
      | valid    | Property Lot Number | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 29                             | default            | 99                        |
      | valid    | Property Lot Number | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 30                             | default            | 99                        |
      | valid    | Property Lot Number | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | other_details           | 31                             | default            | 99                        |


  @SkippedFormatValidation
  @NotImplementable
    #Other Details Field Format Validation
  Scenario: ACAUTOCAS-3761:  CollateralPage Other details format validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Property" and Sub Type "Builder Property Under Construction"
    Then user should be able to see all fields of "<Other Details>" with proper format

#Other Details Field Label Validation
  @Release3
  Scenario Outline: ACAUTOCAS-3762: CollateralPage Other details data type and labels for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens other details section of collateral page
    Then user should be able to see "<FieldName>" with proper label
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | FieldName                     | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Property Classification       | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Property Ownership            | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Market Value                  | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Accepted Value (CIC)          | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Built Up Area                 | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Carpet Area                   | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Property Purpose              | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Age Of Property(In Years)     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Residual Age of Property      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Plan Type                     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Plan Number                   | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Property Lot Number           | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Considered Accepted Valuation | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Considered Value              | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Accepted Valuation            | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName                     | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Property Classification       | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Property Ownership            | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Market Value                  | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Accepted Value (CIC)          | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Built Up Area                 | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Carpet Area                   | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Property Purpose              | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Age Of Property(In Years)     | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Residual Age of Property      | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Plan Type                     | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Plan Number                   | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Property Lot Number           | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Considered Accepted Valuation | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Considered Value              | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Accepted Valuation            | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |

	   # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName                     | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Property Classification       | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Property Ownership            | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Market Value                  | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Accepted Value (CIC)          | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Built Up Area                 | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Carpet Area                   | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Property Purpose              | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Age Of Property(In Years)     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Residual Age of Property      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Plan Type                     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Plan Number                   | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Property Lot Number           | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Considered Accepted Valuation | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Considered Value              | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Accepted Valuation            | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |

  #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    @LoggedBug
    Examples:
      | FieldName            | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Considered Valuation | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName            | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Considered Valuation | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    @LoggedBug
    Examples:
      | FieldName            | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Considered Valuation | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName            | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Considered Valuation | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |

# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    @LoggedBug
    Examples:
      | FieldName            | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Considered Valuation | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |


#Property Address Field Validation
  @Release3
  Scenario Outline: ACAUTOCAS-3222: User is able to see <FieldName> field marked as <Mandatory> for new collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage in Property Address
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens property address details section
    Then user should be able to see "<FieldName>" field marked as "<Mandatory>"
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | FieldName           | Mandatory     | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Address Type        | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Full Address        | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Country             | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Plot Number         | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Address Line 2      | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Address Line 3      | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | PinCode             | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Region              | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | State               | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | City                | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | District            | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Taluka              | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Village             | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Residence Status    | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Residence Type      | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Landmark            | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Primary Phone       | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Mobile Phone        | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Is address verified | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName           | Mandatory     | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Address Type        | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Full Address        | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Country             | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Plot Number         | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Address Line 2      | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Address Line 3      | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | PinCode             | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Region              | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | State               | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | City                | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | District            | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Taluka              | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Village             | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Residence Status    | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Residence Type      | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Landmark            | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Primary Phone       | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Mobile Phone        | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Is address verified | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |

         # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName           | Mandatory     | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Address Type        | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Full Address        | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Country             | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Plot Number         | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Address Line 2      | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Address Line 3      | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | PinCode             | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Region              | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | State               | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | City                | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | District            | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Taluka              | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Village             | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Residence Status    | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Residence Type      | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Landmark            | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Primary Phone       | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Mobile Phone        | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Is address verified | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |



##Property Address Field Data Type Validation
  @Release3
  Scenario Outline: ACAUTOCAS-3763: CollateralPage Property Address <Validity> Full Address with <InputType> validation <Throws_NotThrows> for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens property address details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Validity | FieldName    | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Full Address | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 0                                | default            | 99                        |
      | valid    | Full Address | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 1                                | default            | 99                        |
      | valid    | Full Address | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 2                                | default            | 99                        |
      | valid    | Full Address | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 3                                | default            | 99                        |
      | valid    | Full Address | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 4                                | default            | 99                        |
      | valid    | Full Address | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 5                                | default            | 99                        |
      | valid    | Full Address | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 6                                | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName    | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Full Address | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 0                                | default            | 99                        |
      | valid    | Full Address | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 1                                | default            | 99                        |
      | valid    | Full Address | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 2                                | default            | 99                        |
      | valid    | Full Address | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 3                                | default            | 99                        |
      | valid    | Full Address | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 4                                | default            | 99                        |
      | valid    | Full Address | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 5                                | default            | 99                        |
      | valid    | Full Address | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 6                                | default            | 99                        |


	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName    | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Full Address | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 0                                | default            | 99                        |
      | valid    | Full Address | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 1                                | default            | 99                        |
      | valid    | Full Address | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 2                                | default            | 99                        |
      | valid    | Full Address | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 3                                | default            | 99                        |
      | valid    | Full Address | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 4                                | default            | 99                        |
      | valid    | Full Address | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 5                                | default            | 99                        |
      | valid    | Full Address | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 6                                | default            | 99                        |




  #FeatureID-ACAUTOCAS-226
  @Release3
  Scenario Outline: CollateralPage Property Address <Validity> Plot Number with <InputType> validation <Throws_NotThrows> for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens property address details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Validity | FieldName        | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Flat/Plot Number | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 4                                | default            | 99                        |
      | valid    | Flat/Plot Number | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 5                                | default            | 99                        |
      | valid    | Flat/Plot Number | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 6                                | default            | 99                        |
      | valid    | Flat/Plot Number | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 7                                | default            | 99                        |
      | valid    | Flat/Plot Number | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 8                                | default            | 99                        |
      | valid    | Flat/Plot Number | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 9                                | default            | 99                        |
      | valid    | Flat/Plot Number | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 10                               | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName        | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Flat/Plot Number | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 4                                | default            | 99                        |
      | valid    | Flat/Plot Number | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 5                                | default            | 99                        |
      | valid    | Flat/Plot Number | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 6                                | default            | 99                        |
      | valid    | Flat/Plot Number | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 7                                | default            | 99                        |
      | valid    | Flat/Plot Number | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 8                                | default            | 99                        |
      | valid    | Flat/Plot Number | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 9                                | default            | 99                        |
      | valid    | Flat/Plot Number | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 10                               | default            | 99                        |


	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName        | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Flat/Plot Number | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 4                                | default            | 99                        |
      | valid    | Flat/Plot Number | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 5                                | default            | 99                        |
      | valid    | Flat/Plot Number | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 6                                | default            | 99                        |
      | valid    | Flat/Plot Number | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 7                                | default            | 99                        |
      | valid    | Flat/Plot Number | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 8                                | default            | 99                        |
      | valid    | Flat/Plot Number | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 9                                | default            | 99                        |
      | valid    | Flat/Plot Number | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 10                               | default            | 99                        |




  #FeatureID-ACAUTOCAS-226
  @Release3
  Scenario Outline: CollateralPage Property Address <Validity> Address Line 2 with <InputType> validation <Throws_NotThrows> for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens property address details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Validity | FieldName      | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Address Line 2 | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 12                               | default            | 99                        |
      | valid    | Address Line 2 | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 13                               | default            | 99                        |
      | valid    | Address Line 2 | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 14                               | default            | 99                        |
      | valid    | Address Line 2 | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 15                               | default            | 99                        |
      | valid    | Address Line 2 | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 16                               | default            | 99                        |
      | valid    | Address Line 2 | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 17                               | default            | 99                        |
      | valid    | Address Line 2 | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 18                               | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName      | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Address Line 2 | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 12                               | default            | 99                        |
      | valid    | Address Line 2 | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 13                               | default            | 99                        |
      | valid    | Address Line 2 | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 14                               | default            | 99                        |
      | valid    | Address Line 2 | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 15                               | default            | 99                        |
      | valid    | Address Line 2 | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 16                               | default            | 99                        |
      | valid    | Address Line 2 | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 17                               | default            | 99                        |
      | valid    | Address Line 2 | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 18                               | default            | 99                        |


	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar

    Examples:
      | Validity | FieldName      | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Address Line 2 | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 12                               | default            | 99                        |
      | valid    | Address Line 2 | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 13                               | default            | 99                        |
      | valid    | Address Line 2 | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 14                               | default            | 99                        |
      | valid    | Address Line 2 | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 15                               | default            | 99                        |
      | valid    | Address Line 2 | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 16                               | default            | 99                        |
      | valid    | Address Line 2 | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 17                               | default            | 99                        |
      | valid    | Address Line 2 | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 18                               | default            | 99                        |



  #FeatureID-ACAUTOCAS-226
  @Release3
  Scenario Outline: CollateralPage Property Address <Validity> Address Line 3 with <InputType> validation <Throws_NotThrows> for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens property address details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Validity | FieldName      | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Address Line 3 | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 19                               | default            | 99                        |
      | valid    | Address Line 3 | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 20                               | default            | 99                        |
      | valid    | Address Line 3 | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 21                               | default            | 99                        |
      | valid    | Address Line 3 | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 22                               | default            | 99                        |
      | valid    | Address Line 3 | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 23                               | default            | 99                        |
      | valid    | Address Line 3 | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 24                               | default            | 99                        |
      | valid    | Address Line 3 | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 25                               | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName      | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Address Line 3 | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 19                               | default            | 99                        |
      | valid    | Address Line 3 | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 20                               | default            | 99                        |
      | valid    | Address Line 3 | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 21                               | default            | 99                        |
      | valid    | Address Line 3 | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 22                               | default            | 99                        |
      | valid    | Address Line 3 | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 23                               | default            | 99                        |
      | valid    | Address Line 3 | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 24                               | default            | 99                        |
      | valid    | Address Line 3 | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 25                               | default            | 99                        |


	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName      | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Address Line 3 | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 19                               | default            | 99                        |
      | valid    | Address Line 3 | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 20                               | default            | 99                        |
      | valid    | Address Line 3 | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 21                               | default            | 99                        |
      | valid    | Address Line 3 | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 22                               | default            | 99                        |
      | valid    | Address Line 3 | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 23                               | default            | 99                        |
      | valid    | Address Line 3 | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 24                               | default            | 99                        |
      | valid    | Address Line 3 | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 25                               | default            | 99                        |



  #FeatureID-ACAUTOCAS-226
  @Release3
  Scenario Outline: CollateralPage Property Address <Validity> Landmark with <InputType> validation <Throws_NotThrows> for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens property address details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Validity | FieldName | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Landmark  | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 0                                | default            | 99                        |
      | valid    | Landmark  | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 1                                | default            | 99                        |
      | valid    | Landmark  | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 2                                | default            | 99                        |
      | valid    | Landmark  | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 3                                | default            | 99                        |
      | valid    | Landmark  | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 4                                | default            | 99                        |
      | valid    | Landmark  | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 5                                | default            | 99                        |
      | valid    | Landmark  | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 6                                | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Landmark  | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 0                                | default            | 99                        |
      | valid    | Landmark  | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 1                                | default            | 99                        |
      | valid    | Landmark  | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 2                                | default            | 99                        |
      | valid    | Landmark  | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 3                                | default            | 99                        |
      | valid    | Landmark  | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 4                                | default            | 99                        |
      | valid    | Landmark  | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 5                                | default            | 99                        |
      | valid    | Landmark  | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | address_details           | 6                                | default            | 99                        |


	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Landmark  | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 0                                | default            | 99                        |
      | valid    | Landmark  | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 1                                | default            | 99                        |
      | valid    | Landmark  | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 2                                | default            | 99                        |
      | valid    | Landmark  | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 3                                | default            | 99                        |
      | valid    | Landmark  | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 4                                | default            | 99                        |
      | valid    | Landmark  | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 5                                | default            | 99                        |
      | valid    | Landmark  | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | address_details           | 6                                | default            | 99                        |




  #FeatureID-ACAUTOCAS-226
  @Release3
  Scenario Outline: CollateralPage Property Address <Validity> Mobile Phone with <InputType> validation <Throws_NotThrows> for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens property address details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Validity | FieldName    | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Mobile Phone | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 0                                | default            | 99                        |
      | invalid  | Mobile Phone | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 1                                | default            | 99                        |
      | invalid  | Mobile Phone | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 2                                | default            | 99                        |
      | invalid  | Mobile Phone | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 3                                | default            | 99                        |
      | invalid  | Mobile Phone | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 4                                | default            | 99                        |
      | invalid  | Mobile Phone | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 5                                | default            | 99                        |
      | invalid  | Mobile Phone | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 6                                | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName    | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Mobile Phone | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | property_address          | 0                                | default            | 99                        |
      | invalid  | Mobile Phone | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | property_address          | 1                                | default            | 99                        |
      | invalid  | Mobile Phone | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | property_address          | 2                                | default            | 99                        |
      | invalid  | Mobile Phone | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | property_address          | 3                                | default            | 99                        |
      | invalid  | Mobile Phone | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | property_address          | 4                                | default            | 99                        |
      | invalid  | Mobile Phone | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | property_address          | 5                                | default            | 99                        |
      | invalid  | Mobile Phone | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | property_address          | 6                                | default            | 99                        |


	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName    | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Mobile Phone | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 0                                | default            | 99                        |
      | invalid  | Mobile Phone | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 1                                | default            | 99                        |
      | invalid  | Mobile Phone | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 2                                | default            | 99                        |
      | invalid  | Mobile Phone | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 3                                | default            | 99                        |
      | invalid  | Mobile Phone | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 4                                | default            | 99                        |
      | invalid  | Mobile Phone | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 5                                | default            | 99                        |
      | invalid  | Mobile Phone | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 6                                | default            | 99                        |




  #FeatureID-ACAUTOCAS-226
  @Release3
  Scenario Outline: CollateralPage Property Address <Validity> Standard with <InputType> validation <Throws_NotThrows> for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens property address details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Validity | FieldName | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | STD       | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 0                                | default            | 99                        |
      | invalid  | STD       | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 1                                | default            | 99                        |
      | invalid  | STD       | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 2                                | default            | 99                        |
      | invalid  | STD       | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 3                                | default            | 99                        |
      | invalid  | STD       | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 4                                | default            | 99                        |
      | invalid  | STD       | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 5                                | default            | 99                        |
      | invalid  | STD       | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 6                                | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | STD       | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | property_address          | 0                                | default            | 99                        |
      | invalid  | STD       | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | property_address          | 1                                | default            | 99                        |
      | invalid  | STD       | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | property_address          | 2                                | default            | 99                        |
      | invalid  | STD       | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | property_address          | 3                                | default            | 99                        |
      | invalid  | STD       | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | property_address          | 4                                | default            | 99                        |
      | invalid  | STD       | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | property_address          | 5                                | default            | 99                        |
      | invalid  | STD       | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | property_address          | 6                                | default            | 99                        |


	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | STD       | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 0                                | default            | 99                        |
      | invalid  | STD       | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 1                                | default            | 99                        |
      | invalid  | STD       | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 2                                | default            | 99                        |
      | invalid  | STD       | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 3                                | default            | 99                        |
      | invalid  | STD       | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 4                                | default            | 99                        |
      | invalid  | STD       | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 5                                | default            | 99                        |
      | invalid  | STD       | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 6                                | default            | 99                        |



  #FeatureID-ACAUTOCAS-226
  @Release3
  Scenario Outline: CollateralPage Property Address <Validity> Extension with <InputType> validation <Throws_NotThrows> for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens property address details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Validity | FieldName | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | EXTN      | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 0                                | default            | 99                        |
      | invalid  | EXTN      | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 1                                | default            | 99                        |
      | invalid  | EXTN      | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 2                                | default            | 99                        |
      | invalid  | EXTN      | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 3                                | default            | 99                        |
      | invalid  | EXTN      | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 4                                | default            | 99                        |
      | invalid  | EXTN      | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 5                                | default            | 99                        |
      | invalid  | EXTN      | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 6                                | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | EXTN      | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | property_address          | 0                                | default            | 99                        |
      | invalid  | EXTN      | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | property_address          | 1                                | default            | 99                        |
      | invalid  | EXTN      | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | property_address          | 2                                | default            | 99                        |
      | invalid  | EXTN      | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | property_address          | 3                                | default            | 99                        |
      | invalid  | EXTN      | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | property_address          | 4                                | default            | 99                        |
      | invalid  | EXTN      | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | property_address          | 5                                | default            | 99                        |
      | invalid  | EXTN      | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | property_address          | 6                                | default            | 99                        |


	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | EXTN      | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 0                                | default            | 99                        |
      | invalid  | EXTN      | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 1                                | default            | 99                        |
      | invalid  | EXTN      | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 2                                | default            | 99                        |
      | invalid  | EXTN      | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 3                                | default            | 99                        |
      | invalid  | EXTN      | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 4                                | default            | 99                        |
      | invalid  | EXTN      | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 5                                | default            | 99                        |
      | invalid  | EXTN      | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 6                                | default            | 99                        |



  #FeatureID-ACAUTOCAS-226
  @Release3
  Scenario Outline: CollateralPage Property Address <Validity> Number with <InputType> validation <Throws_NotThrows> for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens property address details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Validity | FieldName | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | NUMBER    | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 0                                | default            | 99                        |
      | invalid  | NUMBER    | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 1                                | default            | 99                        |
      | invalid  | NUMBER    | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 2                                | default            | 99                        |
      | invalid  | NUMBER    | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 3                                | default            | 99                        |
      | invalid  | NUMBER    | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 4                                | default            | 99                        |
      | invalid  | NUMBER    | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 5                                | default            | 99                        |
      | invalid  | NUMBER    | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 6                                | default            | 99                        |


# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | NUMBER    | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | property_address          | 0                                | default            | 99                        |
      | invalid  | NUMBER    | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | property_address          | 1                                | default            | 99                        |
      | invalid  | NUMBER    | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | property_address          | 2                                | default            | 99                        |
      | invalid  | NUMBER    | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | property_address          | 3                                | default            | 99                        |
      | invalid  | NUMBER    | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | property_address          | 4                                | default            | 99                        |
      | invalid  | NUMBER    | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | property_address          | 5                                | default            | 99                        |
      | invalid  | NUMBER    | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | property_address          | 6                                | default            | 99                        |


	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | NUMBER    | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 0                                | default            | 99                        |
      | invalid  | NUMBER    | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 1                                | default            | 99                        |
      | invalid  | NUMBER    | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 2                                | default            | 99                        |
      | invalid  | NUMBER    | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 3                                | default            | 99                        |
      | invalid  | NUMBER    | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 4                                | default            | 99                        |
      | invalid  | NUMBER    | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 5                                | default            | 99                        |
      | invalid  | NUMBER    | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | property_address          | 6                                | default            | 99                        |


  @SkippedFormatValidation
  @NotImplementable
    #Property Address Field Format Validation
  Scenario: ACAUTOCAS-3764:  CollateralPage Property details format validation in Property Address for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Property" and Sub Type "Builder Property Under Construction"
    Then user should be able to see all fields of "<Property Address>" with proper format

#Property Address Field Label Validation
  @Release3
  Scenario Outline: ACAUTOCAS-3765: CollateralPage Property details <FieldName> label validation in Property Address for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens property address details section
    Then user should be able to see all fields of "<FieldName>" with proper labels of Property Address
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | FieldName           | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Address Type        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Full Address        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Country             | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Flat/Plot Number    | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Address Line 2      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Address Line 3      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | PinCode             | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Region              | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | State               | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | City                | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | District            | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Taluka              | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Village             | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Residence Status    | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Residence Type      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Landmark            | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Primary Phone       | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Mobile Phone        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Is address verified | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName           | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Address Type        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Full Address        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Country             | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Flat/Plot Number    | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Address Line 2      | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Address Line 3      | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | PinCode             | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Region              | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | State               | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | City                | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | District            | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Taluka              | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Village             | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Residence Status    | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Residence Type      | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Landmark            | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Primary Phone       | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Mobile Phone        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Is address verified | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |


	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName           | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Address Type        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Full Address        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Country             | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Flat/Plot Number    | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Address Line 2      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Address Line 3      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | PinCode             | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Region              | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | State               | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | City                | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | District            | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Taluka              | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Village             | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Residence Status    | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Residence Type      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Landmark            | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Primary Phone       | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Mobile Phone        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Is address verified | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |



#Property and Registration Details Entity Validation
  @Release3
  Scenario Outline: ACAUTOCAS-3766:  User is able to add multiple agreement details for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens property and registration details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agreementDetails>" and row <Collateral_agreementDetails_rowNum>
    And user adds multiple agreement details in property and registration details
    Then user should be able to add multiple agreement for Builder Property Under Construction
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 0                                  | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 0                                  | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |


	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 0                                  | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |



#Property and Registration Details Field Validation
  @Release3
  Scenario Outline: ACAUTOCAS-3223: User is able to see <FieldName> field marked as <Mandatory> for collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage in Property and Registration Details
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens property and registration details section
    And click on new agreement details
    Then user should be able to see "<FieldName>" field marked as "<Mandatory>"
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | FieldName                 | Mandatory     | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Registration Number       | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Agreement Type            | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | SRO                       | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Sale Deed Number          | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Registration Date         | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Sale Deed Date            | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Agreement Value           | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Amenities Agreement Value | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Remarks(Agreement)        | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName                 | Mandatory     | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Registration Number       | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Agreement Type            | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | SRO                       | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Sale Deed Number          | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Registration Date         | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Sale Deed Date            | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Agreement Value           | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Amenities Agreement Value | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Remarks(Agreement)        | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |


	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName                 | Mandatory     | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Registration Number       | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Agreement Type            | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | SRO                       | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Sale Deed Number          | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Registration Date         | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Sale Deed Date            | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Agreement Value           | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Amenities Agreement Value | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Remarks(Agreement)        | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |


#Property and Registration Details Field Data Type Validation
  #FeatureID-ACAUTOCAS-226
  @Release3
  Scenario Outline: CollateralPage Property and Registration Details <Validity> Registration Number with <InputType> validation <Throws_NotThrows> for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens property and registration details section
    And click on new agreement details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agreementDetails>" and row <Collateral_agreementDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Validity | FieldName           | InputType                                                               | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Registration Number | positive digits                                                         | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 12                                 | default            | 99                        |
      | valid    | Registration Number | forward and backward slash                                              | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 13                                 | default            | 99                        |
      | valid    | Registration Number | dot                                                                     | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 14                                 | default            | 99                        |
      | valid    | Registration Number | characters                                                              | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 15                                 | default            | 99                        |
      | valid    | Registration Number | both digits and characters                                              | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 16                                 | default            | 99                        |
      | valid    | Registration Number | negative                                                                | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 17                                 | default            | 99                        |
      | valid    | Registration Number | hyphen                                                                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 18                                 | default            | 99                        |
      | invalid  | Registration Number | space                                                                   | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 47                                 | default            | 99                        |
      | invalid  | Registration Number | special characters except hyphen ,forward slash, backward slash and dot | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 48                                 | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName           | InputType                                                               | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Registration Number | positive digits                                                         | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 12                                 | default            | 99                        |
      | valid    | Registration Number | forward and backward slash                                              | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 13                                 | default            | 99                        |
      | valid    | Registration Number | dot                                                                     | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 14                                 | default            | 99                        |
      | valid    | Registration Number | characters                                                              | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 15                                 | default            | 99                        |
      | valid    | Registration Number | both digits and characters                                              | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 16                                 | default            | 99                        |
      | valid    | Registration Number | negative                                                                | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 17                                 | default            | 99                        |
      | valid    | Registration Number | hyphen                                                                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 18                                 | default            | 99                        |
      | invalid  | Registration Number | space                                                                   | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 47                                 | default            | 99                        |
      | invalid  | Registration Number | special characters except hyphen ,forward slash, backward slash and dot | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 48                                 | default            | 99                        |


	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName           | InputType                                                               | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Registration Number | positive digits                                                         | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 12                                 | default            | 99                        |
      | valid    | Registration Number | forward and backward slash                                              | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 13                                 | default            | 99                        |
      | valid    | Registration Number | dot                                                                     | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 14                                 | default            | 99                        |
      | valid    | Registration Number | characters                                                              | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 15                                 | default            | 99                        |
      | valid    | Registration Number | both digits and characters                                              | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 16                                 | default            | 99                        |
      | valid    | Registration Number | negative                                                                | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 17                                 | default            | 99                        |
      | valid    | Registration Number | hyphen                                                                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 18                                 | default            | 99                        |
      | invalid  | Registration Number | space                                                                   | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 47                                 | default            | 99                        |
      | invalid  | Registration Number | special characters except hyphen ,forward slash, backward slash and dot | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 48                                 | default            | 99                        |



  #FeatureID-ACAUTOCAS-226
  @Release3
  Scenario Outline: CollateralPage Property and Registration Details <Validity> Sale Deed Number with <InputType> validation <Throws_NotThrows> for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens property and registration details section
    And click on new agreement details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agreementDetails>" and row <Collateral_agreementDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Validity | FieldName        | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Sale Deed Number | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 12                                 | default            | 99                        |
      | valid    | Sale Deed Number | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 13                                 | default            | 99                        |
      | valid    | Sale Deed Number | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 14                                 | default            | 99                        |
      | valid    | Sale Deed Number | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 15                                 | default            | 99                        |
      | valid    | Sale Deed Number | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 16                                 | default            | 99                        |
      | valid    | Sale Deed Number | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 17                                 | default            | 99                        |
      | valid    | Sale Deed Number | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 18                                 | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName        | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Sale Deed Number | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 12                                 | default            | 99                        |
      | valid    | Sale Deed Number | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 13                                 | default            | 99                        |
      | valid    | Sale Deed Number | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 14                                 | default            | 99                        |
      | valid    | Sale Deed Number | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 15                                 | default            | 99                        |
      | valid    | Sale Deed Number | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 16                                 | default            | 99                        |
      | valid    | Sale Deed Number | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 17                                 | default            | 99                        |
      | valid    | Sale Deed Number | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 18                                 | default            | 99                        |


	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar

    Examples:
      | Validity | FieldName        | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Sale Deed Number | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 12                                 | default            | 99                        |
      | valid    | Sale Deed Number | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 13                                 | default            | 99                        |
      | valid    | Sale Deed Number | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 14                                 | default            | 99                        |
      | valid    | Sale Deed Number | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 15                                 | default            | 99                        |
      | valid    | Sale Deed Number | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 16                                 | default            | 99                        |
      | valid    | Sale Deed Number | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 17                                 | default            | 99                        |
      | valid    | Sale Deed Number | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 18                                 | default            | 99                        |


  #FeatureID-ACAUTOCAS-226
  @Release3
  Scenario Outline: CollateralPage Property and Registration Details <Validity> Agreement Value with <InputType> validation <Throws_NotThrows> for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens property and registration details section
    And click on new agreement details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agreementDetails>" and row <Collateral_agreementDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Validity | FieldName       | InputType                           | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Agreement Value | positive digits less then 18 digits | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 39                                 | default            | 99                        |
      | invalid  | Agreement Value | positive digits more then 18 digits | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 40                                 | default            | 99                        |
      | invalid  | Agreement Value | characters                          | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 41                                 | default            | 99                        |
      | invalid  | Agreement Value | both digits and characters          | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 42                                 | default            | 99                        |
      | invalid  | Agreement Value | negative                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 43                                 | default            | 99                        |
      | invalid  | Agreement Value | hyphen                              | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 44                                 | default            | 99                        |
      | invalid  | Agreement Value | space                               | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 45                                 | default            | 99                        |
      | invalid  | Agreement Value | special characters except hyphen    | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 46                                 | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName       | InputType                           | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Agreement Value | positive digits less then 18 digits | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 39                                 | default            | 99                        |
      | invalid  | Agreement Value | positive digits more then 18 digits | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 40                                 | default            | 99                        |
      | invalid  | Agreement Value | characters                          | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 41                                 | default            | 99                        |
      | invalid  | Agreement Value | both digits and characters          | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 42                                 | default            | 99                        |
      | invalid  | Agreement Value | negative                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 43                                 | default            | 99                        |
      | invalid  | Agreement Value | hyphen                              | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 44                                 | default            | 99                        |
      | invalid  | Agreement Value | space                               | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 45                                 | default            | 99                        |
      | invalid  | Agreement Value | special characters except hyphen    | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 46                                 | default            | 99                        |


	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName       | InputType                           | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Agreement Value | positive digits less then 18 digits | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 39                                 | default            | 99                        |
      | invalid  | Agreement Value | positive digits more then 18 digits | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 40                                 | default            | 99                        |
      | invalid  | Agreement Value | characters                          | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 41                                 | default            | 99                        |
      | invalid  | Agreement Value | both digits and characters          | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 42                                 | default            | 99                        |
      | invalid  | Agreement Value | negative                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 43                                 | default            | 99                        |
      | invalid  | Agreement Value | hyphen                              | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 44                                 | default            | 99                        |
      | invalid  | Agreement Value | space                               | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 45                                 | default            | 99                        |
      | invalid  | Agreement Value | special characters except hyphen    | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 46                                 | default            | 99                        |



  #FeatureID-ACAUTOCAS-226
  @Release3
  Scenario Outline: CollateralPage Property and Registration Details <Validity> Amenities Agreement Value with <InputType> validation <Throws_NotThrows> for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens property and registration details section
    And click on new agreement details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agreementDetails>" and row <Collateral_agreementDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Validity | FieldName                 | InputType                           | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Amenities Agreement Value | positive digits less then 18 digits | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 39                                 | default            | 99                        |
      | invalid  | Amenities Agreement Value | positive digits more then 18 digits | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 40                                 | default            | 99                        |
      | invalid  | Amenities Agreement Value | characters                          | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 41                                 | default            | 99                        |
      | invalid  | Amenities Agreement Value | both digits and characters          | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 42                                 | default            | 99                        |
      | invalid  | Amenities Agreement Value | negative                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 43                                 | default            | 99                        |
      | invalid  | Amenities Agreement Value | hyphen                              | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 44                                 | default            | 99                        |
      | invalid  | Amenities Agreement Value | space                               | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 45                                 | default            | 99                        |
      | invalid  | Amenities Agreement Value | special characters except hyphen    | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 46                                 | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar

    Examples:
      | Validity | FieldName                 | InputType                           | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Amenities Agreement Value | positive digits less then 18 digits | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 39                                 | default            | 99                        |
      | invalid  | Amenities Agreement Value | positive digits more then 18 digits | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 40                                 | default            | 99                        |
      | invalid  | Amenities Agreement Value | characters                          | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 41                                 | default            | 99                        |
      | invalid  | Amenities Agreement Value | both digits and characters          | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 42                                 | default            | 99                        |
      | invalid  | Amenities Agreement Value | negative                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 43                                 | default            | 99                        |
      | invalid  | Amenities Agreement Value | hyphen                              | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 44                                 | default            | 99                        |
      | invalid  | Amenities Agreement Value | space                               | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 45                                 | default            | 99                        |
      | invalid  | Amenities Agreement Value | special characters except hyphen    | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 46                                 | default            | 99                        |

	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName                 | InputType                           | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Amenities Agreement Value | positive digits less then 18 digits | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 39                                 | default            | 99                        |
      | invalid  | Amenities Agreement Value | positive digits more then 18 digits | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 40                                 | default            | 99                        |
      | invalid  | Amenities Agreement Value | characters                          | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 41                                 | default            | 99                        |
      | invalid  | Amenities Agreement Value | both digits and characters          | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 42                                 | default            | 99                        |
      | invalid  | Amenities Agreement Value | negative                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 43                                 | default            | 99                        |
      | invalid  | Amenities Agreement Value | hyphen                              | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 44                                 | default            | 99                        |
      | invalid  | Amenities Agreement Value | space                               | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 45                                 | default            | 99                        |
      | invalid  | Amenities Agreement Value | special characters except hyphen    | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 46                                 | default            | 99                        |



  #FeatureID-ACAUTOCAS-226
  @Release3
  Scenario Outline: CollateralPage Property and Registration Details <Validity> Remarks with <InputType> validation <Throws_NotThrows> for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens property and registration details section
    And click on new agreement details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agreementDetails>" and row <Collateral_agreementDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Validity | FieldName          | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Remarks(Agreement) | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 12                                 | default            | 99                        |
      | valid    | Remarks(Agreement) | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 13                                 | default            | 99                        |
      | valid    | Remarks(Agreement) | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 14                                 | default            | 99                        |
      | valid    | Remarks(Agreement) | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 15                                 | default            | 99                        |
      | valid    | Remarks(Agreement) | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 16                                 | default            | 99                        |
      | valid    | Remarks(Agreement) | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 17                                 | default            | 99                        |
      | valid    | Remarks(Agreement) | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 18                                 | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName          | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Remarks(Agreement) | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 12                                 | default            | 99                        |
      | valid    | Remarks(Agreement) | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 13                                 | default            | 99                        |
      | valid    | Remarks(Agreement) | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 14                                 | default            | 99                        |
      | valid    | Remarks(Agreement) | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 15                                 | default            | 99                        |
      | valid    | Remarks(Agreement) | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 16                                 | default            | 99                        |
      | valid    | Remarks(Agreement) | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 17                                 | default            | 99                        |
      | valid    | Remarks(Agreement) | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | agreement_details           | 18                                 | default            | 99                        |


	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName          | InputType                        | Throws_NotThrows         | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Remarks(Agreement) | positive digits                  | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 12                                 | default            | 99                        |
      | valid    | Remarks(Agreement) | characters                       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 13                                 | default            | 99                        |
      | valid    | Remarks(Agreement) | both digits and characters       | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 14                                 | default            | 99                        |
      | valid    | Remarks(Agreement) | negative                         | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 15                                 | default            | 99                        |
      | valid    | Remarks(Agreement) | hyphen                           | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 16                                 | default            | 99                        |
      | valid    | Remarks(Agreement) | space                            | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 17                                 | default            | 99                        |
      | valid    | Remarks(Agreement) | special characters except hyphen | does not throw any error | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | agreement_details           | 18                                 | default            | 99                        |



#Ownership Details Field Validation
  @Release3
  Scenario Outline: ACAUTOCAS-3224: User is able to see <FieldName> field marked as <Mandatory> for collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage in Ownership Details
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens the ownership details section
    Then user should be able to see "<FieldName>" field marked as "<Mandatory>"
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | FieldName        | Mandatory | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Owner Type       | mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Ownership Status | mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Owner Name       | mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Linked Applicant | mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Percent Share    | mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName        | Mandatory | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Owner Type       | mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Ownership Status | mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Owner Name       | mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Linked Applicant | mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Percent Share    | mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |


	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName        | Mandatory | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Owner Type       | mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Ownership Status | mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Owner Name       | mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Linked Applicant | mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Percent Share    | mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |


  @Release3
  Scenario Outline: ACAUTOCAS-3767: CollateralPage Ownership Details <Validity> Owner Name with <InputType> validation <Throws_NotThrows> for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens the ownership details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_ownershipDetails>" and row <Collateral_ownershipDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Validity | FieldName  | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Owner Name | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | ownership_details           | 45                                 | default            | 99                        |
      | valid    | Owner Name | characters                       | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | ownership_details           | 46                                 | default            | 99                        |
      | valid    | Owner Name | both digits and characters       | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | ownership_details           | 47                                 | default            | 99                        |
      | invalid  | Owner Name | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | ownership_details           | 48                                 | default            | 99                        |
      | invalid  | Owner Name | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | ownership_details           | 49                                 | default            | 99                        |
      | invalid  | Owner Name | space                            | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | ownership_details           | 50                                 | default            | 99                        |
      | invalid  | Owner Name | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | ownership_details           | 51                                 | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName  | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Owner Name | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | ownership_details           | 45                                 | default            | 99                        |
      | valid    | Owner Name | characters                       | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | ownership_details           | 46                                 | default            | 99                        |
      | valid    | Owner Name | both digits and characters       | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | ownership_details           | 47                                 | default            | 99                        |
      | invalid  | Owner Name | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | ownership_details           | 48                                 | default            | 99                        |
      | invalid  | Owner Name | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | ownership_details           | 49                                 | default            | 99                        |
      | invalid  | Owner Name | space                            | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | ownership_details           | 50                                 | default            | 99                        |
      | invalid  | Owner Name | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | ownership_details           | 51                                 | default            | 99                        |


	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName  | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Owner Name | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | ownership_details           | 45                                 | default            | 99                        |
      | valid    | Owner Name | characters                       | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | ownership_details           | 46                                 | default            | 99                        |
      | valid    | Owner Name | both digits and characters       | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | ownership_details           | 47                                 | default            | 99                        |
      | invalid  | Owner Name | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | ownership_details           | 48                                 | default            | 99                        |
      | invalid  | Owner Name | hyphen                           | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | ownership_details           | 49                                 | default            | 99                        |
      | invalid  | Owner Name | space                            | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | ownership_details           | 50                                 | default            | 99                        |
      | invalid  | Owner Name | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | ownership_details           | 51                                 | default            | 99                        |


  @SkippedFormatValidation
  @NotImplementable
    #Ownership Details Field Format Validation
  Scenario: ACAUTOCAS-3768:  CollateralPage Ownership details format validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Property" and Sub Type "Builder Property Under Construction"
    Then user should be able to see all fields of "<Ownership Details>" with proper format

#Ownership Details Field Label Validation
  @Release3
  Scenario Outline: ACAUTOCAS-3769: CollateralPage Ownership details <FieldName> data type and labels for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens the ownership details section
    Then user should be able to see "<FieldName>" with proper label
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | FieldName        | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Owner Type       | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Ownership Status | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Owner Name       | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Linked Applicant | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Percent Share    | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Ownership Dates  | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName        | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Owner Type       | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Ownership Status | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Owner Name       | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Linked Applicant | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Percent Share    | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Ownership Dates  | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |


	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName        | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Owner Type       | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Ownership Status | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Owner Name       | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Linked Applicant | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Percent Share    | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Ownership Dates  | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |



#Builder Details Field Validation=======================================================================================
  @Release3
  Scenario Outline: ACAUTOCAS-3225: User is able to see <FieldName> field marked as <Mandatory> for collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage in Builder Details
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens Builder Details section
    Then user should be able to see "<FieldName>" field marked as "<Mandatory>"
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | FieldName             | Mandatory     | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Company Name          | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Tier of Builder       | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Project Name          | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Building Name         | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Wing Name             | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Flat/Shop No.         | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Floor No.             | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Building Completion % | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | APF Number            | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName             | Mandatory     | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Company Name          | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Tier of Builder       | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Project Name          | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Building Name         | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Wing Name             | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Flat/Shop No.         | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Floor No.             | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Building Completion % | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | APF Number            | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |


	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName             | Mandatory     | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Company Name          | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Tier of Builder       | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Project Name          | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Building Name         | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Wing Name             | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Flat/Shop No.         | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Floor No.             | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Building Completion % | mandatory     | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | APF Number            | non mandatory | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |



##Builder Details Field Data Type Validation
  @Release3
  Scenario Outline: ACAUTOCAS-3770: CollateralType Property Builder Details <Validity> Flat Shop Number with <InputType> validation <Throws_NotThrows> for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens Builder Details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_builderDetails>" and row <Collateral_builderDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Validity | FieldName     | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_builderDetails | Collateral_builderDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Flat/Shop No. | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | builder_details           | 8                                | default            | 99                        |
      | invalid  | Flat/Shop No. | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | builder_details           | 9                                | default            | 99                        |
      | invalid  | Flat/Shop No. | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | builder_details           | 10                               | default            | 99                        |
      | invalid  | Flat/Shop No. | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | builder_details           | 11                               | default            | 99                        |
      | invalid  | Flat/Shop No. | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | builder_details           | 13                               | default            | 99                        |
      | invalid  | Flat/Shop No. | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | builder_details           | 14                               | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName     | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_builderDetails | Collateral_builderDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Flat/Shop No. | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | builder_details           | 8                                | default            | 99                        |
      | invalid  | Flat/Shop No. | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | builder_details           | 9                                | default            | 99                        |
      | invalid  | Flat/Shop No. | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | builder_details           | 10                               | default            | 99                        |
      | invalid  | Flat/Shop No. | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | builder_details           | 11                               | default            | 99                        |
      | invalid  | Flat/Shop No. | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | builder_details           | 13                               | default            | 99                        |
      | invalid  | Flat/Shop No. | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | builder_details           | 14                               | default            | 99                        |


	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName     | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_builderDetails | Collateral_builderDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Flat/Shop No. | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | builder_details           | 8                                | default            | 99                        |
      | invalid  | Flat/Shop No. | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | builder_details           | 9                                | default            | 99                        |
      | invalid  | Flat/Shop No. | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | builder_details           | 10                               | default            | 99                        |
      | invalid  | Flat/Shop No. | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | builder_details           | 11                               | default            | 99                        |
      | invalid  | Flat/Shop No. | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | builder_details           | 13                               | default            | 99                        |
      | invalid  | Flat/Shop No. | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | builder_details           | 14                               | default            | 99                        |


  @Release3
  Scenario Outline: CollateralType Property Builder Details <Validity> Floor Number with <InputType> validation <Throws_NotThrows> for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens Builder Details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_builderDetails>" and row <Collateral_builderDetails_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Validity | FieldName | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_builderDetails | Collateral_builderDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Floor No. | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | builder_details           | 8                                | default            | 99                        |
      | invalid  | Floor No. | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | builder_details           | 9                                | default            | 99                        |
      | invalid  | Floor No. | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | builder_details           | 10                               | default            | 99                        |
      | invalid  | Floor No. | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | builder_details           | 11                               | default            | 99                        |
      | invalid  | Floor No. | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | builder_details           | 13                               | default            | 99                        |
      | invalid  | Floor No. | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | builder_details           | 14                               | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_builderDetails | Collateral_builderDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Floor No. | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | builder_details           | 8                                | default            | 99                        |
      | invalid  | Floor No. | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | builder_details           | 9                                | default            | 99                        |
      | invalid  | Floor No. | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | builder_details           | 10                               | default            | 99                        |
      | invalid  | Floor No. | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | builder_details           | 11                               | default            | 99                        |
      | invalid  | Floor No. | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | builder_details           | 13                               | default            | 99                        |
      | invalid  | Floor No. | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | builder_details           | 14                               | default            | 99                        |


	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName | InputType                        | Throws_NotThrows                | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_builderDetails | Collateral_builderDetails_rowNum | Collateral_default | Collateral_default_rowNum |
      | valid    | Floor No. | positive digits                  | does not throw any error        | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | builder_details           | 8                                | default            | 99                        |
      | invalid  | Floor No. | characters                       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | builder_details           | 9                                | default            | 99                        |
      | invalid  | Floor No. | both digits and characters       | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | builder_details           | 10                               | default            | 99                        |
      | invalid  | Floor No. | negative                         | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | builder_details           | 11                               | default            | 99                        |
      | invalid  | Floor No. | space                            | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | builder_details           | 13                               | default            | 99                        |
      | invalid  | Floor No. | special characters except hyphen | throws error with error message | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | builder_details           | 14                               | default            | 99                        |


  @SkippedFormatValidation
  @NotImplementable
    #Builder Details Field Format Validation
  Scenario: ACAUTOCAS-3771:  CollateralPage Builder details format validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Property" and Sub Type "Builder Property Under Construction"
    Then user should be able to see all fields of "<Builder Details>" with proper format

#Builder Details Field Label Validation
  @Release3
  Scenario Outline: ACAUTOCAS-3772: CollateralPage Builder details <FieldName> data type and labels for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens Builder Details section
    Then user should be able to see "<FieldName>" with proper label
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | FieldName             | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Company Name          | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Tier of Builder       | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Project Name          | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Building Name         | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Wing Name             | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Flat/Shop No.         | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Floor No.             | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Building Completion % | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | APF Number            | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |

# ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName             | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Company Name          | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Tier of Builder       | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Project Name          | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Building Name         | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Wing Name             | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Flat/Shop No.         | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Floor No.             | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Building Completion % | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | APF Number            | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default            | 99                        |


	# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar

    Examples:
      | FieldName             | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default | Collateral_default_rowNum |
      | Company Name          | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Tier of Builder       | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Project Name          | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Building Name         | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Wing Name             | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Flat/Shop No.         | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Floor No.             | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | Building Completion % | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |
      | APF Number            | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default            | 99                        |

