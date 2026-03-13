@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-harshprit.kumar
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral
@ReleaseSecCollateralM5

 #${ApplicantType:["indiv""nonindiv"]}
 # ${CollateralSubType:["Plot Plus Self Construction"]}


Feature: Plot Plus Self Construction Modification

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @Sanity
  Scenario Outline: ACAUTOCAS-2307:  Deleting a Plot Plus Self Construction attached to the application of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 735
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 1
    And user fills mandatory fields of other details of Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 0
    And user fill the property Address
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user deletes the saved collateral
    Then user should be able to successfully delete the collateral

    @ImplementedBy-bhanu.singh1
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
   #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-1389: Plot Plus Self Construction Data Modification in <FieldName> of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 735
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 1
    And user fills mandatory fields of other details of Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 0
    And user fill the property Address
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 735
    When user attempts to modify collateral based on "<CollateralSubType>"
    Then user should be able to modify the data in field "<FieldName>"

    @ImplementedBy-bhanu.singh1
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
   #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName          | CollateralSubType        | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Collateral Ref No  | Plot + Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Description        | Plot + Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Type      | Plot + Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Nature of Property | Plot + Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
#      | Is Builder Constructed | Plot + Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType>         |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName              | CollateralSubType        | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | Collateral Ref No      | Plot + Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Description            | Plot + Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Type          | Plot + Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Nature of Property     | Plot + Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Is Builder Constructed | Plot + Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName          | CollateralSubType        | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Collateral Ref No  | Plot + Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Description        | Plot + Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Type      | Plot + Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Nature of Property | Plot + Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
#      | Is Builder Constructed | Plot + Self Construction | IHF         | dde              |     |          | <ApplicantType>         |


  Scenario Outline: ACAUTOCAS-1390:  Plot Plus Self Construction - Data Modification in Builder details of <FieldName> of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 735
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 1
    And user fills mandatory fields of other details of Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 0
    And user fill the property Address
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user modifies the saved collateral
    And user sees the "<Section>"
    Then user should be able to modify the data in field "<FieldName>"

    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
   #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName     | Section         | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Company Name  | Builder details | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Project Name  | Builder details | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Building Name | Builder details | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Wing Name     | Builder details | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Flat/Shop No. | Builder details | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Floor No.     | Builder details | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#    @ImplementedBy-richa.singh
#     @Islamic
#     # ${ProductType:["IPF"]}
#     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#     # ${Category:["shares","bonds","metals"]}
#    Examples:
#      | FieldName     | Section         | ProductType   | ApplicationStage   | key | category | applicantType |
#      | Company Name  | Builder details | <ProductType> | <ApplicationStage> |     |  <Category>        | <ApplicantType>         |
#      | Project Name  | Builder details | <ProductType> | <ApplicationStage> |     |  <Category>        | <ApplicantType>         |
#      | Building Name | Builder details | <ProductType> | <ApplicationStage> |     |  <Category>        | <ApplicantType>         |
#      | Wing Name     | Builder details | <ProductType> | <ApplicationStage> |     |  <Category>        | <ApplicantType>         |
#      | Flat/Shop No. | Builder details | <ProductType> | <ApplicationStage> |     |  <Category>        | <ApplicantType>         |
#      | Floor No.     | Builder details | <ProductType> | <ApplicationStage> |     |  <Category>        | <ApplicantType>         |

#    @ImplementedBy-richa.singh
#    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
   #    Examples:
