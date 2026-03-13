@AuthoredBy-rsurya.kumar
@Epic-Applicant_Information
# ${ApplicantType:["nonindiv"]}
#Author:rsurya.kumar
#ScriptedBy:
#ReviewedBy:
#Scenarios:
Feature: Addition of corporate rating to non individual customer

#  In this feature we will update corporate rating to a non individual customer

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


###Squash:
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
  Scenario Outline: ACAUTOCAS-12492:  Entity validation for corporate rating grid of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to Corporate Rating
    Then user should be able to see Corporate Rating grid with correct field labels
      | applicant_information.xlsx | corporate_rating_labels | 0 |
      | applicant_information.xlsx | corporate_rating_labels | 1 |
      | applicant_information.xlsx | corporate_rating_labels | 2 |
      | applicant_information.xlsx | corporate_rating_labels | 3 |
      | applicant_information.xlsx | corporate_rating_labels | 4 |
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |



###Squash:
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
  Scenario Outline: ACAUTOCAS-12493:  Disabled Field for corporate rating grid of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    Then user should be able to see disabled fields
      | FieldName    |
      | Rating Grade |
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |


###Squash:
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
  Scenario Outline: ACAUTOCAS-12494:  Entity validation for corporate rating screen of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    Then user should be able to see Corporate Rating fields with correct label
      | applicant_information.xlsx | corporate_rating_labels | 1 |
      | applicant_information.xlsx | corporate_rating_labels | 2 |
      | applicant_information.xlsx | corporate_rating_labels | 3 |
      | applicant_information.xlsx | corporate_rating_labels | 4 |
      | applicant_information.xlsx | corporate_rating_labels | 5 |
      | applicant_information.xlsx | corporate_rating_labels | 6 |
      | applicant_information.xlsx | corporate_rating_labels | 7 |
      | applicant_information.xlsx | corporate_rating_labels | 8 |
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |



###Squash:164451
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
  @ImplementedBy-harshprit.kumar
  Scenario Outline: ACAUTOCAS-12495:  Field "Rating Agency" list validation for corporate rating of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Corporate Rating
    When user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_masterSetup>"
    Then user should be able to see list of values sorted in ascending order for "Rating Agency"
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_masterSetup | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | master_setup                     | <ApplicantType> |          |     |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_masterSetup | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | master_setup                     | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_masterSetup | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | master_setup                     | <ApplicantType> | <Category> |     |


###Squash:164451
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
  Scenario Outline: ACAUTOCAS-12496:  Field "Rating Agency" search validation for corporate rating of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    Then user should be able to search Rating Agency by single character
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 19                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 20                                          | <ApplicantType> |          |     |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 19                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 20                                          | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 19                                          | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 20                                          | <ApplicantType> | <Category> |     |

###Squash:164451
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
  Scenario Outline: ACAUTOCAS-12497:  Field "Rating Scale" list validation for corporate rating of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Corporate Rating
    When user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    And user enters data of "Rating Agency"
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_masterSetup>"
    Then user should be able to see list of values sorted in ascending order for "Rating Scale"
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantInformation_masterSetup | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | master_setup                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 1                                           | master_setup                     | <ApplicantType> |          |     |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantInformation_masterSetup | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | master_setup                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 1                                           | master_setup                     | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantInformation_masterSetup | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | master_setup                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 1                                           | master_setup                     | <ApplicantType> | <Category> |     |


###Squash:164454
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
  Scenario Outline: ACAUTOCAS-12498:  Cancel operation on corporate rating screen of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user clicks on applicant information
    And user opens detailed information of "customer" in applicant information
    And user navigates to Corporate Rating
    When user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    And user enters data for Rating Agency
    And user cancels the operation
    Then user should be able to come back to the corporate rating grid screen without any message
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType        | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ApplicationStage> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType        | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ApplicationStage> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType        | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> | <Category> |     |


###Squash:
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
  @LoggedBug
  Scenario Outline: ACAUTOCAS-12499:  Field Rating Grade list validation for corporate rating of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    When user enters data for Corporate Rating
    Then Rating Grade value should be correctly updated
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 1                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 4                                           | <ApplicantType> |          |     |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 1                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 4                                           | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 1                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 4                                           | <ApplicantType> | <Category> |     |


###Squash:
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
  Scenario Outline: ACAUTOCAS-12500:  Field "Rating Outlook" list validation for corporate rating of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Corporate Rating
    When user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_masterSetup>"
    Then user should be able to see list of values for "Rating Outlook" present in masters
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_masterSetup | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | master_setup                     | <ApplicantType> |          |     |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_masterSetup | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | master_setup                     | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_masterSetup | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | master_setup                     | <ApplicantType> | <Category> |     |


