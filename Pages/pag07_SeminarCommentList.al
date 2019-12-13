page 50107 "CSD Seminar Comment List"
{
    Caption = 'Seminar Comment List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD Seminar Comment Line";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Date; Date)
                {
                    ApplicationArea = All;
                    Caption = 'Date';
                }
                field(Code; Code)
                {
                    ApplicationArea = All;
                    Caption = 'Code';
                    Visible = false;
                }
                field(Comment; Comment)
                {
                    ApplicationArea = All;
                    Caption = 'Comment';
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}