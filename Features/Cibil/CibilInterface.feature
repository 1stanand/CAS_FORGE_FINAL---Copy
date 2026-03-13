@AuthoredBy-yuvraj.raghuwanshi
@ReviewedBy-Tarun.gupta
@DevTrack
@Epic-CIBILCreditBureauInterface
@TechReviewedBy-
@ImplementedBy-
#EpicID-
#StoryID-CAS-223278 & CAS-223287

@NotImplemented

Feature: CIBIL Bureau Interface - Individual and Non Individual

  Background:   Given user is on the CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#Pre-requisites --
#Configuration system.cas.creditBureau.bureauOneActive=false should be maintained to implement CIBIL bureau
#'system.cas.creditBureau.activeBureausInSystem'= CIBIL_INDV configuration should be maintained for CIBIL Individual
#'system.cas.creditBureau.activeBureausInSystem'= CIBIL_NONINDV configuration should be maintained for CIBIL Non Individual
#cas.credit.bureau.sytems.allowed=CIBIL_INDV configuration should be maintained for CIBIL Individual
#cas.credit.bureau.sytems.allowed=CIBIL_NONINDV configuration should be maintained for CIBIL Non Individual

  @DevTrack
  Scenario Outline: CIBIL individual and CIBIL Non individual accordion are present
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And Summary analysis is mapped on <ApplicationStage> in view mode for <ProductType> and <ApplicantType>
    When user clicks on the credit bureau check from the menu of summary analysis tab
    Then CIBIL Individual and CIBIL Non individual accordion should be available with below fields in view mode
       |Decision|
       |Reason|
       |Reason Description|
       |Decision comments|
    #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
#${ApplicantType:["nonindiv","indiv"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage>  |             |	|

#${ApplicationStage:["DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
#${ApplicantType:["nonindiv","indiv"]}
#${ProductType:["FAS","JLG","SHG","CC",""BG","LC","BL","CashCred","BD","MULF","CFL","GL","CL"]}

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage>  |             |	|

  @DevTrack
  Scenario Outline: Initiate CIBIL individual interface
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And Summary analysis is mapped on <ApplicationStage> in view mode for <ProductType> and <ApplicantType>
    When user clicks on the credit bureau check from the menu of summary analysis tab
    And below individual party role are captured
      |Primary applicant  |
      |Co applicant  |
      |Director  |
      |Partner  |
    And CIBIL individual accordion is available
    Then under CIBIL individual accordion there will be a option to initiate the interface for each individual

#${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
#${ApplicantType:["indiv"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage>  |             |	|

#${ApplicationStage:["DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
#${ApplicantType:["indiv"]}
#${ProductType:["FAS","JLG","SHG","CC",""BG","LC","BL","CashCred","BD","MULF","CFL","GL","CL"]}

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage>  |             |	|

  @DevTrack
  Scenario Outline: Service gets executed and response received
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And Summary analysis is mapped on <ApplicationStage> in view mode for <ProductType> and <ApplicantType>
    When user clicks on the credit bureau check from the menu of summary analysis tab
    And CIBIL individual interface is initiated
    Then creditbureaugeneric service runs followed by response gets received

      #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
#${ApplicantType:["indiv"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	          |
      |<ProductType>|<ApplicantType> |<ApplicationStage>  |             |	        |

#${ApplicationStage:["DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
#${ApplicantType:["indiv"]}
#${ProductType:["FAS","JLG","SHG","CC",""BG","LC","BL","CashCred","BD","MULF","CFL","GL","CL"]}

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage>  |             |	|

  @DevTrack
  Scenario Outline: Initiate button changes to re initiate post first time initiation of the interface
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And Summary analysis is mapped on <ApplicationStage> in view mode for <ProductType> and <ApplicantType>
    When user clicks on the credit bureau check from the menu of summary analysis tab
    And CIBIL individual interface is initiated
    Then the initiate button changes to re-initiate button

      #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
#${ApplicantType:["indiv"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|Validation|
      |<ProductType>|<ApplicantType> |<ApplicationStage>  |             |	|         |

