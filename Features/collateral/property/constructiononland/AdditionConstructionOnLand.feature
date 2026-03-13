@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral
  @Release

    #${ApplicantType:["indiv","nonindiv"]}
#${CollateralSubType:["Construction On Land"]}
Feature: Addition of Construction On Land


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #${ProductType:["PF","EDU"]}
  #PF(Secured),EDU(Scecured)
  @ImplementedBy-ankit.yadav
    @Perishable
  Scenario Outline: ACAUTOCAS-3729: user moves to the next stage without collateral in <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    When user clicks on move to next stage button
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    Then user should get error message without adding collateral
      #${ProductType:["PF","EDU"]}
  #PF(Secured),EDU(Scecured)
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ankit.yadav
    @Perishable
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | ProductType   | ApplicationStage   | key     | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 103                               | <ProductType> | <ApplicationStage> | nocolla |          | <applicantType> | <CollateralSubType> |

      # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    @Perishable
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | ProductType   | ApplicationStage   | key     | category   | applicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 103                               | <ProductType> | <ApplicationStage> | nocolla | <category> | <applicantType> | <CollateralSubType> |

     # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    @Perishable
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | ProductType | ApplicationStage | key     | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 103                               | IAF         | DDE              | nocolla |          | <applicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1336: User enters mandatory information for <CollateralSubType> and saves without checking duplicates
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user enters mandatory fields of other details of collateral subtype
    And user enters mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    Then User should receive a proper failure message
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-utkarsh.tiwari
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 105                               |

       # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 105                               |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 105                               |

  Scenario Outline: ACAUTOCAS-1337: User misses entering <MandatoryField> validations to fail for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage and saves
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user enters mandatory fields of other details of collateral subtype
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on dedupe check
    And user saves the data of collateral subtype
    Then user should receive a failure "<MandatoryField>" missing message
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-utkarsh.tiwari
    Examples:
      | MandatoryField                        | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Age of Property                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 149                               |
      | Property Classification               | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 150                               |
      | Plot Number, Mobile Phone             | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 151                               |
      | State, Carpet Area                    | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 152                               |
      | Mobile Phone, Built-up Area           | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 153                               |
      | Carpet Area                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 154                               |
      | Mobile Phone, Property Classification | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 155                               |
      | Plot Number                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 156                               |
      | State, Age of Property                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 157                               |
      | Pincode, Property Ownership           | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 158                               |
      | Floor Number, Carpet Area             | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 159                               |
      | State, Property Type                  | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 160                               |
      | Mobile Phone, Plot Number             | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 161                               |
      | Mobile Phone, Age of Property         | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 162                               |
      | State                                 | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 163                               |
      | Property Ownership, Built-up Area     | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 164                               |
      | Pincode, Mobile Phone                 | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 165                               |
      | Plot Number, Mobile Phone             | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 166                               |
      | Pincode, State                        | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 167                               |
      | Property Type, Built-up Area          | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 168                               |
      | Mobile Phone, Property Ownership      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 169                               |
      | Age of Property                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 170                               |
      | Mobile Phone, Built-up Area           | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 171                               |
      | Carpet Area                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 172                               |
      | Mobile Phone, Property Type           | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 173                               |
      | Pincode                               | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 174                               |
      | Mobile Phone, Property Ownership      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 175                               |
      | Carpet Area                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 176                               |
      | State, Built-up Area                  | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 177                               |
      | Age of Property                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 178                               |
      | Plot Number, Mobile Phone             | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 179                               |
      | Property Purpose                      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 180                               |
      | Mobile Phone, Built-up Area           | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 181                               |
      | Age of Property                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 182                               |
      | Mobile Phone                          | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 183                               |
      | Plot Number, Address Line 2           | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 184                               |
      | Mobile Phone, Carpet Area             | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 185                               |
      | Property Type                         | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 186                               |
      | Plot Number, Mobile Phone             | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 187                               |
      | State                                 | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 188                               |
      | Property Type, Built-up Area          | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 189                               |
      | Mobile Phone, Property Owner          | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 190                               |
      | Property Owner                        | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 191                               |



     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | MandatoryField                        | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Age of Property                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 149                               |
      | Property Classification               | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 150                               |
      | Plot Number, Mobile Phone             | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 151                               |
      | State, Carpet Area                    | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 152                               |
      | Mobile Phone, Built-up Area           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 153                               |
      | Carpet Area                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 154                               |
      | Mobile Phone, Property Classification | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 155                               |
      | Plot Number                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 156                               |
      | State, Age of Property                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 157                               |
      | Pincode, Property Ownership           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 158                               |
      | Floor Number, Carpet Area             | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 159                               |
      | State, Property Type                  | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 160                               |
      | Mobile Phone, Plot Number             | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 161                               |
      | Mobile Phone, Age of Property         | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 162                               |
      | State                                 | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 163                               |
      | Property Ownership, Built-up Area     | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 164                               |
      | Pincode, Mobile Phone                 | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 165                               |
      | Plot Number, Mobile Phone             | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 166                               |
      | Pincode, State                        | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 167                               |
      | Property Type, Built-up Area          | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 168                               |
      | Mobile Phone, Property Ownership      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 169                               |
      | Age of Property                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 170                               |
      | Mobile Phone, Built-up Area           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 171                               |
      | Carpet Area                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 172                               |
      | Mobile Phone, Property Type           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 173                               |
      | Pincode                               | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 174                               |
      | Mobile Phone, Property Ownership      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 175                               |
      | Carpet Area                           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 176                               |
      | State, Built-up Area                  | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 177                               |
      | Age of Property                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 178                               |
      | Plot Number, Mobile Phone             | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 179                               |
      | Property Purpose                      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 180                               |
      | Mobile Phone, Built-up Area           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 181                               |
      | Age of Property                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 182                               |
      | Mobile Phone                          | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 183                               |
      | Plot Number, Address Line 2           | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 184                               |
      | Mobile Phone, Carpet Area             | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 185                               |
      | Property Type                         | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 186                               |
      | Plot Number, Mobile Phone             | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 187                               |
      | State                                 | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 188                               |
      | Property Type, Built-up Area          | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 189                               |
      | Mobile Phone, Property Owner          | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 190                               |
      | Property Owner                        | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 191                               |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | MandatoryField                        | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Age of Property                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 149                               |
      | Property Classification               | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 150                               |
      | Plot Number, Mobile Phone             | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 151                               |
      | State, Carpet Area                    | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 152                               |
      | Mobile Phone, Built-up Area           | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 153                               |
      | Carpet Area                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 154                               |
      | Mobile Phone, Property Classification | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 155                               |
      | Plot Number                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 156                               |
      | State, Age of Property                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 157                               |
      | Pincode, Property Ownership           | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 158                               |
      | Floor Number, Carpet Area             | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 159                               |
      | State, Property Type                  | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 160                               |
      | Mobile Phone, Plot Number             | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 161                               |
      | Mobile Phone, Age of Property         | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 162                               |
      | State                                 | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 163                               |
      | Property Ownership, Built-up Area     | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 164                               |
      | Pincode, Mobile Phone                 | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 165                               |
      | Plot Number, Mobile Phone             | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 166                               |
      | Pincode, State                        | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 167                               |
      | Property Type, Built-up Area          | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 168                               |
      | Mobile Phone, Property Ownership      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 169                               |
      | Age of Property                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 170                               |
      | Mobile Phone, Built-up Area           | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 171                               |
      | Carpet Area                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 172                               |
      | Mobile Phone, Property Type           | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 173                               |
      | Pincode                               | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 174                               |
      | Mobile Phone, Property Ownership      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 175                               |
      | Carpet Area                           | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 176                               |
      | State, Built-up Area                  | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 177                               |
      | Age of Property                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 178                               |
      | Plot Number, Mobile Phone             | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 179                               |
      | Property Purpose                      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 180                               |
      | Mobile Phone, Built-up Area           | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 181                               |
      | Age of Property                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 182                               |
      | Mobile Phone                          | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 183                               |
      | Plot Number, Address Line 2           | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 184                               |
      | Mobile Phone, Carpet Area             | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 185                               |
      | Property Type                         | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 186                               |
      | Plot Number, Mobile Phone             | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 187                               |
      | State                                 | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 188                               |
      | Property Type, Built-up Area          | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 189                               |
      | Mobile Phone, Property Owner          | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 190                               |
      | Property Owner                        | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 191                               |


  Scenario Outline: ACAUTOCAS-2241: user moves a new Property Type collateral to the loan application in <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user attempts to select a collateral type
    Then application should allow only the collateral type which is linked to the product
           #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-utkarsh.tiwari
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 97                        |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 97                        |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 97                        |


  Scenario Outline: ACAUTOCAS-2242: user adds a collateral with sub type as <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then application should allow only the sub type which is linked to the product
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-utkarsh.tiwari
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 97                        |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 97                        |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 97                        |


