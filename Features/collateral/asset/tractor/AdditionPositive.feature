@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ReviewedByDEV

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
#${CollateralSubType:["Tractor"]}
#${ApplicantType:["indiv","nonindiv"]}

Feature: Addition of Tractor Positive Cases

#  Pre-Requisites---
#  In this feature we will attach an Asset Type Collateral-Tractor to the loan application.
#  Ensure the Product Type Collateral Mapping is available in Collateral_Setup.xlsx using the query Collateral_Setup.sql
#  Ensure the Product Collateral Mapping is available in Prod_Collateral_Setup.xlsx using the query Prod_Collateral_Setup.sql

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @Release
  @Part-2
  Scenario Outline: ACAUTOCAS-2162: user moves a new Asset Type collateral to the loan application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user adds collateral type
    Then User should be able to attach it only if it is linked to the Product against which the application is entered
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | applicantType   | ApplicationStage   | category | key |
      | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | applicantType   | ApplicationStage   | category   | key |
      | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | applicantType   | ApplicationStage   | category | key |
      | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  @Release
  @Part-2
  Scenario Outline: ACAUTOCAS-2163: user adds a collateral with sub type as <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type
    Then user should be able to capture the sub collateral
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | applicantType   | ApplicationStage   | category | key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | applicantType   | ApplicationStage   | category   | key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | applicantType   | ApplicationStage   | category | key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

#3 field combination
  @Release
  @Part-2
  Scenario Outline: ACAUTOCAS-4326: User checks for duplicate collateral for Chassis Engine and Registration number in <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens Tractor Details section
    And enters unique Chassis number
    And enters unique Engine number
    And enters unique Registration number for RC Authentication
    When checks for duplicate collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    Then user should receive a proper popup message
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category | key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category   | key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category | key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

  @Release
  @Part-2
  @Sanity
  Scenario Outline: ACAUTOCAS-1234: User checks for duplicate collateral for unique <FirstField> and <SecondField> and non-unique <ThirdField> in <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user fills mandatory fields of Tractor Details section
    And user enters registration number for rc authentication
    And user closes duplicate check result box after checking the duplicates
    And user saves the Collateral Details
    And user clicks on plus icon to add new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens Tractor Details section
    When user enters unique "<FirstField>"
    And user enters unique "<SecondField>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user enters non unique "<ThirdField>"
    And checks for duplicate collateral
    Then user should receive a message saying some duplicates found
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FirstField    | SecondField                               | ThirdField                                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category | key | CollateralSubType   |
      | Engine Number | Chasis Number                             | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Chasis Number | Registration Number For RC Authentication | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Engine Number | Registration Number For RC Authentication | Chasis Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | FirstField    | SecondField                               | ThirdField                                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category   | key | CollateralSubType   |
      | Engine Number | Chasis Number                             | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Chasis Number | Registration Number For RC Authentication | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Engine Number | Registration Number For RC Authentication | Chasis Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FirstField    | SecondField                               | ThirdField                                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category | key | CollateralSubType   |
      | Engine Number | Chasis Number                             | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Chasis Number | Registration Number For RC Authentication | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Engine Number | Registration Number For RC Authentication | Chasis Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

  @Release
  @Part-2
  @Sanity
  Scenario Outline: ACAUTOCAS-1237: User views for duplicate collateral for unique <FirstField> and <SecondField> and non-unique <ThirdField> in <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user fills mandatory fields of Tractor Details section
    And user enters registration number for rc authentication
    And user closes duplicate check result box after checking the duplicates
    And user saves the Collateral Details
    And user clicks on plus icon to add new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens Tractor Details section
    When user enters unique "<FirstField>"
    And user enters unique "<SecondField>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user enters non unique "<ThirdField>"
    And checks for duplicate collateral
    And user gets a message saying some duplicates found
    Then User should be able to view the duplicates
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FirstField    | SecondField                               | ThirdField                                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category | key | CollateralSubType   |
      | Engine Number | Chasis Number                             | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Chasis Number | Registration Number For RC Authentication | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Engine Number | Registration Number For RC Authentication | Chasis Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | FirstField    | SecondField                               | ThirdField                                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category   | key | CollateralSubType   |
      | Engine Number | Chasis Number                             | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Chasis Number | Registration Number For RC Authentication | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Engine Number | Registration Number For RC Authentication | Chasis Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FirstField    | SecondField                               | ThirdField                                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category | key | CollateralSubType   |
      | Engine Number | Chasis Number                             | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Chasis Number | Registration Number For RC Authentication | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Engine Number | Registration Number For RC Authentication | Chasis Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


