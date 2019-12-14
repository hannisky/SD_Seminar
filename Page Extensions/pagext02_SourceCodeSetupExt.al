pageextension 50102 "CSD SourceCodeSetupExt" extends "Source Code Setup"
{
    layout
    {
        addafter("Cost Accounting")
        {
            Group("CSD SeminarGroup")
            {
                Caption='Seminar';
                field("CSD Seminar";"CSD Seminar")
                {}
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}