#FeatureID-ACAUTOCAS-227,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-17092: CollateralPage <SectionName> is mandatory for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens other details section of collateral page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the data of collateral subtype
    Then "<SectionName>" should be mandatory entered in property collateral type
       #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-utkarsh.tiwari
    Examples:
      | SectionName   | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_addressDetails | Collateral_addressDetails_rowNum | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Other Details | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | property_address          | 0                                | collateral.xlsx | property_details           | 104                               |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | SectionName   | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Collateral_addressDetails | Collateral_addressDetails_rowNum | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Other Details | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | property_address          | 0                                | collateral.xlsx | property_details           | 104                               |



  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | SectionName   | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_addressDetails | Collateral_addressDetails_rowNum | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Other Details | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | property_address          | 0                                | collateral.xlsx | property_details           | 104                               |


  Scenario Outline: ACAUTOCAS-2243: CollateralPage <SectionName> is mandatory for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user opens property address details section
    And user checks for duplicate collateral
    And user saves the data of collateral subtype
    Then "<SectionName>" should be mandatory entered in property collateral type
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-utkarsh.tiwari
    Examples:
      | SectionName      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Property Address | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | other_details           | 0                              | collateral.xlsx | property_details           | 104                               |

    # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | SectionName      | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Property Address | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | other_details           | 0                              | collateral.xlsx | property_details           | 104                               |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | SectionName      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_otherDetails_rowNum | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Property Address | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | other_details           | 0                              | collateral.xlsx | property_details           | 104                               |

  Scenario Outline: ACAUTOCAS-1338: CollateralPage Other Details Built Up area validation in <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters area fields of other details
    Then user gets a proper notification
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-utkarsh.tiwari
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_otherDetails_rowNum | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | other_details           | property_details           | 104                               | 2                              | collateral.xlsx |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_otherDetails_rowNum | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | other_details           | property_details           | 104                               | 2                              | collateral.xlsx |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_otherDetails_rowNum | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | other_details           | property_details           | 104                               | 2                              | collateral.xlsx |

