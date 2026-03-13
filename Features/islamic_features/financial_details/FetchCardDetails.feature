@Epic-Applicant_Information
@AuthoredBy-manish.yadav2
@ReviewedBy-jagriti.mungali
@ImplementedBy-manish.yadav2
@PQMStory
# ${ApplicantType:["indiv","nonindiv"]}

#Story-CAS-197570
Feature: Fetch Card Details in Liability Details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  # PQM-1_CAS-197570, 3_CAS-197570
  # PMG-5_CAS-197570
  #FeatureID-ACAUTOCAS-163
  Scenario Outline: ACAUTOCAS-17131: validate Authority <AuthorityName> is <AddedNotAdded> in the roles
    And maker logged in "Common Masters" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<RolesMastersWB>" under sheet "<RolesMasters_roles>" and row <RolesMasters_roles_rowNum>
    And user navigates to role master
    And user opens role in edit mode
    When user searches "<AuthorityName>" authority in selected authority list
    Then authority "<AuthorityName>" should be "<AddedNotAdded>" in the roles
    And maker logout from common masters
    @Release
    @Islamic
    Examples:
      | RolesMastersWB     | RolesMasters_roles | RolesMasters_roles_rowNum | AuthorityName      | AddedNotAdded |
      | roles_masters.xlsx | roles              | 0                         | FETCH_CARD_DETAILS | added         |

    @Release
    @Conventional
    Examples:
      | RolesMastersWB     | RolesMasters_roles | RolesMasters_roles_rowNum | AuthorityName      | AddedNotAdded |
      | roles_masters.xlsx | roles              | 1                         | FETCH_CARD_DETAILS | added         |

    @ReleaseFetchCardDetailsOff
    @Islamic
    Examples:
      | RolesMastersWB     | RolesMasters_roles | RolesMasters_roles_rowNum | AuthorityName      | AddedNotAdded |
      | roles_masters.xlsx | roles              | 0                         | FETCH_CARD_DETAILS | not added     |

    @ReleaseFetchCardDetailsOff
    @Conventional
    Examples:
      | RolesMastersWB     | RolesMasters_roles | RolesMasters_roles_rowNum | AuthorityName      | AddedNotAdded |
      | roles_masters.xlsx | roles              | 1                         | FETCH_CARD_DETAILS | not added     |

  @ReleaseFetchCardDetailsOff
  # PQM-2_CAS-197570
  #FeatureID-ACAUTOCAS-163
  Scenario Outline: ACAUTOCAS-17133: validate Fetch Card Details button should not be visible to user at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open financial details
    When user clicks on liability details
    Then Fetch Card Details button should not be visible in Liability Details

    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Conventional
    # ${ProductType:["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  # PQM-4_CAS-197570
  # PMG-1_CAS-197570
  #FeatureID-ACAUTOCAS-163
  Scenario Outline: ACAUTOCAS-17134: validate Fetch Card Details button should be visible at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open financial details
    When user clicks on liability details
    Then Fetch Card Details button should be visible in Liability Details

    @Islamic
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Release
    @Conventional
    # ${ProductType:["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  @Islamic
  @Conventional
  @Release
  # PQM-5_CAS-197570, 6_CAS-197570
  #FeatureID-ACAUTOCAS-163
  Scenario Outline: ACAUTOCAS-17135: validate "config fetch card deatils service mode" configuration should be present in DB
    When user run the query to get property_value where property_key is config.fetch.card.deatils.service.mode from Database
    Then property_key config.fetch.card.deatils.service.mode should be present with property_value as "<property_value>"
    Examples:
      | property_value |
      | service        |
    @RunConfig-1
    Examples:
      | property_value |
      | bean:beanName  |


  # PQM-7_CAS-197570
  # PMG-2_CAS-197570, 3_CAS-197570
  #FeatureID-ACAUTOCAS-163
  Scenario Outline: ACAUTOCAS-17136: validate Fetch Card Details button should be visible for "config fetch card deatils service mode" configuration as <property_value> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open financial details
    When user clicks on liability details
    Then Fetch Card Details button should be visible in Liability Details

    @Islamic
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | property_value |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | service        |

    @Islamic
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | property_value |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | service        |

    @Release
    @Conventional
    # ${ProductType:["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | property_value |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | service        |

    @Islamic
    @ReleaseFetchCardDetailsAsBeanName
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | property_value |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | bean:beanName  |

    @Islamic
    @ReleaseFetchCardDetailsAsBeanName
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | property_value |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | bean:beanName  |

    @Conventional
    @ReleaseFetchCardDetailsAsBeanName
    # ${ProductType:["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | property_value |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | bean:beanName  |

  # PQM-8_CAS-197570
  # PMG-4_CAS-197570
  #FeatureID-ACAUTOCAS-163
  Scenario Outline: ACAUTOCAS-17346: validate Fetch Card Details button should not be visible for "config fetch card deatils service mode" configuration as <property_value> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open financial details
    When user clicks on liability details
    Then Fetch Card Details button should not be visible in Liability Details

    @Islamic
    @ReleaseFetchCardDetailsAsBlank
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | property_value |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | blank          |

    @Islamic
    @ReleaseFetchCardDetailsAsBlank
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | property_value |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | blank          |

    @ReleaseFetchCardDetailsAsBlank
    @Conventional
    # ${ProductType:["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | property_value |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | blank          |

  @Perishable
  # PQM-10_CAS-197570, 34_CAS-197570
  # PMG-6_CAS-197570, 7_CAS-197570
  #FeatureID-ACAUTOCAS-163
  Scenario Outline: ACAUTOCAS-17347: validate Liability Details should be fetched from CreditCardExternalSearchBasicDetails at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open financial details
    When user clicks on liability details
    And user clicks on Fetch Card Details button
    Then Liability Details should be fetched from CreditCardExternalSearchBasicDetails
    @ReleaseFetchCardDetailsAsBeanName
    @Islamic
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | financial_details.xlsx | liability_details                 | 254                                      |
    @ReleaseFetchCardDetailsAsBeanName
    @Islamic
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | financial_details.xlsx | liability_details                 | 254                                      |
    @ReleaseFetchCardDetailsAsBeanName
    @Release
    @Conventional
    # ${ProductType:["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | financial_details.xlsx | liability_details                 | 285                                      |

  @Perishable
  # PQM-10_CAS-197570, 34_CAS-197570
  # PMG-6_CAS-197570, 7_CAS-197570
  #FeatureID-ACAUTOCAS-163
