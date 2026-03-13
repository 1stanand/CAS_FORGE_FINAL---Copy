@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-harshprit.kumar
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral
@ReleaseSecCollateralM5


#${CollateralSubType:["Ready Property"]}
#${ApplicantType:["indiv","nonindiv"]}

Feature: Ready Property Modification

#  Pre-Requisites---
#  In this feature we will modify and delete an Property Ready Property to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @ImplementedBy-richa.singh
  Scenario Outline:ACAUTOCAS-2352: Deleting a <CollateralSubType> to <ProductType> application at <ApplicationStage> stage attached to the application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum1>
    And user opens Collateral Page
    When user deletes the saved collateral
    Then user should be able to successfully delete the collateral

    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

  @ImplementedBy-richa.singh
  Scenario Outline:ACAUTOCAS-1423: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification of <FieldName> in Property Details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum1>
    When user attempts to modify collateral based on "<CollateralSubType>"
    Then user should be able to modify the data in field "<FieldName>"
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName              | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | Collateral Ref No      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Description            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Property Type          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Nature of Property     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Is Builder Constructed | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName              | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | Collateral Ref No      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Description            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Property Type          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Nature of Property     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Is Builder Constructed | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName              | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | Collateral Ref No      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Description            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Property Type          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Nature of Property     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Is Builder Constructed | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

  @ImplementedBy-richa.singh
  Scenario Outline:ACAUTOCAS-1424: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification of <FieldName> in Builder Details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum1>
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user select the builder constructed checkbox
    And user opens Builder Details section
    Then user should be able to modify the data in field "<FieldName>"
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName     | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | Company Name  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Project Name  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Building Name | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Wing Name     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Flat/Shop No. | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Floor No.     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName     | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | Company Name  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Project Name  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Building Name | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Wing Name     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Flat/Shop No. | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Floor No.     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName     | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | Company Name  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Project Name  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Building Name | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Wing Name     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Flat/Shop No. | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Floor No.     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

  @ImplementedBy-richa.singh
  Scenario Outline:ACAUTOCAS-1427: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage restrictions in Data Modification of <FieldName>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum1>
    When user attempts to modify collateral based on "<CollateralSubType>"
    Then user should not be able to modify the data in "<FieldName>" field
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName                | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | Collateral ID            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Global Collateral Number | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Collateral Type          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Collateral SubType       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | Collateral ID            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Global Collateral Number | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Collateral Type          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Collateral SubType       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | Collateral ID            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Global Collateral Number | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Collateral Type          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Collateral SubType       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

  @ImplementedBy-richa.singh
  Scenario Outline:ACAUTOCAS-1425: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification of <FieldName> in other details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum1>
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user opens other details section of collateral page
    Then user should be able to modify the data in field "<FieldName>"
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName                 | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | Property Classification   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Property Ownership        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Market Value              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Built Up Area             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Built Up Area Unit        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Carpet Area               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Carpet Area Unit          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Property Purpose          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Age Of Property(In Years) | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Residual Age of Property  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Plan Type                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Plan Number               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Property Lot Number       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