#FeatureID-ACAUTOCAS-227,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-17093: CollateralPage Other Details Built Up area unit validation in <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters area fields of other details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the data of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    Then user gets a proper notification
              #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-utkarsh.tiwari
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_otherDetails_rowNum | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | other_details           | property_details           | 104                               | 3                              | collateral.xlsx | property_address          | 0                                |

     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_otherDetails_rowNum | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | other_details           | property_details           | 104                               | 3                              | collateral.xlsx | property_address          | 0                                |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Collateral_otherDetails | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_otherDetails_rowNum | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | other_details           | property_details           | 104                               | 3                              | collateral.xlsx | property_address          | 0                                |

  Scenario Outline: ACAUTOCAS-1339: CollateralPage Property and Registration Details validation <Throws_notThrows> in <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyRegistrationDetails>" and row <Collateral_propertyRegistrationDetails_rowNum>
    And user enters all mandatory information of property and registration details
    Then user "<Throws_notThrows>" in builder property under construction
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Sanity
    @Conventional
    @ImplementedBy-utkarsh.tiwari
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_propertyRegistrationDetails | Collateral_propertyRegistrationDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | collateral.xlsx | property_details           | 104                               | other_details           | 0                              | property_address          | 0                                | property_registration_details          | 0                                             | does not throw any error           |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | collateral.xlsx | property_details           | 104                               | other_details           | 0                              | property_address          | 0                                | property_registration_details          | 1                                             | does not throw any error           |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | collateral.xlsx | property_details           | 104                               | other_details           | 0                              | property_address          | 0                                | property_registration_details          | 2                                             | throws an error with error message |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | collateral.xlsx | property_details           | 104                               | other_details           | 0                              | property_address          | 0                                | property_registration_details          | 3                                             | does not throw any error           |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | collateral.xlsx | property_details           | 104                               | other_details           | 0                              | property_address          | 0                                | property_registration_details          | 4                                             | does not throw any error           |

     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_propertyRegistrationDetails | Collateral_propertyRegistrationDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | collateral.xlsx | property_details           | 104                               | other_details           | 0                              | property_address          | 0                                | property_registration_details          | 0                                             | does not throw any error           |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | collateral.xlsx | property_details           | 104                               | other_details           | 0                              | property_address          | 0                                | property_registration_details          | 1                                             | does not throw any error           |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | collateral.xlsx | property_details           | 104                               | other_details           | 0                              | property_address          | 0                                | property_registration_details          | 2                                             | throws an error with error message |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | collateral.xlsx | property_details           | 104                               | other_details           | 0                              | property_address          | 0                                | property_registration_details          | 3                                             | does not throw any error           |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | collateral.xlsx | property_details           | 104                               | other_details           | 0                              | property_address          | 0                                | property_registration_details          | 4                                             | does not throw any error           |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_propertyRegistrationDetails | Collateral_propertyRegistrationDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | collateral.xlsx | property_details           | 104                               | other_details           | 0                              | property_address          | 0                                | property_registration_details          | 0                                             | does not throw any error           |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | collateral.xlsx | property_details           | 104                               | other_details           | 0                              | property_address          | 0                                | property_registration_details          | 1                                             | does not throw any error           |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | collateral.xlsx | property_details           | 104                               | other_details           | 0                              | property_address          | 0                                | property_registration_details          | 2                                             | throws an error with error message |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | collateral.xlsx | property_details           | 104                               | other_details           | 0                              | property_address          | 0                                | property_registration_details          | 3                                             | does not throw any error           |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | collateral.xlsx | property_details           | 104                               | other_details           | 0                              | property_address          | 0                                | property_registration_details          | 4                                             | does not throw any error           |


  Scenario Outline: ACAUTOCAS-1340: CollateralPage Property and Registration Details validation 2 in <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user adds property and registration details to collateral data from
      | collateral.xlsx | property_registration_details | 16 |
      | collateral.xlsx | property_registration_details | 17 |
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyRegistrationDetails>" and row <Collateral_property_registration_row>
    And user enters all mandatory information on Property and Registration Details section
    And user saves the agreement details
    Then user gets a proper agreement notification message
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ankit.yadav
    @Sanity
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_propertyRegistrationDetails | Collateral_property_registration_row |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | property_registration_details          | 16                                   |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | property_registration_details          | 18                                   |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | property_registration_details          | 17                                   |

       # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_propertyRegistrationDetails | Collateral_property_registration_row |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | property_registration_details          | 16                                   |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | property_registration_details          | 18                                   |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | property_registration_details          | 17                                   |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_propertyRegistrationDetails | Collateral_property_registration_row |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | property_registration_details          | 16                                   |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | property_registration_details          | 18                                   |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | property_registration_details          | 17                                   |


  Scenario Outline: ACAUTOCAS-4465:  User uses <category> address as property address in <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user select "<category>" address details of collateral subtype
    Then user should get an option to use "<category>" address as property address
              #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ankit.yadav
    Examples:
      | ProductType   | ApplicationStage   | key | category    | applicantType   | CollateralSubType   | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | Primary     | <applicantType> | <CollateralSubType> | collateral.xlsx | other_details           | 0                              | property_address          | 0                                | property_details           | 104                               |
      | <ProductType> | <ApplicationStage> |     | CoApplicant | <applicantType> | <CollateralSubType> | collateral.xlsx | other_details           | 0                              | property_address          | 0                                | property_details           | 104                               |
      | <ProductType> | <ApplicationStage> |     | Guarantor   | <applicantType> | <CollateralSubType> | collateral.xlsx | other_details           | 0                              | property_address          | 0                                | property_details           | 104                               |

     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category    | applicantType   | CollateralSubType   | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | Primary     | <applicantType> | <CollateralSubType> | collateral.xlsx | other_details           | 0                              | property_address          | 0                                | property_details           | 104                               |
      | <ProductType> | <ApplicationStage> |     | CoApplicant | <applicantType> | <CollateralSubType> | collateral.xlsx | other_details           | 0                              | property_address          | 0                                | property_details           | 104                               |
      | <ProductType> | <ApplicationStage> |     | Guarantor   | <applicantType> | <CollateralSubType> | collateral.xlsx | other_details           | 0                              | property_address          | 0                                | property_details           | 104                               |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category    | applicantType   | CollateralSubType   | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | Primary     | <applicantType> | <CollateralSubType> | collateral.xlsx | other_details           | 0                              | property_address          | 0                                | property_details           | 104                               |
      | <ProductType> | <ApplicationStage> |     | CoApplicant | <applicantType> | <CollateralSubType> | collateral.xlsx | other_details           | 0                              | property_address          | 0                                | property_details           | 104                               |
      | <ProductType> | <ApplicationStage> |     | Guarantor   | <applicantType> | <CollateralSubType> | collateral.xlsx | other_details           | 0                              | property_address          | 0                                | property_details           | 104                               |


  Scenario Outline: ACAUTOCAS-3229:  user executes dedupe for Construction on Land
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user opens Collateral Page for adding new collateral
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks for duplicate collateral
    Then user should get a message in collateral dedupe check
              #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Dataset | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum |
      | 1       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | address_details           | 40                               | other_details           | 0                              |
      | 2       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | address_details           | 41                               | other_details           | 0                              |
      | 3       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | address_details           | 42                               | other_details           | 0                              |
      | 4       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | address_details           | 43                               | other_details           | 0                              |
      | 5       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | address_details           | 44                               | other_details           | 0                              |
      | 6       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | address_details           | 45                               | other_details           | 0                              |
      | 7       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | address_details           | 46                               | other_details           | 0                              |
      | 8       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | address_details           | 47                               | other_details           | 0                              |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Dataset | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum |
      | 1       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | address_details           | 40                               | other_details           | 0                              |
      | 2       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | address_details           | 41                               | other_details           | 0                              |
      | 3       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | address_details           | 42                               | other_details           | 0                              |
      | 4       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | address_details           | 43                               | other_details           | 0                              |
      | 5       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | address_details           | 44                               | other_details           | 0                              |
      | 6       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | address_details           | 45                               | other_details           | 0                              |
      | 7       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | address_details           | 46                               | other_details           | 0                              |
      | 8       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | address_details           | 47                               | other_details           | 0                              |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Dataset | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum |
      | 1       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | address_details           | 40                               | other_details           | 0                              |
      | 2       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | address_details           | 41                               | other_details           | 0                              |
      | 3       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | address_details           | 42                               | other_details           | 0                              |
      | 4       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | address_details           | 43                               | other_details           | 0                              |
      | 5       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | address_details           | 44                               | other_details           | 0                              |
      | 6       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | address_details           | 45                               | other_details           | 0                              |
      | 7       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | address_details           | 46                               | other_details           | 0                              |
      | 8       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 104                               | address_details           | 47                               | other_details           | 0                              |


  Scenario Outline: ACAUTOCAS-3230:  user executes dedupe for Construction on Land to find existing property
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<SecondaryApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user checks for duplicate collateral
    Then user should get a message in collateral dedupe check
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Dataset | SecondaryApplicationStage |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 58                               | other_details           | 0                              | property_details           | 104                               | 1       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 59                               | other_details           | 0                              | property_details           | 104                               | 2       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 60                               | other_details           | 0                              | property_details           | 104                               | 3       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 61                               | other_details           | 0                              | property_details           | 104                               | 4       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 62                               | other_details           | 0                              | property_details           | 104                               | 5       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 63                               | other_details           | 0                              | property_details           | 104                               | 6       | Post Approval             |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Dataset | SecondaryApplicationStage |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 58                               | other_details           | 0                              | property_details           | 104                               | 1       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 59                               | other_details           | 0                              | property_details           | 104                               | 2       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 60                               | other_details           | 0                              | property_details           | 104                               | 3       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 61                               | other_details           | 0                              | property_details           | 104                               | 4       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 62                               | other_details           | 0                              | property_details           | 104                               | 5       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 63                               | other_details           | 0                              | property_details           | 104                               | 6       | Post Approval             |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Dataset | SecondaryApplicationStage |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 58                               | other_details           | 0                              | property_details           | 104                               | 1       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 59                               | other_details           | 0                              | property_details           | 104                               | 2       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 60                               | other_details           | 0                              | property_details           | 104                               | 3       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 61                               | other_details           | 0                              | property_details           | 104                               | 4       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 62                               | other_details           | 0                              | property_details           | 104                               | 5       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 63                               | other_details           | 0                              | property_details           | 104                               | 6       | Post Approval             |


  Scenario Outline: ACAUTOCAS-3231:  user checks for duplicate collateral and views the duplicates
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<SecondaryApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user checks for duplicate collateral
    Then User should be able to view the duplicates of collateral subtype
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Dataset | SecondaryApplicationStage |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 54                               | other_details           | 0                              | property_details           | 104                               | 1       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 55                               | other_details           | 0                              | property_details           | 104                               | 2       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 56                               | other_details           | 0                              | property_details           | 104                               | 3       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 57                               | other_details           | 0                              | property_details           | 104                               | 4       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 58                               | other_details           | 0                              | property_details           | 104                               | 5       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 59                               | other_details           | 0                              | property_details           | 104                               | 6       | Post Approval             |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Dataset | SecondaryApplicationStage |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 54                               | other_details           | 0                              | property_details           | 104                               | 1       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 55                               | other_details           | 0                              | property_details           | 104                               | 2       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 56                               | other_details           | 0                              | property_details           | 104                               | 3       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 57                               | other_details           | 0                              | property_details           | 104                               | 4       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 58                               | other_details           | 0                              | property_details           | 104                               | 5       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 59                               | other_details           | 0                              | property_details           | 104                               | 6       | Post Approval             |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Dataset | SecondaryApplicationStage |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 54                               | other_details           | 0                              | property_details           | 104                               | 1       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 55                               | other_details           | 0                              | property_details           | 104                               | 2       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 56                               | other_details           | 0                              | property_details           | 104                               | 3       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 57                               | other_details           | 0                              | property_details           | 104                               | 4       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 58                               | other_details           | 0                              | property_details           | 104                               | 5       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 59                               | other_details           | 0                              | property_details           | 104                               | 6       | Post Approval             |