Scenario Outline: ACAUTOCAS-18063: validate message should get stamped in activity for Liability Details fetched from CreditCardExternalSearchBasicDetails at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open financial details
    When user clicks on liability details
    And user clicks on Fetch Card Details button
    Then proper message should get stamped in activity tab
    @ReleaseFetchCardDetailsAsBeanName
    @Islamic
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | financial_details.xlsx | liability_details                 | 254                                      |
    @ReleaseFetchCardDetailsAsBeanName
    @Islamic
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | financial_details.xlsx | liability_details                 | 254                                      |
    @ReleaseFetchCardDetailsAsBeanName
    @Release
    @Conventional
    # ${ProductType:["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | financial_details.xlsx | liability_details                 | 285                                      |

  @Perishable
  # PMG-8_CAS-197570, 15_CAS-197570, 19_CAS-197570
  #FeatureID-ACAUTOCAS-163
Scenario Outline: ACAUTOCAS-18064: validate Liability Details record should be added in grid after fetched from CreditCardExternalSearchBasicDetails at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open financial details
    When user clicks on liability details
    And user clicks on Fetch Card Details button
    Then liability details should be added in liability details grid successfully
    @ReleaseFetchCardDetailsAsBeanName
    @Islamic
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | financial_details.xlsx | liability_details                 | 254                                      |
    @ReleaseFetchCardDetailsAsBeanName
    @Islamic
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | financial_details.xlsx | liability_details                 | 254                                      |
    @ReleaseFetchCardDetailsAsBeanName
    @Release
    @Conventional
    # ${ProductType:["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | financial_details.xlsx | liability_details                 | 285                                      |

  @Perishable
  # PMG-9_CAS-197570, 16_CAS-197570, 20_CAS-197570
  #FeatureID-ACAUTOCAS-163
Scenario Outline: ACAUTOCAS-18065: validate Liability Details gets populated in View Liability Details modal window after fetched from CreditCardExternalSearchBasicDetails at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open financial details
    When user clicks on liability details
    And user clicks on Fetch Card Details button
    And user open the saved liability details to view the details
    Then view liability modal windows opens along with the data populated in all the fields
    @ReleaseFetchCardDetailsAsBeanName
    @Islamic
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | financial_details.xlsx | liability_details                 | 254                                      |
    @ReleaseFetchCardDetailsAsBeanName
    @Islamic
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | financial_details.xlsx | liability_details                 | 254                                      |
    @ReleaseFetchCardDetailsAsBeanName
    @Release
    @Conventional
    # ${ProductType:["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | financial_details.xlsx | liability_details                 | 285                                      |

  @Perishable
  # PMG-10_CAS-197570, 17_CAS-197570, 21_CAS-197570
  #FeatureID-ACAUTOCAS-163