###Squash:
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
  Scenario Outline: ACAUTOCAS-12501:  Field "Status" list validation for corporate rating of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Corporate Rating
    When user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_masterSetup>"
    Then user should be able to see list of values for "Rating Outlook" present in masters
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_masterSetup | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | master_setup                     | <ApplicantType> |          |     |

      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_masterSetup | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | master_setup                     | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_masterSetup | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | master_setup                     | <ApplicantType> | <Category> |     |


###Squash:
###Story:CAS-120070
###Bug:
  @Sanity
    @LoggedBug
#FeatureID-ACAUTOCAS-8505,CAS-120070
  Scenario Outline: ACAUTOCAS-12502:  Field data validation of corporate rating of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    When user enters data for Corporate Rating
    And user saves to add Corporate Rating data
    Then user should be able to save Corporate Rating successfully
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 1                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 4                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 5                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 8                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 10                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 11                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 12                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 13                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 17                                          | <ApplicantType> |          |     |


     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 1                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 4                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 5                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 8                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 10                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 11                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 12                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 13                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 17                                          | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 1                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 4                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 5                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 8                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 10                                          | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 11                                          | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 12                                          | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 13                                          | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 17                                          | <ApplicantType> | <Category> |     |


###Squash:164449
###Story:CAS-120070
###Bug:
  @Sanity
    @LoggedBug
      #FeatureID-ACAUTOCAS-8505,CAS-120070
  Scenario Outline: ACAUTOCAS-12503:  Save and next validation of corporate rating of non individual guarantor of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "guarantor" in applicant information
    When user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    And user enters data for Corporate Rating
    And user saves to add Corporate Rating data
    And user saves all the data to move to the next tab
    Then user should be able to save successfully to move to next tab
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |


     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> | <Category> |     |


###Squash:164454
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
  @Sanity
    @LoggedBug
  Scenario Outline: ACAUTOCAS-12504:  Data deletion of corporate rating of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    And user enters data for Corporate Rating
    And user saves to add Corporate Rating data
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Corporate Rating
    When user deletes the corporate rating
    And user saves Corporate Ratings
    Then user should be able to save Corporate Ratings
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |


    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> | <Category> |     |

###Squash:
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
  @Sanity
    @LoggedBug
  Scenario Outline: ACAUTOCAS-12505:  Data deletion validation of corporate rating of non individual guarantor of "<ProductType>" application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "guarantor" in applicant information
    And user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    And user enters data for Corporate Rating
    And user saves to add Corporate Rating data
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "guarantor" in applicant information
    And user navigates to Corporate Rating
    When user deletes the corporate rating
    And user saves Corporate Ratings
    Then user should be able to save Corporate Ratings
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> | <Category> |     |



###Squash:
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
  @LoggedBug
  Scenario Outline: ACAUTOCAS-12506:  Field Rating Agency validation of corporate rating of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    And user enters data for Corporate Rating
    And user saves to add Corporate Rating data
    And user saves Corporate Ratings
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to Corporate Rating
    And user modifies the corporate rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum2>
    And user changes value of "Rating Agency"
    Then data in "Rating Scale" should get nullified
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantInformation_corporateRating_rowNum2 | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | 1                                            | <ApplicantType> |          |     |


    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantInformation_corporateRating_rowNum2 | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | 1                                            | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantInformation_corporateRating_rowNum2 | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | 1                                            | <ApplicantType> | <Category> |     |




###Squash:
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
  @LoggedBug
  Scenario Outline: ACAUTOCAS-12507:  Field Rating Agency validation of corporate rating of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "guarantor" in applicant information
    And user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    And user enters data for Corporate Rating
    And user saves to add Corporate Rating data
    And user saves Corporate Ratings
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "guarantor" in applicant information
    When user navigates to Corporate Rating
    And user modifies the corporate rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum2>
    And user changes value of "Rating Agency"
    Then data in "Rating Scale" should get nullified
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantInformation_corporateRating_rowNum2 | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | 1                                            | <ApplicantType> |          |     |


     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantInformation_corporateRating_rowNum2 | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | 1                                            | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantInformation_corporateRating_rowNum2 | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | 1                                            | <ApplicantType> | <Category> |     |