#This test scenario should fail
  Scenario Outline: ACAUTOCAS-3232:  user attaches a duplicate <CollateralSubType> collateral attached to same application
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
    @ImplementedBy-ankit.yadav
    @Sanity @LoggedBug
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | address_details           | 243                              | other_details           | 123                            | default            | 545                       | PL            | DDE                |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | address_details           | 244                              | other_details           | 124                            | default            | 546                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | address_details           | 245                              | other_details           | 125                            | default            | 547                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | address_details           | 246                              | other_details           | 126                            | default            | 548                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | address_details           | 247                              | other_details           | 127                            | default            | 549                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | address_details           | 248                              | other_details           | 128                            | default            | 550                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    @Sanity @LoggedBug
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | collateral.xlsx | address_details           | 243                              | other_details           | 123                            | default            | 545                       | <ProductType> | <ApplicationStage  |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | address_details           | 244                              | other_details           | 124                            | default            | 546                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | address_details           | 245                              | other_details           | 125                            | default            | 547                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | address_details           | 246                              | other_details           | 126                            | default            | 548                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | address_details           | 247                              | other_details           | 127                            | default            | 549                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | address_details           | 248                              | other_details           | 128                            | default            | 550                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
	

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    @Sanity @LoggedBug
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | address_details           | 243                              | other_details           | 123                            | default            | 545                       | PL            | DDE                |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | address_details           | 244                              | other_details           | 124                            | default            | 546                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | address_details           | 245                              | other_details           | 125                            | default            | 547                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | address_details           | 246                              | other_details           | 126                            | default            | 548                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | address_details           | 247                              | other_details           | 127                            | default            | 549                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | address_details           | 248                              | other_details           | 128                            | default            | 550                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-3233:  user attaches a duplicate Construction on Land collateral attached to a different application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<SecondaryApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "<CollateralSubType>" collateral from dedupe result which is not attached to the application
    And user saves selected dedupe collateral
    Then user gets a notification message
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Dataset | SecondaryApplicationStage |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 54                               | other_details           | 0                              | property_details           | 104                               | 1       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 55                               | other_details           | 0                              | property_details           | 104                               | 2       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 56                               | other_details           | 0                              | property_details           | 104                               | 3       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 57                               | other_details           | 0                              | property_details           | 104                               | 4       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 58                               | other_details           | 0                              | property_details           | 104                               | 5       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 59                               | other_details           | 0                              | property_details           | 104                               | 6       | Post Approval             |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Dataset | SecondaryApplicationStage |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 54                               | other_details           | 0                              | property_details           | 104                               | 1       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 55                               | other_details           | 0                              | property_details           | 104                               | 2       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 56                               | other_details           | 0                              | property_details           | 104                               | 3       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 57                               | other_details           | 0                              | property_details           | 104                               | 4       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 58                               | other_details           | 0                              | property_details           | 104                               | 5       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 59                               | other_details           | 0                              | property_details           | 104                               | 6       | Post Approval             |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Dataset | SecondaryApplicationStage |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 54                               | other_details           | 0                              | property_details           | 104                               | 1       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 55                               | other_details           | 0                              | property_details           | 104                               | 2       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 56                               | other_details           | 0                              | property_details           | 104                               | 3       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 57                               | other_details           | 0                              | property_details           | 104                               | 4       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 58                               | other_details           | 0                              | property_details           | 104                               | 5       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 59                               | other_details           | 0                              | property_details           | 104                               | 6       | Post Approval             |


  Scenario Outline: ACAUTOCAS-3234:  User <FieldModified> property address after running dedupe for <CollateralSubType> of <ProductType> application at <ApplicationStage> and attempts to save with <Dataset>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user modifies "<FieldModified>" of address details of collateral subtype
    And user saves the data of collateral subtype
    Then user should get a proper message
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ankit.yadav
    Examples:
      | FieldModified  | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Dataset |
      | Plot Number    | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 58                               | other_details           | 0                              | property_details           | 22                                | 1       |
      | Address Line 2 | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 59                               | other_details           | 0                              | property_details           | 22                                | 2       |
      | Address Line 3 | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 60                               | other_details           | 0                              | property_details           | 22                                | 3       |
      | Taluka         | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 61                               | other_details           | 0                              | property_details           | 22                                | 4       |
      | Village        | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 62                               | other_details           | 0                              | property_details           | 22                                | 5       |
      | PinCode        | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 63                               | other_details           | 0                              | property_details           | 22                                | 6       |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldModified  | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Dataset |
      | Plot Number    | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 58                               | other_details           | 0                              | property_details           | 22                                | 1       |
      | Address Line 2 | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 59                               | other_details           | 0                              | property_details           | 22                                | 2       |
      | Address Line 3 | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 60                               | other_details           | 0                              | property_details           | 22                                | 3       |
      | Taluka         | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 61                               | other_details           | 0                              | property_details           | 22                                | 4       |
      | Village        | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 62                               | other_details           | 0                              | property_details           | 22                                | 5       |
      | PinCode        | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 63                               | other_details           | 0                              | property_details           | 22                                | 6       |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldModified  | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Dataset |
      | Plot Number    | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 58                               | other_details           | 0                              | property_details           | 22                                | 1       |
      | Address Line 2 | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 59                               | other_details           | 0                              | property_details           | 22                                | 2       |
      | Address Line 3 | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 60                               | other_details           | 0                              | property_details           | 22                                | 3       |
      | Taluka         | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 61                               | other_details           | 0                              | property_details           | 22                                | 4       |
      | Village        | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 62                               | other_details           | 0                              | property_details           | 22                                | 5       |
      | PinCode        | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 63                               | other_details           | 0                              | property_details           | 22                                | 6       |

  Scenario Outline: ACAUTOCAS-3235:  user checks for duplicate collateral <CollateralSubType> and ignores them to create new
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    Then collateral should saved successfully
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ankit.yadav
    @Sanity
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 58                               | other_details           | 0                              | property_details           | 22                                |

     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    @Sanity
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 58                               | other_details           | 0                              | property_details           | 22                                |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 58                               | other_details           | 0                              | property_details           | 22                                |


  Scenario Outline: ACAUTOCAS-1341:  CollateralPage Ownership Details validation for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage with <Collateral_ownershipDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user enters all mandatory information on Ownership section from "<CollateralWB>" under "<Collateral_ownershipDetails>" row <Collateral_ownershipDetails_rowNum>
    And user enters all mandatory fields of Ownership section
    And user checks the duplicates on collateral dedupe check
    And user saves the data of collateral subtype
    Then user should receive message
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ankit.yadav
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 17                                 |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 18                                 |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 19                                 |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 20                                 |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 21                                 |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 22                                 |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 23                                 |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 24                                 |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 17                                 |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 18                                 |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 19                                 |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 20                                 |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 21                                 |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 22                                 |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 23                                 |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 24                                 |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 17                                 |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 18                                 |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 19                                 |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 20                                 |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 21                                 |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 22                                 |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 23                                 |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 24                                 |