Scenario Outline: ACAUTOCAS-18066: validate Liability Details fetched from CreditCardExternalSearchBasicDetails should be not editable at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open financial details
    When user clicks on liability details
    And user clicks on Fetch Card Details button
    And user open the saved liability details to edit the details
    Then user should not be able to edit the captured data of liability details
    @ReleaseFetchCardDetailsAsBeanName
    @Islamic
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | financial_details.xlsx | liability_details                 | 254                                      |
    @ReleaseFetchCardDetailsAsBeanName
    @Islamic
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | financial_details.xlsx | liability_details                 | 254                                      |
    @ReleaseFetchCardDetailsAsBeanName
    @Release
    @Conventional
    # ${ProductType:["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | financial_details.xlsx | liability_details                 | 285                                      |

  # PQM-11_CAS-197570
  # PMG-14_CAS-197570
  #FeatureID-ACAUTOCAS-163
  Scenario Outline: ACAUTOCAS-17348: validate in liability details <var> option should be available in source system dropdown at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open financial details
    When user clicks on liability details
    And user clicks on Add Liability
    Then "<var>" option should be available in source system dropdown

    @Islamic
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | var                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Card Management System |

    @Islamic
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | var                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Card Management System |

    @Release
    @Conventional
    # ${ProductType:["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | var                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Card Management System |

  # PQM-12_CAS-197570
  #FeatureID-ACAUTOCAS-163
  Scenario Outline: ACAUTOCAS-17349: validate code as <Code> with name as <Name> in Finance Type field in Liability Details at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open financial details
    When user clicks on liability details
    And user clicks on Add Liability
    Then code as "<Code>" with name as "<Name>" in Finance Type field in Liability Details should be present

    @Islamic
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Code                   | Name        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | CREDIT CARD OUSTANDING | Credit Card |

    @Islamic
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Code                   | Name        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | CREDIT CARD OUSTANDING | Credit Card |

    @Release
    @Conventional
    # ${ProductType:["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Code                   | Name        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | CREDIT CARD OUSTANDING | Credit Card |

  # PQM-13_CAS-197570
  # PMG-13_CAS-197570
  #FeatureID-ACAUTOCAS-163
  Scenario Outline: ACAUTOCAS-17350: validate Card Type field should be visible in Liability Details at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open financial details
    And user clicks on liability details
    And user clicks on Add Liability
    When user selects Finance Type as "CREDIT CARD OUSTANDING"
    Then "<FieldName>" of liability details should be "<Behaviour>"

    @Islamic
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | FieldName | Behaviour |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Card Type | display   |

    @Islamic
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FieldName | Behaviour |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Card Type | display   |

    @Release
    @Conventional
    # ${ProductType:["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FieldName | Behaviour |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Card Type | display   |

  # PQM-14_CAS-197570
  #FeatureID-ACAUTOCAS-163
  Scenario Outline: ACAUTOCAS-17351: validate <FieldName> should of <FieldType> type in Liability Details at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open financial details
    And user clicks on liability details
    And user clicks on Add Liability
    When user selects Finance Type as "CREDIT CARD OUSTANDING"
    Then "<FieldName>" field of liability should be "<FieldType>" field

    @Islamic
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | FieldName | FieldType     | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Card Type | auto complete | financial_details.xlsx | liability_details                 | 252                                      |

    @Islamic
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FieldName | FieldType     | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Card Type | auto complete | financial_details.xlsx | liability_details                 | 252                                      |

    @Release
    @Conventional
    # ${ProductType:["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FieldName | FieldType     | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Card Type | auto complete | financial_details.xlsx | liability_details                 | 284                                      |

  @26MarFix
  # PQM-19_CAS-197570
  #FeatureID-ACAUTOCAS-163
  Scenario Outline: ACAUTOCAS-17352: validate tooltip should be visible on <FieldName> in Liability Details at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open financial details
    And user clicks on liability details
    And user clicks on Add Liability
    When user hover on "<FieldName>" in Liability Details
    Then tooltip should be displayed for "<FieldName>" in Liability Details

    @Islamic
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | FieldName                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Internal/External            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Source System                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Liability Type               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Finance Type                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Institution Name             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Principal Outstanding        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Installment Frequency        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Installment Amount           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Joint Liability Percentage   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Account Number/Card Number   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Sanction Amount/Credit Limit |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | ROI Percentage               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | No.of Defaults               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Closure Amount               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | End Use of Finance           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Description                  |

    @Islamic
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FieldName                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Internal/External            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Source System                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Liability Type               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Finance Type                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Institution Name             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Principal Outstanding        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Installment Frequency        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Installment Amount           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Joint Liability Percentage   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Account Number/Card Number   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Sanction Amount/Credit Limit |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | ROI Percentage               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | No.of Defaults               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Closure Amount               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | End Use of Finance           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description                  |

    @Release
    @Conventional
    # ${ProductType:["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FieldName                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Internal/External            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Source System                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Liability Type               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Finance Type                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Institution Name             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Principal Outstanding        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Installment Frequency        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Installment Amount           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Joint Liability Percentage   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Account Number/Card Number   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Sanction Amount/Credit Limit |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | ROI Percentage               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | No.of Defaults               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Closure Amount               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | End Use of Finance           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description                  |

  @26MarFix
  # PQM-19_CAS-197570
  #FeatureID-ACAUTOCAS-163
  Scenario Outline: ACAUTOCAS-17353: validate tooltip name by hover on <FieldName> in Liability Details at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open financial details
    And user clicks on liability details
    And user clicks on Add Liability
    When user hover on "<FieldName>" in Liability Details
    Then tooltip name should be same as "<FieldName>" in Liability Details

    @Islamic
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | FieldName                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Internal/External            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Source System                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Liability Type               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Finance Type                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Institution Name             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Principal Outstanding        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Installment Frequency        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Installment Amount           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Joint Liability Percentage   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Account Number/Card Number   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Sanction Amount/Credit Limit |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | ROI Percentage               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | No.of Defaults               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Closure Amount               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | End Use of Finance           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Description                  |

    @Islamic
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FieldName                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Internal/External            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Source System                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Liability Type               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Finance Type                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Institution Name             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Principal Outstanding        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Installment Frequency        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Installment Amount           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Joint Liability Percentage   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Account Number/Card Number   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Sanction Amount/Credit Limit |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | ROI Percentage               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | No.of Defaults               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Closure Amount               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | End Use of Finance           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description                  |

    @Release
    @Conventional
    # ${ProductType:["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FieldName                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Internal/External            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Source System                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Liability Type               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Finance Type                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Institution Name             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Principal Outstanding        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Installment Frequency        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Installment Amount           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Joint Liability Percentage   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Account Number/Card Number   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Sanction Amount/Credit Limit |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | ROI Percentage               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | No.of Defaults               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Closure Amount               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | End Use of Finance           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description                  |

  @Perishable
  # PQM-21_CAS-197570
  #FeatureID-ACAUTOCAS-163
  Scenario Outline: ACAUTOCAS-17354: validate without filling Card Type field Liability Details should be saved successfully at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open financial details
    And user clicks on liability details
    And user clicks on Add Liability
    When user selects Finance Type as "CREDIT CARD OUSTANDING" do not fill Card Type field Save liability details
    Then liability details should be saved successfully

    @Islamic
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | financial_details.xlsx | liability_details                 | 252                                      |

    @Islamic
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | financial_details.xlsx | liability_details                 | 252                                      |

    @Release
    @Conventional
    # ${ProductType:["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | financial_details.xlsx | liability_details                 | 284                                      |

  @Perishable
  # PQM-22_CAS-197570
  #FeatureID-ACAUTOCAS-163
  Scenario Outline: ACAUTOCAS-17355: validate Card Type field of liability details should be non editable from Enquiry screen at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open financial details
    And user clicks on liability details
    And user clicks on Add Liability
    And user fill all fields of liability details
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from enquiry screen
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open financial details
    And user clicks on liability details
    And user open the saved liability details to view the details
    Then "<FieldName>" of liability details should be "<Behaviour>"

    @Islamic
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | FieldName | Behaviour    | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Card Type | non editable | financial_details.xlsx | liability_details                 | 252                                      |

    @Islamic
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FieldName | Behaviour    | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Card Type | non editable | financial_details.xlsx | liability_details                 | 252                                      |

    @Release
    @Conventional
    # ${ProductType:["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FieldName | Behaviour    | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Card Type | non editable | financial_details.xlsx | liability_details                 | 284                                      |

  @Perishable
  # PQM-22_CAS-197570
  #FeatureID-ACAUTOCAS-163
  Scenario Outline: ACAUTOCAS-17356: validate Card Type field of liability details should be non editable from Hold grid at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open financial details
    And user clicks on liability details
    And user clicks on Add Liability
    And user fill all fields of liability details
    And user exits the Applicant Details
    And user holds the application from exit option
    When user search for an application present of "<ProductType>" application at "<ApplicationStage>" stage in hold application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open financial details
    And user clicks on liability details
    And user open the saved liability details to view the details
    Then "<FieldName>" of liability details should be "<Behaviour>"

    @Islamic
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | FieldName | Behaviour    | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Card Type | non editable | financial_details.xlsx | liability_details                 | 252                                      |

    @Islamic
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FieldName | Behaviour    | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Card Type | non editable | financial_details.xlsx | liability_details                 | 252                                      |

    @Release
    @Conventional
    # ${ProductType:["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FieldName | Behaviour    | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Card Type | non editable | financial_details.xlsx | liability_details                 | 284                                      |

  @Perishable
  # PQM-23_CAS-197570
  #FeatureID-ACAUTOCAS-163
  Scenario Outline: ACAUTOCAS-17357: validate liability details data filled in <ApplicationStage> stage should be visible in <MovedStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open financial details
    And user clicks on liability details
    And user clicks on Add Liability
    And user fill all fields of liability details
    When user moves from "<ApplicationStage>" to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<MovedStage>" for "<Category>" with "<Key>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<MovedStage>" for "<Category>" with "<Key2>" from application grid
    And user navigates to applicant details page of "<FinalMovedStage>"
    And click on view edit detailed info
    And user open financial details
    And user clicks on liability details
    And user open the saved liability details to view the details
    Then previous filled data of liability details should be visible

    @Islamic
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing"]}
    # ${MovedStage:["Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Key2            | MovedStage      | FinalMovedStage | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |                 | <MovedStage>    | <MovedStage>    | financial_details.xlsx | liability_details                 | 252                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | BONDS      |     |                 | Post Approval   | Post Approval   | financial_details.xlsx | liability_details                 | 252                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | BONDS      |     |                 | Disbursal       | Disbursal       | financial_details.xlsx | liability_details                 | 252                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | METALS     |     |                 | Post Approval   | Post Approval   | financial_details.xlsx | liability_details                 | 252                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | METALS     |     |                 | Disbursal       | Disbursal       | financial_details.xlsx | liability_details                 | 252                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | SHARES     |     | isPost Approval | Reconsideration | Post Approval   | financial_details.xlsx | liability_details                 | 252                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | SHARES     |     | isDisbursal     | Reconsideration | Disbursal       | financial_details.xlsx | liability_details                 | 252                                      |

    @Islamic
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing"]}
    # ${MovedStage:["Login Acceptance","DDE","Reconsideration","Post Approval","Disbursal","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Key2 | MovedStage   | FinalMovedStage | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |      | <MovedStage> | <MovedStage>    | financial_details.xlsx | liability_details                 | 252                                      |

    @Release
    @Conventional
    # ${ProductType:["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details"]}
    # ${MovedStage:["Login Acceptance","DDE","Reconsideration","Post Approval","Disbursal","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Key2 | MovedStage   | FinalMovedStage | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |      | <MovedStage> | <MovedStage>    | financial_details.xlsx | liability_details                 | 284                                      |

  # PQM-24_CAS-197570
  # PMG-12_CAS-197570, 14_CAS-197570
  #FeatureID-ACAUTOCAS-163
  Scenario Outline: ACAUTOCAS-17358: validate Is Balance Transfer checkbox should not be visible for source system as Card Management System in Liability Details at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open financial details
    And user clicks on liability details
    And user clicks on Add Liability
    When user selects source system as "Card Management System" in Liability Details
    Then Is Balance Transfer Top Up checkbox should not be visible in Liability Details

    @Islamic
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Release
    @Conventional
    # ${ProductType:["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  # PQM-25_CAS-197570
  #FeatureID-ACAUTOCAS-163
  Scenario Outline: ACAUTOCAS-17359: validate Is Balance Transfer checkbox should be visible for source system as Core Banking in Liability Details at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open financial details
    And user clicks on liability details
    And user clicks on Add Liability
    When user selects source system as "Core Banking" in Liability Details
    Then Is Balance Transfer Top Up checkbox should be visible in Liability Details

    @Islamic
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Release
    @Conventional
    # ${ProductType:["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  @Perishable
  # PQM-26_CAS-197570
  #FeatureID-ACAUTOCAS-163
  Scenario Outline: ACAUTOCAS-17360: validate validation Host CIF number does not exist in Liability Details at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And do not fill host id in personal information
    And user open financial details
    And user clicks on liability details
    When user clicks on Fetch Card Details button
    Then validation must come as Host CIF number does not exist

    @Islamic
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | financial_details.xlsx | liability_details                 | 287                                      |

    @Islamic
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | financial_details.xlsx | liability_details                 | 287                                      |

    @Release
    @Conventional
    # ${ProductType:["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | financial_details.xlsx | liability_details                 | 286                                      |

  @Perishable
  # PQM-35_CAS-197570
  #FeatureID-ACAUTOCAS-163
