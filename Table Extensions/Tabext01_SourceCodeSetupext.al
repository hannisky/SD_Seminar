tableextension 50101 "CSD SourceCodeSetupExt" extends "Source Code Setup"
{
    fields
    {
        field(50100; "CSD Seminar"; Code[50])
        {
            Caption = 'Seminar';
            TableRelation = "Source Code";
        }
    }

    var
        myInt: Integer;
}