###Squash:
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
  @LoggedBug
  Scenario Outline: ACAUTOCAS-12508:  Field "Rating Scale" validation of corporate rating of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    And user enters data for Corporate Rating
    And user saves to add Corporate Rating data
    And user saves Corporate Ratings
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to Corporate Rating
    And user modifies the corporate rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum2>
    And user changes value of "Rating Scale"
    Then data in "Rating Grade" should get modified
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantInformation_corporateRating_rowNum2 | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | 21                                           | <ApplicantType> |          |     |


    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantInformation_corporateRating_rowNum2 | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | 21                                           | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantInformation_corporateRating_rowNum2 | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | 21                                           | <ApplicantType> | <Category> |     |


###Squash:
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
  @LoggedBug
  Scenario Outline: ACAUTOCAS-12509:  Field "Rating Scale" validation of corporate rating of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "guarantor" in applicant information
    And user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    And user enters data for Corporate Rating
    And user saves to add Corporate Rating data
    And user saves Corporate Ratings
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "guarantor" in applicant information
    When user navigates to Corporate Rating
    And user modifies the corporate rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum2>
    And user changes value of "Rating Scale"
    Then data in "Rating Grade" should get modified
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantInformation_corporateRating_rowNum2 | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | 21                                           | <ApplicantType> |          |     |


    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantInformation_corporateRating_rowNum2 | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | 21                                           | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantInformation_corporateRating_rowNum2 | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | 21                                           | <ApplicantType> | <Category> |     |




###Squash:
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
    @LoggedBug-ACAUTOCAS-12042
  Scenario Outline: ACAUTOCAS-12510:  Field data validation 2 of corporate rating of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user has created "<ProductType>" application for non individual customer
    And user has moved the "<ProductType>" application to "<ApplicationStage>" stage
    And user opens the "<ProductType>" application from application menu
    And user navigates to "Applicant Information"
    And user edits customer information
    When user navigates to "Corporate Rating"
    And user enters data in "Corporate Rating" reading from workbook "<SourceDataFile>" under sheet "<SourceSheet>" and row number <SourceSheetRow>
    And user saves the data
    Then user should get a "NotificationMsg" message highlighting the "FieldName" as in excel file "<SourceDataFile>" sheet "<SourceSheet>" row <SourceSheetRow>
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | SourceDataFile            | SourceSheet     | SourceSheetRow | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | CorporateRating | 2              | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | CorporateRating | 3              | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | CorporateRating | 6              | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | CorporateRating | 7              | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | CorporateRating | 9              | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | CorporateRating | 14             | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | CorporateRating | 15             | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | CorporateRating | 16             | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | CorporateRating | 18             | <ApplicantType> |          |     |


    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | SourceDataFile            | SourceSheet     | SourceSheetRow | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | CorporateRating | 2              | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | CorporateRating | 3              | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | CorporateRating | 6              | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | CorporateRating | 7              | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | CorporateRating | 9              | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | CorporateRating | 14             | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | CorporateRating | 15             | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | CorporateRating | 16             | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | CorporateRating | 18             | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | SourceDataFile            | SourceSheet     | SourceSheetRow | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | CorporateRating | 2              | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | CorporateRating | 3              | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | CorporateRating | 6              | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | CorporateRating | 7              | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | CorporateRating | 9              | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | CorporateRating | 14             | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | CorporateRating | 15             | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | CorporateRating | 16             | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | CorporateRating | 18             | <ApplicantType> |          |     |




###Squash:
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
  @LoggedBug
    @Perishable
  Scenario Outline: ACAUTOCAS-12511:  Data validation for corporate rating of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<InitialStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "<key>" in applicant information
    And user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    And user enters data for Corporate Rating
    And user saves to add Corporate Rating data
    And user saves Corporate Ratings
    And user moves application from "<InitialStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" stage without opening it
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "<key>" in applicant information
    When user navigates to Corporate Rating
    And user views the Corporate Rating
    Then user should be able to reconcile data successfully
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType | Category | key      | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 1                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 4                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 5                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 8                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 10                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 11                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 12                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 13                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 17                                          | <ApplicantType> |          |     |


    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType | Category | key      | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 1                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 4                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 5                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 8                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 10                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 11                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 12                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 13                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 17                                          | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType | Category | key      | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 1                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 4                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 5                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 8                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 10                                          | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 11                                          | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 12                                          | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 13                                          | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 17                                          | <ApplicantType> | <Category> |     |