#2 field combination for Chassis, Engine and Registration number
  @Release
  @Part-2
  Scenario Outline: ACAUTOCAS-1240: User checks for duplicate collateral for unique <FirstField> and <SecondField> in <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user opens Tractor Details section
    And user enters unique "<FirstField>"
    And user enters unique "<SecondField>"
    When checks for duplicate collateral
    Then user should receive a proper popup message
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FirstField    | SecondField                               | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category | key | CollateralSubType   |
      | Chasis Number | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Chasis Number | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Engine Number | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | FirstField    | SecondField                               | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category   | key | CollateralSubType   |
      | Chasis Number | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Chasis Number | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Engine Number | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FirstField    | SecondField                               | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category | key | CollateralSubType   |
      | Chasis Number | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Chasis Number | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Engine Number | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

  @Release
  @Part-2
  Scenario Outline: ACAUTOCAS-1241: User checks for duplicate collateral for <Unique_NonUnique_FirstField> <FirstField> and <Unique_NonUnique_SecondField> <SecondField> in <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user fills mandatory fields of Tractor Details section
    And user enters registration number for rc authentication
    And user closes duplicate check result box after checking the duplicates
    And user saves the Collateral Details
    And user clicks on plus icon to add new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens Tractor Details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    When user enters "<Unique_NonUnique_FirstField>" "<FirstField>"
    And user enters "<Unique_NonUnique_SecondField>" "<SecondField>"
    And checks for duplicate collateral
    Then user should receive a message saying some duplicates found
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | Unique_NonUnique_FirstField | FirstField    | Unique_NonUnique_SecondField | SecondField                               | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category | key | CollateralSubType   |
      | unique                      | Chasis Number | non unique                   | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | unique                      | Chasis Number | non unique                   | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | unique                      | Engine Number | non unique                   | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | non unique                  | Engine Number | unique                       | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | non unique                  | Engine Number | non unique                   | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | Unique_NonUnique_FirstField | FirstField    | Unique_NonUnique_SecondField | SecondField                               | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category   | key | CollateralSubType   |
      | unique                      | Chasis Number | non unique                   | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | unique                      | Chasis Number | non unique                   | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | unique                      | Engine Number | non unique                   | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | non unique                  | Engine Number | unique                       | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | non unique                  | Engine Number | non unique                   | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Unique_NonUnique_FirstField | FirstField    | Unique_NonUnique_SecondField | SecondField                               | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category | key | CollateralSubType   |
      | unique                      | Chasis Number | non unique                   | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | unique                      | Chasis Number | non unique                   | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | unique                      | Engine Number | non unique                   | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | non unique                  | Engine Number | unique                       | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | non unique                  | Engine Number | non unique                   | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

  @Release
  @Part-2
  @Sanity
  Scenario Outline: ACAUTOCAS-1242: User views duplicate collateral for <Unique_NonUnique_FirstField> <FirstField> and <Unique_NonUnique_SecondField> <SecondField> in <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user fills mandatory fields of Tractor Details section
    And user enters registration number for rc authentication
    And user closes duplicate check result box after checking the duplicates
    And user saves the Collateral Details
    And user clicks on plus icon to add new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens Tractor Details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    When user enters "<Unique_NonUnique_FirstField>" "<FirstField>"
    And user enters "<Unique_NonUnique_SecondField>" "<SecondField>"
    And checks for duplicate collateral
    And user gets a message saying some duplicates found
    Then User should be able to view the duplicates
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | Unique_NonUnique_FirstField | FirstField    | Unique_NonUnique_SecondField | SecondField                               | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category | key | CollateralSubType   |
      | unique                      | Chasis Number | non unique                   | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | unique                      | Chasis Number | non unique                   | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | unique                      | Engine Number | non unique                   | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | non unique                  | Engine Number | unique                       | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | non unique                  | Engine Number | non unique                   | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | Unique_NonUnique_FirstField | FirstField    | Unique_NonUnique_SecondField | SecondField                               | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category   | key | CollateralSubType   |
      | unique                      | Chasis Number | non unique                   | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | unique                      | Chasis Number | non unique                   | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | unique                      | Engine Number | non unique                   | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | non unique                  | Engine Number | unique                       | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | non unique                  | Engine Number | non unique                   | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Unique_NonUnique_FirstField | FirstField    | Unique_NonUnique_SecondField | SecondField                               | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category | key | CollateralSubType   |
      | unique                      | Chasis Number | non unique                   | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | unique                      | Chasis Number | non unique                   | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | unique                      | Engine Number | non unique                   | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | non unique                  | Engine Number | unique                       | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | non unique                  | Engine Number | non unique                   | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