#    @NotImplemented
#    Examples:
#      | FieldName          | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
#      | Considered Value   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType>         | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
#      | Accepted Valuation | <ProductType> | <ApplicationStage> |     |          | <ApplicantType>         | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                 | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | Property Classification   | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Property Ownership        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Market Value              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Built Up Area             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Built Up Area Unit        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Carpet Area               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Carpet Area Unit          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Property Purpose          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Age Of Property(In Years) | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Residual Age of Property  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Plan Type                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Plan Number               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Property Lot Number       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                 | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | Property Classification   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Property Ownership        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Market Value              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Built Up Area             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Built Up Area Unit        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Carpet Area               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Carpet Area Unit          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Property Purpose          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Age Of Property(In Years) | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Residual Age of Property  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Plan Type                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Plan Number               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Property Lot Number       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

  @ImplementedBy-richa.singh
  Scenario Outline:ACAUTOCAS-1426:  <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification of <FieldName> in property address
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum1>
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user opens property address details section
    Then user should be able to modify the data in field "<FieldName>"
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName             | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 | Collateral_default_sheet_rowNum1 |
      | Property Address Type | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Full Address          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Country               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Plot Number           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Address Line 2        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Address Line 3        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | PinCode               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Region                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | States                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | City                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | District              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Taluka                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Village               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Residence Status      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Residence Type        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Landmark              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Primary Phone         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Mobile Phone          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |

    @LoggedBug
    Examples:
      | FieldName           | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | Is address verified | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName             | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 | Collateral_default_sheet_rowNum1 |
      | Property Address Type | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Full Address          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Country               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Plot Number           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Address Line 2        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Address Line 3        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | PinCode               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Region                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | States                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | City                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | District              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Taluka                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Village               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Residence Status      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Residence Type        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Landmark              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Primary Phone         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Mobile Phone          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |

    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName             | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 | Collateral_default_sheet_rowNum1 |
      | Property Address Type | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Full Address          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Country               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Plot Number           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Address Line 2        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Address Line 3        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | PinCode               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Region                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | States                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | City                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | District              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Taluka                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Village               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Residence Status      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Residence Type        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Landmark              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Primary Phone         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |
      | Mobile Phone          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              | 162                              |

  @ImplementedBy-richa.singh
  Scenario Outline:ACAUTOCAS-1429: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification of <FieldName> in ownership details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum1>
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user opens the ownership details section
    Then user should be able to modify the data in field "<FieldName>"
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName        | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | Owner Type       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Ownership Status | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Owner Name       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Linked Applicant | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Percent Share    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Ownership Dates  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName        | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | Owner Type       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Ownership Status | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Owner Name       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Linked Applicant | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Percent Share    | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Ownership Dates  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName        | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | Owner Type       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Ownership Status | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Owner Name       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Linked Applicant | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Percent Share    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Ownership Dates  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-2353:  CollateralPage Property and Registration Details deletion
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum1>
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user opens property and registration details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agreementDetails>" and row <Collateral_agreementDetails_rowNum>
    And user fills the property registration details as
      | collateral.xlsx | agreement_details | 6 |
      | collateral.xlsx | agreement_details | 7 |
    And user deletes the data of property and registration
    Then user should be able to successfully delete the record of "Ready Property"

    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | agreement_details           | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | agreement_details           | 6                                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | agreement_details           | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-2354:  <CollateralSubType> to <ProductType> application at <ApplicationStage> stage - Data deletion in Property and Registration Details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum1>
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user opens property and registration details section
    And user clicks on new agreement details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agreementDetails>" and row <Collateral_agreementDetails_rowNum>
    And user fills the agreement details
    And user deletes the data of property and registration
    Then user should be able to successfully delete the record of "Ready Property"
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
   Examples:
      | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | agreement_details           | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | agreement_details           | 6                                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | agreement_details           | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

  @ImplementedBy-richa.singh
  Scenario Outline:ACAUTOCAS-1428: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification of <FieldName> in Property and Registration Details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum1>
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user opens property and registration details section
    And user clicks on new agreement details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agreementDetails>" and row <Collateral_agreementDetails_rowNum>
    And user fills the agreement details
    And user modify the agreement detail
    Then user should be able to modify the data in field "<FieldName>"
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName                     | CollateralWB    | Collateral_agreementDetails   | Collateral_agreementDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | Agreement Registration Number | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Agreement Type                | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | SRO                           | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Sale Deed Number              | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Registration Date             | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Sale Deed Date                | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Agreement Value               | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Amenities Agreement Value     | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Remarks                       | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                     | CollateralWB    | Collateral_agreementDetails   | Collateral_agreementDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | Agreement Registration Number | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Agreement Type                | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | SRO                           | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Sale Deed Number              | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Registration Date             | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Sale Deed Date                | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Agreement Value               | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Amenities Agreement Value     | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Remarks                       | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                     | CollateralWB    | Collateral_agreementDetails   | Collateral_agreementDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | Agreement Registration Number | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Agreement Type                | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | SRO                           | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Sale Deed Number              | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Registration Date             | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Sale Deed Date                | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Agreement Value               | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Amenities Agreement Value     | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | Remarks                       | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