###Squash:
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
  @LoggedBug
  Scenario Outline: ACAUTOCAS-12512:  Data validation 2 for corporate rating of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    And user enters data for Corporate Rating
    And user saves to add Corporate Rating data
    And user saves Corporate Ratings
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to Corporate Rating
    And user modifies the corporate rating
    Then user should be able to reconcile data successfully
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 1                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 4                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 5                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 8                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 10                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 11                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 12                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 13                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 17                                          | <ApplicantType> |          |     |

    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 1                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 4                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 5                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 8                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 10                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 11                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 12                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 13                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 17                                          | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 1                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 4                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 5                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 8                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 10                                          | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 11                                          | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 12                                          | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 13                                          | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 17                                          | <ApplicantType> | <Category> |     |



###Squash:
###Story:CAS-120070
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8505,CAS-120070
    @LoggedBug
  Scenario Outline: ACAUTOCAS-12513:  Multiple record entry validation of corporate rating of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    And And user adds multiple Corporate Rating
      | applicant_information.xlsx | corporate_rating | 0  |
      | applicant_information.xlsx | corporate_rating | 1  |
      | applicant_information.xlsx | corporate_rating | 4  |
      | applicant_information.xlsx | corporate_rating | 5  |
      | applicant_information.xlsx | corporate_rating | 8  |
      | applicant_information.xlsx | corporate_rating | 10 |
      | applicant_information.xlsx | corporate_rating | 11 |
      | applicant_information.xlsx | corporate_rating | 12 |
      | applicant_information.xlsx | corporate_rating | 13 |
      | applicant_information.xlsx | corporate_rating | 17 |
    And user saves Corporate Ratings
    Then user should be able to save Corporate Ratings
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |



###Squash:164462
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
    @LoggedBug-ACAUTOCAS-12042
  Scenario Outline: ACAUTOCAS-12514:  Multiple record sorting validation of corporate rating of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user has created "<ProductType>" application for non individual customer
    And user has moved the "<ProductType>" application to "<ApplicationStage>" stage
    And user has already created corporate rating reading data from workbook "<SourceDataFile>" under sheet "<SourceSheet>" and row number "SourceSheetRow":
      | SourceSheetRow |
      | 0              |
      | 1              |
      | 4              |
      | 5              |
      | 8              |
      | 10             |
      | 11             |
      | 12             |
      | 13             |
      | 17             |
    And user opens the "<ProductType>" application from application menu
    And user navigates to "Applicant Information"
    And user edits customer information
    When user navigates to "Corporate Rating"
    Then user should be able to see data in grid block sorted in descending order of "Last Rating Date"
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | SourceDataFile            | SourceSheet     | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | CorporateRating | <ApplicantType> |          |     |

     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | SourceDataFile            | SourceSheet     | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | CorporateRating | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | SourceDataFile            | SourceSheet     | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | CorporateRating | <ApplicantType> | <Category> |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval","Sent To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
###Squash:
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
  @ImplementedBy-harshprit.kumar

    @LoggedBug
    @Perishable
  Scenario Outline: ACAUTOCAS-12515:  Data validation for corporate rating of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage at Enquiry screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<InitialStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "<key>" in applicant information
    And user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    And user enters data for Corporate Rating
    And user saves to add Corporate Rating data
    And user saves Corporate Ratings
    And user moves application from "<InitialStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" stage without opening it
    And user navigates to Enquiry screen menu option
    And user searches for an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" on enquiry screen
    And user clicks on application stage link on enquiry screen
    And user opens detailed information of "<key>" in applicant information
    When user navigates to Corporate Rating
    Then user should be able to reconcile data of Corporate Rating Grid successfully
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval","Sent To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType | Category | key      | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | key |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 1                                           |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 4                                           |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 5                                           |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 8                                           |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 10                                          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 11                                          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 12                                          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 13                                          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 17                                          |     |

    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType | Category | key      | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 1                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 4                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 5                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 8                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 10                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 11                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 12                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 13                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 17                                          | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType | Category | key      | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 1                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 4                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 5                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 8                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 10                                          | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 11                                          | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 12                                          | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 13                                          | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 17                                          | <ApplicantType> | <Category> |     |


# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval","Sent To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
###Squash:164453
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
  @ImplementedBy-harshprit.kumar

  Scenario Outline: ACAUTOCAS-12516:  Data modification for corporate rating of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage at Enquiry screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<InitialStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "<key>" in applicant information
    And user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    And user enters data for Corporate Rating
    And user saves to add Corporate Rating data
    And user saves Corporate Ratings
    And user moves application from "<InitialStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" stage without opening it
    And user navigates to Enquiry screen menu option
    And user searches for an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" on enquiry screen
    And user clicks on application stage link on enquiry screen
    And user opens detailed information of "<key>" in applicant information
    When user navigates to Corporate Rating
    Then user should not be able to modify Corporate Rating
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType | Category | key      | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | lead details | nonindiv      |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |

    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
