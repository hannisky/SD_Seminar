page 50102 "CSD Seminar List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD Seminar";
    Caption = 'CSD Seminar List';
    Editable = false;
    CardPageId= 50101;
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No.";"No.")
                {
                    ApplicationArea = All;
                    
                }
                field(Name;Name)
                {
                    ApplicationArea = All;
                }
                field("Seminar Duration";"Seminar Duration")
                {
                    ApplicationArea = All;
                }
                field("Seminar Price";"Seminar Price")
                {
                    ApplicationArea = All;
                }
                field("Minimum Partypants";"Minimum Partypants")
                {
                    ApplicationArea = All;
                }
                field("Maximum Partypants";"Maximum Partypants")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(FactBoxes)
        {
            systempart("Links"; Links)
            {
                ApplicationArea = All;
            }
            systempart("Notes"; Notes)
            {
                ApplicationArea = All;
            }
        }
    }
    
    actions
    {
        area(Navigation)
        {
            group("&Seminar")
            {
                action("Co&mments")
                {
                    Caption = 'Co&mments';
                    RunObject = page "CSD Seminar Comment Sheet";
                    RunPageLink = "Table Name" = const (Seminar), "No." = field ("No.");
                    Image = Comment;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    ApplicationArea = All;
                }
                action("Ledger Entries")
                {
                    Caption = 'Ledger Entries';
                    RunObject = page "CSD Seminar Ledger Entries";
                    RunPageLink = "Seminar No." = field ("No.");
                    Promoted = true;
                    PromotedCategory = Process;
                    ShortcutKey = "Ctrl+F7";
                    Image = WarrantyLedger;
                    ApplicationArea = All;
                }
                action("&Registrations")
                {
                    Caption = '&Registrations';
                    RunObject = page "CSD Seminar Registration List";
                    RunPageLink = "Seminar No." = field ("No.");
                    Image = Timesheet;
                    Promoted = true;
                    PromotedCategory = Process;
                    ApplicationArea = All;
                }
                
            }
        }
       
        area(Processing)
        {
            action("Seminar Registration")
            {
                Caption = 'Seminar Registration';
                RunObject = page "CSD Seminar Registration";
                RunPageLink = "Seminar No." = field ("No.");
                RunPageMode = Create;
                Image = NewTimesheet;
                Promoted = true;
                PromotedCategory = New;
                ApplicationArea = All;

            }
        }
        
    }
}