Scenario Outline: ACAUTOCAS-18067: validate delete button should not be visible for Liability Details fetched from CreditCardExternalSearchBasicDetails at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open financial details
    And user clicks on liability details
    When user clicks on Fetch Card Details button
    And Liability Details should be fetched from CreditCardExternalSearchBasicDetails
    Then delete button should not be visible in liability details

    @Islamic
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | financial_details.xlsx | liability_details                 | 254                                      |

    @Islamic
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | financial_details.xlsx | liability_details                 | 254                                      |

    @Release
    @Conventional
    # ${ProductType:["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | financial_details.xlsx | liability_details                 | 285                                      |

  @Perishable
  # PQM-37_CAS-197570
  # PMG-11_CAS-197570, 18_CAS-197570, 22_CAS-197570
  #FeatureID-ACAUTOCAS-163
Scenario Outline: ACAUTOCAS-18068: validate <FieldName> should be <Behaviour> in Liability Details fetched from CreditCardExternalSearchBasicDetails at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open financial details
    And user clicks on liability details
    When user clicks on Fetch Card Details button
    And user open the saved liability details to edit the details
    And user uncheck Consider for obligation checkbox in liability details
    Then "<FieldName>" of liability details should be "<Behaviour>"
    @ReleaseFetchCardDetailsAsBeanName
    @Islamic
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | FieldName               | Behaviour |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Consider for obligation | editable  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Reason                  | editable  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Comments on Reason      | editable  |
    @ReleaseFetchCardDetailsAsBeanName
    @Islamic
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FieldName               | Behaviour |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Consider for obligation | editable  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Reason                  | editable  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Comments on Reason      | editable  |
    @ReleaseFetchCardDetailsAsBeanName
    @Release
    @Conventional
    # ${ProductType:["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FieldName               | Behaviour |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Consider for obligation | editable  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Reason                  | editable  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Comments on Reason      | editable  |

  @26MarFix
  # PQM-15_CAS-197570, 16_CAS-197570, 17_CAS-197570, 18_CAS-197570
  #FeatureID-ACAUTOCAS-163