#  @Islamic
#    @NotImplemented
#    @Part-3
#    Examples:
#      | ProductType   | ApplicationStage   | InitialStage | ApplicantType | Category | key      | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
#    @Islamic
#    @NotImplemented
#    @Part-3
#    Examples:
#      | ProductType   | ApplicationStage   | InitialStage | ApplicantType | Category | key      | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |


# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
###Squash:
###Story:CAS-120070
###Bug:
    @Sanity
#FeatureID-ACAUTOCAS-8505,CAS-120070
    @ImplementedBy-harshprit.kumar

    @LoggedBug
  Scenario Outline: ACAUTOCAS-12517:  Field data validation of corporate rating of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "guarantor" in applicant information
    And user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    When user enters data for Corporate Rating
    And user saves to add Corporate Rating data
    Then user should be able to save Corporate Rating successfully
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 1                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 4                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 5                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 8                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 10                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 11                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 12                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 13                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 17                                          | <ApplicantType> |          |     |


    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
  @Islamic
    @NotImplemented
    @Part-3
      Examples:
        | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
      Examples:
        | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |



# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Sent To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
###Squash:
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
    @ImplementedBy-harshprit.kumar

    @LoggedBug
    @Perishable
  Scenario Outline: ACAUTOCAS-12518:  Data validation for corporate rating of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<InitialStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "<key>" in applicant information
    And user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    And user enters data for Corporate Rating
    And user saves to add Corporate Rating data
    And user saves Corporate Ratings
    And user moves application from "<InitialStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" stage without opening it
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "<key>" in applicant information
    When user navigates to Corporate Rating
    And user views the Corporate Rating
    Then user should be able to reconcile data successfully
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType   | Category | key       | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 1                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 4                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 5                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 8                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 10                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 11                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 12                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 13                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 17                                          |



    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType   | Category | key       | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 1                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 4                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 5                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 8                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 10                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 11                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 12                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 13                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 17                                          |


	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType   | Category   | key       | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 1                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 4                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 5                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 8                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 10                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 11                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 12                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 13                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 17                                          |



###Squash:
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
  @ImplementedBy-harshprit.kumar
    @LoggedBug
    @Perishable
  Scenario Outline: ACAUTOCAS-12519:  Data validation for corporate rating of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage at Enquiry screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<InitialStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "<key>" in applicant information
    And user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    And user enters data for Corporate Rating
    And user saves to add Corporate Rating data
    And user saves Corporate Ratings
    And user moves application from "<InitialStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" stage without opening it
    And user navigates to Enquiry screen menu option
    And user searches for an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" on enquiry screen
    And user clicks on application stage link on enquiry screen
    And user opens detailed information of "<key>" in applicant information
    When user navigates to Corporate Rating
    Then user should be able to reconcile data of Corporate Rating Grid successfully
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType   | Category | key       | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 1                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 4                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 5                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 8                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 10                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 11                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 12                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 13                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 17                                          |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType   | Category | key       | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 1                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 4                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 5                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 8                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 10                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 11                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 12                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 13                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 17                                          |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType   | Category   | key       | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 1                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 4                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 5                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 8                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 10                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 11                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 12                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 13                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 17                                          |


###Squash:
###Story:CAS-120070
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8505,CAS-120070
    @LoggedBug
  Scenario Outline: ACAUTOCAS-12520:  Field data validation of corporate rating of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "co-applicant" in applicant information
    And user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    When user enters data for Corporate Rating
    And user saves to add Corporate Rating data
    Then user should be able to save Corporate Rating successfully
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 1                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 4                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 5                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 8                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 10                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 11                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 12                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 13                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 17                                          | <ApplicantType> |          |     |


        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 1                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 4                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 5                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 8                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 10                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 11                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 12                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 13                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 17                                          | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 1                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 4                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 5                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 8                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 10                                          | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 11                                          | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 12                                          | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 13                                          | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 17                                          | <ApplicantType> | <Category> |     |




###Squash:
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
  @LoggedBug
    @Perishable
  Scenario Outline: ACAUTOCAS-12521:  Data validation for corporate rating of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<InitialStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "<key>" in applicant information
    And user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    And user enters data for Corporate Rating
    And user saves to add Corporate Rating data
    And user saves Corporate Ratings
    And user moves application from "<InitialStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" stage without opening it
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "<key>" in applicant information
    When user navigates to Corporate Rating
    And user views the Corporate Rating
    Then user should be able to reconcile data successfully
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Sent To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType   | Category | key          | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 1                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 4                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 5                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 8                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 10                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 11                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 12                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 13                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 17                                          |

    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType   | Category | key          | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 1                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 4                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 5                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 8                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 10                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 11                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 12                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 13                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 17                                          |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType   | Category | key          | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 1                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 4                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 5                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 8                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 10                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 11                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 12                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 13                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 17                                          |




