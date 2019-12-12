pageextension 50100 "CSD ResourceCardExt" extends "Resource Card"
{
    layout
    {
        addlast(General)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {
                ApplicationArea=all;

            }
            field("CSD Quantity per day"; "CSD Quantity per day")
            {
                ApplicationArea=all;

            }
        }
        addlast(content)
        {
            group("CSD Room")
            {
                Caption = 'Room';
                Visible=ShowMaxField;
                field("CSD Maximum Partypants"; "CSD Maximum Partypants")
                {
                    ApplicationArea=all;
                }
            }
        }
    }


    trigger OnAfterGetRecord()
    begin
        ShowMaxField := (type = type::machine);
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;


}
