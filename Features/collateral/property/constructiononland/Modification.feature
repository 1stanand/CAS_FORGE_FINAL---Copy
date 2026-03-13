@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ReviewedByDEV
@ReviewedSecCollateral
@ReleaseSecCollateralM5

        #${ApplicantType:["indiv","nonindiv"]}
#${CollateralSubType:["Construction On Land"]}
Feature: Construction On Land Modification


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-2263:  Deleting a <CollateralSubType> to <ProductType> application at <ApplicationStage> stage attached to the application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user deletes the saved collateral
    Then user should be able to successfully delete the collateral
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-utkarsh.tiwari
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType | ApplicationStage | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 | PL          | DDE              |     |          | indiv         | <CollateralSubType> |

      # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1355:  <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification of <FieldName> in Collateral details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user attempts to modify collateral based on "<CollateralSubType>"
    Then user should be able to modify the data in field "<FieldName>"
        #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-utkarsh.tiwari
    Examples:
      | FieldName          | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | Collateral Ref No  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Description        | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Property Type      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Nature of Property | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |

     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName          | ProductType   | ApplicationStage   | key | category   | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | Collateral Ref No  | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Description        | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Property Type      | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Nature of Property | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName          | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | Collateral Ref No  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Description        | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Property Type      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Nature of Property | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |


  Scenario Outline: ACAUTOCAS-1356:  <CollateralSubType> to <ProductType> application at <ApplicationStage> stage data modification of <FieldName> in builder details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user attempts to modify collateral based on "<CollateralSubType>"
    Then user should be able to modify the data in field "<FieldName>"
           #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ankit.yadav
    @LoggedBug
    Examples:
      | FieldName     | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | Company Name  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Project Name  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Building Name | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Wing Name     | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Flat/Shop No. | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Floor No.     | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName     | ProductType   | ApplicationStage   | key | category   | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | Company Name  | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Project Name  | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Building Name | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Wing Name     | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Flat/Shop No. | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Floor No.     | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName     | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | Company Name  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Project Name  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Building Name | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Wing Name     | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Flat/Shop No. | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Floor No.     | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |


  Scenario Outline: ACAUTOCAS-1357:  <CollateralSubType> to <ProductType> application at <ApplicationStage> stage with Data Modification in Other details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user attempts to modify collateral based on "<CollateralSubType>"
    And user opens property address details section
    Then user should be able to modify the data in field "<FieldName>"
        #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName                 | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | Property Classification   | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Property Ownership        | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Market Value              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Built Up Area             | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Built Up Area Unit        | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Carpet Area               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Carpet Area Unit          | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Property Purpose          | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Age Of Property(In Years) | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Residual Age of Property  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Plan Type                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Plan Number               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Property Lot Number       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |

       # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName                 | ProductType   | ApplicationStage   | key | category   | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | Property Classification   | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Property Ownership        | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Market Value              | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Built Up Area             | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Built Up Area Unit        | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Carpet Area               | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Carpet Area Unit          | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Property Purpose          | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Age Of Property(In Years) | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Residual Age of Property  | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Plan Type                 | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Plan Number               | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Property Lot Number       | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName                 | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | Property Classification   | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Property Ownership        | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Market Value              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Built Up Area             | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Built Up Area Unit        | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Carpet Area               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Carpet Area Unit          | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Property Purpose          | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Age Of Property(In Years) | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Residual Age of Property  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Plan Type                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Plan Number               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Property Lot Number       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |


  Scenario Outline: ACAUTOCAS-1358:  <CollateralSubType> to <ProductType> application at <ApplicationStage> stage with Data Modification in Property Address
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user attempts to modify collateral based on "<CollateralSubType>"
    And user opens property address details section
    Then user should be able to modify the data in field "<FieldName>"
        #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName             | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | Property Address Type | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Full Address          | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Country               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Plot Number           | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Address Line 2        | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Address Line 3        | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | PinCode               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Region                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | States                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | City                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | District              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Taluka                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Village               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Residence Status      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Residence Type        | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Landmark              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Primary Phone         | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Mobile Phone          | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |

    @LoggedBug
    Examples:
      | FieldName           | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | Is address verified | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |

       # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName             | ProductType   | ApplicationStage   | key | category   | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | Property Address Type | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Full Address          | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Country               | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Plot Number           | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Address Line 2        | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Address Line 3        | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | PinCode               | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Region                | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | States                | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | City                  | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | District              | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Taluka                | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Village               | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Residence Status      | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Residence Type        | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Landmark              | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Primary Phone         | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Mobile Phone          | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |

    @LoggedBug
    Examples:
      | FieldName           | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | Is address verified | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName             | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | Property Address Type | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Full Address          | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Country               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Plot Number           | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Address Line 2        | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Address Line 3        | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | PinCode               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Region                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | States                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | City                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | District              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Taluka                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Village               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Residence Status      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Residence Type        | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Landmark              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Primary Phone         | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Mobile Phone          | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |

    @LoggedBug
    Examples:
      | FieldName           | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | Is address verified | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |


  Scenario Outline: ACAUTOCAS-2264:  CollateralPage Property and Registration Details deletion of Construction on Land
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user opens property and registration details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agreementDetails>" and row <Collateral_agreementDetails_rowNum>
    And user fills the property registration details as
      | collateral.xlsx | agreement_details | 6 |
      | collateral.xlsx | agreement_details | 7 |
    And user delete the agreement details
    Then user should be able to successfully delete the property details
              #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ankit.yadav
    Examples:
      | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum |  |
      | collateral.xlsx | agreement_details           | 6                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 0                              | property_address          | 0                                |  |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum |  |
      | collateral.xlsx | agreement_details           | 6                                  | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 0                              | property_address          | 0                                |  |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum |  |
      | collateral.xlsx | agreement_details           | 6                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 0                              | property_address          | 0                                |  |


  Scenario Outline: ACAUTOCAS-1359:  <CollateralSubType> to <ProductType> application at <ApplicationStage> stage restrictions in data modification of <FieldName> in Collateral details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user attempts to modify collateral based on "<CollateralSubType>"
    Then user should not be able to modify the data in "<FieldName>" field
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-utkarsh.tiwari
    Examples:
      | FieldName                | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | Collateral ID            | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Global Collateral Number | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Collateral Type          | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Collateral SubType       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName                | ProductType   | ApplicationStage   | key | category   | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | Collateral ID            | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Global Collateral Number | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Collateral Type          | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Collateral SubType       | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName                | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | Collateral ID            | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Global Collateral Number | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Collateral Type          | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Collateral SubType       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |


  Scenario Outline: ACAUTOCAS-1360:  <CollateralSubType> to <ProductType> application at <ApplicationStage> stage data modification of <FieldName> in property and registration details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user attempts to modify collateral based on "<CollateralSubType>"
    And user opens property and registration details section
    And user clicks on new agreement details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agreementDetails>" and row <Collateral_agreementDetails_rowNum>
    And user fills the agreement details
    And user modify the agreement detail
    Then user should be able to modify the data in field "<FieldName>"
           #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-utkarsh.tiwari
    Examples:
      | FieldName                     | CollateralWB    | Collateral_agreementDetails   | Collateral_agreementDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | Agreement Registration Number | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Agreement Type                | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | SRO                           | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Sale Deed Number              | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Registration Date             | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Sale Deed Date                | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Agreement Value               | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Amenities Agreement Value     | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Remarks                       | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |

     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName                     | CollateralWB    | Collateral_agreementDetails   | Collateral_agreementDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | Agreement Registration Number | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Agreement Type                | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | SRO                           | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Sale Deed Number              | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Registration Date             | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Sale Deed Date                | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Agreement Value               | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Amenities Agreement Value     | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Remarks                       | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName                     | CollateralWB    | Collateral_agreementDetails   | Collateral_agreementDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | Agreement Registration Number | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Agreement Type                | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | SRO                           | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Sale Deed Number              | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Registration Date             | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Sale Deed Date                | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Agreement Value               | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Amenities Agreement Value     | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Remarks                       | collateral.xlsx | property_registration_details | 6                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |


  Scenario Outline: ACAUTOCAS-2265: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage data deletion in property and registration details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user attempts to modify collateral based on "<CollateralSubType>"
    And user opens property and registration details section
    And user clicks on new agreement details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agreementDetails>" and row <Collateral_agreementDetails_rowNum>
    And user fills the agreement details
    And user delete the agreement details
    Then user should be able to successfully delete the property details
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-utkarsh.tiwari
    Examples:
      | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | collateral.xlsx | agreement_details           | 6                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | collateral.xlsx | agreement_details           | 6                                  | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | collateral.xlsx | agreement_details           | 6                                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |

  @ImplementedBy-utkarsh.tiwari
    @Release3
  Scenario Outline: ACAUTOCAS-1361:  <CollateralSubType> to <ProductType> application at <ApplicationStage> stage data modification of <FieldName> in ownership details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user attempts to modify collateral based on "<CollateralSubType>"
    And user opens the ownership details section
    Then user should be able to modify the data in field "<FieldName>"
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName        | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | Owner Type       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Ownership Status | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Owner Name       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Linked Applicant | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Percent Share    | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Ownership Dates  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |

         # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName        | ProductType   | ApplicationStage   | key | category   | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | Owner Type       | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Ownership Status | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Owner Name       | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Linked Applicant | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Percent Share    | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Ownership Dates  | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName        | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | Owner Type       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Ownership Status | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Owner Name       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Linked Applicant | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Percent Share    | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |
      | Ownership Dates  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 4                              | property_address           | 0                                 |


  Scenario Outline: ACAUTOCAS-4466: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 1
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user click on modify collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Then user should get a proper message
           #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ankit.yadav
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | property_address          | 54                               | default            | 97                        | other_details           | 0                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType | CollateralSubType   |
      | collateral.xlsx | property_address          | 54                               | default            | 97                        | other_details           | 0                              | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | property_address          | 54                               | default            | 97                        | other_details           | 0                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-4467: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 2
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user click on modify collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Then user should get a proper message
              #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ankit.yadav
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 57                               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

      # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 57                               | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 57                               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-4468: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 3
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user click on modify collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Then user should get a proper message
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ankit.yadav
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 60                               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

        # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 60                               | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 60                               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-4469: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 4
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user click on modify collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Then user should get a proper message
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ankit.yadav
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 63                               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 63                               | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 63                               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-4470: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 5
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user click on modify collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Then user should get a proper message
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ankit.yadav
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 66                               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 66                               | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 66                               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-4471: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 6
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user click on modify collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Then user should get a proper message
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ankit.yadav
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 69                               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 69                               | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 69                               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-4472: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 7
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user click on modify collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Then user should get a proper message
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ankit.yadav
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 72                               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 72                               | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 72                               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-4473: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 8
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user click on modify collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Then user should get a proper message
           #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 75                               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 75                               | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 75                               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-4474: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 9
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user click on modify collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Then user should get a proper message
           #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ankit.yadav
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 78                               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 78                               | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 78                               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-4475: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 10
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user click on modify collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Then user should get a proper message
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ankit.yadav
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 81                               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

      # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 81                               | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 81                               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-ankit.yadav
    @Release3
  Scenario Outline: ACAUTOCAS-4476: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification in Property Address for dedupe revalidation 11
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user click on modify collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Then user should get a proper message
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 84                               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 84                               | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 84                               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-17031: Dedupe revalidation for property address is mandatory for dedupe check in <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_builderProperty>" and row <Collateral_builderProperty_rowNum>
    And user adds mandatory builder property details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user fills other details fields for property type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user checks for duplicate collateral
    Then user should receive a mandatory check notification message
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @Perishable
    @ImplementedBy-ankit.yadav
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_builderProperty | Collateral_builderProperty_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | address_details           | 130                              | builder_details            | 0                                 | other_details           | 0                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | address_details           | 131                              | builder_details            | 0                                 | other_details           | 0                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | address_details           | 120                              | builder_details            | 0                                 | other_details           | 0                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | address_details           | 121                              | builder_details            | 0                                 | other_details           | 0                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @Perishable
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_builderProperty | Collateral_builderProperty_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | address_details           | 130                              | builder_details            | 0                                 | other_details           | 0                              | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | address_details           | 131                              | builder_details            | 0                                 | other_details           | 0                              | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | address_details           | 120                              | builder_details            | 0                                 | other_details           | 0                              | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | address_details           | 121                              | builder_details            | 0                                 | other_details           | 0                              | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @Perishable
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_builderProperty | Collateral_builderProperty_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | address_details           | 130                              | builder_details            | 0                                 | other_details           | 0                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | address_details           | 131                              | builder_details            | 0                                 | other_details           | 0                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | address_details           | 120                              | builder_details            | 0                                 | other_details           | 0                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | address_details           | 121                              | builder_details            | 0                                 | other_details           | 0                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-4477: Dedupe revalidation to identify duplicate collaterals in <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user click on modify collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And checks for duplicate collateral
    Then user should receive a duplicates found popup message
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 120                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 121                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 122                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 123                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 124                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 125                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 126                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 127                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 128                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 129                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 130                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 131                              | <ProductType> | <ApplicationStage> |     |          | indiv         |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 120                              | <ProductType> | <ApplicationStage> |     | <category> | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 121                              | <ProductType> | <ApplicationStage> |     | <category> | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 122                              | <ProductType> | <ApplicationStage> |     | <category> | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 123                              | <ProductType> | <ApplicationStage> |     | <category> | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 124                              | <ProductType> | <ApplicationStage> |     | <category> | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 125                              | <ProductType> | <ApplicationStage> |     | <category> | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 126                              | <ProductType> | <ApplicationStage> |     | <category> | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 127                              | <ProductType> | <ApplicationStage> |     | <category> | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 128                              | <ProductType> | <ApplicationStage> |     | <category> | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 129                              | <ProductType> | <ApplicationStage> |     | <category> | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 130                              | <ProductType> | <ApplicationStage> |     | <category> | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 131                              | <ProductType> | <ApplicationStage> |     | <category> | indiv         |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 120                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 121                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 122                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 123                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 124                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 125                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 126                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 127                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 128                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 129                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 130                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 131                              | <ProductType> | <ApplicationStage> |     |          | indiv         |


  @ImplementedBy-priyanshu.kashyap
    @Release3
  Scenario Outline: ACAUTOCAS-4478: Dedupe revalidation to identify and view duplicate collaterals in <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user click on modify collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And checks for duplicate collateral
    Then User should be able to view the duplicates of collateral subtype
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 120                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 121                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 122                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 123                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 124                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 125                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 126                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 127                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 128                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 129                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 130                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 131                              | <ProductType> | <ApplicationStage> |     |          | indiv         |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 120                              | <ProductType> | <ApplicationStage> |     | <category> | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 121                              | <ProductType> | <ApplicationStage> |     | <category> | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 122                              | <ProductType> | <ApplicationStage> |     | <category> | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 123                              | <ProductType> | <ApplicationStage> |     | <category> | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 124                              | <ProductType> | <ApplicationStage> |     | <category> | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 125                              | <ProductType> | <ApplicationStage> |     | <category> | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 126                              | <ProductType> | <ApplicationStage> |     | <category> | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 127                              | <ProductType> | <ApplicationStage> |     | <category> | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 128                              | <ProductType> | <ApplicationStage> |     | <category> | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 129                              | <ProductType> | <ApplicationStage> |     | <category> | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 130                              | <ProductType> | <ApplicationStage> |     | <category> | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 131                              | <ProductType> | <ApplicationStage> |     | <category> | indiv         |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 120                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 121                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 122                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 123                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 124                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 125                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 126                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 127                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 128                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 129                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 130                              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 131                              | <ProductType> | <ApplicationStage> |     |          | indiv         |


  Scenario Outline: ACAUTOCAS-4481: Dedupe revalidation to identify and ignore duplicate collaterals in <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user click on modify collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And checks for duplicate collateral
    And user checks ok button in dedupe
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Then user is asked to enter the reason of ignoring duplicates
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 186                              | PL            | DDE                |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 187                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 188                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 189                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 190                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 191                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 192                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 193                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 194                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 195                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

        # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 186                              | PL            | DDE                |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 187                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 188                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 189                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 190                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 191                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 192                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 193                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 194                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 195                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 186                              | PL            | DDE                |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 187                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 188                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 189                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 190                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 191                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 192                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 193                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 194                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 195                              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-4479:  Dedupe revalidation to identify and attach duplicate collaterals to the same application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user fills other details fields for property type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user fills address details for property type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user saves the existing global collateral number of collateral subtype
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user fills other details fields for property type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user fills address details for property type
    And checks for duplicate collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user click on view duplicates collateral
    Then user gets a proper notification on dedupe check
        #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @LoggedBug
    @ImplementedBy-ankit.yadav
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |  |
      | collateral.xlsx | address_details           | 243                              | other_details           | 123                            | default            | 545                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |  |
      | collateral.xlsx | address_details           | 244                              | other_details           | 124                            | default            | 546                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |  |
      | collateral.xlsx | address_details           | 245                              | other_details           | 125                            | default            | 547                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |  |
      | collateral.xlsx | address_details           | 246                              | other_details           | 126                            | default            | 548                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |  |
      | collateral.xlsx | address_details           | 247                              | other_details           | 127                            | default            | 549                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |  |
      | collateral.xlsx | address_details           | 248                              | other_details           | 128                            | default            | 550                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |  |

   # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @LoggedBug
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |  |
      | collateral.xlsx | address_details           | 243                              | other_details           | 123                            | default            | 545                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |  |
      | collateral.xlsx | address_details           | 244                              | other_details           | 124                            | default            | 546                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |  |
      | collateral.xlsx | address_details           | 245                              | other_details           | 125                            | default            | 547                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |  |
      | collateral.xlsx | address_details           | 246                              | other_details           | 126                            | default            | 548                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |  |
      | collateral.xlsx | address_details           | 247                              | other_details           | 127                            | default            | 549                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |  |
      | collateral.xlsx | address_details           | 248                              | other_details           | 128                            | default            | 550                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |  |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @LoggedBug
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |  |
      | collateral.xlsx | address_details           | 243                              | other_details           | 123                            | default            | 545                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |  |
      | collateral.xlsx | address_details           | 244                              | other_details           | 124                            | default            | 546                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |  |
      | collateral.xlsx | address_details           | 245                              | other_details           | 125                            | default            | 547                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |  |
      | collateral.xlsx | address_details           | 246                              | other_details           | 126                            | default            | 548                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |  |
      | collateral.xlsx | address_details           | 247                              | other_details           | 127                            | default            | 549                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |  |
      | collateral.xlsx | address_details           | 248                              | other_details           | 128                            | default            | 550                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |  |


  Scenario Outline: ACAUTOCAS-5302:  CollateralPage should not show tab for Title Search for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Viewer
    And user opens an application at "DDE" stage from application grid
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user fills other details fields for property type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user fills address details for property type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user attempts to modify collateral based on "<CollateralSubType>"
    Then user should not see the Title Search tab
        #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ankit.yadav
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 84                               |

      # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 84                               |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | default            | 97                        | other_details           | 0                              | address_details           | 84                               |

     #FeatureID-ACAUTOCAS-227
  Scenario Outline: ACAUTOCAS-4480:  Dedupe revalidation to identify and attach duplicate collaterals to different application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user fills other details fields for property type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user fills address details for property type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user saves the existing global collateral number of collateral subtype
    And user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user fills other details fields for property type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user fills address details for property type
    And checks for duplicate collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user click on view duplicates collateral
    Then user gets a proper notification on dedupe check
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @Release3 @ReleaseSecCollateralM5
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | address_details           | 243                              | other_details           | 123                            | default            | 545                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | address_details           | 244                              | other_details           | 124                            | default            | 546                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | address_details           | 245                              | other_details           | 125                            | default            | 547                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | address_details           | 246                              | other_details           | 126                            | default            | 548                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | address_details           | 247                              | other_details           | 127                            | default            | 549                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | address_details           | 248                              | other_details           | 128                            | default            | 550                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | address_details           | 243                              | other_details           | 123                            | default            | 545                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | address_details           | 244                              | other_details           | 124                            | default            | 546                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | address_details           | 245                              | other_details           | 125                            | default            | 547                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | address_details           | 246                              | other_details           | 126                            | default            | 548                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | address_details           | 247                              | other_details           | 127                            | default            | 549                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | address_details           | 248                              | other_details           | 128                            | default            | 550                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | address_details           | 243                              | other_details           | 123                            | default            | 545                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | address_details           | 244                              | other_details           | 124                            | default            | 546                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | address_details           | 245                              | other_details           | 125                            | default            | 547                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | address_details           | 246                              | other_details           | 126                            | default            | 548                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | address_details           | 247                              | other_details           | 127                            | default            | 549                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | address_details           | 248                              | other_details           | 128                            | default            | 550                       | <ProductType> | <ApplicationStage> |     |          | indiv         |


