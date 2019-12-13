table 50101 "CSD Seminar"
{
LookupPageId=50102;
DrillDownPageId=50102;
    fields
    {
        field(10; "No."; Code[10])
        {
            DataClassification = AccountData;
            Caption = 'No.';
            trigger OnValidate()

            begin
                if "No." <> xRec."No." then begin
                    SeminarSetup.GET;
                    NoSeriesMgt.TestManual(SeminarSetup."Seminar Nos.");
                    "No Series" := '';

                end;
            end;

        }
        field(20; Name; text[50])
        {
            DataClassification = AccountData;
            Caption = 'Name';
            trigger OnValidate()
            begin
                if ("Search Name" = UpperCase(xRec.Name)) or
                ("Search Name" = '') then
                    "Search Name" := Name;
            end;
        }
        field(30; "Seminar Duration"; Decimal)
        {
            DataClassification = AccountData;
            DecimalPlaces = 0 : 1;
            Caption = 'Seminar Duration';

        }
        field(40; "Minimum Partypants"; Integer)
        {
            DataClassification = AccountData;
            Caption = 'Minimum Partypants';
        }
        field(50; "Maximum Partypants"; Integer)
        {
            DataClassification = AccountData;
            Caption = 'Maximum Partypants';
        }
        field(60; "Search Name"; Code[50])
        {
            DataClassification = AccountData;
            Caption = 'Search Name';
        }
        field(70; "Blocked"; Boolean)
        {
            DataClassification = AccountData;
            Caption = 'Blocked';
        }
        field(80; "Last Date Modified"; Date)
        {
            DataClassification = AccountData;
            Editable = false;
            Caption = 'Last Date Modified';
        }
        field(90; "Comment"; Boolean)
        {
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;

        }
        field(100; "Seminar Price"; Decimal)
        {
            DataClassification = AccountData;
            AutoFormatType = 1;
            Caption = 'Seminar Price';
        }
        field(110; "Gen. Prod. Posting Group"; Code[10])
        {
            DataClassification = AccountData;
            TableRelation = "Gen. Product Posting Group";
            Caption = 'Gen. Prod. Posting Group';
            trigger OnValidate()
            begin
                if (xRec."Gen. Prod. Posting Group" <> "Gen. Prod. Posting Group") then begin
                    if GenProdPostingGroup.ValidateVatProdPostingGroup(GenProdPostingGroup, "Gen. Prod. Posting Group") then
                        Validate("VAT Prod. Posting Group", GenProdPostingGroup."Def. VAT Prod. Posting Group");

                end;
            end;
        }
        field(120; "VAT Prod. Posting Group"; Code[10])
        {
            DataClassification = AccountData;
            TableRelation = "VAT Product Posting Group";
            Caption = 'VAT Prod. Posting Group';
        }
        field(130; "No Series"; Code[10])
        {
            DataClassification = AccountData;
            Editable = false;
            TableRelation = "No. Series";
            Caption = 'No. Series';

        }

    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    var
        SeminarSetup: Record "CSD Seminar Setup";

        Seminar: Record "CSD Seminar";
        GenProdPostingGroup: Record "Gen. Product Posting Group";
        NoSeriesMgt: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        if "No." = '' then begin
            SeminarSetup.Get();
            SeminarSetup.TestField("Seminar Nos.");
            NoSeriesMgt.InitSeries(SeminarSetup."Seminar Nos.", xRec."No Series", 0D, "No.", "No Series");
        end;
    End;

    trigger OnModify()
    begin
        "Last Date Modified" := today;
    end;

    trigger OnDelete()
    begin
        // CommentLine.Reset;
        // CommentLine.SetRange("Table Name",
        // CommentLine."Table Name"::Seminar);
        // CommentLine.SetRange("No.", "No.");
        // CommentLine.DeleteAll;
    end;

    trigger OnRename()
    begin
        "Last Date Modified" := today;
    end;

    procedure AssistEdit(): Boolean

    begin
        with Seminar do begin
            Seminar := Rec;
            SeminarSetup.Get();
            SeminarSetup.TestField("Seminar Nos.");
            if NoSeriesMgt.SelectSeries(SeminarSetup."Seminar Nos.", xRec."No Series", "No Series") then begin
                NoSeriesMgt.SetSeries("No.");
                Rec := Seminar;
                exit(true);

            end;


        end;
    end;
}