#      | FieldName     | Section         | ProductType   | ApplicationStage   | key | category | applicantType |
#      | Company Name  | Builder details | <ProductType> | <ApplicationStage> |     |          | <ApplicantType>         |
#      | Project Name  | Builder details | <ProductType> | <ApplicationStage> |     |          | <ApplicantType>         |
#      | Building Name | Builder details | <ProductType> | <ApplicationStage> |     |          | <ApplicantType>         |
#      | Wing Name     | Builder details | <ProductType> | <ApplicationStage> |     |          | <ApplicantType>         |
#      | Flat/Shop No. | Builder details | <ProductType> | <ApplicationStage> |     |          | <ApplicantType>         |
#      | Floor No.     | Builder details | <ProductType> | <ApplicationStage> |     |          | <ApplicantType>         |


  Scenario Outline: ACAUTOCAS-1391: Plot Plus Self Construction - Data Modification of <FieldName> in Other details of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 735
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 1
    And user fills mandatory fields of other details of Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 0
    And user fill the property Address
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user modifies the saved collateral
    And user opens other details section of collateral page
    Then user should be able to modify the data in field "<FieldName>" of plot plus self construction

    @ImplementedBy-bhanu.singh1
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
   #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName                  | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Property Classification    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Ownership         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Market Value               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Considered Valuation       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Built Up Area              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Built Up Area Unit         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Carpet Area                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Carpet Area Unit           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Purpose           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Age Of Property(In Years)  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Residual Age of Property   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Amount Considered Accepted | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Plan Type                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Plan Number                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Lot Number        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                  | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | Property Classification    | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Ownership         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Market Value               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Considered Valuation       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Built Up Area              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Built Up Area Unit         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Carpet Area                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Carpet Area Unit           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Purpose           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Age Of Property(In Years)  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Residual Age of Property   | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Amount Considered Accepted | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Plan Type                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Plan Number                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Property Lot Number        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                  | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Property Classification    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Ownership         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Market Value               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Considered Valuation       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Built Up Area              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Built Up Area Unit         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Carpet Area                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Carpet Area Unit           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Purpose           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Age Of Property(In Years)  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Residual Age of Property   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Amount Considered Accepted | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Plan Type                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Plan Number                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Property Lot Number        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  Scenario Outline: ACAUTOCAS-1392: Plot Plus Self Construction - Data Modification of <FieldName> in Property Address of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 735
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 1
    And user fills mandatory fields of other details of Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 0
    And user fill the property Address
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user modifies the saved collateral
    And user sees the "Property Address"
    Then user should be able to modify the data in field "<FieldName>" of plot plus self construction

    @ImplementedBy-bhanu.singh1
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
   #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName           | Section                     | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Address Type        | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Full Address        | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Country             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Plot Number         | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Address Line 2      | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Address Line 3      | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | PinCode             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Region              | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | State               | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | City                | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | District            | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Taluka              | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Village             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Residence Status    | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Residence Type      | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Landmark            | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Primary Phone       | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Mobile Phone        | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Is address verified | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName           | Section                     | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | Address Type        | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Full Address        | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Country             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Plot Number         | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Address Line 2      | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Address Line 3      | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | PinCode             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Region              | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | State               | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | City                | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | District            | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Taluka              | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Village             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Residence Status    | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Residence Type      | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Landmark            | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Primary Phone       | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Mobile Phone        | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Is address verified | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName           | Section                     | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Address Type        | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Full Address        | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Country             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Plot Number         | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Address Line 2      | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Address Line 3      | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | PinCode             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Region              | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | State               | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | City                | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | District            | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Taluka              | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Village             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Residence Status    | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Residence Type      | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Landmark            | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Primary Phone       | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Mobile Phone        | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Is address verified | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  Scenario Outline: ACAUTOCAS-2308: CollateralPage Property and Registration Details deletion of Plot plus Self Construction of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 735
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 1
    And user fills mandatory fields of other details of Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 0
    And user fill the property Address
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user modifies the saved collateral
    And user sees the "Property and Registration Details"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyRegistrationDetails>" and row <Collateral_propertyRegistrationDetails_rowNum>
    And add multiple agreement details
      | collateral.xlsx | property_registration_details | 6 |
      | collateral.xlsx | property_registration_details | 7 |
    And user selects one or more "Property and Registration Details"
    And user deletes the data Property and Registration Details
    Then user should be able to successfully delete the record of "Property and Registration Details"

    @ImplementedBy-bhanu.singh1
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
   #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_propertyRegistrationDetails | Collateral_propertyRegistrationDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | property_registration_details          | 6                                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_propertyRegistrationDetails | Collateral_propertyRegistrationDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | collateral.xlsx | property_registration_details          | 6                                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyRegistrationDetails | Collateral_propertyRegistrationDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | property_registration_details          | 6                                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-1393: Plot Plus Self Construction restrictions in Data Modification of <FieldName> of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 735
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 1
    And user fills mandatory fields of other details of Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 0
    And user fill the property Address
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user modifies the saved collateral
    Then user should not be able to modify the data in "<FieldName>" field

    @ImplementedBy-bhanu.singh1
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
   #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName                | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Collateral ID            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Global Collateral Number | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Collateral Type          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Collateral SubType       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | Collateral ID            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Global Collateral Number | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Collateral Type          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Collateral SubType       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Collateral ID            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Global Collateral Number | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Collateral Type          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Collateral SubType       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  @Wrong
  Scenario Outline: ACAUTOCAS-1394: Plot Plus Self Construction - Data Modification in <FieldName> of Property and Registration Details of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 735
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 1
    And user fills mandatory fields of other details of Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 0
    And user fill the property Address
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user modifies the saved collateral
    And user opens Other Property And Registration Details
    And user modified the Property and Registration Details
    Then user should be able to modify the data in field "<FieldName>" of plot plus self construction

    @ImplementedBy-bhanu.singh1
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
   #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName                 | num | CollateralWB    | Collateral_propertyRegistrationDetails | Collateral_propertyRegistrationDetails_rowNum | Section                     | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Registration Number       | 2   | collateral.xlsx | property_registration_details          | 0                                             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Agreement Type            | 2   | collateral.xlsx | property_registration_details          | 0                                             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | SRO                       | 2   | collateral.xlsx | property_registration_details          | 0                                             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Sale Deed Number          | 2   | collateral.xlsx | property_registration_details          | 0                                             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Registration Date         | 2   | collateral.xlsx | property_registration_details          | 0                                             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Sale Deed Date            | 2   | collateral.xlsx | property_registration_details          | 0                                             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Agreement Value           | 2   | collateral.xlsx | property_registration_details          | 0                                             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Amenities Agreement Value | 2   | collateral.xlsx | property_registration_details          | 0                                             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Remarks                   | 2   | collateral.xlsx | property_registration_details          | 0                                             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                 | num | CollateralWB    | Collateral_propertyRegistrationDetails | Collateral_propertyRegistrationDetails_rowNum | Section                     | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | Registration Number       | 2   | collateral.xlsx | property_registration_details          | 0                                             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Agreement Type            | 2   | collateral.xlsx | property_registration_details          | 0                                             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | SRO                       | 2   | collateral.xlsx | property_registration_details          | 0                                             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Sale Deed Number          | 2   | collateral.xlsx | property_registration_details          | 0                                             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Registration Date         | 2   | collateral.xlsx | property_registration_details          | 0                                             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Sale Deed Date            | 2   | collateral.xlsx | property_registration_details          | 0                                             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Agreement Value           | 2   | collateral.xlsx | property_registration_details          | 0                                             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Amenities Agreement Value | 2   | collateral.xlsx | property_registration_details          | 0                                             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Remarks                   | 2   | collateral.xlsx | property_registration_details          | 0                                             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                 | num | CollateralWB    | Collateral_propertyRegistrationDetails | Collateral_propertyRegistrationDetails_rowNum | Section                     | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | Registration Number       | 2   | collateral.xlsx | property_registration_details          | 0                                             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Agreement Type            | 2   | collateral.xlsx | property_registration_details          | 0                                             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | SRO                       | 2   | collateral.xlsx | property_registration_details          | 0                                             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Sale Deed Number          | 2   | collateral.xlsx | property_registration_details          | 0                                             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Registration Date         | 2   | collateral.xlsx | property_registration_details          | 0                                             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Sale Deed Date            | 2   | collateral.xlsx | property_registration_details          | 0                                             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Agreement Value           | 2   | collateral.xlsx | property_registration_details          | 0                                             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Amenities Agreement Value | 2   | collateral.xlsx | property_registration_details          | 0                                             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Remarks                   | 2   | collateral.xlsx | property_registration_details          | 0                                             | Plot Plus Self Construction | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

  @Sanity
  Scenario Outline: ACAUTOCAS-2309:  Plot Plus Self Construction - Data deletion in Property and Registration Details of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for Plot plus self construction
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user fills mandatory fields of other details of Plot plus self construction
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user fill the property Address
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agreementDetails>" and row <Collateral_agreementDetails_rowNum>
    And user sees the "Property and Registration Details"
    And user enters all mandatory information of Registration details
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user edits the recently added collateral
    And user sees the "Property and Registration Details"
    When user deletes the data of property and registration
    Then user should be able to successfully delete the record of "Property and Registration Details"

    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
   #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | collateral.xlsx | agreement_details           | 54                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 735                             | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 |

    @ImplementedBy-richa.singh
    @Islamic
     #${ProductType:["IPF"]}
     #${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     #${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | collateral.xlsx | agreement_details           | 54                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 735                             | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | collateral.xlsx | agreement_details           | 54                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 735                             | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 |

  Scenario Outline: ACAUTOCAS-1395: Plot Plus Self Construction - Data Modification in <FieldName> of Ownership Details of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 735
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 1
    And user fills mandatory fields of other details of Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 0
    And user fill the property Address
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user modifies the saved collateral
    And user sees the Ownership Details
    Then user should be able to modify the data in field "<FieldName>"

    @ImplementedBy-bhanu.singh1
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
   #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName        | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Owner Type       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Status | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Owner Name       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Linked Applicant | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Percent Share    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Dates  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName        | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | Owner Type       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Status | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Owner Name       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Linked Applicant | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Percent Share    | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Ownership Dates  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName        | ProductType   | ApplicationStage   | key | category | applicantType   |
      | Owner Type       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Status | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Owner Name       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Linked Applicant | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Percent Share    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Ownership Dates  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