## one field validation for engine, chasis and registration number
  @Release
  @Part-2
  @Sanity
  Scenario Outline: ACAUTOCAS-1261: User checks for duplicate collateral for unique <FieldName> in <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user fills mandatory fields of Tractor Details section
    And user enters registration number for rc authentication
    And user closes duplicate check result box after checking the duplicates
    And user saves the Collateral Details
    And user clicks on plus icon to add new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user opens Tractor Details section
    When user enters unique "<FieldName>"
    And checks for duplicate collateral
    Then user should receive a proper popup message
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName                                 | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category | key | CollateralSubType   |
      | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Chasis Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | FieldName                                 | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category   | key | CollateralSubType   |
      | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Chasis Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                                 | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category | key | CollateralSubType   |
      | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Chasis Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

  @Release
    @Part-2
    @Sanity
  Scenario Outline: ACAUTOCAS-1262: User checks for duplicate collateral for non-unique <FieldName> in <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user fills mandatory fields of Tractor Details section
    And user enters registration number for rc authentication
    And user closes duplicate check result box after checking the duplicates
    And user saves the Collateral Details
    And user clicks on plus icon to add new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user opens Tractor Details section
    When user enters non unique "<FieldName>"
    And checks for duplicate collateral
    Then user should receive a message saying some duplicates found
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName                                 | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category | key | CollateralSubType   |
      | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Chasis Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | FieldName                                 | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category   | key | CollateralSubType   |
      | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Chasis Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                                 | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category | key | CollateralSubType   |
      | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Chasis Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


  @Release
    @Part-2
    @Sanity
  Scenario Outline: ACAUTOCAS-1263: User views duplicate collateral for non-unique <FieldName> in <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user fills mandatory fields of Tractor Details section
    And user enters registration number for rc authentication
    And user closes duplicate check result box after checking the duplicates
    And user saves the Collateral Details
    And user clicks on plus icon to add new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user opens Tractor Details section
    When user enters non unique "<FieldName>"
    And checks for duplicate collateral
    And user gets a message saying some duplicates found
    Then User should be able to view the duplicates
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | FieldName                                 | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category | key | CollateralSubType   |
      | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Chasis Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | FieldName                                 | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category   | key | CollateralSubType   |
      | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Chasis Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                                 | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category | key | CollateralSubType   |
      | Engine Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Chasis Number                             | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Number For RC Authentication | collateral.xlsx | default            | 4                         | tractor_details           | 150                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


  @Release
  @Part-2
  Scenario Outline: ACAUTOCAS-2164:  Registration number Authentication for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user stores value of state of Communication Details
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user opens Tractor Details section
    And user enters registration number for rc authentication
    And User clicks on RC Authentication for validating Registration Number
    When user opens RC Authentication Details accordion
    Then RC Authentication Details is filled
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | asset_details           | 62                             | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | asset_details           | 62                             | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | asset_details           | 62                             | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


  @Release
  @Part-2
  Scenario Outline: ACAUTOCAS-1271:  user is able to add a new collateral as <CollateralSubType> of <ProductType> application at <ApplicationStage> stage with <Description> is <Validity> value on <Field>
  #Test the screen with various test data to identify issues. The dataset carries data to Pass and Fail.
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user fill "<Field>" of collateral details for collateral subtype
    And user checks the duplicates on collateral dedupe check
    When user saves the Collateral Details
    Then user is able to validate addition of collateral for "<Validity>" data
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | Validity | Field                  | Description                      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType |
      | valid    | Collateral Ref No      | positive digits                  | collateral.xlsx | asset_details           | 82                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Collateral Ref No      | characters                       | collateral.xlsx | asset_details           | 83                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Collateral Ref No      | both digits and characters       | collateral.xlsx | asset_details           | 84                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Collateral Ref No      | negative                         | collateral.xlsx | asset_details           | 85                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Collateral Ref No      | hyphen                           | collateral.xlsx | asset_details           | 86                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Collateral Ref No      | space                            | collateral.xlsx | asset_details           | 87                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Collateral Ref No      | special characters               | collateral.xlsx | asset_details           | 88                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Description            | positive digits                  | collateral.xlsx | asset_details           | 89                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Description            | characters                       | collateral.xlsx | asset_details           | 90                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Description            | both digits and characters       | collateral.xlsx | asset_details           | 91                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Description            | negative                         | collateral.xlsx | asset_details           | 92                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Description            | space                            | collateral.xlsx | asset_details           | 93                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Description            | special characters except hyphen | collateral.xlsx | asset_details           | 94                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | OLV Grid Value         | positive digits                  | collateral.xlsx | asset_details           | 95                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | characters                       | collateral.xlsx | asset_details           | 96                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | both digits and characters       | collateral.xlsx | asset_details           | 97                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | negative                         | collateral.xlsx | asset_details           | 98                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | hyphen                           | collateral.xlsx | asset_details           | 99                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | space                            | collateral.xlsx | asset_details           | 100                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | special characters               | collateral.xlsx | asset_details           | 101                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Insured Declared Value | positive digits                  | collateral.xlsx | asset_details           | 102                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | characters                       | collateral.xlsx | asset_details           | 103                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | both digits and characters       | collateral.xlsx | asset_details           | 104                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | negative                         | collateral.xlsx | asset_details           | 105                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | hyphen                           | collateral.xlsx | asset_details           | 106                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | space                            | collateral.xlsx | asset_details           | 107                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | special characters               | collateral.xlsx | asset_details           | 108                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Asset Cost             | positive digits                  | collateral.xlsx | asset_details           | 140                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | characters                       | collateral.xlsx | asset_details           | 141                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | both digits and characters       | collateral.xlsx | asset_details           | 142                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | negative                         | collateral.xlsx | asset_details           | 143                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | hyphen                           | collateral.xlsx | asset_details           | 144                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | space                            | collateral.xlsx | asset_details           | 145                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | special characters               | collateral.xlsx | asset_details           | 146                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |

    @ImplementedBy-richa.singh
    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | Validity | Field                  | Description                      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType |
      | valid    | Collateral Ref No      | positive digits                  | collateral.xlsx | asset_details           | 82                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | valid    | Collateral Ref No      | characters                       | collateral.xlsx | asset_details           | 83                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | valid    | Collateral Ref No      | both digits and characters       | collateral.xlsx | asset_details           | 84                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | valid    | Collateral Ref No      | negative                         | collateral.xlsx | asset_details           | 85                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | valid    | Collateral Ref No      | hyphen                           | collateral.xlsx | asset_details           | 86                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | valid    | Collateral Ref No      | space                            | collateral.xlsx | asset_details           | 87                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | Collateral Ref No      | special characters               | collateral.xlsx | asset_details           | 88                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | valid    | Description            | positive digits                  | collateral.xlsx | asset_details           | 89                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | valid    | Description            | characters                       | collateral.xlsx | asset_details           | 90                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | valid    | Description            | both digits and characters       | collateral.xlsx | asset_details           | 91                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | valid    | Description            | negative                         | collateral.xlsx | asset_details           | 92                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | valid    | Description            | space                            | collateral.xlsx | asset_details           | 93                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | valid    | Description            | special characters except hyphen | collateral.xlsx | asset_details           | 94                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | valid    | OLV Grid Value         | positive digits                  | collateral.xlsx | asset_details           | 95                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | characters                       | collateral.xlsx | asset_details           | 96                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | both digits and characters       | collateral.xlsx | asset_details           | 97                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | negative                         | collateral.xlsx | asset_details           | 98                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | hyphen                           | collateral.xlsx | asset_details           | 99                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | space                            | collateral.xlsx | asset_details           | 100                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | special characters               | collateral.xlsx | asset_details           | 101                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | valid    | Insured Declared Value | positive digits                  | collateral.xlsx | asset_details           | 102                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | characters                       | collateral.xlsx | asset_details           | 103                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | both digits and characters       | collateral.xlsx | asset_details           | 104                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | negative                         | collateral.xlsx | asset_details           | 105                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | hyphen                           | collateral.xlsx | asset_details           | 106                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | space                            | collateral.xlsx | asset_details           | 107                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | special characters               | collateral.xlsx | asset_details           | 108                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | valid    | Asset Cost             | positive digits                  | collateral.xlsx | asset_details           | 140                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | characters                       | collateral.xlsx | asset_details           | 141                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | both digits and characters       | collateral.xlsx | asset_details           | 142                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | negative                         | collateral.xlsx | asset_details           | 143                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | hyphen                           | collateral.xlsx | asset_details           | 144                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | space                            | collateral.xlsx | asset_details           | 145                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | special characters               | collateral.xlsx | asset_details           | 146                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | Field                  | Description                      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType |
      | valid    | Collateral Ref No      | positive digits                  | collateral.xlsx | asset_details           | 82                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Collateral Ref No      | characters                       | collateral.xlsx | asset_details           | 83                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Collateral Ref No      | both digits and characters       | collateral.xlsx | asset_details           | 84                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Collateral Ref No      | negative                         | collateral.xlsx | asset_details           | 85                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Collateral Ref No      | hyphen                           | collateral.xlsx | asset_details           | 86                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Collateral Ref No      | space                            | collateral.xlsx | asset_details           | 87                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Collateral Ref No      | special characters               | collateral.xlsx | asset_details           | 88                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Description            | positive digits                  | collateral.xlsx | asset_details           | 89                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Description            | characters                       | collateral.xlsx | asset_details           | 90                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Description            | both digits and characters       | collateral.xlsx | asset_details           | 91                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Description            | negative                         | collateral.xlsx | asset_details           | 92                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Description            | space                            | collateral.xlsx | asset_details           | 93                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Description            | special characters except hyphen | collateral.xlsx | asset_details           | 94                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | OLV Grid Value         | positive digits                  | collateral.xlsx | asset_details           | 95                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | characters                       | collateral.xlsx | asset_details           | 96                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | both digits and characters       | collateral.xlsx | asset_details           | 97                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | negative                         | collateral.xlsx | asset_details           | 98                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | hyphen                           | collateral.xlsx | asset_details           | 99                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | space                            | collateral.xlsx | asset_details           | 100                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | special characters               | collateral.xlsx | asset_details           | 101                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Insured Declared Value | positive digits                  | collateral.xlsx | asset_details           | 102                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | characters                       | collateral.xlsx | asset_details           | 103                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | both digits and characters       | collateral.xlsx | asset_details           | 104                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | negative                         | collateral.xlsx | asset_details           | 105                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | hyphen                           | collateral.xlsx | asset_details           | 106                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | space                            | collateral.xlsx | asset_details           | 107                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | special characters               | collateral.xlsx | asset_details           | 108                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Asset Cost             | positive digits                  | collateral.xlsx | asset_details           | 140                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | characters                       | collateral.xlsx | asset_details           | 141                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | both digits and characters       | collateral.xlsx | asset_details           | 142                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | negative                         | collateral.xlsx | asset_details           | 143                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | hyphen                           | collateral.xlsx | asset_details           | 144                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | space                            | collateral.xlsx | asset_details           | 145                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | special characters               | collateral.xlsx | asset_details           | 146                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |


  @Release
  @Part-2
  Scenario Outline: ACAUTOCAS-1272:  User is able to add a new collateral as <CollateralSubType> of <ProductType> application at <ApplicationStage> stage with <Description> is <Validity> value on <Field> with new Global Collateral No
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user fill "<Field>" of collateral details for collateral subtype
    And user checks the duplicates on collateral dedupe check
    When user saves the Collateral Details
    Then new collateral should be attached to the application with new Global Collateral Number on "<Validity>"
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | Validity | Field                  | Description                      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType |
      | valid    | Collateral Ref No      | positive digits                  | collateral.xlsx | asset_details           | 82                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Collateral Ref No      | characters                       | collateral.xlsx | asset_details           | 83                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Collateral Ref No      | both digits and characters       | collateral.xlsx | asset_details           | 84                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Collateral Ref No      | negative                         | collateral.xlsx | asset_details           | 85                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Collateral Ref No      | hyphen                           | collateral.xlsx | asset_details           | 86                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Collateral Ref No      | space                            | collateral.xlsx | asset_details           | 87                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Collateral Ref No      | special characters               | collateral.xlsx | asset_details           | 88                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Description            | positive digits                  | collateral.xlsx | asset_details           | 89                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Description            | characters                       | collateral.xlsx | asset_details           | 90                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Description            | both digits and characters       | collateral.xlsx | asset_details           | 91                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Description            | negative                         | collateral.xlsx | asset_details           | 92                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Description            | space                            | collateral.xlsx | asset_details           | 93                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Description            | special characters except hyphen | collateral.xlsx | asset_details           | 94                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | OLV Grid Value         | positive digits                  | collateral.xlsx | asset_details           | 95                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | characters                       | collateral.xlsx | asset_details           | 96                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | both digits and characters       | collateral.xlsx | asset_details           | 97                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | negative                         | collateral.xlsx | asset_details           | 98                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | hyphen                           | collateral.xlsx | asset_details           | 99                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | space                            | collateral.xlsx | asset_details           | 100                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | special characters               | collateral.xlsx | asset_details           | 101                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Insured Declared Value | positive digits                  | collateral.xlsx | asset_details           | 102                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | characters                       | collateral.xlsx | asset_details           | 103                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | both digits and characters       | collateral.xlsx | asset_details           | 104                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | negative                         | collateral.xlsx | asset_details           | 105                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | hyphen                           | collateral.xlsx | asset_details           | 106                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | space                            | collateral.xlsx | asset_details           | 107                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | special characters               | collateral.xlsx | asset_details           | 108                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Asset Cost             | positive digits                  | collateral.xlsx | asset_details           | 140                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | characters                       | collateral.xlsx | asset_details           | 141                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | both digits and characters       | collateral.xlsx | asset_details           | 142                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | negative                         | collateral.xlsx | asset_details           | 143                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | hyphen                           | collateral.xlsx | asset_details           | 144                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | space                            | collateral.xlsx | asset_details           | 145                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | special characters               | collateral.xlsx | asset_details           | 146                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | Validity | Field                  | Description                      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType |
      | valid    | Collateral Ref No      | positive digits                  | collateral.xlsx | asset_details           | 82                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | valid    | Collateral Ref No      | characters                       | collateral.xlsx | asset_details           | 83                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | valid    | Collateral Ref No      | both digits and characters       | collateral.xlsx | asset_details           | 84                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | valid    | Collateral Ref No      | negative                         | collateral.xlsx | asset_details           | 85                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | valid    | Collateral Ref No      | hyphen                           | collateral.xlsx | asset_details           | 86                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | valid    | Collateral Ref No      | space                            | collateral.xlsx | asset_details           | 87                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | Collateral Ref No      | special characters               | collateral.xlsx | asset_details           | 88                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | valid    | Description            | positive digits                  | collateral.xlsx | asset_details           | 89                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | valid    | Description            | characters                       | collateral.xlsx | asset_details           | 90                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | valid    | Description            | both digits and characters       | collateral.xlsx | asset_details           | 91                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | valid    | Description            | negative                         | collateral.xlsx | asset_details           | 92                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | valid    | Description            | space                            | collateral.xlsx | asset_details           | 93                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | valid    | Description            | special characters except hyphen | collateral.xlsx | asset_details           | 94                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | valid    | OLV Grid Value         | positive digits                  | collateral.xlsx | asset_details           | 95                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | characters                       | collateral.xlsx | asset_details           | 96                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | both digits and characters       | collateral.xlsx | asset_details           | 97                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | negative                         | collateral.xlsx | asset_details           | 98                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | hyphen                           | collateral.xlsx | asset_details           | 99                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | space                            | collateral.xlsx | asset_details           | 100                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | special characters               | collateral.xlsx | asset_details           | 101                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | valid    | Insured Declared Value | positive digits                  | collateral.xlsx | asset_details           | 102                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | characters                       | collateral.xlsx | asset_details           | 103                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | both digits and characters       | collateral.xlsx | asset_details           | 104                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | negative                         | collateral.xlsx | asset_details           | 105                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | hyphen                           | collateral.xlsx | asset_details           | 106                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | space                            | collateral.xlsx | asset_details           | 107                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | special characters               | collateral.xlsx | asset_details           | 108                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | valid    | Asset Cost             | positive digits                  | collateral.xlsx | asset_details           | 140                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | characters                       | collateral.xlsx | asset_details           | 141                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | both digits and characters       | collateral.xlsx | asset_details           | 142                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | negative                         | collateral.xlsx | asset_details           | 143                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | hyphen                           | collateral.xlsx | asset_details           | 144                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | space                            | collateral.xlsx | asset_details           | 145                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | special characters               | collateral.xlsx | asset_details           | 146                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Tractor           |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | Field                  | Description                      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType |
      | valid    | Collateral Ref No      | positive digits                  | collateral.xlsx | asset_details           | 82                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Collateral Ref No      | characters                       | collateral.xlsx | asset_details           | 83                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Collateral Ref No      | both digits and characters       | collateral.xlsx | asset_details           | 84                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Collateral Ref No      | negative                         | collateral.xlsx | asset_details           | 85                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Collateral Ref No      | hyphen                           | collateral.xlsx | asset_details           | 86                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Collateral Ref No      | space                            | collateral.xlsx | asset_details           | 87                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Collateral Ref No      | special characters               | collateral.xlsx | asset_details           | 88                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Description            | positive digits                  | collateral.xlsx | asset_details           | 89                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Description            | characters                       | collateral.xlsx | asset_details           | 90                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Description            | both digits and characters       | collateral.xlsx | asset_details           | 91                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Description            | negative                         | collateral.xlsx | asset_details           | 92                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Description            | space                            | collateral.xlsx | asset_details           | 93                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Description            | special characters except hyphen | collateral.xlsx | asset_details           | 94                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | OLV Grid Value         | positive digits                  | collateral.xlsx | asset_details           | 95                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | characters                       | collateral.xlsx | asset_details           | 96                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | both digits and characters       | collateral.xlsx | asset_details           | 97                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | negative                         | collateral.xlsx | asset_details           | 98                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | hyphen                           | collateral.xlsx | asset_details           | 99                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | space                            | collateral.xlsx | asset_details           | 100                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | OLV Grid Value         | special characters               | collateral.xlsx | asset_details           | 101                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Insured Declared Value | positive digits                  | collateral.xlsx | asset_details           | 102                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | characters                       | collateral.xlsx | asset_details           | 103                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | both digits and characters       | collateral.xlsx | asset_details           | 104                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | negative                         | collateral.xlsx | asset_details           | 105                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | hyphen                           | collateral.xlsx | asset_details           | 106                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | space                            | collateral.xlsx | asset_details           | 107                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Insured Declared Value | special characters               | collateral.xlsx | asset_details           | 108                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | valid    | Asset Cost             | positive digits                  | collateral.xlsx | asset_details           | 140                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | characters                       | collateral.xlsx | asset_details           | 141                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | both digits and characters       | collateral.xlsx | asset_details           | 142                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | negative                         | collateral.xlsx | asset_details           | 143                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | hyphen                           | collateral.xlsx | asset_details           | 144                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | space                            | collateral.xlsx | asset_details           | 145                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |
      | invalid  | Asset Cost             | special characters               | collateral.xlsx | asset_details           | 146                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Tractor           |