#FeatureID-ACAUTOCAS-227,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-17094: CollateralPage Ownership Details validation 1 for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_ownershipDetails>" and row <Collateral_ownershipDetails_rowNum>
    And user enters all mandatory fields of Ownership section
    Then user should receive message
        #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ankit.yadav
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 25                                 |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 25                                 |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 25                                 |


  Scenario Outline: ACAUTOCAS-2245:  CollateralPage Ownership Details validation 2 for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user adds ownerships to the collateral with data from
      | CollateralWB    | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | collateral.xlsx | ownership_details           | 9                                  |
      | collateral.xlsx | ownership_details           | 10                                 |
    And user checks the duplicates on collateral dedupe check
    And user saves the data of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_ownershipDetails>" and row <Collateral_ownershipDetails_rowNum>
    Then user should receive message
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ankit.yadav
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 9                                  |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 9                                  |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 9                                  |

  Scenario Outline: ACAUTOCAS-2246:  CollateralPage Ownership Details validation 3 for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user adds ownerships to the collateral with data from
      | CollateralWB    | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | collateral.xlsx | ownership_details           | 26                                 |
      | collateral.xlsx | ownership_details           | 27                                 |
    And user checks the duplicates on collateral dedupe check
    And user saves the data of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_ownershipDetails>" and row <Collateral_ownershipDetails_rowNum>
    Then user should receive message
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ankit.yadav
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 27                                 |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 27                                 |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 27                                 |


  Scenario Outline: ACAUTOCAS-2247:  CollateralPage Ownership Details validation 4 for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user adds ownerships to the collateral with data from
      | CollateralWB    | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | collateral.xlsx | ownership_details           | 11                                 |
      | collateral.xlsx | ownership_details           | 12                                 |
    And user checks the duplicates on collateral dedupe check
    And user saves the data of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_ownershipDetails>" and row <Collateral_ownershipDetails_rowNum>
    Then user should receive message
           #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ankit.yadav
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 12                                 |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 12                                 |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 12                                 |


  Scenario Outline: ACAUTOCAS-2248:  CollateralPage Ownership Details validation 5 for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user adds ownerships to the collateral with data from
      | CollateralWB    | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | collateral.xlsx | ownership_details           | 28                                 |
      | collateral.xlsx | ownership_details           | 29                                 |
      | collateral.xlsx | ownership_details           | 30                                 |
      | collateral.xlsx | ownership_details           | 31                                 |
    And user checks the duplicates on collateral dedupe check
    And user saves the data of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_ownershipDetails>" and row <Collateral_ownershipDetails_rowNum>
    Then user should receive message
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ankit.yadav
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 31                                 |

      # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 31                                 |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 0                                | other_details           | 0                              | ownership_details           | 31                                 |


  Scenario Outline: ACAUTOCAS-1342: User is able to add a new collateral as for <CollateralSubType> of <ProductType> application at <ApplicationStage> with <Result> message for <Collateral_propertyDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user enters mandatory fields of other details of collateral subtype
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data with "<Result>"
    Then User should receive a proper "<Result>" message
              #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @Sanity
    @ImplementedBy-ankit.yadav
    Examples:
      | Result  | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Success | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 12                                |
      | Success | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 13                                |
      | Success | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 14                                |
      | Success | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 15                                |
      | Success | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 16                                |
      | Success | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 17                                |
      | Success | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 18                                |
      | Success | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 19                                |
      | Success | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 20                                |
      | Success | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 21                                |
      | Success | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                |
      | Success | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 23                                |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 91                                |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 92                                |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 93                                |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 94                                |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 95                                |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 96                                |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 97                                |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 98                                |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 99                                |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 100                               |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 101                               |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Result  | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Success | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 12                                |
      | Success | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 13                                |
      | Success | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 14                                |
      | Success | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 15                                |
      | Success | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 16                                |
      | Success | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 17                                |
      | Success | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 18                                |
      | Success | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 19                                |
      | Success | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 20                                |
      | Success | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 21                                |
      | Success | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                |
      | Success | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 23                                |
      | Failure | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 91                                |
      | Failure | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 92                                |
      | Failure | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 93                                |
      | Failure | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 94                                |
      | Failure | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 95                                |
      | Failure | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 96                                |
      | Failure | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 97                                |
      | Failure | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 98                                |
      | Failure | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 99                                |
      | Failure | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 100                               |
      | Failure | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 101                               |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Result  | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Success | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 12                                |
      | Success | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 13                                |
      | Success | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 14                                |
      | Success | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 15                                |
      | Success | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 16                                |
      | Success | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 17                                |
      | Success | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 18                                |
      | Success | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 19                                |
      | Success | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 20                                |
      | Success | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 21                                |
      | Success | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                |
      | Success | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 23                                |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 91                                |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 92                                |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 93                                |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 94                                |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 95                                |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 96                                |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 97                                |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 98                                |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 99                                |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 100                               |
      | Failure | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 101                               |


  Scenario Outline: ACAUTOCAS-1343: User is able to add a new collateral for <CollateralSubType> of <ProductType> application at <ApplicationStage> with new Global Collateral Number
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user enters mandatory fields of other details of collateral subtype
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    Then user check the global collateral number for newly added collateral to application
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @Sanity
    @ImplementedBy-ankit.yadav
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 12                                |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 13                                |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 14                                |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 15                                |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 16                                |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 17                                |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 18                                |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 19                                |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 20                                |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 21                                |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 23                                |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 12                                |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 13                                |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 14                                |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 15                                |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 16                                |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 17                                |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 18                                |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 19                                |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 20                                |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 21                                |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 23                                |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 12                                |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 13                                |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 14                                |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 15                                |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 16                                |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 17                                |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 18                                |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 19                                |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 20                                |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 21                                |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 23                                |

  Scenario Outline: ACAUTOCAS-1344: User checks for duplicate collateral and ignores them to create new for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    Then collateral should saved successfully
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ankit.yadav
    @Sanity
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 58                               | other_details           | 0                              | property_details           | 22                                |

 # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 58                               | other_details           | 0                              | property_details           | 22                                |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 58                               | other_details           | 0                              | property_details           | 22                                |


  Scenario Outline: ACAUTOCAS-1345: Capture <CollateralSubType> against an application with create another after this one for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user selects create another after this one option
    And user checks the duplicates on collateral dedupe check
    And user saves the data of collateral subtype
    Then CollateralPage remains available to create another collateral
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ankit.yadav
    @Sanity
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | other_details           | 0                              | address_details           | 0                                |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | other_details           | 0                              | address_details           | 0                                |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | other_details           | 0                              | address_details           | 0                                |


  Scenario Outline: ACAUTOCAS-3236:  CollateralPage Property Address Taluka and Village Validation 1 for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage with <Collateral_addressDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters address details of property collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters address details of property collateral
    Then fields Taluka and Village should accept them as if they are defined in masters
              #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    @LoggedBug
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 12                                | property_address          | 135                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 13                                | property_address          | 136                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 14                                | property_address          | 137                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 15                                | property_address          | 138                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 16                                | property_address          | 139                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 17                                | property_address          | 140                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 18                                | property_address          | 141                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 19                                | property_address          | 142                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 20                                | property_address          | 143                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 21                                | property_address          | 144                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 145                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 23                                | property_address          | 146                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 12                                | property_address          | 147                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 13                                | property_address          | 148                              | other_details           | 0                              |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    @LoggedBug
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 12                                | property_address          | 135                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 13                                | property_address          | 136                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 14                                | property_address          | 137                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 15                                | property_address          | 138                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 16                                | property_address          | 139                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 17                                | property_address          | 140                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 18                                | property_address          | 141                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 19                                | property_address          | 142                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 20                                | property_address          | 143                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 21                                | property_address          | 144                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 145                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 23                                | property_address          | 146                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 12                                | property_address          | 147                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 13                                | property_address          | 148                              | other_details           | 0                              |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    @LoggedBug
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 12                                | property_address          | 135                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 13                                | property_address          | 136                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 14                                | property_address          | 137                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 15                                | property_address          | 138                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 16                                | property_address          | 139                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 17                                | property_address          | 140                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 18                                | property_address          | 141                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 19                                | property_address          | 142                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 20                                | property_address          | 143                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 21                                | property_address          | 144                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 22                                | property_address          | 145                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 23                                | property_address          | 146                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 12                                | property_address          | 147                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 13                                | property_address          | 148                              | other_details           | 0                              |


  Scenario Outline: ACAUTOCAS-3237:  CollateralPage Property Address Taluka and Village Validation 2 for <CollateralSubType> of <ProductType> application at <ApplicationStage>  stage with <Collateral_addressDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters address details of property collateral
    Then fields Taluka and Village should accept them as if they are not defined in masters
              #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | collateral.xlsx | property_details           | 12                                | property_address          | 149                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | collateral.xlsx | property_details           | 13                                | property_address          | 150                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | collateral.xlsx | property_details           | 14                                | property_address          | 151                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | collateral.xlsx | property_details           | 15                                | property_address          | 152                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | collateral.xlsx | property_details           | 16                                | property_address          | 153                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | collateral.xlsx | property_details           | 17                                | property_address          | 154                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | collateral.xlsx | property_details           | 18                                | property_address          | 155                              | other_details           | 0                              |

     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | collateral.xlsx | property_details           | 12                                | property_address          | 149                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | collateral.xlsx | property_details           | 13                                | property_address          | 150                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | collateral.xlsx | property_details           | 14                                | property_address          | 151                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | collateral.xlsx | property_details           | 15                                | property_address          | 152                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | collateral.xlsx | property_details           | 16                                | property_address          | 153                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | collateral.xlsx | property_details           | 17                                | property_address          | 154                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | collateral.xlsx | property_details           | 18                                | property_address          | 155                              | other_details           | 0                              |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | collateral.xlsx | property_details           | 12                                | property_address          | 149                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | collateral.xlsx | property_details           | 13                                | property_address          | 150                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | collateral.xlsx | property_details           | 14                                | property_address          | 151                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | collateral.xlsx | property_details           | 15                                | property_address          | 152                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | collateral.xlsx | property_details           | 16                                | property_address          | 153                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | collateral.xlsx | property_details           | 17                                | property_address          | 154                              | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | collateral.xlsx | property_details           | 18                                | property_address          | 155                              | other_details           | 0                              |