##Dedupe Check
  #FeatureID-ACAUTOCAS-225
  Scenario Outline: ACAUTOCAS-4500: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 1
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum1>
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    Then user should get a proper message
    @ImplementedBy-piyush.agnihotri
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 249                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 249                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 249                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

  #FeatureID-ACAUTOCAS-225
  Scenario Outline: ACAUTOCAS-4501: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 2
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum1>
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    Then user should get a proper message
    @ImplementedBy-piyush.agnihotri
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 250                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 250                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 250                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

  #FeatureID-ACAUTOCAS-225
  Scenario Outline: ACAUTOCAS-4502: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 3
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum1>
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    Then user should get a proper message
    @ImplementedBy-piyush.agnihotri
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 251                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 251                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 251                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

  #FeatureID-ACAUTOCAS-225
  Scenario Outline: ACAUTOCAS-4503: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 4
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum1>
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    Then user should get a proper message
    @ImplementedBy-piyush.agnihotri
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 252                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 252                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 252                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

  @ImplementedBy-richa.singh
  #FeatureID-ACAUTOCAS-225
  Scenario Outline: ACAUTOCAS-4504:  <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 5
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum1>
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    Then user should get a proper message
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 253                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 253                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 253                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

  @ImplementedBy-richa.singh
  #FeatureID-ACAUTOCAS-225
  Scenario Outline: ACAUTOCAS-4505:  <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 6
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum1>
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    Then user should get a proper message
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 254                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 254                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 254                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

  @ImplementedBy-richa.singh
  #FeatureID-ACAUTOCAS-225
  Scenario Outline: ACAUTOCAS-4506:  <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 7
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum1>
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    Then user should get a proper message
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 255                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 255                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 255                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

  @ImplementedBy-richa.singh
  #FeatureID-ACAUTOCAS-225
  Scenario Outline: ACAUTOCAS-4507:  <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 8
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum1>
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    Then user should get a proper message
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 256                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 256                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                   | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 256                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

  @ImplementedBy-richa.singh
  #FeatureID-ACAUTOCAS-225
  Scenario Outline: ACAUTOCAS-4508:  <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 9
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum1>
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    Then user should get a proper message
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 257                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 257                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 257                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

  @ImplementedBy-richa.singh
  #FeatureID-ACAUTOCAS-225
  Scenario Outline: ACAUTOCAS-4509:  <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 10
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum1>
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    Then user should get a proper message
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 258                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 258                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 258                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

  @ImplementedBy-richa.singh
  #FeatureID-ACAUTOCAS-225
  Scenario Outline: ACAUTOCAS-4510:  <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 11
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum1>
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    Then user should get a proper message
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 259                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 259                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details           | 259                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

  @ImplementedBy-richa.singh
  #FeatureID-ACAUTOCAS-225
  Scenario Outline: ACAUTOCAS-17080: Dedupe revalidation to identify duplicate collaterals
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum1>
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user checks for duplicate collateral
    Then user should receive a mandatory check notification message
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details            | 130                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | collateral.xlsx | address_details            | 131                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | collateral.xlsx | address_details            | 120                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | collateral.xlsx | address_details            | 121                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details            | 130                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | collateral.xlsx | address_details            | 131                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | collateral.xlsx | address_details            | 120                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | collateral.xlsx | address_details            | 121                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | collateral.xlsx | address_details            | 130                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | collateral.xlsx | address_details            | 131                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | collateral.xlsx | address_details            | 120                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |
      | collateral.xlsx | address_details            | 121                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 | 162                              |

  @ImplementedBy-aditya.tomar
  #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
  #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
  #FeatureID-ACAUTOCAS-225
  Scenario Outline: ACAUTOCAS-4511: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Dedupe revalidation to identify duplicate collaterals
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum1>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user edits the recently added collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum1>
    And user enters mandatory fields of address details of collateral subtype
    And checks for duplicate collateral
    When user views the duplicate collateral
    Then user should validate <Number> duplicate "<CollateralSubType>" record for "<SourceSystem>" source system
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_propertyAddress_rowNum1 | ProductType   | ApplicationStage   | SecondaryApplicationStage | Key | Category | ApplicantType   | Number | SourceSystem | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum |
      | collateral.xlsx | address_details            | 157                               | 162                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CMS          | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 157                               | 162                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CAS          | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 158                               | 163                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CMS          | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 158                               | 163                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CAS          | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 159                               | 164                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CMS          | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 159                               | 164                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CAS          | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 160                               | 165                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CMS          | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 160                               | 165                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CAS          | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 161                               | 166                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CMS          | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 161                               | 166                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CAS          | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |


  @ImplementedBy-aditya.tomar
  #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
  #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
  #FeatureID-ACAUTOCAS-225
  Scenario Outline: ACAUTOCAS-4512: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Dedupe revalidation to identify and view duplicate collaterals
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum1>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user edits the recently added collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum1>
    And user enters mandatory fields of address details of collateral subtype
    When checks for duplicate collateral
    Then User should be able to view the duplicates on the collateral page
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_propertyAddress_rowNum1 | ProductType   | ApplicationStage   | SecondaryApplicationStage | Key | Category | ApplicantType   | Number | SourceSystem | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum |
      | collateral.xlsx | address_details            | 157                               | 162                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CMS          | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 157                               | 162                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CAS          | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 158                               | 163                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CMS          | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 158                               | 163                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CAS          | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 159                               | 164                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CMS          | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 159                               | 164                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CAS          | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 160                               | 165                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CMS          | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 160                               | 165                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CAS          | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 161                               | 166                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CMS          | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 161                               | 166                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CAS          | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |

    @LoggedBug-CAS-222947
    #FeatureID-ACAUTOCAS-225
    Scenario Outline: ACAUTOCAS-4513:  Dedupe revalidation to identify and attach duplicate collaterals to the same application of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral
    And user add new collateral details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum1>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user edits the recently added collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum1>
    And user enters mandatory fields of address details of collateral subtype
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "<CollateralSubType>" collateral from dedupe result which is already attached to the application
    When user saves selected dedupe collateral
    Then user gets a notification message
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_propertyAddress_rowNum1 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum |
      | collateral.xlsx | address_details            | 157                               | 162                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 158                               | 163                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 159                               | 164                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 160                               | 165                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 161                               | 166                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_propertyAddress_rowNum1 | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum |
      | collateral.xlsx | address_details            | 157                               | 162                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    |
      | collateral.xlsx | address_details            | 158                               | 163                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    |
      | collateral.xlsx | address_details            | 159                               | 164                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    |
      | collateral.xlsx | address_details            | 160                               | 165                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    |
      | collateral.xlsx | address_details            | 161                               | 166                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_propertyAddress_rowNum1 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum |
      | collateral.xlsx | address_details            | 157                               | 162                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    |
      | collateral.xlsx | address_details            | 158                               | 163                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    |
      | collateral.xlsx | address_details            | 159                               | 164                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    |
      | collateral.xlsx | address_details            | 160                               | 165                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    |
      | collateral.xlsx | address_details            | 161                               | 166                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    |

  @ImplementedBy-aditya.tomar
  #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
  #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
 #FeatureID-ACAUTOCAS-225
  Scenario Outline: ACAUTOCAS-4514:  Dedupe revalidation to identify and attach duplicate collaterals to different application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user edits the recently added collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum1>
    And user enters mandatory fields of address details of collateral subtype
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "<CollateralSubType>" collateral from dedupe result which is not attached to the application
    When user saves selected dedupe collateral
    Then user gets a notification message
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_propertyAddress_rowNum1 | ProductType   | ApplicationStage   | SecondaryApplicationStage | Key | Category | ApplicantType   | CollateralSubType   | SecondaryApplicationStage | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum |
      | collateral.xlsx | address_details            | 157                               | 162                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> | Post Approval             | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 158                               | 163                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> | Post Approval             | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 159                               | 164                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> | Post Approval             | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 160                               | 165                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> | Post Approval             | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 161                               | 166                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> | Post Approval             | default                  | 95                              | other_details          | 0                                    |

  @ImplementedBy-aditya.tomar
  #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
  #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
  #FeatureID-ACAUTOCAS-225
  Scenario Outline: ACAUTOCAS-4515:  Dedupe revalidation to identify and ignore duplicate collaterals
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum1>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user edits the recently added collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum1>
    And user enters mandatory fields of address details of collateral subtype
    And checks for duplicate collateral
    And user ignores the duplicate collaterals found
    When user saves the data
    Then user is asked to enter the reason of ignoring
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_propertyAddress_rowNum1 | ProductType   | ApplicationStage   | SecondaryApplicationStage | Key | Category | ApplicantType   | Number | SourceSystem | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum |
      | collateral.xlsx | address_details            | 157                               | 162                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CMS          | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 157                               | 162                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CAS          | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 158                               | 163                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CMS          | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 158                               | 163                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CAS          | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 159                               | 164                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CMS          | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 159                               | 164                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CAS          | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 160                               | 165                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CMS          | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 160                               | 165                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CAS          | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 161                               | 166                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CMS          | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |
      | collateral.xlsx | address_details            | 161                               | 166                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CAS          | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    |

    #FeatureID-ACAUTOCAS-225,ACAUTOCAS-5078
  @LoggedBug
  @ImplementedBy-richa.singh
  #FeatureID-ACAUTOCAS-225,ACAUTOCAS-5078
  Scenario Outline: ACAUTOCAS-5308:  CollateralPage should not show tab for Title Search
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum1>
    When user attempts to modify collateral based on "<CollateralSubType>"
    Then user should not see the Title Search tab
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 0                                    | address_details            | 0                                 | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | <ProductType> | <ApplicationStage> |     |  <Category>        | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | address_details            | 0                                 | collateral.xlsx | address_details            | 0                                 | 162                              |

    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_default_sheet_rowNum1 |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 95                              | other_details          | 1                                    | address_details            | 0                                 | collateral.xlsx | address_details            | 0                                 | 162                              |