##create another after this one
  @Release
  @Part-2
  @Sanity
  Scenario Outline: ACAUTOCAS-1273:  Capture <CollateralSubType> against an application with create another after this one
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user selects create another after this one option
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_tractorDetails>" and row <Collateral_tractorDetails_rowNum>
    And user fills mandatory fields of Tractor Details section
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    When user saves the Collateral Details
    And user gets saved successfully message
    Then CollateralPage remains available to create another collateral
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category | key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category   | key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_tractorDetails | Collateral_tractorDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | category | key | CollateralSubType   |
      | collateral.xlsx | default            | 4                         | tractor_details           | 0                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |



###Squash:137607
###Story:CAS-23473
###Bug:
  @Sanity
  @Release
  @Part-2
#FeatureID-ACAUTOCAS-233,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-16684: user adds multiple collateral to <ProductType> application at <ApplicationStage> stage with sub type as Tractor
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    When user fills mandatory fields of collateral details to attach collateral from the excel file "<SourceDataFile>":
      | SourceSheet   | SourceSheetRow | CollSubType |
      | asset_details | 82             | Tractor     |
      | asset_details | 83             | Tractor     |
      | asset_details | 84             | Tractor     |
      | asset_details | 85             | Tractor     |
      | asset_details | 86             | Tractor     |
      | asset_details | 87             | Tractor     |
      | asset_details | 88             | Tractor     |
      | asset_details | 89             | Tractor     |
    Then user check the all the added collateral to application
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | SourceDataFile  | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | SourceDataFile  | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | SourceDataFile  | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |



###Squash:137607
###Story:CAS-23473
###Bug:
  @Release
  @Part-2
#FeatureID-ACAUTOCAS-233,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-16685: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage with sub type as Tractor
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    When user fills mandatory fields of collateral details to attach collateral from the excel file "<CollateralWB>":
      | SourceSheet   | SourceSheetRow | CollSubType |
      | asset_details | 82             | Tractor     |
      | asset_details | 83             | Tractor     |
      | asset_details | 84             | Tractor     |
      | asset_details | 85             | Tractor     |
      | asset_details | 86             | Tractor     |
      | asset_details | 87             | Tractor     |
      | asset_details | 88             | Tractor     |
      | asset_details | 89             | Tractor     |
    Then user should be able to reconcile the data for below mentioned collaterals successfully from the excel file "<CollateralWB>":
      | SourceSheet   | SourceSheetRow | CollSubType |
      | asset_details | 82             | Tractor     |
      | asset_details | 83             | Tractor     |
      | asset_details | 84             | Tractor     |
      | asset_details | 85             | Tractor     |
      | asset_details | 86             | Tractor     |
      | asset_details | 87             | Tractor     |
      | asset_details | 88             | Tractor     |
      | asset_details | 89             | Tractor     |
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |



###Squash:137607
###Story:CAS-23473
###Bug:
  @Release
  @Part-2
