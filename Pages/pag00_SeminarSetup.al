page 50100 "Csd Seminar Setup"
{
    PageType = Card;
    ApplicationArea = All;

    SourceTable = "CSD Seminar setup";
    Caption = 'Seminar Setup';
    InsertAllowed = false;
    DeleteAllowed = false;
    UsageCategory = Administration;
    layout
    {
        area(Content)
        {
            group(Numbering)
            {


                field("Seminar nos"; "Seminar Nos.")
                {
                    ApplicationArea = all;

                }
                field("Seminar Registraion Nos"; "Seminar Registration Nos.")
                {
                    ApplicationArea = all;

                }
                field("Posted Seminar Reg. Nos"; "Posted Seminar Reg. Nos.")
                {
                    ApplicationArea = all;

                }
            }
        }
    }


    trigger OnOpenPage();
    begin
        if not get then begin
            init;
            insert;
        end;
    end;
}