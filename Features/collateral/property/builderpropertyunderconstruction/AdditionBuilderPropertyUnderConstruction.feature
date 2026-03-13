@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-none
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral
@Part-1

#${ApplicantType:["indiv","nonindiv"]}
#${CollateralSubType:["Builder Property Under Construction"]}

Feature: Addition of Builder Property Under Construction

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  #PF(Secured),EDU(Scecured)
  Scenario Outline: ACAUTOCAS-3729: user moves to the next stage without collateral in <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user moves to the next stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_builderDetails>" and row <Collateral_builderDetails_rowNum>
    Then user should get error message without adding collateral
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","EDU"]}
    #${ApplicationStage:["Post Approval"]}
    Examples:
      | CollateralWB    | Collateral_builderDetails | Collateral_builderDetails_rowNum | ProductType   | ApplicationStage   | Key     | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | builder_details           | 23                               | <ProductType> | <ApplicationStage> | nocolla |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Post Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_builderDetails | Collateral_builderDetails_rowNum | ProductType   | ApplicationStage   | Key     | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | builder_details           | 23                               | <ProductType> | <ApplicationStage> | nocolla | <Category> | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-3184: User enters mandatory information for <CollateralSubType> and saves without checking duplicates
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row 739
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "builder_details" and row <Collateral_builderDetail_rowNum>
    And user adds builder property under construction details
    And user reads data from the excel file "<CollateralWB>" under sheet "other_details" and row 228
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "address_details" and row 277
    And user enters mandatory fields of address details of collateral subtype
    When user saves the data of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "builder_details" and row 0
    Then User should receive a proper failure message
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_builderDetail_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 16                              |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    | Collateral_builderDetail_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | 38                              |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_builderDetail_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 38                              |


  Scenario Outline: ACAUTOCAS-3185: User misses entering <MandatoryField> validations to fail for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage and saves
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_builderProperty>" and row <Collateral_builderProperty_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user adds mandatory builder property under construction details
    And user enters mandatory fields of other details of collateral subtype
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on dedupe check
    And user saves the data of collateral subtype
    Then user should receive a failure "<MandatoryField>" missing message
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | MandatoryField                                      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_builderProperty | Collateral_builderProperty_rowNum |
      | Project Name,  Age of Property                      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 106                               |
      | Floor Number, Property Classification               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 107                               |
      | Company Name, Plot Number, Mobile Phone             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 108                               |
      | State, Carpet Area                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 109                               |
      | Company Name, Mobile Phone, Built-up Area           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 110                               |
      | Project Name, Carpet Area                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 111                               |
      | Floor Number, Mobile Phone, Property Classification | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 112                               |
      | Company Name, Plot Number, Built-up Area            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 113                               |
      | Project Name, State, Age of Property                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 114                               |
      | Pincode, Property Ownership                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 115                               |
      | Company Name, Floor Number, Carpet Area             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 116                               |
      | Project Name, State, Property Type                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 117                               |
      | Company Name, Mobile Phone, Plot Number             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 118                               |
      | Project Name, Mobile Phone, Age of Property         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 119                               |
      | Company Name, Floor Number, State                   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 120                               |
      | Project Name, Property Ownership, Built-up Area     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 121                               |
      | Address Type, Pincode, Mobile Phone                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 122                               |
      | Company Name, Plot Number, Mobile Phone             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 123                               |
      | Project Name, Floor Number, State                   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 124                               |
      | Company Name, Property Type, Built-up Area          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 125                               |
      | Project Name, Mobile Phone, Property Ownership      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 126                               |
      | Company Name, Age of Property                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 127                               |
      | Project Name, Mobile Phone, Built-up Area           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 128                               |
      | Company Name, Carpet Area                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 129                               |
      | Project Name, Mobile Phone, Property Type           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 130                               |
      | Company Name, Pincode                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 131                               |
      | Project Name, Mobile Phone, Property Ownership      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 132                               |
      | Company Name,  Carpet Area                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 133                               |
      | Project Name, State, Built-up Area                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 134                               |
      | Company Name,  Age of Property                      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 135                               |
      | Project Name, Plot Number, Mobile Phone             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 136                               |
      | Company Name, Property Purpose                      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 137                               |
      | Project Name, Mobile Phone, Built-up Area           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 138                               |
      | Company Name, Age of Property                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 139                               |
      | Project Name, Mobile Phone                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 140                               |
      | Company Name, Plot Number, Address Line 2           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 141                               |
      | Project Name, Mobile Phone, Carpet Area             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 142                               |
      | Company Name,  Property Type                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 143                               |
      | Plot Number, Mobile Phone                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 144                               |
      | Floor Number, State                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 145                               |
      | Property Type, Built-up Arear                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 146                               |
      | Mobile Phone, Property Owner                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 147                               |
      | Age of Property                                     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 148                               |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | MandatoryField                                      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_builderProperty | Collateral_builderProperty_rowNum |
      | Project Name,  Age of Property                      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 106                               |
      | Floor Number, Property Classification               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 107                               |
      | Company Name, Plot Number, Mobile Phone             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 108                               |
      | State, Carpet Area                                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 109                               |
      | Company Name, Mobile Phone, Built-up Area           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 110                               |
      | Project Name, Carpet Area                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 111                               |
      | Floor Number, Mobile Phone, Property Classification | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 112                               |
      | Company Name, Plot Number, Built-up Area            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 113                               |
      | Project Name, State, Age of Property                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 114                               |
      | Pincode, Property Ownership                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 115                               |
      | Company Name, Floor Number, Carpet Area             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 116                               |
      | Project Name, State, Property Type                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 117                               |
      | Company Name, Mobile Phone, Plot Number             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 118                               |
      | Project Name, Mobile Phone, Age of Property         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 119                               |
      | Company Name, Floor Number, State                   | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 120                               |
      | Project Name, Property Ownership, Built-up Area     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 121                               |
      | Address Type, Pincode, Mobile Phone                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 122                               |
      | Company Name, Plot Number, Mobile Phone             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 123                               |
      | Project Name, Floor Number, State                   | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 124                               |
      | Company Name, Property Type, Built-up Area          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 125                               |
      | Project Name, Mobile Phone, Property Ownership      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 126                               |
      | Company Name, Age of Property                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 127                               |
      | Project Name, Mobile Phone, Built-up Area           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 128                               |
      | Company Name, Carpet Area                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 129                               |
      | Project Name, Mobile Phone, Property Type           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 130                               |
      | Company Name, Pincode                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 131                               |
      | Project Name, Mobile Phone, Property Ownership      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 132                               |
      | Company Name,  Carpet Area                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 133                               |
      | Project Name, State, Built-up Area                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 134                               |
      | Company Name,  Age of Property                      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 135                               |
      | Project Name, Plot Number, Mobile Phone             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 136                               |
      | Company Name, Property Purpose                      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 137                               |
      | Project Name, Mobile Phone, Built-up Area           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 138                               |
      | Company Name, Age of Property                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 139                               |
      | Project Name, Mobile Phone                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 140                               |
      | Company Name, Plot Number, Address Line 2           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 141                               |
      | Project Name, Mobile Phone, Carpet Area             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 142                               |
      | Company Name,  Property Type                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 143                               |
      | Plot Number, Mobile Phone                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 144                               |
      | Floor Number, State                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 145                               |
      | Property Type, Built-up Arear                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 146                               |
      | Mobile Phone, Property Owner                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 147                               |
      | Age of Property                                     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 148                               |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | MandatoryField                                      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_builderProperty | Collateral_builderProperty_rowNum |
      | Project Name,  Age of Property                      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 106                               |
      | Floor Number, Property Classification               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 107                               |
      | Company Name, Plot Number, Mobile Phone             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 108                               |
      | State, Carpet Area                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 109                               |
      | Company Name, Mobile Phone, Built-up Area           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 110                               |
      | Project Name, Carpet Area                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 111                               |
      | Floor Number, Mobile Phone, Property Classification | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 112                               |
      | Company Name, Plot Number, Built-up Area            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 113                               |
      | Project Name, State, Age of Property                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 114                               |
      | Pincode, Property Ownership                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 115                               |
      | Company Name, Floor Number, Carpet Area             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 116                               |
      | Project Name, State, Property Type                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 117                               |
      | Company Name, Mobile Phone, Plot Number             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 118                               |
      | Project Name, Mobile Phone, Age of Property         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 119                               |
      | Company Name, Floor Number, State                   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 120                               |
      | Project Name, Property Ownership, Built-up Area     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 121                               |
      | Address Type, Pincode, Mobile Phone                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 122                               |
      | Company Name, Plot Number, Mobile Phone             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 123                               |
      | Project Name, Floor Number, State                   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 124                               |
      | Company Name, Property Type, Built-up Area          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 125                               |
      | Project Name, Mobile Phone, Property Ownership      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 126                               |
      | Company Name, Age of Property                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 127                               |
      | Project Name, Mobile Phone, Built-up Area           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 128                               |
      | Company Name, Carpet Area                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 129                               |
      | Project Name, Mobile Phone, Property Type           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 130                               |
      | Company Name, Pincode                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 131                               |
      | Project Name, Mobile Phone, Property Ownership      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 132                               |
      | Company Name,  Carpet Area                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 133                               |
      | Project Name, State, Built-up Area                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 134                               |
      | Company Name,  Age of Property                      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 135                               |
      | Project Name, Plot Number, Mobile Phone             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 136                               |
      | Company Name, Property Purpose                      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 137                               |
      | Project Name, Mobile Phone, Built-up Area           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 138                               |
      | Company Name, Age of Property                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 139                               |
      | Project Name, Mobile Phone                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 140                               |
      | Company Name, Plot Number, Address Line 2           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 141                               |
      | Project Name, Mobile Phone, Carpet Area             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 142                               |
      | Company Name,  Property Type                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 143                               |
      | Plot Number, Mobile Phone                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 144                               |
      | Floor Number, State                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 145                               |
      | Property Type, Built-up Arear                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 146                               |
      | Mobile Phone, Property Owner                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 147                               |
      | Age of Property                                     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 148                               |


  Scenario Outline: ACAUTOCAS-3730: user moves a new Property Type collateral to the loan application in <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user attempts to select a collateral type
    Then application should allow only the collateral type which is linked to the product
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 14                        |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | default            | 14                        |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 14                        |


  Scenario Outline: ACAUTOCAS-3731:  user adds a collateral with sub type as <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then application should allow only the sub type which is linked to the product
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 14                        |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 14                        |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 14                        |


  Scenario Outline: ACAUTOCAS-17003: CollateralPage <SectionName> is mandatory for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row 739
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "builder_details" and row <Collateral_builderDetail_rowNum>
    And user adds builder property under construction details
    And user opens other details section of collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "address_details" and row 277
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    When user saves the data of collateral subtype
    Then "<SectionName>" should be mandatory entered in property collateral type
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | SectionName   | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_builderDetail_rowNum |
      | Other Details | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 16                              |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | SectionName   | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    | Collateral_builderDetail_rowNum |
      | Other Details | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | 38                              |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | SectionName   | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_builderDetail_rowNum |
      | Other Details | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 38                              |


  Scenario Outline: ACAUTOCAS-3732: CollateralPage <SectionName> is mandatory for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row 739
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "builder_details" and row <Collateral_builderDetail_rowNum>
    And user adds builder property under construction details
    And user reads data from the excel file "<CollateralWB>" under sheet "other_details" and row 228
    And user enters mandatory fields of other details of collateral subtype
    And user opens property address details section
    When user checks for duplicate collateral
    Then "<SectionName>" should be mandatory entered in property collateral type
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | SectionName      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_builderDetail_rowNum |
      | Property Address | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 16                              |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | SectionName      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    | Collateral_builderDetail_rowNum |
      | Property Address | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | 38                              |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | SectionName      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_builderDetail_rowNum |
      | Property Address | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 38                              |


  Scenario Outline: ACAUTOCAS-3733: CollateralPage <SectionName> in Property details for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row 739
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens Builder Details section
    And user reads data from the excel file "<CollateralWB>" under sheet "other_details" and row 228
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "address_details" and row 277
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    When user saves the data of collateral subtype
    Then "<SectionName>" should be mandatory entered in property collateral type
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | SectionName     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    |
      | Builder Details | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | SectionName     | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    |
      | Builder Details | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | SectionName     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    |
      | Builder Details | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx |


  Scenario Outline: ACAUTOCAS-3186: CollateralPage Other Details Built Up area validation in <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row 739
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_builderProperty>" and row <Collateral_builderDetail_rowNum>
    And user adds builder property under construction details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    When user enters area fields of other details
    Then user gets a proper notification
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | Collateral_otherDetails | Collateral_builderProperty | Collateral_builderDetail_rowNum | Collateral_otherDetails_rowNum | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | other_details           | builder_details            | 16                              | 2                              | collateral.xlsx |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | Collateral_otherDetails | Collateral_builderProperty | Collateral_builderDetail_rowNum | Collateral_otherDetails_rowNum | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | other_details           | builder_details            | 38                              | 2                              | collateral.xlsx |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | Collateral_otherDetails | Collateral_builderProperty | Collateral_builderDetail_rowNum | Collateral_otherDetails_rowNum | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | other_details           | builder_details            | 38                              | 2                              | collateral.xlsx |


