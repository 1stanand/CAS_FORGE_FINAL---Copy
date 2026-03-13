@Epic-Loan_Application_Details
@Conventional
@AuthoredBy-vipin.kishor
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-

Feature:De link collateral

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


   #${ ProductType : ["MHF","IHF","LAP","HL"]}
   #${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ ApplicantType:["Individual","Non Individual"]}
   #StoryID:CAS-109708
   #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-richa.singh
  @Release
  
  Scenario Outline:Confirm de link pop up validation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on property Details Page of "<ApplicationStage>"
    When user click on de link button
    Then confirm de link up should be display with as a message "Do you want to proceed with de-linking the Primary Collateral?"
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |



   #${ ProductType : ["MHF","IHF","LAP","HL"]}
   #${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
   #StoryID:CAS-109708
   #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-richa.singh
  @Release
  
  Scenario Outline:Close the confirm de link pop up with the help of <Icon_Btn> at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on property Details Page of "<ApplicationStage>"
    When user click on de link button
    And user close the confirm de link pop up with the help of "<Icon_Btn>"
    Then confirm de link confirmation up should be closed
    Examples:
      | ProductType   | ApplicationStage   | Icon_Btn | ApplicantType   |
      | <ProductType> | <ApplicationStage> | Icon     | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | Button   | <ApplicantType> |


     #${ ProductType : ["MHF","IHF","LAP","HL"]}
   #${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
   #StoryID:CAS-109708
   #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-richa.singh
  @Release
  
  Scenario Outline:Minimize the confirm de link pop up at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on property Details Page of "<ApplicationStage>"
    When user click on de link button
    And user minimize the confirm de link pop up
    Then confirm de link confirmation up should be minimized
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |



    #${ ProductType : ["MHF","IHF","LAP","HL"]}
   #${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
   #StoryID:CAS-109708
   #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-richa.singh
  @Release
  
  Scenario Outline:Maximize the minimized the confirm de link pop up at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on property Details Page of "<ApplicationStage>"
    When user click on de link button
    And user maximize the minimized the confirm de link pop up
    Then confirm de link confirmation up should be maximized
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |

   # ${ ProductType : ["MHF","IHF","LAP","HL"]}
   # ${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
   #StoryID:CAS-109708
   #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-richa.singh
  @Release
  
  @Perishable
  Scenario Outline:De link the collateral at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on property Details Page of "<ApplicationStage>"
    When user click on de link button
    And user confirm the de link of collateral
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 132
    Then collateral should be de linked successfully
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |




   # ${ ProductType : ["MHF","IHF","LAP","HL"]}
   # ${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
   #StoryID:CAS-109708
   #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-richa.singh
  @Release
  
  @Perishable
  Scenario Outline:Activity check after De link the collateral in property details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on property Details Page of "<ApplicationStage>"
    When user click on de link button
    And user confirm the de link of collateral
    And user check activity
    Then successfully delinked message should be present for collateral
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |






   # ${ ProductType : ["MHF","IHF","LAP","HL"]}
   # ${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
   #StoryID:CAS-109708
   #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-richa.singh
  @Release
  
  @Perishable
  Scenario Outline:Button validation after De link the collateral at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on property Details Page of "<ApplicationStage>"
    When user click on de link button
    And user confirm the de link of collateral
    Then following below button should not be display
      | Collateral Refresh |
      | Collateral Update  |
      | Delink             |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |


   # ${ ProductType : ["MHF","IHF","LAP","HL"]}
   # ${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
   #StoryID:CAS-109708
   #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-richa.singh
  @Release
  
  @Perishable
  Scenario Outline:<Tabs> validation after De link the collateral at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on property Details Page of "<ApplicationStage>"
    When user click on de link button
    And user confirm the de link of collateral
    Then "<Tabs>" of collateral will also get deleted
    Examples:
      | ProductType   | ApplicationStage   | Tabs           | ApplicantType   |
      | <ProductType> | <ApplicationStage> | Insurance      | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | CERSAI Details | <ApplicantType> |

   # ${ ProductType : ["MHF","IHF","LAP","HL"]}
   # ${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
   #StoryID:CAS-109708
   #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-richa.singh
  @Release
  
  @Perishable
  Scenario Outline:Collateral fields details validation after De link the collateral at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on property Details Page of "<ApplicationStage>"
    When user click on de link button
    And user confirm the de link of collateral
    Then following below fields should be blank
      | Collateral Number        |
      | Global Collateral Number |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |

    #${ ProductType : ["MHF","IHF","LAP","HL"]}
   # ${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
   #StoryID:CAS-109708
   #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-richa.singh
  @Release
  
  @Perishable
  Scenario Outline:Filled property details validation after De link the collateral at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on property Details Page of "<ApplicationStage>"
    When user click on de link button
    And user confirm the de link of collateral
    Then added property details should be removed
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |

   # ${ ProductType : ["MHF","IHF","LAP","HL"]}
   # ${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
   #StoryID:CAS-109708
   #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-richa.singh
  @Release
  
  @Perishable
  Scenario Outline:Auto compute field validation property details validation after De link the collateral at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on property Details Page of "<ApplicationStage>"
    When user click on de link button
    And user confirm the de link of collateral
    Then following below fields should be removed
      | LCR (%) |
      | LTV (%) |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |


    # ${ ProductType : ["MHF","IHF","LAP","HL"]}
   # ${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
   #StoryID:CAS-109708
   #FeatureID-ACAUTOCAS-181,CAS-109708