###Squash:
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
  @LoggedBug
    @Perishable
  Scenario Outline: ACAUTOCAS-12522:  Data validation for corporate rating of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage at Enquiry screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<InitialStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "<key>" in applicant information
    And user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    And user enters data for Corporate Rating
    And user saves to add Corporate Rating data
    And user saves Corporate Ratings
    And user moves application from "<InitialStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" stage without opening it
    And user navigates to Enquiry screen menu option
    And user searches for an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" on enquiry screen
    And user clicks on application stage link on enquiry screen
    And user opens detailed information of "<key>" in applicant information
    When user navigates to Corporate Rating
    Then user should be able to reconcile data of Corporate Rating Grid successfully
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval","Sent To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType   | Category | key          | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 1                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 4                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 5                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 8                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 10                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 11                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 12                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 13                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 17                                          |


    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType   | Category | key          | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 1                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 4                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 5                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 8                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 10                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 11                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 12                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 13                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 17                                          |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType   | Category   | key          | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | co-applicant | applicant_information.xlsx | corporate_rating                     | 1                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | co-applicant | applicant_information.xlsx | corporate_rating                     | 4                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | co-applicant | applicant_information.xlsx | corporate_rating                     | 5                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | co-applicant | applicant_information.xlsx | corporate_rating                     | 8                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | co-applicant | applicant_information.xlsx | corporate_rating                     | 10                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | co-applicant | applicant_information.xlsx | corporate_rating                     | 11                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | co-applicant | applicant_information.xlsx | corporate_rating                     | 12                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | co-applicant | applicant_information.xlsx | corporate_rating                     | 13                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | co-applicant | applicant_information.xlsx | corporate_rating                     | 17                                          |


###Squash:164450
###Story:CAS-120070
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8505,CAS-120070
    @LoggedBug
  Scenario Outline: ACAUTOCAS-12523:  File attach validation of corporate rating of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    And user enters data for Corporate Rating
    And user attaches images with format as
      | ImageFormat |
      | jpg         |
      | csv         |
      | pdf         |
      | oft         |
      | odt         |
      | txt         |
      | zip         |
      | docx        |
      | doc         |
      | xls         |
      | xlsx        |
      | png         |
      | tif         |
      | gif         |
    And user saves to add Corporate Rating data
    Then user should be able to save Corporate Rating successfully
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |

    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> | <Category> |     |


###Squash:164450
###Story:CAS-120070
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8505,CAS-120070
    @LoggedBug
  Scenario Outline: ACAUTOCAS-12524:  File attach validation of corporate rating of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "guarantor" in applicant information
    When user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    And user enters data for Corporate Rating
    And user attaches images with format as
      | ImageFormat |
      | jpg         |
      | csv         |
      | pdf         |
      | oft         |
      | odt         |
      | txt         |
      | zip         |
      | docx        |
      | doc         |
      | xls         |
      | xlsx        |
      | png         |
      | tif         |
      | gif         |
    And user saves to add Corporate Rating data
    Then user should be able to save Corporate Rating successfully
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |


    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> | <Category> |     |


###Squash:164450
###Story:CAS-120070
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8505,CAS-120070
    @LoggedBug
  Scenario Outline: ACAUTOCAS-12525:  File attach validation of corporate rating of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "co-applicant" in applicant information
    When user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    And user enters data for Corporate Rating
    And user attaches images with format as
      | ImageFormat |
      | jpg         |
      | csv         |
      | pdf         |
      | oft         |
      | odt         |
      | txt         |
      | zip         |
      | docx        |
      | doc         |
      | xls         |
      | xlsx        |
      | png         |
      | tif         |
      | gif         |
    And user saves to add Corporate Rating data
    Then user should be able to save Corporate Rating successfully
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |

     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> | <Category> |     |


###Squash:164450
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
  @LoggedBug
    @Perishable
  Scenario Outline: ACAUTOCAS-12526:  Image validation for corporate rating of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage at Enquiry screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<InitialStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "<key>" in applicant information
    And user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    And user enters data for Corporate Rating
    And user attaches images with format as "<ImageFormat>"
    And user saves to add Corporate Rating data
    And user saves Corporate Ratings
    And user moves application from "<InitialStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" stage without opening it
    And user navigates to Enquiry screen menu option
    And user searches for an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" on enquiry screen
    And user clicks on application stage link on enquiry screen
    And user opens detailed information of "<key>" in applicant information
    When user navigates to Corporate Rating
    And user views the Corporate Rating
    Then user should be able to reconcile the image in "<ImageFormat>" format successfully
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval","Sent To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType   | Category | key          | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ImageFormat |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | jpg         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | csv         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | pdf         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | oft         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | odt         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | txt         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | zip         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | docx        |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | doc         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | xls         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | xlsx        |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | png         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | tif         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | gif         |


     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType   | Category | key          | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ImageFormat |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | jpg         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | csv         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | pdf         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | oft         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | odt         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | txt         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | zip         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | docx        |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | doc         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | xls         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | xlsx        |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | png         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | tif         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | gif         |


	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType   | Category   | key          | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ImageFormat |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | jpg         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | csv         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | pdf         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | oft         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | odt         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | txt         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | zip         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | docx        |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | doc         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | xls         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | xlsx        |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | png         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | tif         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | co-applicant | applicant_information.xlsx | corporate_rating                     | 0                                           | gif         |


###Squash:164450
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
  @Perishable
  Scenario Outline: ACAUTOCAS-12527:  Image validation for corporate rating of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage at Enquiry screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<InitialStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "<key>" in applicant information
    And user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    And user enters data for Corporate Rating
    And user attaches images with format as "<ImageFormat>"
    And user saves to add Corporate Rating data
    And user saves Corporate Ratings
    And user moves application from "<InitialStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" stage without opening it
    And user navigates to Enquiry screen menu option
    And user searches for an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" on enquiry screen
    And user clicks on application stage link on enquiry screen
    And user opens detailed information of "<key>" in applicant information
    When user navigates to Corporate Rating
    And user views the Corporate Rating
    Then user should be able to reconcile the image in "<ImageFormat>" format successfully
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval","Sent To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType   | Category | key       | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ImageFormat |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | jpg         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | csv         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | pdf         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | oft         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | odt         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | txt         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | zip         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | docx        |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | doc         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | xls         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | xlsx        |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | png         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | tif         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | gif         |



     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType   | Category | key       | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ImageFormat |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | jpg         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | csv         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | pdf         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | oft         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | odt         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | txt         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | zip         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | docx        |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | doc         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | xls         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | xlsx        |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | png         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | tif         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | gif         |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType   | Category   | key       | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ImageFormat |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | jpg         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | csv         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | pdf         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | oft         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | odt         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | txt         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | zip         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | docx        |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | doc         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | xls         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | xlsx        |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | png         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | tif         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | guarantor | applicant_information.xlsx | corporate_rating                     | 0                                           | gif         |


###Squash:164450
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
  @Perishable
  Scenario Outline: ACAUTOCAS-12528:  Image validation for corporate rating of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage at Enquiry screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<InitialStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "<key>" in applicant information
    And user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    And user enters data for Corporate Rating
    And user attaches images with format as "<ImageFormat>"
    And user saves to add Corporate Rating data
    And user saves Corporate Ratings
    And user moves application from "<InitialStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" stage without opening it
    And user navigates to Enquiry screen menu option
    And user searches for an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" on enquiry screen
    And user clicks on application stage link on enquiry screen
    And user opens detailed information of "<key>" in applicant information
    When user navigates to Corporate Rating
    And user views the Corporate Rating
    Then user should be able to reconcile the image in "<ImageFormat>" format successfully
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval","Sent To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType   | Category | key      | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ImageFormat |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | jpg         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | csv         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | pdf         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | oft         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | odt         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | txt         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | zip         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | docx        |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | doc         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | xls         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | xlsx        |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | png         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | tif         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | gif         |

    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType   | Category | key      | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ImageFormat |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | jpg         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | csv         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | pdf         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | oft         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | odt         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | txt         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | zip         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | docx        |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | doc         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | xls         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | xlsx        |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | png         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | tif         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | gif         |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType   | Category   | key      | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ImageFormat |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | jpg         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | csv         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | pdf         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | oft         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | odt         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | txt         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | zip         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | docx        |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | doc         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | xls         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | xlsx        |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | png         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | tif         |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | customer | applicant_information.xlsx | corporate_rating                     | 0                                           | gif         |


###Squash:164450
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
  @LoggedBug
  Scenario Outline: ACAUTOCAS-12529:  Attachment deletion for corporate rating of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    And user enters data for Corporate Rating
    And user attaches images with format as
      | ImageFormat |
      | jpg         |
      | csv         |
      | pdf         |
      | oft         |
      | odt         |
      | txt         |
      | zip         |
      | docx        |
      | doc         |
      | xls         |
      | xlsx        |
      | png         |
      | tif         |
      | gif         |
    And user saves to add Corporate Rating data
    And user saves Corporate Ratings
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to Corporate Rating
    And user modifies the corporate rating
    And user deletes the image of "<ImageFormat>" format
    Then user should be able to remove the attachments successfully
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ImageFormat | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | xls         | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | csv         | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | png         | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | txt         | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | gif         | <ApplicantType> |          |     |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ImageFormat | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | xls         | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | csv         | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | png         | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | txt         | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | gif         | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ImageFormat | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | xls         | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | csv         | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | png         | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | txt         | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | gif         | <ApplicantType> | <Category> |     |



###Squash:164455
###Story:CAS-120070
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8505,CAS-120070
    @LoggedBug
  Scenario Outline: ACAUTOCAS-12530:  Validation of corporate rating of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage in expanded mode
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "guarantor" in applicant information
    And user selects Expanded Mode in applicant information
    And user navigates to Corporate Rating in expanded mode
    And user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    When user enters data for Corporate Rating
    And user saves to add Corporate Rating data
    Then user should be able to save Corporate Rating successfully
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 1                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 4                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 5                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 8                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 10                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 11                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 12                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 13                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 17                                          | <ApplicantType> |          |     |

     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 1                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 4                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 5                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 8                                           | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 10                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 11                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 12                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 13                                          | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 17                                          | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 1                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 4                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 5                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 8                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 10                                          | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 11                                          | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 12                                          | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 13                                          | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 17                                          | <ApplicantType> | <Category> |     |


###Squash:164455
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
  @Perishable
  Scenario Outline: ACAUTOCAS-12531:  Data validation for corporate rating of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage at Enquiry screen in expanded mode
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<InitialStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "<key>" in applicant information
    And user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    And user enters data for Corporate Rating
    And user saves to add Corporate Rating data
    And user saves Corporate Ratings
    And user moves application from "<InitialStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" stage without opening it
    And user navigates to Enquiry screen menu option
    And user searches for an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" on enquiry screen
    And user clicks on application stage link on enquiry screen
    And user opens detailed information of "<key>" in applicant information
    And user changes the view mode to Expanded
    When user navigates to Corporate Rating in expanded mode
    Then user should be able to reconcile data of Corporate Rating Grid successfully
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval","Sent To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType   | Category | key      | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 1                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 4                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 5                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 8                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 10                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 11                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 12                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 13                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 17                                          |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType   | Category | key      | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 0                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 1                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 4                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 5                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 8                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 10                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 11                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 12                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 13                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> |          | customer | applicant_information.xlsx | corporate_rating                     | 17                                          |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType   | Category   | key      | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | customer | applicant_information.xlsx | corporate_rating                     | 0                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | customer | applicant_information.xlsx | corporate_rating                     | 1                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | customer | applicant_information.xlsx | corporate_rating                     | 4                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | customer | applicant_information.xlsx | corporate_rating                     | 5                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | customer | applicant_information.xlsx | corporate_rating                     | 8                                           |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | customer | applicant_information.xlsx | corporate_rating                     | 10                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | customer | applicant_information.xlsx | corporate_rating                     | 11                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | customer | applicant_information.xlsx | corporate_rating                     | 12                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | customer | applicant_information.xlsx | corporate_rating                     | 13                                          |
      | <ProductType> | <ApplicationStage> | lead details | <ApplicantType> | <Category> | customer | applicant_information.xlsx | corporate_rating                     | 17                                          |


###Squash:164454,164455
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
  @Sanity
    @LoggedBug
  Scenario Outline: ACAUTOCAS-12532:  Data deletion of corporate rating of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage in expanded mode
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Corporate Rating
    And user clicks on plus icon to add Corporate Rating
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_corporateRating>" and row <ApplicantInformation_corporateRating_rowNum>
    And user enters data for Corporate Rating
    And user saves to add Corporate Rating data
    And user saves Corporate Ratings
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Corporate Rating
    When user deletes the corporate rating
    And user saves Corporate Ratings
    Then user should be able to save Corporate Ratings
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-harshprit.kumar
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_corporateRating | ApplicantInformation_corporateRating_rowNum | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | applicant_information.xlsx | corporate_rating                     | 0                                           | <ApplicantType> | <Category> |     |
