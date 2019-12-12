pageextension 50101 "CSD ResourceListExt" extends "Resource List"
{
    layout
    {
        modify(Type)
        {
            Visible = Showtype;

        }
        addafter(Type)

        {
            field("CSD Resource Type"; "CSD Resource Type")
            {
                ApplicationArea = all;
            }
            field("CSD Maximum Partypants"; "CSD Maximum Partypants")
            {
                ApplicationArea = all;
                Visible = ShowMaxField;

            }
        }
    }


    trigger OnOpenPage();
    begin
        ShowType := (GetFilter(Type) = '');
        ShowMaxField := (GetFilter(Type) = format(Type::machine));
    end;


    var
        Showtype: Boolean;
        ShowMaxField: Boolean;
}