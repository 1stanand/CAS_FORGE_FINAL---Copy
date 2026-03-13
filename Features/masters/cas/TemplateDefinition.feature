@Epic-Masters
@ImplementedBy-mohd.aman
@MasterData

Feature: Create Template Definition

  @ParentTag
  Scenario Outline: Create Template Definition
    Given maker logged in "CAS" with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And maker navigate to Template Definition
    And maker reads data from the excel file "<SourceDataFile2>" under sheet "<TemplateDefinition_SheetName>" and row <TemplateDefinition_Rownumber>
    And maker fills template definition details
    And maker click on save and request approval
    And maker logout from common masters
    And checker logged in "CAS" with username and password present in "<SourceDataFile>" under "<SheetName>" and 1
    And checker navigate to Template Definition
    And checker approved the record
    Then Record save successfully in Template Definition
    And checker logout from CAS
    Examples:
      | SourceDataFile       | SheetName | RowNumber | SourceDataFile2          | TemplateDefinition_SheetName | TemplateDefinition_Rownumber |
      | LoginDetailsCAS.xlsx | LoginData | 0         | TemplateDefinition.xlsx | Template_Def                 | 0                            |

