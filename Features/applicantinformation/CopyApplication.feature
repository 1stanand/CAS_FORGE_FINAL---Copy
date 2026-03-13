@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@Perishable
@AppInfoAdoption
@Copy
Feature:Copy application

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

   #FeatureID-ACAUTOCAS-328
  Scenario Outline: ACAUTOCAS-12475: Search applications for copy application on the basis of "<Field1>" with incorrect "<Field2>"
    And user picks and set application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" in context from perishable pool
    And user navigates to copy application screen
    When user search "<ApplicantType>" application on the basis of "<Field1>" with incorrect "<Field2>"
    Then application should be "<Searched>" successfully
     #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["DDE"]}
      #${ApplicantType:["indiv"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-ashutosh.kumar2
    Examples:
      | Field1                  | Field2                  | Searched     | ProductType   | ApplicantType   | ApplicationStage   | Category | key |
      | Application Number      | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Number      | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Number      | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Number      | Customer Name           | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Form Number | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Form Number | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Form Number | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Form Number | Customer Name           | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Number         | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Number         | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Number         | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Number         | Customer Name           | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | CIF Number              | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | CIF Number              | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | CIF Number              | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | CIF Number              | Customer Name           | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Name           | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Name           | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Name           | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Name           | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["DDE"]}
   #${ApplicantType:["indiv"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Field1                  | Field2                  | Searched     | ProductType   | ApplicantType   | ApplicationStage   | Category | key |
      | Application Number      | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Number      | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Number      | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Number      | Customer Name           | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Form Number | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Form Number | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Form Number | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Form Number | Customer Name           | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Number         | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Number         | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Number         | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Number         | Customer Name           | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | CIF Number              | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | CIF Number              | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | CIF Number              | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | CIF Number              | Customer Name           | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Name           | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Name           | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Name           | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Name           | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

      #${ProductType:["IPF"]}
      #${ApplicationStage:["DDE"]}
      #${Category:["bonds"]}
     #${ApplicantType:["indiv"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Field1                  | Field2                  | Searched     | ProductType   | ApplicantType   | ApplicationStage   | Category   | key |
      | Application Number      | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Application Number      | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Application Number      | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Application Number      | Customer Name           | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Application Form Number | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Application Form Number | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Application Form Number | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Application Form Number | Customer Name           | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Customer Number         | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Customer Number         | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Customer Number         | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Customer Number         | Customer Name           | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | CIF Number              | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | CIF Number              | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | CIF Number              | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | CIF Number              | Customer Name           | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Customer Name           | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Customer Name           | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Customer Name           | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Customer Name           | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
    @NotImplemented
     # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE"]}
    Examples:
      | Field1                  | Field2                  | Searched     | ProductType   | ApplicantType   | ApplicationStage   | Category | key |
      | Application Number      | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Number      | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Number      | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Number      | Customer Name           | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Form Number | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Form Number | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Form Number | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Form Number | Customer Name           | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Number         | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Number         | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Number         | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Number         | Customer Name           | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | CIF Number              | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | CIF Number              | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | CIF Number              | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | CIF Number              | Customer Name           | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Name           | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Name           | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Name           | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Name           | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  @Sanity
  #FeatureID-ACAUTOCAS-328
  Scenario Outline: ACAUTOCAS-12476: On Copying an application new application id generated in "<ProductType>"
    And user picks and set application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" in context from perishable pool
    And user navigates to copy application screen
    And user searches the particular application in copy application screen
    And user reads data from the excel file "<CopyApplicationWB>" under sheet "<CopyApplication_home>" and row <CopyApplication_home_rowNum>
    When user copy the application
    And user record the generated application
    Then new application id generated after coping application

     #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["DDE"]}
    #${ApplicantType:["indiv"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    @Release @Part-2
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |

       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["DDE"]}
   #${ApplicantType:["indiv"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | copy_application.xlsx | personal             | 25                          |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["DDE"]}
      #${Category:["bonds"]}
   #${ApplicantType:["indiv"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | copy_application.xlsx | personal             | 25                          |
    @NotImplemented
     # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
     # ${ApplicationStage:["DDE"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |



    #RCU,CII created if secondary collateral available in first application

     #FeatureID-ACAUTOCAS-328
  @Sanity
  Scenario Outline: ACAUTOCAS-12477: On Copying an application <Task> task generated in "<ProductType>"
    And user picks and set application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" in context from perishable pool
    And user navigates to copy application screen
    And user searches the particular application in copy application screen
    And user reads data from the excel file "<CopyApplicationWB>" under sheet "<CopyApplication_home>" and row <CopyApplication_home_rowNum>
    When user copy the application
    And user record the generated application
    Then "<Task>" task should be generated after Copying the  Application

     #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["DDE"]}
    #${ApplicantType:["indiv"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    @Release @Part-2
    Examples:
      | Task                                | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | FII                                 | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |
      | RCU INITIATION                      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |
      | COLLATERAL INVESTIGATION INITIATION | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |


       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["DDE"]}
   #${ApplicantType:["indiv"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Task                                | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | FII                                 | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 25                          |
      | COLLATERAL INVESTIGATION INITIATION | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 25                          |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["DDE"]}
      #${Category:["bonds"]}
   #${ApplicantType:["indiv"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Task                                | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | FII                                 | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | copy_application.xlsx | personal             | 25                          |
      | COLLATERAL INVESTIGATION INITIATION | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | copy_application.xlsx | personal             | 25                          |
    @NotImplemented
     # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE"]}
    Examples:
      | Task                                | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | FII                                 | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |
      | RCU INITIATION                      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |
      | COLLATERAL INVESTIGATION INITIATION | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |


   #FeatureID-ACAUTOCAS-328
  Scenario Outline: ACAUTOCAS-12478: Document status of new generated application matched with from which application copied in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 216
    And user select the document
    And user selects document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user navigates to copy application screen
    And user searches the particular application in copy application screen
    And user reads data from the excel file "<CopyApplicationWB>" under sheet "<CopyApplication_home>" and row <CopyApplication_home_rowNum>
    And user copy the application
    And user record the generated application
    And user opens the copied application
    When user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 216
    And user select the document
    Then document Status for the copied Application is "Received"

     #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["DDE"]}
    #${ApplicantType:["indiv"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    @Release @Part-2
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |

       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["DDE"]}
   #${ApplicantType:["indiv"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 25                          |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["DDE"]}
      #${Category:["bonds"]}
   #${ApplicantType:["indiv"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | copy_application.xlsx | personal             | 25                          |
    @NotImplemented
     # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |


   #FeatureID-ACAUTOCAS-328
  Scenario Outline: ACAUTOCAS-12479: After copying the application perform the move to next stage in "<ProductType>"
    And user picks and set application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" in context from perishable pool
    And user navigates to copy application screen
    And user searches the particular application in copy application screen
    And user reads data from the excel file "<CopyApplicationWB>" under sheet "<CopyApplication_home>" and row <CopyApplication_home_rowNum>
    When user copy the application
    And user record the generated application
    And user opens the copied application
    And click on move to next stage
    Then error message should be displayed while moving the application to next stage

         #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["DDE"]}
    #${ApplicantType:["indiv"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    @Release @Part-2
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |


       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["DDE"]}
   #${ApplicantType:["indiv"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 25                          |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["DDE"]}
      #${Category:["bonds"]}
   #${ApplicantType:["indiv"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | copy_application.xlsx | personal             | 25                          |
    @NotImplemented
     # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |


    #FeatureID-ACAUTOCAS-328
  Scenario Outline: ACAUTOCAS-12480: After copying an application update identification of the copied application in "<ProductType>"
    And user picks and set application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" in context from perishable pool
    And user navigates to copy application screen
    And user searches the particular application in copy application screen
    And user reads data from the excel file "<CopyApplicationWB>" under sheet "<CopyApplication_home>" and row <CopyApplication_home_rowNum>
    When user copy the application
    And user record the generated application
    And user opens the copied application
    And user navigate to personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section
    And user fill identification details
    And user click on the dedupe
    Then identification details should be updated successfully

     #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["DDE"]}
    #${ApplicantType:["indiv"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    @Release @Part-2
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | identification              | 1                                  | copy_application.xlsx | personal             | 10                          |


       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["DDE"]}
   #${ApplicantType:["indiv"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | identification              | 1                                  | copy_application.xlsx | personal             | 25                          |

         #${ProductType:["IPF"]}
       #${ApplicationStage:["DDE"]}
      #${Category:["bonds"]}
   #${ApplicantType:["indiv"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | personal_information.xlsx | identification              | 1                                  | copy_application.xlsx | personal             | 25                          |
    @NotImplemented
     # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | identification              | 1                                  | copy_application.xlsx | personal             | 10                          |



   #FeatureID-ACAUTOCAS-328
  Scenario Outline: ACAUTOCAS-12481: Copying an application where applicant Identification Expiry Date is crossed in "<ProductType>"
    And user picks and set application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" in context from perishable pool
    And user navigates to copy application screen
    And user searches the particular application in copy application screen
    And user reads data from the excel file "<CopyApplicationWB>" under sheet "<CopyApplication_home>" and row <CopyApplication_home_rowNum>
    When user copy the application
    And user record the generated application
    And user opens the copied application
    And user navigate to personal information screen on "<ApplicationStage>"
    And user clicks on the identification section
    And click on the save button
    Then user validate that the message "Check for dedupe is Mandatory before save" should be displayed successfully

         #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["DDE"]}
    #${ApplicantType:["indiv"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    @Release @Part-2
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |

  #${ProductType:["IPF"]}
       #${ApplicationStage:["DDE"]}
      #${Category:["bonds"]}
   #${ApplicantType:["indiv"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | copy_application.xlsx | personal             | 25                          |


       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["DDE"]}
   #${ApplicantType:["indiv"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 25                          |




     #FeatureID-ACAUTOCAS-328
  Scenario Outline: ACAUTOCAS-12482: After copying an application update financial details of the copied application in "<ProductType>"
    And user picks and set application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" in context from perishable pool
    And user navigates to copy application screen
    And user searches the particular application in copy application screen
    And user reads data from the excel file "<CopyApplicationWB>" under sheet "<CopyApplication_home>" and row <CopyApplication_home_rowNum>
    When user copy the application
    And user record the generated application
    And user opens the copied application
    And user navigate to personal information screen on "<ApplicationStage>"
    And user clicks on Financial Details
    And user update the Financial Details with save
    Then income details should be saved successfully

     #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["DDE"]}
    #${ApplicantType:["indiv"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    @Release @Part-2
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |


       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["DDE"]}
   #${ApplicantType:["indiv"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 25                          |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["DDE"]}
      #${Category:["bonds"]}
   #${ApplicantType:["indiv"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | copy_application.xlsx | personal             | 25                          |
    @NotImplemented
     # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |


 #FeatureID-ACAUTOCAS-328
  Scenario Outline: ACAUTOCAS-12483: After copying an application update document details of the copied application in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 216
    And user select the document
    And user selects document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user navigates to copy application screen
    And user searches the particular application in copy application screen
    And user reads data from the excel file "<CopyApplicationWB>" under sheet "<CopyApplication_home>" and row <CopyApplication_home_rowNum>
    And user copy the application
    And user record the generated application
    And user opens the copied application
    When user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 216
    And user select the document
    Then document Status for the copied Application is "Received"

       #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["DDE"]}
    #${ApplicantType:["indiv"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    @Release @Part-2
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | auto                 | 27                          |


       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["DDE"]}
   #${ApplicantType:["indiv"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | auto                 | 27                          |


       #${ProductType:["IPF"]}
       #${ApplicationStage:["DDE"]}
      #${Category:["bonds"]}
   #${ApplicantType:["indiv"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | copy_application.xlsx | auto                 | 27                          |

    @NotImplemented
     # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | auto                 | 27                          |


#Non individual

   #FeatureID-ACAUTOCAS-328
  Scenario Outline: ACAUTOCAS-12484: Search non individual applications for copy application on the basis of "<Field1>" with incorrect "<Field2>" in "<ProductType>"
    And user picks and set application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" in context from perishable pool
    And user navigates to copy application screen
    When user search "<ApplicantType>" application on the basis of "<Field1>" with incorrect "<Field2>"
    Then application should be "<Searched>" successfully
       #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["DDE"]}
    #${ApplicantType:["nonindiv"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    @Release @Part-2
    Examples:
      | Field1                  | Field2                  | Searched     | ProductType   | ApplicantType   | ApplicationStage   | Category | key |
      | Application Number      | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Number      | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Number      | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Number      | Institute Name          | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Form Number | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Form Number | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Form Number | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Form Number | Institute Name          | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Number         | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Number         | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Number         | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Number         | Institute Name          | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | CIF Number              | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | CIF Number              | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | CIF Number              | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | CIF Number              | Institute Name          | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Institute Name          | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Institute Name          | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Institute Name          | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Institute Name          | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |


       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["DDE"]}
     #${ApplicantType:["nonindiv"]}
    @Islamic
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Field1                  | Field2                  | Searched     | ProductType   | ApplicantType   | ApplicationStage   | Category | key |
      | Application Number      | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Number      | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Number      | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Number      | Institute Name          | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Form Number | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Form Number | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Form Number | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Form Number | Institute Name          | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Number         | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Number         | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Number         | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Number         | Institute Name          | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | CIF Number              | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | CIF Number              | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | CIF Number              | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | CIF Number              | Institute Name          | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Institute Name          | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Institute Name          | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Institute Name          | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Institute Name          | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["DDE"]}
      #${Category:["bonds"]}
     #${ApplicantType:["nonindiv"]}
    @Islamic
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Field1                  | Field2                  | Searched     | ProductType   | ApplicantType   | ApplicationStage   | Category   | key |
      | Application Number      | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Application Number      | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Application Number      | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Application Number      | Institute Name          | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Application Form Number | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Application Form Number | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Application Form Number | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Application Form Number | Institute Name          | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Customer Number         | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Customer Number         | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Customer Number         | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Customer Number         | Institute Name          | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | CIF Number              | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | CIF Number              | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | CIF Number              | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | CIF Number              | Institute Name          | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Institute Name          | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Institute Name          | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Institute Name          | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Institute Name          | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
    @NotImplemented
     # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE"]}
    Examples:
      | Field1                  | Field2                  | Searched     | ProductType   | ApplicantType   | ApplicationStage   | Category | key |
      | Application Number      | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Number      | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Number      | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Number      | Institute Name          | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Form Number | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Form Number | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Form Number | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Application Form Number | Institute Name          | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Number         | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Number         | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Number         | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Customer Number         | Institute Name          | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | CIF Number              | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | CIF Number              | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | CIF Number              | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | CIF Number              | Institute Name          | searched     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Institute Name          | Application Number      | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Institute Name          | Application Form Number | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Institute Name          | Customer Number         | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | Institute Name          | CIF Number              | not searched | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |



    #FeatureID-ACAUTOCAS-328
  @Sanity
  Scenario Outline: ACAUTOCAS-12485: On Copying non individual application new application id generated in "<ProductType>"
    And user picks and set application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" in context from perishable pool
    And user navigates to copy application screen
    And user searches a non individual application on copy Application Screen
    And user reads data from the excel file "<CopyApplicationWB>" under sheet "<CopyApplication_home>" and row <CopyApplication_home_rowNum>
    When user copy the application
    And user record the generated application
    Then new application id generated after coping application
      #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["DDE"]}
     #${ApplicantType:["nonindiv"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    @Release @Part-2
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |


       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["DDE"]}
    #${ApplicantType:["nonindiv"]}
    @Islamic
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["DDE"]}
      #${Category:["bonds"]}
   #${ApplicantType:["nonindiv"]}
    @Islamic
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | copy_application.xlsx | personal             | 10                          |
    @NotImplemented
     # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |

     #FeatureID-ACAUTOCAS-328
  Scenario Outline: ACAUTOCAS-12486: On Copying non individual application <Task> task generated in "<ProductType>"
    And user picks and set application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" in context from perishable pool
    And user navigates to copy application screen
    And user searches a non individual application on copy Application Screen
    And user reads data from the excel file "<CopyApplicationWB>" under sheet "<CopyApplication_home>" and row <CopyApplication_home_rowNum>
    When user copy the application
    And user record the generated application
    Then "<Task>" task should be generated after Copying the  Application
    

     #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["DDE"]}
     #${ApplicantType:["nonindiv"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    @Release @Part-2
    Examples:
      | Task | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | RCU  | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |
      | FII  | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |
      | CII  | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |


       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["DDE"]}
     #${ApplicantType:["nonindiv"]}
    @Islamic
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Task | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | RCU  | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |
      | FII  | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |
      | CII  | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["DDE"]}
      #${Category:["bonds"]}
   #${ApplicantType:["nonindiv"]}
    @Islamic
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Task | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | RCU  | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | copy_application.xlsx | personal             | 10                          |
      | FII  | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | copy_application.xlsx | personal             | 10                          |
      | CII  | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | copy_application.xlsx | personal             | 10                          |
    @NotImplemented
     # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE"]}
    Examples:
      | Task | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | RCU  | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |
      | FII  | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |
      | CII  | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |



    #FeatureID-ACAUTOCAS-328
  Scenario Outline: ACAUTOCAS-12487: Document status of new generated application matched with from which non individual application copied in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 216
    And user select the document
    And user selects document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user navigates to copy application screen
    And user searches a non individual application on copy Application Screen
    And user reads data from the excel file "<CopyApplicationWB>" under sheet "<CopyApplication_home>" and row <CopyApplication_home_rowNum>
    And user copy the application
    And user record the generated application
    And user opens the copied application
    When user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 216
    And user select the document
    Then document Status for the copied Application is "Received"
   
     #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["DDE"]}
     #${ApplicantType:["nonindiv"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    @Release @Part-2
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | auto                 | 27                          |

       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["DDE"]}
     #${ApplicantType:["nonindiv"]}
    @Islamic
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | auto                 | 27                          |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["DDE"]}
      #${Category:["bonds"]}
     #${ApplicantType:["nonindiv"]}
    @Islamic
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | copy_application.xlsx | auto                 | 27                          |
    @NotImplemented
     # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | auto                 | 27                          |


   #FeatureID-ACAUTOCAS-328
  Scenario Outline: ACAUTOCAS-12488: After copying the non individual application perform the move to next stage in "<ProductType>"
    And user picks and set application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" in context from perishable pool
    And user navigates to copy application screen
    And user searches a non individual application on copy Application Screen
    And user reads data from the excel file "<CopyApplicationWB>" under sheet "<CopyApplication_home>" and row <CopyApplication_home_rowNum>
    When user copy the application
    And user record the generated application
    And user opens the copied application
    And click on move to next stage
    Then error message should be displayed while moving the application to next stage
    
     #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["DDE"]}
      #${ApplicantType:["nonindiv"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    @Release @Part-2
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | DDE         | nonindiv      | DDE              | bonds    |     | copy_application.xlsx | personal             | 25                          |


       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["DDE"]}
     #${ApplicantType:["nonindiv"]}
    @Islamic
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["DDE"]}
      #${Category:["bonds"]}
     #${ApplicantType:["nonindiv"]}
    @Islamic
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | copy_application.xlsx | personal             | 10                          |
    @NotImplemented
     # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |


    #FeatureID-ACAUTOCAS-328
  @Sanity
  Scenario Outline: ACAUTOCAS-12489: After copying non individual application update identification of the copied application in "<ProductType>"
    And user picks and set application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" in context from perishable pool
    And user navigates to copy application screen
    And user searches a non individual application on copy Application Screen
    And user reads data from the excel file "<CopyApplicationWB>" under sheet "<CopyApplication_home>" and row <CopyApplication_home_rowNum>
    When user copy the application
    And user record the generated application
    And user opens the copied application
    And user navigate to customer details screen on "DDE"
    And user clicks on "<Mode>" mode button
    And user open identification accordion
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_identification>" and row 152
    When user selects Identification Type for non individual customer as "<IdentificationType>"
    And user fills "Identification Number" with "InputType" in identification
    And user clicks on check for duplicates
    And user clicks "Save" button
    Then identification details should be added successfully
   

     #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["DDE"]}
     #${ApplicantType:["nonindiv"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    @Release @Part-2
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Mode     | CustomerDetailsWB     | CustomerDetails_identification | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Expanded | customer_details.xlsx | identification                 | copy_application.xlsx | auto                 | 27                          |


       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["DDE"]}
    #${ApplicantType:["nonindiv"]}
    @Islamic
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Mode     | CustomerDetailsWB     | CustomerDetails_identification | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Expanded | customer_details.xlsx | identification                 | copy_application.xlsx | auto                 | 27                          |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["DDE"]}
      #${Category:["bonds"]}
     #${ApplicantType:["nonindiv"]}
    @Islamic
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Mode     | CustomerDetailsWB     | CustomerDetails_identification | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Expanded | customer_details.xlsx | identification                 | copy_application.xlsx | auto                 | 27                          |
    @NotImplemented
     # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Mode     | CustomerDetailsWB     | CustomerDetails_identification | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Expanded | customer_details.xlsx | identification                 | copy_application.xlsx | auto                 | 27                          |

  @Sanity
  Scenario Outline: ACAUTOCAS-12490: After copying non individual application update financial details of the copied application in "<ProductType>"
    And user picks and set application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" in context from perishable pool
    And user navigates to copy application screen
    And user searches a non individual application on copy Application Screen
    And user reads data from the excel file "<CopyApplicationWB>" under sheet "<CopyApplication_home>" and row <CopyApplication_home_rowNum>
    When user copy the application
    And user record the generated application
    And user opens the copied application
    And user navigate to personal information screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user update the Financial Details for non individual
    Then income details should be saved successfully
   
     #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["DDE"]}
     #${ApplicantType:["nonindiv"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    @Release @Part-2
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |



       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["DDE"]}
      #${ApplicantType:["nonindiv"]}
    @Islamic
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |


       #${ProductType:["IPF"]}
       #${ApplicationStage:["DDE"]}
      #${Category:["bonds"]}
     #${ApplicantType:["nonindiv"]}
    @Islamic
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | copy_application.xlsx | personal             | 10                          |

    @NotImplemented
     # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | personal             | 10                          |



     #FeatureID-ACAUTOCAS-328
  @Sanity
  Scenario Outline: ACAUTOCAS-12491: After copying non individual application update document details of the copied application in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 216
    And user select the document
    And user selects document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user navigates to copy application screen
    And user searches a non individual application on copy Application Screen
    And user reads data from the excel file "<CopyApplicationWB>" under sheet "<CopyApplication_home>" and row <CopyApplication_home_rowNum>
    And user copy the application
    And user record the generated application
    And user opens the copied application
    When user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 216
    And user select the document
    Then document Status for the copied Application is "Received"
   
     #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["DDE"]}
     #${ApplicantType:["nonindiv"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    @Release @Part-2
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | auto                 | 27                          |


       #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["DDE"]}
     #${ApplicantType:["nonindiv"]}
    @Islamic
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | auto                 | 27                          |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["DDE"]}
      #${Category:["bonds"]}
      #${ApplicantType:["nonindiv"]}
    @Islamic
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | copy_application.xlsx | auto                 | 27                          |
    @NotImplemented
     # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | CopyApplicationWB     | CopyApplication_home | CopyApplication_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | copy_application.xlsx | auto                 | 27                          |


