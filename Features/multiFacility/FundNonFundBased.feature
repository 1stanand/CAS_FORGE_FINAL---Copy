@AuthoredBy-parth.rana
@ImplementedBy-anjali.gupta
@CAS-255907
@GA-9.0
#${ProductType:["MULF"]}
#${ApplicationStage:["DDE","Credit Approval","FDE"]}
#${ApplicantType: ["indiv", "nonindiv"]}

Feature: Corporate Loans - Allow Fund & Non-Fund sub-facilities under a Fund-based Facility
    # Purpose
    # In order to manage related facilities under a single hierarchy
    # I want to create and validate fund-based and non-fund-based sub-facilities under a fund-based parent with the following rules:
    # - Non-fund children are allowed under a fund parent.
    # - A single child cannot have SanctionedAmount greater than the parent's Fund-Based amount.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

    #################################################################
    # CORE / POSITIVE BEHAVIORS
    #################################################################

  Scenario Outline: Create a Non Fund child under a Fund based parent allowed and linkage persisted
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to Deal and Facility tab for "<ApplicationStage>"
    And user reads data from the excel file "<DealAndFacilityDetailsWB>" under sheet "<DealAndFacilityDetailsSheet>" and row <DealAndFacilityDetailsSheet_rowNo>
    And a Fund based parent facility exists with ParentFundAmount
    When user creates a Non Fund child under that Parent and fills all mandatory Non Fund fields
    And user saves the facility
    Then system must create the child and show success message "Facility Details saved successfully."
    And the parent child linkage must be persisted and visible in Deal & Facility grid

    Examples:
      | ProductType   | ApplicationStage   | DealAndFacilityDetailsWB       | DealAndFacilityDetailsSheet | DealAndFacilityDetailsSheet_rowNo | ApplicantType   |
      | <ProductType> | <ApplicationStage> | deal_and_facility_details.xlsx | facility_details            | 1                                 | <ApplicantType> |


  Scenario Outline: Create a Fund child under a Fund-based parent — allowed if child's amount <= parent fund amount
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to Deal and Facility tab for "<ApplicationStage>"
    And user reads data from the excel file "<DealAndFacilityDetailsWB>" under sheet "<DealAndFacilityDetailsSheet>" and row <DealAndFacilityDetailsSheet_rowNo>
    And a Fund based parent facility exists with ParentFundAmount
    When user creates a Fund child under that Parent and fills all mandatory Fund fields
    And user saves the facility
    Then system must create the child and show success message "Facility Details saved successfully."
    And the parent child linkage must be persisted and visible in UI
    Examples:
      | ProductType   | ApplicationStage   | DealAndFacilityDetailsWB       | DealAndFacilityDetailsSheet | DealAndFacilityDetailsSheet_rowNo | ApplicantType     |
      | <ProductType> | <ApplicationStage> | deal_and_facility_details.xlsx | facility_details            | 2                                 | <ApplicantType > |

    #################################################################
    # NEGATIVE / VALIDATION SCENARIOS
    #################################################################
  Scenario Outline: Reject creation where a single child's amount > parent fund amount
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to Deal and Facility tab for "<ApplicationStage>"
    And user reads data from the excel file "<DealAndFacilityDetailsWB>" under sheet "<DealAndFacilityDetailsSheet>" and row <DealAndFacilityDetailsSheet_rowNo>
    And a Fund based parent facility exists with ParentFundAmount
    When user attempts to create a child "<FacilityType>" with RequestedAmount
    And user saves the facility
    Then system must reject and show error "Child Facility amount requested cannot be greater than Parent Facility amount requested"
    And no child must be created

    Examples:
      | ProductType   | ApplicationStage   | FacilityType | ApplicantType    | DealAndFacilityDetailsWB       | DealAndFacilityDetailsSheet | DealAndFacilityDetailsSheet_rowNo |
      | <ProductType> | <ApplicationStage> | Non Fund     | <ApplicantType > | deal_and_facility_details.xlsx | facility_details            | 3                                 |
      | <ProductType> | <ApplicationStage> | Fund         | <ApplicantType > | deal_and_facility_details.xlsx | facility_details            | 4                                 |

  Scenario Outline: Prevent creation of a Fund child under a Non-Fund parent
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to Deal and Facility tab for "<ApplicationStage>"
    And user reads data from the excel file "<DealAndFacilityDetailsWB>" under sheet "<DealAndFacilityDetailsSheet>" and row <DealAndFacilityDetailsSheet_rowNo>
    And a Non Fund based parent facility exists with ParentFundAmount
    When user attempts to create a Fund child with RequestedAmount under that parent
    And user saves the facility
    Then system must reject and show error "Invalid hierarchy: Fund-based child facilities cannot be created under a non-fund-based parent facility."
    And no child must be created

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType    | DealAndFacilityDetailsWB       | DealAndFacilityDetailsSheet | DealAndFacilityDetailsSheet_rowNo |
      | <ProductType> | <ApplicationStage> | <ApplicantType>  | deal_and_facility_details.xlsx | facility_details            | 5                                 |


  Scenario Outline: Reject negative or malformed child amounts
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to Deal and Facility tab for "<ApplicationStage>"
    And user reads data from the excel file "<DealAndFacilityDetailsWB>" under sheet "<DealAndFacilityDetailsSheet>" and row <DealAndFacilityDetailsSheet_rowNo>
    And a Fund based parent facility exists with ParentFundAmount
    When user attempts to create a "<FacilityType>" child with RequestedAmount under that parent
    And user saves the facility
    Then system must reject and show validation message "<ExpectedMessage>"
    And no child must be created

    Examples:
      | ProductType   | ApplicationStage   | FacilityType | ApplicantType   | ExpectedMessage                                                     | DealAndFacilityDetailsWB       | DealAndFacilityDetailsSheet | DealAndFacilityDetailsSheet_rowNo |
      | <ProductType> | <ApplicationStage> | Non Fund     | <ApplicantType> | Only positive values and Upto 18 digits are allowed before decimal. | deal_and_facility_details.xlsx | facility_details            | 6                                 |
      | <ProductType> | <ApplicationStage> | Fund         | <ApplicantType> | Only positive values and Upto 18 digits are allowed before decimal. | deal_and_facility_details.xlsx | facility_details            | 7                                 |

    #################################################################
    # MULTIPLE CHILDREN & PRE-DISBURSAL BEHAVIOR
    #################################################################

  Scenario Outline: Multiple children whose sum exceeds parent amount — allowed while parent is Not Disbursed
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to Deal and Facility tab for "<ApplicationStage>"
    And user reads data from the excel file "<DealAndFacilityDetailsWB>" under sheet "<DealAndFacilityDetailsSheet>" and row <DealAndFacilityDetailsSheet_rowNoA>
    And a Fund based parent facility exists with ParentFundAmount and Parent is not disbursed
    When user creates "<FacilityTypeA>" child A with RequestedAmount and user saves child A
    And user reads data from the excel file "<DealAndFacilityDetailsWB>" under sheet "<DealAndFacilityDetailsSheet>" and row <DealAndFacilityDetailsSheet_rowNoB>
    And user creates "<FacilityTypeB>" child B with RequestedAmount and user saves child B
    Then system must create both children even sum of both child Amounts is greater than parent fund amount
    And parent child linkages must be persisted and visible

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | DealAndFacilityDetailsWB       | DealAndFacilityDetailsSheet | DealAndFacilityDetailsSheet_rowNoA | DealAndFacilityDetailsSheet_rowNoB | FacilityTypeA | FacilityTypeB |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | deal_and_facility_details.xlsx | facility_details            | 1                                  | 2                                  | Non Fund      | Fund          |


    #################################################################
    # Cases on updating the -- amount more then parents facility
    #################################################################
    #${}

  Scenario Outline: Updating the saved child amount Greater then the parents facility
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to Deal and Facility tab for "<ApplicationStage>"
    And user reads data from the excel file "<DealAndFacilityDetailsWB>" under sheet "<DealAndFacilityDetailsSheet>" and row <DealAndFacilityDetailsSheet_rowNo>
    And an existing child exists under a Fund based parent with ParentFundAmount
    When user updates child's RequestedAmount to new child amount and saves
    Then system must validate such that new child amount is greater than parent amount and reject with message "Child Facility amount requested cannot be greater than Parent Facility amount requested"
    And no invalid update must be persisted
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | DealAndFacilityDetailsWB       | DealAndFacilityDetailsSheet | DealAndFacilityDetailsSheet_rowNo |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | deal_and_facility_details.xlsx | facility_details            | 1                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | deal_and_facility_details.xlsx | facility_details            | 2                                 |


    #################################################################
    # UI & PERSISTENCE on FI
    #################################################################

  Scenario Outline: Parent child linkage and basic fields persist and reflect in Facility Initiation tab
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user reads data from the excel file "<DealAndFacilityDetailsWB>" under sheet "<DealAndFacilityDetailsSheet>" and row <DealAndFacilityDetailsSheet_rowNo>
    When user navigates to Facility Initiation tab
    And a Fund based parent facility exists with ParentFundAmount At FI
    And a child facility exists with Amount Sanctioned At FI
    Then UI must show the child with Parent Facility ID, Amount Sanctioned

    Examples:
      | ProductType   | ApplicationStage    | ApplicantType   | DealAndFacilityDetailsWB       | DealAndFacilityDetailsSheet | DealAndFacilityDetailsSheet_rowNo |
      | <ProductType> | FACILITY_INITIATION | <ApplicantType> | deal_and_facility_details.xlsx | facility_details            | 11                                |


   
    #################################################################
    # Deal Trache & facilty Grid Behaviour
    #################################################################
  @Positive
  Scenario Outline: Hierarchy of parent facility and its sub-facilities should be visually distinguishable in grid
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to Deal and Facility tab for "<ApplicationStage>"
    And user reads data from the excel file "<DealAndFacilityDetailsWB>" under sheet "<DealAndFacilityDetailsSheet>" and row <DealAndFacilityDetailsSheet_rowNo>
    And user created fund based parent facility with total limit
    And user reads data from the excel file "<DealAndFacilityDetailsWB>" under sheet "<DealAndFacilityDetailsSheet>" and row <DealAndFacilityDetailsSheet_fund_rowNo>
    When user created fund based sub facility of limit under this parent facility
    And user reads data from the excel file "<DealAndFacilityDetailsWB>" under sheet "<DealAndFacilityDetailsSheet>" and row <DealAndFacilityDetailsSheet_non_fund_rowNo>
    And  user created non fund based sub facility of limit under this parent facility
    Then the parent facility should be clearly indicated as parent in the grid in Parent Facility ID of child
    Examples:
      | ProductType | ApplicationStage | ApplicantType   | DealAndFacilityDetailsWB       | DealAndFacilityDetailsSheet | DealAndFacilityDetailsSheet_rowNo | DealAndFacilityDetailsSheet_fund_rowNo | DealAndFacilityDetailsSheet_non_fund_rowNo |
      | <ProductType> | FACILITY_INITIATION | <ApplicantType> | deal_and_facility_details.xlsx | facility_details            | 8                                 | 9                                      | 10                                         |

  @Positive
  Scenario Outline: Grid should be visible as same on refresh
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user reads data from the excel file "<DealAndFacilityDetailsWB>" under sheet "<DealAndFacilityDetailsSheet>" and row <DealAndFacilityDetailsSheet_rowNo>
    And user navigates to Deal and Facility tab for "<ApplicationStage>"
    And user created fund based parent facility with total limit
    And user reads data from the excel file "<DealAndFacilityDetailsWB>" under sheet "<DealAndFacilityDetailsSheet>" and row <DealAndFacilityDetailsSheet_fund_rowNo>
    When user created fund based sub facility of limit under this parent facility
    And user reads data from the excel file "<DealAndFacilityDetailsWB>" under sheet "<DealAndFacilityDetailsSheet>" and row <DealAndFacilityDetailsSheet_non_fund_rowNo>
    And  user created non fund based sub facility of limit under this parent facility
    Then the parent facility should be clearly indicated as parent in the grid in Parent Facility ID of child
    And the hierarchy should be preserved when the data is refreshed or re-opened for "<ApplicationStage>"
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | DealAndFacilityDetailsWB       | DealAndFacilityDetailsSheet | DealAndFacilityDetailsSheet_rowNo | DealAndFacilityDetailsSheet_fund_rowNo | DealAndFacilityDetailsSheet_non_fund_rowNo |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | deal_and_facility_details.xlsx | facility_details            | 8                                 | 9                                      | 10                                         |


  @positive
  Scenario Outline: Create Non Fund child under Fund based parent allowed when ChildAmount <= ParentFundAmount even if ChildAmount > DealNonFundLimit
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to Deal and Facility tab for "<ApplicationStage>"
    And user reads data from the excel file "<DealAndFacilityDetailsWB>" under sheet "<DealAndFacilityDetailsSheet>" and row <DealAndFacilityDetailsSheet_rowNo>
    And Fund based parent facility exists with ParentFacilityID and ParentFundAmount
    When user creates a Non Fund child under Parent with RequestedAmount and fills all mandatory Non Fund fields
    And user saves the child facility
    Then system must create the Non Fund child and show success message "Facility Details saved successfully."
    And parent–child linkage must be persisted and visible in Deal & Facility grid

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |  DealAndFacilityDetailsWB       | DealAndFacilityDetailsSheet | DealAndFacilityDetailsSheet_rowNo |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | deal_and_facility_details.xlsx | facility_details            | 1                                 |

  Scenario Outline: Edit Fund based Parent to Non Fund-based while a Non Fund child exists edit must save and linkage persist
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to Deal and Facility tab for "<ApplicationStage>"
    And user reads data from the excel file "<DealAndFacilityDetailsWB>" under sheet "<DealAndFacilityDetailsSheet>" and row <DealAndFacilityDetailsSheet_rowNo>
    And Fund based parent facility exists with ParentFacilityID and ParentFundAmount
    And has a linked Non Fund child facility with ChildFacilityID and Amount Requested
    When user locates Child facility in Deal & Facility grid and clicks Edit
    And user changes ParentFacilityID to new ParentFacilityID
    And user saves the child facility
    Then system must save the Child facility and show success message "Facility Details saved successfully."
    And parent child linkage between Parent and Child must remain persisted and visible in Deal & Facility grid and Facility Initiation tab

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | DealAndFacilityDetailsWB       | DealAndFacilityDetailsSheet | DealAndFacilityDetailsSheet_rowNo |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | deal_and_facility_details.xlsx | facility_details            | 1                                 |




