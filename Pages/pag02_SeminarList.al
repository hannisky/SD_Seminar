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
                action(ActionName)
                {
                    ApplicationArea = All;

                    //RunObject=page "CSD Seminar Comment Sheet";
                    //RunPageLink = "Table Name"= const(Seminar), 
                    // "No."=field("No.");
                    Image = Comment;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                }


            }
        }
    }
}