Scenario Outline: ACAUTOCAS-18069: validate <var> value of Card Type should be <AvailableNotAvailable> in Liability Details at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open financial details
    And user clicks on liability details
    And user clicks on Add Liability
    And user selects Finance Type as "CREDIT CARD OUSTANDING"
    When user selects Card Type in liability details
    Then Card Type value should be "<AvailableNotAvailable>" to select

    @Islamic
    @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | var                     | AvailableNotAvailable | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | not available value     | not available         | financial_details.xlsx | liability_details                 | 305                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Inactive Card Type      | not available         | financial_details.xlsx | liability_details                 | 306                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Max Character Card Type | available             | financial_details.xlsx | liability_details                 | 307                                      |

    @Islamic
    @Release
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | var                     | AvailableNotAvailable | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | not available value     | not available         | financial_details.xlsx | liability_details                 | 305                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Inactive Card Type      | not available         | financial_details.xlsx | liability_details                 | 306                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Max Character Card Type | available             | financial_details.xlsx | liability_details                 | 307                                      |

    @Release
    @Conventional
    # ${ProductType:["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | var                     | AvailableNotAvailable | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | not available value     | not available         | financial_details.xlsx | liability_details                 | 308                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Inactive Card Type      | not available         | financial_details.xlsx | liability_details                 | 309                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Max Character Card Type | available             | financial_details.xlsx | liability_details                 | 310                                      |