###Squash:137607
###Story:CAS-23473
#FeatureID-ACAUTOCAS-227,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-17095: user adds multiple collateral to <ProductType> application at <ApplicationStage> stage with sub type as Construction On Land
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    When user adds property type collateral of "<CollateralSubType>" subtype
      | collateral.xlsx | property_details | 12 |
      | collateral.xlsx | property_details | 13 |
      | collateral.xlsx | property_details | 14 |
      | collateral.xlsx | property_details | 15 |
      | collateral.xlsx | property_details | 16 |
      | collateral.xlsx | property_details | 17 |
      | collateral.xlsx | property_details | 18 |
      | collateral.xlsx | property_details | 19 |
      | collateral.xlsx | property_details | 20 |
      | collateral.xlsx | property_details | 21 |
      | collateral.xlsx | property_details | 22 |
    Then user check the all added collateral to application
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ankit.yadav
    @Sanity
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


###Squash:137607
###Story:CAS-23473
#FeatureID-ACAUTOCAS-227,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-17096: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage with sub type as Construction On Land
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user adds collateral based on "<CollateralSubType>" subtype
    And user views the already added collateral
    Then user should be able to reconcile the "<CollateralSubType>" data successfully
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ankit.yadav
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 12                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 13                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 14                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 15                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 16                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 17                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 18                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 19                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 20                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 21                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 22                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 23                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |

     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 12                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 13                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 14                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 15                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 16                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 17                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 18                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 19                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 20                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 21                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 22                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 23                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 12                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 13                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 14                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 15                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 16                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 17                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 18                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 19                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 20                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 21                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 22                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 23                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |

###Squash:137607
###Story:CAS-23473
#FeatureID-ACAUTOCAS-227,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-17097: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage with sub type as Construction On Land at Enquiry
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user adds collateral based on "<CollateralSubType>" subtype
    And user opens application from enquiry menu
    And user opens Collateral Page for viewing attached collaterals at "<ApplicationStage>"
    And user views the collateral from enquiry menu
    Then user should be able to reconcile the "<CollateralSubType>" data successfully
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ankit.yadav
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 12                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 13                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 14                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 15                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 16                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 17                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 18                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 19                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 20                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 21                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 22                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 23                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 12                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 13                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 14                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 15                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 16                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 17                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 18                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 19                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 20                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 21                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 22                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 23                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 12                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 13                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 14                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 15                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 16                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 17                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 18                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 19                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 20                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 21                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 22                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 23                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |

