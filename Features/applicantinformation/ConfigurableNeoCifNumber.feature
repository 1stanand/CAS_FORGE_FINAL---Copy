@Epic-GCD
@ReviewedBy-
@AuthoredBy-Gaurav.Khanna
@ImplementedBy-arshpreet.singh
@CAS-256667
@DevTrack
@GA-9.0
#FeatureID-CAS-256667

Feature: Make Neo CIF Number Prefix (First 7 Digits) Configurable

  @OtherConfig
  Scenario Outline: CIF with prefix configuration is generated from GCD create service
    Given System reads data for creating an application with a given document status from "<SourceWorkbook>" excel and "<SourceSheet>" sheet and row "<DataSetId>"
    When a request is hit for GCD create service
    Then the CIF number should start with "EXTCUST" in gcd create service response
    Examples:
      | SourceWorkbook        | SourceSheet | DataSetId          |
      | GcdCreateService.xlsx | request     | GCD_CREATE_0000001 |


  Scenario Outline: CIF with prefix configuration is generated from GCD create service
    Given System reads data for creating an application with a given document status from "<SourceWorkbook>" excel and "<SourceSheet>" sheet and row "<DataSetId>"
    When a request is hit for GCD create service
    Then the CIF number should start with "GLBCUST" in gcd create service response
    Examples:
      | SourceWorkbook        | SourceSheet | DataSetId          |
      | GcdCreateService.xlsx | request     | GCD_CREATE_0000001 |