#FeatureID-ACAUTOCAS-233,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-16686: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage with sub type as Tractor at Enquiry
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user fills mandatory fields of collateral details to attach collateral from the excel file "<CollateralWB>":
      | SourceSheet   | SourceSheetRow | CollSubType |
      | asset_details | 82             | Tractor     |
      | asset_details | 83             | Tractor     |
      | asset_details | 84             | Tractor     |
      | asset_details | 85             | Tractor     |
      | asset_details | 86             | Tractor     |
      | asset_details | 87             | Tractor     |
      | asset_details | 88             | Tractor     |
      | asset_details | 89             | Tractor     |
    And user opens application from enquiry menu
    When user opens Collateral Page for viewing attached collaterals at "<ApplicationStage>"
    Then user should be able to reconcile the data for below mentioned collaterals successfully from the excel file "<CollateralWB>":
      | SourceSheet   | SourceSheetRow | CollSubType |
      | asset_details | 82             | Tractor     |
      | asset_details | 83             | Tractor     |
      | asset_details | 84             | Tractor     |
      | asset_details | 85             | Tractor     |
      | asset_details | 86             | Tractor     |
      | asset_details | 87             | Tractor     |
      | asset_details | 88             | Tractor     |
      | asset_details | 89             | Tractor     |
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
