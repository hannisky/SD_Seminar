tableextension 50100 "CSD ResourceExt" extends Resource
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate()

            begin
                Rec.TestField("Unit Cost");
            end;
        }
        modify(Type)
        {
            OptionCaption = 'Instructor,Room';
        }
        field(50101; "CSD Resource Type"; Option)
        {
            DataClassification = AccountData;
            Caption='Resource Type';
            OptionMembers = "Internal","External";
            OptionCaption = 'Internal,External';
        }
        field(50102; "CSD Maximum Partypants"; Integer)
        {
            Caption = 'Maximum Partypants';

        }
        field(50103; "CSD Quantity per day"; Decimal)
        {
            DataClassification = AccountData;
            Caption = 'Quantity per day';
        }

    }


}