#FeatureID-ACAUTOCAS-226,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-17004: CollateralPage Other Details Built Up area unit validation in <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row 739
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "builder_details" and row <Collateral_builderDetail_rowNum>
    And user adds builder property under construction details
    And user reads data from the excel file "<CollateralWB>" under sheet "address_details" and row 277
    And user enters mandatory fields of address details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "other_details" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    When user saves the data of collateral subtype
    Then user gets a proper notification
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | Collateral_builderDetail_rowNum | Collateral_otherDetails_rowNum | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | 16                              | 3                              | collateral.xlsx |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | Collateral_builderDetail_rowNum | Collateral_otherDetails_rowNum | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | 38                              | 3                              | collateral.xlsx |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | Collateral_builderDetail_rowNum | Collateral_otherDetails_rowNum | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | 38                              | 3                              | collateral.xlsx |


  Scenario Outline: ACAUTOCAS-3187: CollateralPage Property and Registration Details validation <Throws_notThrows> in <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row 739
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyRegistrationDetails>" and row <Collateral_propertyRegistrationDetails_rowNum>
    And user enters all mandatory information of property and registration details
    Then user gets a proper notification
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_propertyRegistrationDetails | Collateral_propertyRegistrationDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | property_registration_details          | 0                                             | does not throw any error           |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | property_registration_details          | 1                                             | does not throw any error           |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | property_registration_details          | 2                                             | throws an error with error message |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | property_registration_details          | 3                                             | does not throw any error           |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | property_registration_details          | 4                                             | does not throw any error           |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_propertyRegistrationDetails | Collateral_propertyRegistrationDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | property_registration_details          | 0                                             | does not throw any error           |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | property_registration_details          | 1                                             | does not throw any error           |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | property_registration_details          | 2                                             | throws an error with error message |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | property_registration_details          | 3                                             | does not throw any error           |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | property_registration_details          | 4                                             | does not throw any error           |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_propertyRegistrationDetails | Collateral_propertyRegistrationDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | property_registration_details          | 0                                             | does not throw any error           |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | property_registration_details          | 1                                             | does not throw any error           |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | property_registration_details          | 2                                             | throws an error with error message |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | property_registration_details          | 3                                             | does not throw any error           |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | property_registration_details          | 4                                             | does not throw any error           |

  Scenario Outline: ACAUTOCAS-3188: CollateralPage Property and Registration Details validation 2 in <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_builderProperty>" and row <Collateral_builderProperty_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user adds builder property under construction details
    And user adds property and registration details to collateral data from
      | collateral.xlsx | property_registration_details | 16 |
      | collateral.xlsx | property_registration_details | 17 |
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyRegistrationDetails>" and row <Collateral_property_registration_row>
    And user enters all mandatory information on Property and Registration Details section
    And user saves the agreement details
    Then user gets a proper notification
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | Collateral_property_registration_row | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_builderProperty | Collateral_builderProperty_rowNum | Collateral_propertyRegistrationDetails |
      | 16                                   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | builder_details            | 0                                 | property_registration_details          |
      | 18                                   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | builder_details            | 2                                 | property_registration_details          |
      | 17                                   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | builder_details            | 0                                 | property_registration_details          |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Collateral_property_registration_row | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_builderProperty | Collateral_builderProperty_rowNum | Collateral_propertyRegistrationDetails |
      | 16                                   | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | builder_details            | 39                                 | property_registration_details          |
      | 18                                   | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | builder_details            | 39                                 | property_registration_details          |
      | 17                                   | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | builder_details            | 39                                 | property_registration_details          |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Collateral_property_registration_row | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_builderProperty | Collateral_builderProperty_rowNum | Collateral_propertyRegistrationDetails |
      | 16                                   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | builder_details            | 39                                | property_registration_details          |
      | 18                                   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | builder_details            | 39                                | property_registration_details          |
      | 17                                   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | builder_details            | 39                                | property_registration_details          |


  Scenario Outline: ACAUTOCAS-4448: User uses <Category> address as property address in <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_builderProperty>" and row <Collateral_builderProperty_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user adds builder property under construction details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user select "<Key>" address details of collateral subtype
    Then user should get an option to use "<Key>" address as property address
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | Key         | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_builderProperty | Collateral_builderProperty_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum |
      | <ProductType> | <ApplicationStage> | Primary     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | builder_details            | 0                                 | other_details           | 0                              | property_address          | 0                                |
      | <ProductType> | <ApplicationStage> | CoApplicant |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | builder_details            | 2                                 | other_details           | 0                              | property_address          | 0                                |
      | <ProductType> | <ApplicationStage> | Guarantor   |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | builder_details            | 2                                 | other_details           | 0                              | property_address          | 0                                |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key         | Category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_builderProperty | Collateral_builderProperty_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum |
      | <ProductType> | <ApplicationStage> | Primary     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | builder_details            | 39                                | other_details           | 0                              | property_address          | 0                                |
      | <ProductType> | <ApplicationStage> | CoApplicant | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | builder_details            | 39                                | other_details           | 0                              | property_address          | 0                                |
      | <ProductType> | <ApplicationStage> | Guarantor   | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | builder_details            | 39                                | other_details           | 0                              | property_address          | 0                                |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key         | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_builderProperty | Collateral_builderProperty_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum |
      | <ProductType> | <ApplicationStage> | Primary     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | builder_details            | 39                                | other_details           | 0                              | property_address          | 0                                |
      | <ProductType> | <ApplicationStage> | CoApplicant |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | builder_details            | 39                                | other_details           | 0                              | property_address          | 0                                |
      | <ProductType> | <ApplicationStage> | Guarantor   |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | builder_details            | 39                                | other_details           | 0                              | property_address          | 0                                |


  Scenario Outline: ACAUTOCAS-3190: User executes dedupe for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage with <Dataset>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row 739
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "builder_details" and row <Collateral_builderDetail_rowNum>
    And user adds builder property under construction details
    And user reads data from the excel file "<CollateralWB>" under sheet "address_details" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks for duplicate collateral
    When user saves the data of collateral subtype
    Then user gets an error message in collateral page
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | Dataset | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_builderDetail_rowNum | Collateral_addressDetails_rowNum |
      | 1       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 16                              | 40                               |
      | 2       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 16                              | 41                               |
      | 3       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 16                              | 42                               |
      | 4       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 16                              | 43                               |
      | 5       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 16                              | 44                               |
      | 6       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 16                              | 45                               |
      | 7       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 16                              | 46                               |
      | 8       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 16                              | 47                               |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Dataset | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    | Collateral_builderDetail_rowNum | Collateral_addressDetails_rowNum |
      | 1       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | 38                              | 40                               |
      | 2       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | 38                              | 41                               |
      | 3       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | 38                              | 42                               |
      | 4       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | 38                              | 43                               |
      | 5       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | 38                              | 44                               |
      | 6       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | 38                              | 45                               |
      | 7       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | 38                              | 46                               |
      | 8       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | 38                              | 47                               |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Dataset | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_builderDetail_rowNum | Collateral_addressDetails_rowNum |
      | 1       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 38                              | 277                              |
      | 2       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 38                              | 278                              |
      | 3       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 38                              | 279                              |
      | 4       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 38                              | 280                              |
      | 5       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 38                              | 277                              |
      | 6       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 38                              | 278                              |
      | 7       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 38                              | 279                              |
      | 8       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 38                              | 280                              |


  Scenario Outline: ACAUTOCAS-3191: User executes dedupe for <CollateralSubType> of <ProductType> application at <ApplicationStage> to find existing property with <Dataset>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_builderProperty>" and row <Collateral_builderProperty_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user adds builder property under construction details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user clicks on plus icon to add new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_builderProperty>" and row <Collateral_builderProperty_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user adds builder property under construction details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    When user checks for duplicate collateral
    Then user should get a message in collateral dedupe check
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_builderProperty | Collateral_builderProperty_rowNum | Dataset |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 58                               | other_details           | 0                              | builder_details            | 22                                | 1       |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 59                               | other_details           | 0                              | builder_details            | 22                                | 2       |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 60                               | other_details           | 0                              | builder_details            | 22                                | 3       |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 61                               | other_details           | 0                              | builder_details            | 22                                | 4       |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 62                               | other_details           | 0                              | builder_details            | 22                                | 5       |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 63                               | other_details           | 0                              | builder_details            | 22                                | 6       |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_builderProperty | Collateral_builderProperty_rowNum | Dataset |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 58                               | other_details           | 0                              | builder_details            | 39                                | 1       |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 59                               | other_details           | 0                              | builder_details            | 39                                | 2       |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 60                               | other_details           | 0                              | builder_details            | 39                                | 3       |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 61                               | other_details           | 0                              | builder_details            | 39                                | 4       |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 62                               | other_details           | 0                              | builder_details            | 39                                | 5       |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 63                               | other_details           | 0                              | builder_details            | 39                                | 6       |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_builderProperty | Collateral_builderProperty_rowNum | Dataset |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 58                               | other_details           | 0                              | builder_details            | 39                                | 1       |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 59                               | other_details           | 0                              | builder_details            | 39                                | 2       |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 60                               | other_details           | 0                              | builder_details            | 39                                | 3       |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 61                               | other_details           | 0                              | builder_details            | 39                                | 4       |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 62                               | other_details           | 0                              | builder_details            | 39                                | 5       |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 63                               | other_details           | 0                              | builder_details            | 39                                | 6       |


  Scenario Outline: ACAUTOCAS-3192: User checks for duplicate collateral and views the duplicates in <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "builder_details" and row <Collateral_builderProperty_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user adds builder property under construction details
    And user reads data from the excel file "<CollateralWB>" under sheet "other_details" and row 0
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "address_details" and row 0
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "builder_details" and row <Collateral_builderProperty_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user adds builder property under construction details
    And user reads data from the excel file "<CollateralWB>" under sheet "other_details" and row 0
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks for duplicate collateral
    Then User should be able to view the duplicates of collateral subtype
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_builderProperty_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 54                               | 22                                |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 55                               | 22                                |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 56                               | 22                                |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 57                               | 22                                |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 58                               | 22                                |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 59                               | 22                                |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_builderProperty_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 54                               | 39                                |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 55                               | 39                                |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 56                               | 39                                |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 57                               | 39                                |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 58                               | 39                                |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 59                               | 39                                |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_builderProperty_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 54                               | 39                                |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 55                               | 39                                |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 56                               | 39                                |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 57                               | 39                                |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 58                               | 39                                |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 59                               | 39                                |

  Scenario Outline: ACAUTOCAS-3193:  User attaches a duplicate <CollateralSubType> collateral attached to same application of <ProductType> application at <ApplicationStage> stage with <Dataset>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "builder_details" and row <Collateral_builderProperty_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user adds mandatory builder property details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user fills mandatory fields of other details of property type collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user fills address details for property type
    And user reads data from the excel file "<CollateralWB>" under sheet "builder_details" and row <Collateral_builderProperty_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user clicks on plus icon to add new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "builder_details" and row <Collateral_builderProperty_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user adds mandatory builder property details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user fills mandatory fields of other details of property type collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user fills address details for property type
    And user checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "<CollateralSubType>" collateral from dedupe result which is already attached to the application
    And user saves selected dedupe collateral
    Then user gets a notification message
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_builderProperty_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 243                              | 16                                | other_details           | 123                            |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_builderProperty_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 243                              | 16                                | other_details           | 123                            |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_builderProperty_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 243                              | 40                                | other_details           | 123                            |

  @NotImplementable
#     require different applications of same header
  Scenario Outline: ACAUTOCAS-3194:  User attaches a duplicate Builder Property Under Construction collateral attached to a different application
    Given PL Application is at DDE Stage
    And user adds new collateral to the application
    And Builder Property Under Construction with below property address is not attached to the application:
      | Country | Plot Number | Address Line 2 | Address Line 3 | PinCode | Region     | State   | City      | District  | Taluka     | Village      |
      | India   | 112         | Ashoka Enclave | Main           | 121003  | South-East | Haryana | Faridabad | Faridabad | Amar Nagar | Sarai Khwaja |
    When User selects Collateral Type as "Property"
    And Collateral Sub Types as "Builder Property Under Construction"
    And goes to "Property Address" section
    And user enters all mandatory information from "<PropertyBuilderPropertyUnderConstructionDataFile>" under "<PropertyBuilderPropertyUnderConstructionDataSheet>" row <PropertyBuilderPropertyUnderConstructionRowNumber>
    And user enters unique "<Country>", "<Plot Number>", "<Address Line 2>", "<Address Line 3>", "<PinCode>", "<Region>", "<State>", "<City>", "<District>", "<Taluka>", "<Village>"
    And checks for duplicate collateral
    And user gets a message saying RowCount duplicates found
    And user views the duplicate "Builder Property Under Construction"
    And user selects collateral not attached to the same application
    And saves the data
    Then user is able to save data successfully with existing Global Collateral No
    Examples:
      | PropertyBuilderPropertyUnderConstructionDataFile | PropertyBuilderPropertyUnderConstructionDataSheet | PropertyBuilderPropertyUnderConstructionRowNumber | Country | Plot Number | Address Line 2      | Address Line 3      | PinCode | Region     | State   | City      | District  | Taluka     | Village      |
      | PropertyBuilderPropertyUnderConstruction.xlsx    | PropertyBuilderPropertyUnderConstruction          | 8                                                 | India   | 112         | Ashoka Enclave      | Main                | 121003  | South-East | Haryana | Faridabad | Faridabad | Amar Nagar | Sarai Khwaja |
      | PropertyBuilderPropertyUnderConstruction.xlsx    | PropertyBuilderPropertyUnderConstruction          | 9                                                 | India   | 112         | Ashoka Enclave Main |                     | 121003  | South-East | Haryana | Faridabad | Faridabad | Amar Nagar | Sarai Khwaja |
      | PropertyBuilderPropertyUnderConstruction.xlsx    | PropertyBuilderPropertyUnderConstruction          | 10                                                | India   | 112         |                     | Ashoka Enclave Main | 121003  | South-East | Haryana | Faridabad | Faridabad | Amar Nagar | Sarai Khwaja |
      | PropertyBuilderPropertyUnderConstruction.xlsx    | PropertyBuilderPropertyUnderConstruction          | 11                                                | India   | 112         | Ashoka Enclave      | Main                | 121003  | South-East | Haryana | Faridabad | Faridabad |            | Sarai Khwaja |
      | PropertyBuilderPropertyUnderConstruction.xlsx    | PropertyBuilderPropertyUnderConstruction          | 12                                                | India   | 112         | Ashoka Enclave      | Main                | 121003  | South-East | Haryana | Faridabad | Faridabad | Amar Nagar |              |
      | PropertyBuilderPropertyUnderConstruction.xlsx    | PropertyBuilderPropertyUnderConstruction          | 13                                                | India   | 112         | Ashoka Enclave      | Main                | 121003  | South-East | Haryana | Faridabad | Faridabad |            |              |

  @LoggedBug
  Scenario Outline: ACAUTOCAS-3195: User <FieldModified> property address after running dedupe for <CollateralSubType> of <ProductType> application at <ApplicationStage> and attempts to save with <Dataset>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_builderProperty>" and row <Collateral_builderProperty_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user adds builder property under construction details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user modifies "<FieldModified>" of address details of collateral subtype
    And user saves the collateral data
    Then user should get a proper message
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | FieldModified  | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_builderProperty | Collateral_builderProperty_rowNum | Dataset |
      | Plot Number    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 58                               | other_details           | 0                              | builder_details            | 22                                | 1       |
      | Address Line 2 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 59                               | other_details           | 0                              | builder_details            | 22                                | 2       |
      | Address Line 3 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 60                               | other_details           | 0                              | builder_details            | 22                                | 3       |
      | Taluka         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 61                               | other_details           | 0                              | builder_details            | 22                                | 4       |
      | Village        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 62                               | other_details           | 0                              | builder_details            | 22                                | 5       |
      | PinCode        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 63                               | other_details           | 0                              | builder_details            | 22                                | 6       |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldModified  | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_builderProperty | Collateral_builderProperty_rowNum | Dataset |
      | Plot Number    | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 58                               | other_details           | 0                              | builder_details            | 22                                | 1       |
      | Address Line 2 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 59                               | other_details           | 0                              | builder_details            | 22                                | 2       |
      | Address Line 3 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 60                               | other_details           | 0                              | builder_details            | 22                                | 3       |
      | Taluka         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 61                               | other_details           | 0                              | builder_details            | 22                                | 4       |
      | Village        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 62                               | other_details           | 0                              | builder_details            | 22                                | 5       |
      | PinCode        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 63                               | other_details           | 0                              | builder_details            | 22                                | 6       |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldModified  | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_builderProperty | Collateral_builderProperty_rowNum | Dataset |
      | Plot Number    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 58                               | other_details           | 0                              | builder_details            | 22                                | 1       |
      | Address Line 2 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 59                               | other_details           | 0                              | builder_details            | 22                                | 2       |
      | Address Line 3 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 60                               | other_details           | 0                              | builder_details            | 22                                | 3       |
      | Taluka         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 61                               | other_details           | 0                              | builder_details            | 22                                | 4       |
      | Village        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 62                               | other_details           | 0                              | builder_details            | 22                                | 5       |
      | PinCode        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 63                               | other_details           | 0                              | builder_details            | 22                                | 6       |


  Scenario Outline: ACAUTOCAS-3196: User checks for duplicate collateral and ignores them to create new for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row 739
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "builder_details" and row <Collateral_builderDetail_rowNum>
    And user adds builder property under construction details
    And user reads data from the excel file "<CollateralWB>" under sheet "other_details" and row 228
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "address_details" and row 277
    And user enters mandatory fields of address details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row 739
    And user checks the duplicates on collateral dedupe check
    When user saves the collateral data
    Then collateral should saved successfully
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_builderDetail_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 16                              |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    | Collateral_builderDetail_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | 38                              |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_builderDetail_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 38                              |


  Scenario Outline: ACAUTOCAS-3197:  CollateralPage Ownership Details validation for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage with <Collateral_ownershipDetails_rowNum>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row 739
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "builder_details" and row <Collateral_builderDetail_rowNum>
    And user adds builder property under construction details
    And user reads data from the excel file "<CollateralWB>" under sheet "other_details" and row 228
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "address_details" and row 277
    And user enters mandatory fields of address details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "ownership_details" and row <Collateral_ownershipDetails_rowNum>
    And user enters all mandatory fields of Ownership section
    And user checks the duplicates on collateral dedupe check
    And user saves the data of collateral subtype
    Then user should receive message
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_builderDetail_rowNum | Collateral_ownershipDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 16                              | 17                                 |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 16                              | 18                                 |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 16                              | 19                                 |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 16                              | 20                                 |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 16                              | 21                                 |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 16                              | 22                                 |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 16                              | 23                                 |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 16                              | 24                                 |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    | Collateral_builderDetail_rowNum | Collateral_ownershipDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | 38                              | 17                                 |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | 38                              | 18                                 |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | 38                              | 19                                 |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | 38                              | 20                                 |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | 38                              | 21                                 |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | 38                              | 22                                 |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | 38                              | 23                                 |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | 38                              | 24                                 |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_builderDetail_rowNum | Collateral_ownershipDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 38                              | 17                                 |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 38                              | 18                                 |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 38                              | 19                                 |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 38                              | 20                                 |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 38                              | 21                                 |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 38                              | 22                                 |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 38                              | 23                                 |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 38                              | 24                                 |


  #FeatureID-ACAUTOCAS-226,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-17005:  CollateralPage Ownership Details validation 1 for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row 739
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "builder_details" and row <Collateral_builderDetail_rowNum>
    And user adds builder property under construction details
    And user reads data from the excel file "<CollateralWB>" under sheet "other_details" and row 228
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "address_details" and row 277
    And user enters mandatory fields of address details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "ownership_details" and row <Collateral_ownershipDetails_rowNum>
    When user enters all mandatory fields of Ownership section
    Then user should receive message
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_ownershipDetails_rowNum | Collateral_builderDetail_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 25                                 | 16                              |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    | Collateral_ownershipDetails_rowNum | Collateral_builderDetail_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | 25                                 | 38                              |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_ownershipDetails_rowNum | Collateral_builderDetail_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 25                                 | 38                              |


  Scenario Outline: ACAUTOCAS-3734:  CollateralPage Ownership Details validation 2 for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row 739
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "builder_details" and row <Collateral_builderDetail_rowNum>
    And user adds builder property under construction details
    And user reads data from the excel file "<CollateralWB>" under sheet "other_details" and row 228
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "address_details" and row 277
    And user enters mandatory fields of address details of collateral subtype
    And user adds ownerships to the collateral with data from
      | CollateralWB    | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | collateral.xlsx | ownership_details           | 9                                  |
      | collateral.xlsx | ownership_details           | 10                                 |
    And user checks the duplicates on collateral dedupe check
    And user saves the data of collateral subtype
    When user reads data from the excel file "<CollateralWB>" under sheet "ownership_details" and row <Collateral_ownershipDetails_rowNum>
    Then user should receive message
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_ownershipDetails_rowNum | Collateral_builderDetail_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 9                                  | 16                              |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    | Collateral_ownershipDetails_rowNum | Collateral_builderDetail_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | 9                                  | 38                              |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_ownershipDetails_rowNum | Collateral_builderDetail_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 9                                  | 38                              |


  Scenario Outline: ACAUTOCAS-3735:  CollateralPage Ownership Details validation 3 for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row 739
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "builder_details" and row <Collateral_builderDetail_rowNum>
    And user adds builder property under construction details
    And user reads data from the excel file "<CollateralWB>" under sheet "other_details" and row 228
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "address_details" and row 277
    And user enters mandatory fields of address details of collateral subtype
    And user adds ownerships to the collateral with data from
      | CollateralWB    | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | collateral.xlsx | ownership_details           | 26                                 |
      | collateral.xlsx | ownership_details           | 27                                 |
    And user checks the duplicates on collateral dedupe check
    And user saves the data of collateral subtype
    When user reads data from the excel file "<CollateralWB>" under sheet "ownership_details" and row <Collateral_ownershipDetails_rowNum>
    Then user should receive message
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_ownershipDetails_rowNum | Collateral_builderDetail_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 27                                 | 16                              |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    | Collateral_ownershipDetails_rowNum | Collateral_builderDetail_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | 27                                 | 38                              |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_ownershipDetails_rowNum | Collateral_builderDetail_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 27                                 | 38                              |


  Scenario Outline: ACAUTOCAS-3736:  CollateralPage Ownership Details validation 4 for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row 739
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "builder_details" and row <Collateral_builderDetail_rowNum>
    And user adds builder property under construction details
    And user reads data from the excel file "<CollateralWB>" under sheet "other_details" and row 228
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "address_details" and row 277
    And user enters mandatory fields of address details of collateral subtype
    And user adds ownerships to the collateral with data from
      | CollateralWB    | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | collateral.xlsx | ownership_details           | 11                                 |
      | collateral.xlsx | ownership_details           | 12                                 |
    And user checks the duplicates on collateral dedupe check
    And user saves the data of collateral subtype
    When user reads data from the excel file "<CollateralWB>" under sheet "ownership_details" and row <Collateral_ownershipDetails_rowNum>
    Then user should receive message
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_ownershipDetails_rowNum | Collateral_builderDetail_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 12                                 | 16                              |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    | Collateral_ownershipDetails_rowNum | Collateral_builderDetail_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | 12                                 | 38                              |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_ownershipDetails_rowNum | Collateral_builderDetail_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 12                                 | 38                              |


  Scenario Outline: ACAUTOCAS-3737:  CollateralPage Ownership Details validation 5 for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row 739
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "builder_details" and row <Collateral_builderDetail_rowNum>
    And user adds builder property under construction details
    And user reads data from the excel file "<CollateralWB>" under sheet "other_details" and row 228
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "address_details" and row 277
    And user enters mandatory fields of address details of collateral subtype
    And user adds ownerships to the collateral with data from
      | CollateralWB    | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | collateral.xlsx | ownership_details           | 28                                 |
      | collateral.xlsx | ownership_details           | 29                                 |
      | collateral.xlsx | ownership_details           | 30                                 |
      | collateral.xlsx | ownership_details           | 31                                 |
    And user checks the duplicates on collateral dedupe check
    When user saves the data of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "ownership_details" and row <Collateral_ownershipDetails_rowNum>
    Then user should receive message
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_ownershipDetails_rowNum | Collateral_builderDetail_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 31                                 | 16                              |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_ownershipDetails_rowNum | Collateral_builderDetail_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 31                                 | 38                              |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_ownershipDetails_rowNum | Collateral_builderDetail_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | 31                                 | 38                              |


  Scenario Outline: ACAUTOCAS-3198: User is able to add a new collateral as for <CollateralSubType> of <ProductType> application at <ApplicationStage> with <Result> message for <Collateral_propertyDetails_rowNum>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user adds builder property under construction details
    And user enters mandatory fields of other details of collateral subtype
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data with "<Result>"
    Then User should receive a proper "<Result>" message
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | Result  | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Success | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | Success | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 1                                 |
      | Success | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 2                                 |
      | Success | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 3                                 |
      | Success | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 4                                 |
      | Success | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 5                                 |
      | Success | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 6                                 |
      | Success | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 7                                 |
      | Success | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 8                                 |
      | Success | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 9                                 |
      | Success | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 10                                |
      | Success | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 11                                |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 91                                |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 92                                |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 93                                |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 94                                |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 95                                |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 96                                |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 97                                |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 98                                |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 99                                |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 100                               |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 101                               |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Result  | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Success | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 202                               |
      | Success | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 203                               |
      | Success | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 204                               |
      | Success | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 205                               |
      | Success | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 206                               |
      | Success | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 207                               |
      | Success | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 208                               |
      | Success | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 209                               |
      | Success | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 210                               |
      | Success | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 211                               |
      | Success | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 212                               |
      | Success | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 213                               |
      | Failure | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 214                               |
      | Failure | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 215                               |
      | Failure | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 216                               |
      | Failure | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 217                               |
      | Failure | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 218                               |
      | Failure | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 219                               |
      | Failure | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 220                               |
      | Failure | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 221                               |
      | Failure | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 222                               |
      | Failure | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 223                               |
      | Failure | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 224                               |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Result  | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Success | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 202                               |
      | Success | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 203                               |
      | Success | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 204                               |
      | Success | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 205                               |
      | Success | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 206                               |
      | Success | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 207                               |
      | Success | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 208                               |
      | Success | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 209                               |
      | Success | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 210                               |
      | Success | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 211                               |
      | Success | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 212                               |
      | Success | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 213                               |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 214                               |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 215                               |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 216                               |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 217                               |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 218                               |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 219                               |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 220                               |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 221                               |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 222                               |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 223                               |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 224                               |


  Scenario Outline: ACAUTOCAS-3199: User is able to add a new collateral for <CollateralSubType> of <ProductType> application at <ApplicationStage> with new Global Collateral Number
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user adds builder property under construction details
    And user enters mandatory fields of other details of collateral subtype
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    Then user check the global collateral number for newly added collateral to application
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 1                                 |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 2                                 |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 3                                 |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 4                                 |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 5                                 |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 6                                 |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 7                                 |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 8                                 |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 9                                 |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 10                                |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 11                                |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 202                               |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 203                               |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 204                               |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 205                               |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 206                               |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 207                               |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 208                               |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 209                               |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 210                               |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 211                               |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 212                               |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 213                               |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 202                               |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 203                               |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 204                               |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 205                               |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 206                               |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 207                               |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 208                               |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 209                               |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 210                               |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 211                               |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 212                               |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 213                               |


  Scenario Outline: ACAUTOCAS-3200: Capture <CollateralSubType> against an application with create another after this one for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user adds builder property under construction details
    And user enters mandatory fields of other details of collateral subtype
    And user enters mandatory fields of address details of collateral subtype
    And user selects create another after this one option
    And user checks the duplicates on collateral dedupe check
    And user saves the data of collateral subtype
    Then CollateralPage remains available to create another collateral
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | property_details           | 0                                 |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | property_details           | 196                               |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | property_details           | 196                               |

  @LoggedBug
  Scenario Outline: ACAUTOCAS-3201:  CollateralPage Property Address Taluka and Village Validation 1 for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage with <Collateral_addressDetails_rowNum>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user adds builder property under construction details
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "property_details" and row 156
    And user enters address details of property collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user adds builder property under construction details
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters address details of property collateral
    Then fields Taluka and Village should accept them as if they are defined in masters
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 | property_address          | 135                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 1                                 | property_address          | 136                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 2                                 | property_address          | 137                              |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 | property_address          | 135                              |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 1                                 | property_address          | 136                              |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 2                                 | property_address          | 137                              |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 0                                 | property_address          | 135                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 1                                 | property_address          | 136                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 2                                 | property_address          | 137                              |


  Scenario Outline: ACAUTOCAS-3202:  CollateralPage Property Address Taluka and Village Validation 2 for <CollateralSubType> of <ProductType> application at <ApplicationStage>  stage with <Collateral_addressDetails_rowNum>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row 739
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "builder_details" and row <Collateral_builderDetail_rowNum>
    And user adds builder property under construction details
    And user reads data from the excel file "<CollateralWB>" under sheet "other_details" and row 228
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    When user enters address details of property collateral
    Then fields Taluka and Village should accept them as if they are not defined in masters
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_builderDetail_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | property_address          | 149                              | 16                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | property_address          | 150                              | 16                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | property_address          | 151                              | 16                              |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_builderDetail_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | property_address          | 149                              | 38                              |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | property_address          | 150                              | 38                              |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | property_address          | 151                              | 38                              |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_builderDetail_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | property_address          | 149                              | 38                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | property_address          | 150                              | 38                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | property_address          | 151                              | 38                              |


  ###Squash:137607
  ###Story:CAS-23473
  #FeatureID-ACAUTOCAS-226,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-17006: user adds multiple collateral to <ProductType> application at <ApplicationStage> stage with sub type for <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    When user adds property type collateral of "<CollateralSubType>" subtype
      | collateral.xlsx | property_details | 0  |
      | collateral.xlsx | property_details | 1  |
      | collateral.xlsx | property_details | 2  |
      | collateral.xlsx | property_details | 3  |
      | collateral.xlsx | property_details | 4  |
      | collateral.xlsx | property_details | 5  |
      | collateral.xlsx | property_details | 6  |
      | collateral.xlsx | property_details | 7  |
      | collateral.xlsx | property_details | 8  |
      | collateral.xlsx | property_details | 9  |
      | collateral.xlsx | property_details | 10 |
    Then user check the all added collateral to application
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    #${ApplicationStage:["DDE","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  ###Squash:137607
  ###Story:CAS-23473
  #FeatureID-ACAUTOCAS-226,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-17007: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage with sub type for <CollateralSubType> with <Collateral_propertyDetails_rowNum>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user adds builder property under construction details
    And user enters mandatory fields of other details of collateral subtype
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user views the already added collateral
    Then user should be able to reconcile the "<CollateralSubType>" data successfully
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 0                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 1                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 2                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 3                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 4                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 5                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 6                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 7                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 8                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 9                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 10                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 11                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 202                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 203                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 204                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 205                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 206                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 207                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 208                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 209                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 210                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 211                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 212                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 213                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 202                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 203                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 204                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 205                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 206                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 207                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 208                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 209                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 210                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 211                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 212                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 213                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  ###Squash:137607
  ###Story:CAS-23473
  #FeatureID-ACAUTOCAS-226,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-17008: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage with sub type for <CollateralSubType> at Enquiry with <Collateral_propertyDetails_rowNum>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user adds builder property under construction details
    And user enters mandatory fields of other details of collateral subtype
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens application from enquiry menu
    And user opens Collateral Page for viewing attached collaterals at "<ApplicationStage>"
    When user views the recently added collateral
    Then user should be able to reconcile the "<CollateralSubType>" data successfully
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 0                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 1                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 2                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 3                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 4                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 5                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 6                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 7                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 8                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 9                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 10                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 11                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 202                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 203                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 204                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 205                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 206                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 207                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 208                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 209                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 210                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 211                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 212                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 213                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 202                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 203                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 204                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 205                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 206                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 207                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 208                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 209                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 210                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 211                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 212                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 213                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