#${ApplicationStage:["DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
#${ApplicantType:["indiv"]}
#${ProductType:["FAS","JLG","SHG","CC",""BG","LC","BL","CashCred","BD","MULF","CFL","GL","CL"]}

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage>  |             |	|

  @DevTrack
  Scenario Outline: Accordion displays the details received from the response of the CIBIL interface
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And Summary analysis is mapped on <ApplicationStage> in view mode for <ProductType> and <ApplicantType>
    When user clicks on the credit bureau check from the menu of summary analysis tab
    And CIBIL individual interface is initiated
    Then the accordion displays below details for whom the interface is triggered.
      |Bureau name  |
      |Score  |
      |Match Status  |
      |Individual name  |
      #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
#${ApplicantType:["indiv"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|Validation|
      |<ProductType>|<ApplicantType> |<ApplicationStage>  |             |	|         |

#${ApplicationStage:["DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
#${ApplicantType:["indiv"]}
#${ProductType:["FAS","JLG","SHG","CC",""BG","LC","BL","CashCred","BD","MULF","CFL","GL","CL"]}

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage>  |             |	|

  @DevTrack
  Scenario Outline: User opens the accordion which displays the HTML report of CIBIL
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And Summary analysis is mapped on <ApplicationStage> in view mode for <ProductType> and <ApplicantType>
    When user clicks on the credit bureau check from the menu of summary analysis tab
    And CIBIL individual interface is initiated
    And user clicks on the accordion of individual
    Then CIBIL HTML report should get opened with view history and download pdf report buttons enabled

    #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
#${ApplicantType:["indiv"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage>  |             |	|

#${ApplicationStage:["DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
#${ApplicantType:["indiv"]}
#${ProductType:["FAS","JLG","SHG","CC",""BG","LC","BL","CashCred","BD","MULF","CFL","GL","CL"]}

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage>  |             |	|

  @DevTrack
  Scenario Outline: User clicks on history to view previous history records
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And Summary analysis is mapped on <ApplicationStage> in view mode for <ProductType> and <ApplicantType>
    When user clicks on the credit bureau check from the menu of summary analysis tab
    And CIBIL individual interface is initiated
    And user clicks on the accordion of individual
    And user clicks on the history button
    Then previous history records of CIBIL interface should be displayed in a grid with below columns
    |Sr. No.|
    |By user|
    |Enquiry date|
    |View/Download|

    #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
#${ApplicantType:["indiv"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage>  |             |	|

#${ApplicationStage:["DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
#${ApplicantType:["indiv"]}
#${ProductType:["FAS","JLG","SHG","CC",""BG","LC","BL","CashCred","BD","MULF","CFL","GL","CL"]}

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage>  |             |	|

  @DevTrack
  Scenario Outline: User tries to download the HTML report in PDF format
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And Summary analysis is mapped on <ApplicationStage> in view mode for <ProductType> and <ApplicantType>
    When user clicks on the credit bureau check from the menu of summary analysis tab
    And CIBIL individual interface is initiated
    And user clicks on the accordion of individual
    And user clicks on the download pdf report button
    Then HTML report should get downloaded in pdf report format

   #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
#${ApplicantType:["indiv"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage>  |             |	|

#${ApplicationStage:["DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
#${ApplicantType:["indiv"]}
#${ProductType:["FAS","JLG","SHG","CC",""BG","LC","BL","CashCred","BD","MULF","CFL","GL","CL"]}

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage>  |             |	|

  @DevTrack
  Scenario Outline: Initiate CIBIL non individual interface
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And Summary analysis is mapped on <ApplicationStage> in view mode for <ProductType> and <ApplicantType>
    When user clicks on the credit bureau check from the menu of summary analysis tab
    And below non individual party role are captured
      |Primary applicant  |
      |Co applicant  |
      |Sellor  |
      |Partner  |
      |Lessor  |
    And CIBIL non individual accordion is available
    Then under CIBIL non individual accordion there will be a option to initiate the interface for each individual

    #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
#${ApplicantType:["nonindiv"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage>  |             |	|

#${ApplicationStage:["DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
#${ApplicantType:["nonindiv"]}
#${ProductType:["FAS","JLG","SHG","CC",""BG","LC","BL","CashCred","BD","MULF","CFL","GL","CL"]}

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage>  |             |	|

  @DevTrack
  Scenario Outline: Service gets executed and response received
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And Summary analysis is mapped on <ApplicationStage> in view mode for <ProductType> and <ApplicantType>
    When user clicks on the credit bureau check from the menu of summary analysis tab
    And CIBIL non individual interface is initiated
    Then creditbureaugeneric service runs followed by receiving response

   #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
#${ApplicantType:["nonindiv"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage>  |             |	|

#${ApplicationStage:["DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
#${ApplicantType:["nonindiv"]}
#${ProductType:["FAS","JLG","SHG","CC",""BG","LC","BL","CashCred","BD","MULF","CFL","GL","CL"]}

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage>  |             |	|

  @DevTrack
  Scenario Outline: Initiate button changes to re initiate post first time initiation of the interface
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And Summary analysis is mapped on <ApplicationStage> in view mode for <ProductType> and <ApplicantType>
    When user clicks on the credit bureau check from the menu of summary analysis tab
    And CIBIL non individual interface is initiated
    Then the initiate button changes to re-initiate button

      #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
#${ApplicantType:["nonindiv"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|Validation|
      |<ProductType>|<ApplicantType> |<ApplicationStage>  |             |	|         |

#${ApplicationStage:["DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
#${ApplicantType:["nonindiv"]}
#${ProductType:["FAS","JLG","SHG","CC",""BG","LC","BL","CashCred","BD","MULF","CFL","GL","CL"]}

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage>  |             |	|

  @DevTrack
  Scenario Outline: Accordion displays the details received from the response of the CIBIL interface
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And Summary analysis is mapped on <ApplicationStage> in view mode for <ProductType> and <ApplicantType>
    When user clicks on the credit bureau check from the menu of summary analysis tab
    And CIBIL non individual interface is initiated
    Then the accordion displays below details for whom the interface is triggered.
      |Bureau name  |
      |Score  |
      |Match Status  |
      |Individual name  |

      #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
#${ApplicantType:["nonindiv"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|Validation|
      |<ProductType>|<ApplicantType> |<ApplicationStage>  |             |	|         |

#${ApplicationStage:["DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
#${ApplicantType:["nonindiv"]}
#${ProductType:["FAS","JLG","SHG","CC",""BG","LC","BL","CashCred","BD","MULF","CFL","GL","CL"]}

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage>  |             |	|

  @DevTrack
  Scenario Outline: User opens the accordion which displays the HTML report of CIBIL
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And Summary analysis is mapped on <ApplicationStage> in view mode for <ProductType> and <ApplicantType>
    When user clicks on the credit bureau check from the menu of summary analysis tab
    And CIBIL non individual interface is initiated
    And user clicks on the accordion of non individual
    Then CIBIL HTML report should get opened with view history and download pdf report buttons enabled

 #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
#${ApplicantType:["nonindiv"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage>  |             |	|

#${ApplicationStage:["DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
#${ApplicantType:["nonindiv"]}
#${ProductType:["FAS","JLG","SHG","CC",""BG","LC","BL","CashCred","BD","MULF","CFL","GL","CL"]}

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage>  |             |	|

  @DevTrack
  Scenario Outline: User clicks on history to view previous history records
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And Summary analysis is mapped on <ApplicationStage> in view mode for <ProductType> and <ApplicantType>
    When user clicks on the credit bureau check from the menu of summary analysis tab
    And CIBIL non individual interface is initiated
    And user clicks on the accordion of non individual
    And user clicks on the history button
    Then previous history records of CIBIL interface should be displayed in a grid with below columns
      |Sr. No.|
      |By user|
      |Enquiry date|
      |View/Download|

    #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
#${ApplicantType:["nonindiv"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage>  |             |	|

#${ApplicationStage:["DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
#${ApplicantType:["nonindiv"]}
#${ProductType:["FAS","JLG","SHG","CC",""BG","LC","BL","CashCred","BD","MULF","CFL","GL","CL"]}

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage>  |             |	|

  @DevTrack
  Scenario Outline: User tries to download the HTML report in PDF format
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And Summary analysis is mapped on <ApplicationStage> in view mode for <ProductType> and <ApplicantType>
    When user clicks on the credit bureau check from the menu of summary analysis tab
    And CIBIL non individual interface is initiated
    And user clicks on the accordion of non individual
    And user clicks on the download pdf report button
    Then HTML report should get downloaded in pdf report format

   #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
#${ApplicantType:["nonindiv"]}
#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage>  |             |	|

#${ApplicationStage:["DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
#${ApplicantType:["nonindiv"]}
#${ProductType:["FAS","JLG","SHG","CC",""BG","LC","BL","CashCred","BD","MULF","CFL","GL","CL"]}

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage>  |             |	|