##Dedupe Check
  #FeatureID-ACAUTOCAS-228
  Scenario Outline: ACAUTOCAS-4483:  Plot Plus Self Construction Data Modification in Property Address for dedupe revalidation 1 of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 735
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 1
    And user fills mandatory fields of other details of Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 0
    And user fill the property Address
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    When user fill the property Address
    And user saves the Collateral Details
    Then user gets a proper notification message

    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
   #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | property_address           | 23                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | collateral.xlsx | property_address           | 23                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | property_address           | 23                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  Scenario Outline: ACAUTOCAS-4484:  Plot Plus Self Construction Data Modification in Property Address for dedupe revalidation 2 of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 735
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 1
    And user fills mandatory fields of other details of Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 0
    And user fill the property Address
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 96
    And user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    When user fill the property Address
    And user saves the Collateral Details
    Then user gets a proper notification message

    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
   #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | property_address           | 24                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | collateral.xlsx | property_address           | 24                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | property_address           | 24                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  #FeatureID-ACAUTOCAS-228
  Scenario Outline: ACAUTOCAS-4485:  Plot Plus Self Construction Data Modification in Property Address for dedupe revalidation 3 of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 735
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 1
    And user fills mandatory fields of other details of Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 0
    And user fill the property Address
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 96
    And user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    When user fill the property Address
    And user saves the Collateral Details
    Then user gets a proper notification message

    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
   #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | collateral.xlsx | property_address           | 25                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | property_address           | 25                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | collateral.xlsx | property_address           | 25                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

  #FeatureID-ACAUTOCAS-228
  Scenario Outline: ACAUTOCAS-4486:  Plot Plus Self Construction Data Modification in Property Address for dedupe revalidation 4 of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 735
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 1
    And user fills mandatory fields of other details of Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 0
    And user fill the property Address
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 96
    And user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    When user fill the property Address
    And user saves the Collateral Details
    Then user gets a proper notification message
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
   #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | property_address           | 22                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | collateral.xlsx | property_address           | 22                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | property_address           | 22                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #FeatureID-ACAUTOCAS-228
  Scenario Outline: ACAUTOCAS-4487:  Plot Plus Self Construction Data Modification in Property Address for dedupe revalidation 5 of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 735
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 1
    And user fills mandatory fields of other details of Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 0
    And user fill the property Address
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 96
    And user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    When user fill the property Address
    And user saves the Collateral Details
    Then user gets a proper notification message
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
   #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | property_address           | 72                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | collateral.xlsx | property_address           | 72                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | property_address           | 72                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  #FeatureID-ACAUTOCAS-228
  Scenario Outline: ACAUTOCAS-4488:  Plot Plus Self Construction Data Modification in Property Address for dedupe revalidation 6 of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 11
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 4
    And user fills mandatory fields of other details of Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 0
    And user fill the property Address
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 96
    And user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    When user fill the property Address
    And user saves the Collateral Details
    Then user gets a proper notification message
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
   #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | property_address           | 73                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | collateral.xlsx | property_address           | 73                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | property_address           | 73                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #FeatureID-ACAUTOCAS-228
  Scenario Outline: ACAUTOCAS-4489:  Plot Plus Self Construction Data Modification in Property Address for dedupe revalidation 7 of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 735
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 1
    And user fills mandatory fields of other details of Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 0
    And user fill the property Address
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 96
    And user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    When user fill the property Address
    And user saves the Collateral Details
    Then user gets a proper notification message
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
   #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | property_address           | 74                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | collateral.xlsx | property_address           | 74                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | property_address           | 74                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  #FeatureID-ACAUTOCAS-228
  Scenario Outline: ACAUTOCAS-4490:  Plot Plus Self Construction Data Modification in Property Address for dedupe revalidation 8 of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 11
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 4
    And user fills mandatory fields of other details of Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 0
    And user fill the property Address
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 96
    And user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    When user fill the property Address
    And user saves the Collateral Details
    Then user gets a proper notification message
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
   #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | property_address           | 75                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | collateral.xlsx | property_address           | 75                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | property_address           | 75                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  #FeatureID-ACAUTOCAS-228
  Scenario Outline: ACAUTOCAS-4491:  Plot Plus Self Construction Data Modification in Property Address for dedupe revalidation 9 of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 735
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 1
    And user fills mandatory fields of other details of Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 0
    And user fill the property Address
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 96
    And user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    When user fill the property Address
    And user saves the Collateral Details
    Then user gets a proper notification message
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
   #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | property_address           | 76                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | collateral.xlsx | property_address           | 76                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | property_address           | 76                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

   #FeatureID-ACAUTOCAS-228
  Scenario Outline: ACAUTOCAS-4492:  Plot Plus Self Construction Data Modification in Property Address for dedupe revalidation 10 of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 735
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 1
    And user fills mandatory fields of other details of Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 0
    And user fill the property Address
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 96
    And user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    When user fill the property Address
    And user saves the Collateral Details
    Then user gets a proper notification message
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
   #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | property_address           | 77                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | collateral.xlsx | property_address           | 77                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | property_address           | 77                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  #FeatureID-ACAUTOCAS-228
  Scenario Outline: ACAUTOCAS-4493:  Plot Plus Self Construction Data Modification in Property Address for dedupe revalidation 11 of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 735
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 1
    And user fills mandatory fields of other details of Plot plus self construction
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 0
    And user fill the property Address
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 96
    And user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    When user fill the property Address
    And user saves the Collateral Details
    Then user gets a proper notification message
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
   #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | property_address           | 78                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | collateral.xlsx | property_address           | 78                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | property_address           | 78                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  @ImplementedBy-aditya.tomar
    @Release3
 #FeatureID-ACAUTOCAS-228
  Scenario Outline: ACAUTOCAS-4494:  Dedupe revalidation to identify duplicate collaterals of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for Plot plus self construction
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user fills mandatory fields of other details of Plot plus self construction
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user fill the property Address
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for Plot plus self construction
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user fills mandatory fields of other details of Plot plus self construction
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum1>
    And user fill the property Address
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user edits the recently added collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for Plot plus self construction
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user fills mandatory fields of other details of Plot plus self construction
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum1>
    And user fill the property Address
    And checks for duplicate collateral
    When user views the duplicate collateral
    Then user should validate <Number> duplicate "<CollateralSubType>" record for "<SourceSystem>" source system
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_propertyAddress_rowNum1 | ProductType   | ApplicationStage   | SecondaryApplicationStage | Key | Category | ApplicantType   | Number | SourceSystem | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum |
      | collateral.xlsx | address_details            | 157                               | 162                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CMS          | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 157                               | 162                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CAS          | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 158                               | 163                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CMS          | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 158                               | 163                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CAS          | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 159                               | 164                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CMS          | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 159                               | 164                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CAS          | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 160                               | 165                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CMS          | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 160                               | 165                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CAS          | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 161                               | 166                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CMS          | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 161                               | 166                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CAS          | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |

  @ImplementedBy-aditya.tomar
    @Release3
  #FeatureID-ACAUTOCAS-228
  Scenario Outline: ACAUTOCAS-4495:  Dedupe revalidation to identify and view duplicate collaterals of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for Plot plus self construction
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user fills mandatory fields of other details of Plot plus self construction
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
    And user fill the property Address
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for Plot plus self construction
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user fills mandatory fields of other details of Plot plus self construction
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum1>
    And user fill the property Address
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user edits the recently added collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for Plot plus self construction
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
    And user fills mandatory fields of other details of Plot plus self construction
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum1>
    And user fill the property Address
    And checks for duplicate collateral
    When user views the duplicate collateral
    Then User should be able to view the duplicates on the collateral page
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_propertyAddress_rowNum1 | ProductType   | ApplicationStage   | SecondaryApplicationStage | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum |
      | collateral.xlsx | address_details            | 157                               | 162                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 157                               | 162                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 158                               | 163                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 158                               | 163                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 159                               | 164                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 159                               | 164                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 160                               | 165                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 160                               | 165                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 161                               | 166                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 161                               | 166                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |

    @LoggedBug-CAS-222947
  #FeatureID-ACAUTOCAS-228
  Scenario Outline: ACAUTOCAS-4496:  Dedupe revalidation to identify and attach duplicate collaterals to the same application of <applicantType> on <ProductType> on <ApplicationStage>
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
      | collateral.xlsx | address_details            | 157                               | 162                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 158                               | 163                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 159                               | 164                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 160                               | 165                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 161                               | 166                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_propertyAddress_rowNum1 | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum |
      | collateral.xlsx | address_details            | 157                               | 162                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 158                               | 163                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 159                               | 164                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 160                               | 165                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 161                               | 166                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_propertyAddress_rowNum1 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum |
      | collateral.xlsx | address_details            | 157                               | 162                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 158                               | 163                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 159                               | 164                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 160                               | 165                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 161                               | 166                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |

  @ImplementedBy-aditya.tomar
    @Release3
    @Sanity
  #FeatureID-ACAUTOCAS-228
  Scenario Outline: ACAUTOCAS-4497:  Dedupe revalidation to identify and attach duplicate collaterals to different application of <applicantType> on <ProductType> on <ApplicationStage>
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
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_propertyAddress_rowNum1 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | SecondaryApplicationStage | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum |
      | collateral.xlsx | address_details            | 157                               | 162                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Post Approval             | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 158                               | 163                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Post Approval             | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 159                               | 164                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Post Approval             | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 160                               | 165                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Post Approval             | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 161                               | 166                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Post Approval             | default                  | 11                              | other_details          | 4                                    |

  @ImplementedBy-aditya.tomar
    @Release3
## Ignore duplicate and save - Ask for reason
  #FeatureID-ACAUTOCAS-228
  Scenario Outline: ACAUTOCAS-4498:  Dedupe revalidation to identify and ignore duplicate collaterals of <applicantType> on <ProductType> on <ApplicationStage>
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
      | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum | Collateral_propertyAddress_rowNum1 | ProductType   | ApplicationStage   | SecondaryApplicationStage | Key | Category | ApplicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum |
      | collateral.xlsx | address_details            | 157                               | 162                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 157                               | 162                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 158                               | 163                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 158                               | 163                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 159                               | 164                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 159                               | 164                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 160                               | 165                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 160                               | 165                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 161                               | 166                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |
      | collateral.xlsx | address_details            | 161                               | 166                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    |


#FeatureID-ACAUTOCAS-228,ACAUTOCAS-5078
  Scenario Outline: ACAUTOCAS-5306:  CollateralPage should not show tab for Title Search of <applicantType> on <ProductType> on <ApplicationStage>
   And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
   And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
   And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default_sheet>" and row <Collateral_default_sheet_rowNum>
   And user selects collateral type along with collateral sub type
   And user fills mandatory fields of home page of collateral details for Plot plus self construction
   And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_other_sheet>" and row <Collateral_otherDetails_sheet_rowNum>
   And user fills mandatory fields of other details of Plot plus self construction
   And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyAddress>" and row <Collateral_propertyAddress_rowNum>
   And user fill the property Address
   And user checks the duplicates on collateral dedupe check
   And user saves the collateral data
   When user modifies the saved collateral
   Then user should not see the Title Search tab
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
   #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
     Examples:
      | CollateralWB    | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 11                              | other_details          | 4                                    | collateral.xlsx | address_details            | 0                                 |

   @ImplementedBy-richa.singh
   @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
   Examples:
     | CollateralWB    | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
     | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                  | 735                             | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}

    Examples:
      | CollateralWB    | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_default_sheet | Collateral_default_sheet_rowNum | Collateral_other_sheet | Collateral_otherDetails_sheet_rowNum | CollateralWB    | Collateral_propertyAddress | Collateral_propertyAddress_rowNum |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                  | 735                             | other_details          | 1                                    | collateral.xlsx | address_details            | 0                                 |