#  @NotImplemented
#  Scenario Outline:Collateral dedupe check validation after De link the collateral at <ApplicationStage> in <ProductType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
#    And user open property details
#    And user add property details
#    When user click on de link button
#    And user confirm the de link of collateral
#    Then dedupe match number should be reduced
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |

  @ImplementedBy-richa.singh
  @Release
  
  Scenario Outline:Collateral dedupe check error validation after De link the collateral at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user open asset details of "<ApplicationStage>"
    When user click on de link button
    And user confirm the de link of collateral
    And user check for duplicates
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 135
    Then an error message pop up in property details
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |


   # ${ ProductType : ["MHF","IHF","LAP","HL"]}
   # ${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
   #FeatureID-ACAUTOCAS-181
  @ImplementedBy-richa.singh
  @Release
  
  Scenario Outline:Collateral details validation in CAM report after linking the collateral at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user open asset details of "<ApplicationStage>"
    When user click on CAM report at "<ApplicationStage>"
    Then collateral details should be present under property details section
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |



     # ${ ProductType : ["MHF","IHF","LAP","HL"]}
   # ${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
   #StoryID:CAS-109708
   #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-richa.singh
  @Release
  
  @Perishable
  Scenario Outline:Buttons validation after linking the collateral at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    When user is on property Details Page of "<ApplicationStage>"
    Then following button should be display
      | Collateral Refresh |
      | Collateral Update  |
      | Delink             |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |



   # ${ ProductType : ["MHF","IHF","LAP","HL"]}
   # ${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
   #StoryID:CAS-109708
   #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-richa.singh
  @Release
  
  @Perishable
  Scenario Outline:Tab validation after linking the collateral at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    When user is on property Details Page of "<ApplicationStage>"
    Then following below button should be display
      | Insurance      |
      | CERSAI Details |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |

   # ${ ProductType : ["MHF","IHF","LAP","HL"]}
   # ${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
   #StoryID:CAS-109708
   #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-richa.singh
  @Release
  
  Scenario Outline:Collateral details validation after linking the collateral at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on property Details Page of "<ApplicationStage>"
    And  user click on de link button
    And user confirm the de link of collateral
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 108
    When user fills the property details home page
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 25
    And user fills other details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 52
    And user fills the property address
    And user click on check for duplicates
    And user saves the property details
    Then following below fields should be auto filled in property details
      | Collateral Number        |
      | Global Collateral Number |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |


      # ${ ProductType : [""MHF","IHF","LAP","HL""]}
   # ${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
   #FeatureID-ACAUTOCAS-181
  @Deferred
  Scenario Outline:Collateral details validation in CAM report after de link the collateral at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user open property details
    And user add property details
    And user click on de link button
    And user confirm the de link of collateral
    When user checks CAM report
    Then collateral details should be blank under asset details section
    Examples:
      | ProductType   | ApplicationStage | ApplicantType   |
      | <ProductType> | <ApplicationSt   | <ApplicantType> |



    #${ ProductType : ["MHF","IHF","LAP","HL"]}
    #${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ ApplicantType:["Individual","Non Individual"]}
   #StoryID:CAS-109708
   #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-richa.singh
  @Release
  
  @Perishable
  Scenario Outline:If the Collateral is de linked at the <ApplicationStage> stage in property details in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on property Details Page of "<ApplicationStage>"
    When user click on de link button
    And user confirm the de link of collateral
    And user moves to the next stage without filling property details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 133
    Then application should not move to next stage
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |

  #${ ProductType : ["MHF","IHF","LAP","HL"]}
    #${ ApplicationStage:["Post Approval","Disbursal"]}
   #${ ApplicantType:["Individual","Non Individual"]}
   #StoryID:CAS-109708
   #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-richa.singh
  @Release
  
  @Perishable
  Scenario Outline:de link button validation at <ApplicationStage> stage in property details in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    When user is on property Details Page of "<ApplicationStage>"
    Then de link button should not be present
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |


#Asset Details:

 # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
   # ${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ ApplicantType:["Individual","Non Individual"]}
   #StoryID:CAS-109708
   #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-richa.singh
  @Release
  
  Scenario Outline:Confirm de link pop up validation in assets details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user open asset details of "<ApplicationStage>"
    When user click on de link button in asset details
    Then confirm de link pop up should be display with as a message "Do you want to proceed with de-linking the Primary Collateral?"
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |



   # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
   # ${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
   #StoryID:CAS-109708
   #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-richa.singh
  @Release
  
  Scenario Outline:Close the confirm de link pop up with the help of <Icon_Btn> in assets details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user open asset details of "<ApplicationStage>"
    When user click on de link button in asset details
    And user close the confirm de link pop up in asset details with the help of "<Icon_Btn>"
    Then confirm de link confirmation pop up should be closed
    Examples:
      | ProductType   | ApplicationStage   | Icon_Btn | ApplicantType   |
      | <ProductType> | <ApplicationStage> | Icon     | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | Button   | <ApplicantType> |

    # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
   # ${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
   #StoryID:CAS-109708
   #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-richa.singh
  @Release
  
  Scenario Outline:Minimize the confirm de link pop up in assets details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user open asset details of "<ApplicationStage>"
    When user click on de link button in asset details
    And user minimize the confirm de link pop up in asset details
    Then confirm de link confirmation pop up should be minimized
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |



     # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
   # ${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
   #StoryID:CAS-109708
   #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-richa.singh
  @Release
  
  Scenario Outline:Maximize the minimized the confirm de link pop up in assets details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user open asset details of "<ApplicationStage>"
    When user click on de link button in asset details
    And user maximize the minimized the confirm de link pop up in asset details
    Then confirm de link confirmation pop up should be maximized
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |

   # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
   # ${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
   #StoryID:CAS-109708
   #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-richa.singh
  @Release
  
  @Perishable
  Scenario Outline:De link the collateral in assets details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user open asset details of "<ApplicationStage>"
    When user click on de link button in asset details
    And user confirm the de link of collateral in asset details
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 74
    Then collateral in asset details should be de linked successfully
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |




   # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
   # ${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
   #StoryID:CAS-109708
   #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-richa.singh
  @Release
  
  @Perishable
  Scenario Outline:Activity check after De link the collateral in assets details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user open asset details of "<ApplicationStage>"
    And user click on de link button in asset details
    And user confirm the de link of collateral in asset details
    When user check activity
    Then successfully delinked message should be present for collateral
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |


   # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
   # ${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
   #StoryID:CAS-109708
   #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-richa.singh
  @Release
  
  @Perishable
  Scenario Outline:Button validation after De link the collateral in assets details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user open asset details of "<ApplicationStage>"
    When user click on de link button in asset details
    And user confirm the de link of collateral in asset details
    Then following below button should not be display in asset details
      | Collateral Refresh |
      | Delink             |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |

   # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
   # ${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
   #StoryID:CAS-109708
   #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-richa.singh
  @Release
  
  @Perishable
  Scenario Outline:<Tabs> validation after De link the collateral in assets details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user open asset details of "<ApplicationStage>"
    When user click on de link button in asset details
    And user confirm the de link of collateral in asset details
    Then "<Tabs>" of collateral will also get deleted in asset details
    Examples:
      | ProductType   | ApplicationStage   | Tabs           | ApplicantType   |
      | <ProductType> | <ApplicationStage> | Insurance      | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | CERSAI Details | <ApplicantType> |

  # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
  # ${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
  #StoryID:CAS-109708
  #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-pallavi.singh
  @Release
  
  @Perishable
  Scenario Outline:Collateral fields details validation after De link the collateral in assets details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user open asset details of "<ApplicationStage>"
    And user click on de link button in asset details
    When user confirm the delink of collateral in asset details
    Then following below fields should be blank
      | Collateral Number        |
      | Global Collateral Number |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |

  # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
  # ${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
  #StoryID:CAS-109708
  #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-pallavi.singh
  @Release
  
  @Perishable
  Scenario Outline:Filled asset details validation after De link the collateral in assets details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user open asset details of "<ApplicationStage>"
    And user click on de link button in asset details
    When user confirm the delink of collateral in asset details
    Then added asset details should be removed
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |

   # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
   # ${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
   #StoryID:CAS-109708
   #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-richa.singh
  @Release
  
  @Perishable
  Scenario Outline:Auto compute field validation in asset details after De link the collateral at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user open asset details of "<ApplicationStage>"
    When user click on de link button in asset details
    And user confirm the de link of collateral in asset details
    Then following below fields should be removed in asset details
      | LTV (%): |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |


    # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
   # ${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
   #StoryID:CAS-109708
   #FeatureID-ACAUTOCAS-181,CAS-109708
#  @NotImplemented
#  Scenario Outline:Collateral dedupe check validation after De link the collateral in assets details at <ApplicationStage> in <ProductType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
#    And user open asset details
#    And user add asset details
#    When user click on de link button
#    And user confirm the de link of collateral
#    Then dedupe match number should be reduced
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |

  @ImplementedBy-richa.singh
  @Release
  
  Scenario Outline:Collateral dedupe check error validation after De link the collateral in assets details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user open asset details of "<ApplicationStage>"
    When user click on de link button in asset details
    And user confirm the de link of collateral in asset details
    And user clicks on check for the duplicates
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 76
    Then an error message pop up in asset details
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |


      # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
   # ${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
   #FeatureID-ACAUTOCAS-181
  @Deferred
  Scenario Outline:Collateral details validation in CAM report after de link the collateral in assets details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user open asset details
    And user add asset details
    And user click on de link button
    And user confirm the de link of collateral
    When user checks CAM report
    Then collateral details should be blank under asset details section
    Examples:
      | ProductType   | ApplicationStage | ApplicantType   |
      | <ProductType> | <ApplicationSt   | <ApplicantType> |



  # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
  # ${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
  #StoryID:CAS-109708
  #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-pallavi.singh
  @Release
  
  Scenario Outline:Buttons validation after linking the collateral in assets details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    When user open asset details of "<ApplicationStage>"
    Then following below button should be visible in asset details
      | Collateral Refresh |
      | Delink             |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |


  # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
  # ${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
  #StoryID:CAS-109708
  #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-pallavi.singh
  @Release
  
  Scenario Outline:Tab validation after linking the collateral in assets details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    When user open asset details of "<ApplicationStage>"
    Then following below tabs should be visible in asset details
      | Insurance      |
      | CERSAI Details |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |

  # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
  # ${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  # ${ ApplicantType:["Individual","Non Individual"]}
  #StoryID:CAS-109708
  #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-pallavi.singh
  @Release
  
  Scenario Outline:Collateral details validation after linking the collateral in assets details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    When user open asset details of "<ApplicationStage>"
    Then following below fields should be auto filled
      | Collateral Number        |
      | Global Collateral Number |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |




   # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
   # ${ ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
   #FeatureID-ACAUTOCAS-181
  @NotImplemented
  Scenario Outline:Collateral details validation in CAM report after linking the collateral in assets details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user open asset details
    And user add asset details
    When user checks CAM report
    Then collateral details should be present under asset details section
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |


  #${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
  #${ ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ ApplicantType:["Individual","Non Individual"]}
  #StoryID:CAS-109708
  #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-pallavi.singh
  @Release
  
  @Perishable
  Scenario Outline:If the Collateral is de linked at the <ApplicationStage> stage in assets details in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user open asset details of "<ApplicationStage>"
    And user click on de link button in asset details
    And user confirm the delink of collateral in asset details
    And user moves to the next stage without filling asset details
    When user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 75
    Then application should not move to next stage
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |


  #${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
  #${ ApplicationStage:["Post Approval","Disbursal"]}
  #${ ApplicantType:["Individual","Non Individual"]}
  #StoryID:CAS-109708
  #FeatureID-ACAUTOCAS-181,CAS-109708
  @ImplementedBy-pallavi.singh
  @Release
  
  Scenario Outline:de link button validation at <ApplicationStage> stage in assets details in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    When user open asset details of "<ApplicationStage>"
    Then de link button should not be present
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |
