table 50101 "BAL Seminar"
{
    DataClassification = CustomerContent;

    fields
    {
        field(10; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
            trigger OnValidate();
            begin
                if "No." <> xRec."No." then begin
                    SeminarSetup.GET;
                    NoSeriesMgt.TestManual(SeminarSetup."No. Series");
                    "No. Series" := '';
                end;
            end;
        }
        field(20; Name; Text[50])
        {
            DataClassification = ToBeClassified;
            trigger OnValidate();
            begin
                if ("Search Name" = UpperCase(xRec.Name)) or
                ("Search Name" = '') then
                    "Search Name" := Name;
            end;
        }
        field(30; "Seminar Duration"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 1;
        }
        field(40; "Minimum Participants"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(50; "Maximum Participants"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        Field(60; "Search Name"; Code[60])
        {

        }
        field(70; bLOCKED; Boolean)
        {

        }
        field(80; "Last Date Modified"; Date)
        {

        }
        FIELD(90; "Comment"; Boolean)
        {
            Editable = FALSE;
        }
        FIELD(100; "Seminar Price"; Decimal)
        {
            AutoFormatType = 1;
        }
        field(110; "Gen. Prod. Posting Group"; Code[10])
        {
            TableRelation = "Gen. Product Posting Group";
            trigger OnValidate();
            begin
                if (xRec."Gen. Prod. Posting Group" <> "Gen. Prod. Posting Group") then begin
                    if GenProdPostingGroup.ValidateVatProdPostingGroup(GenProdPostingGroup, "Gen. Prod. Posting Group") then
                        Validate("VAT Prod. Posting Group",
                        GenProdPostingGroup."Def. VAT Prod. Posting Group");
                end;
            end;
        }
        Field(120; "VAT Prod. Posting Group"; Code[10])
        {
            TableRelation = "VAT Product Posting Group";
        }
        field(130; "No. Series"; code[20])
        {
            TableRelation = "No. Series";
        }

    }
    keys
    {
        Key(PK; Name)
        {
            Clustered = true;
        }
        key(Key1; "Search Name")
        {

        }
    }

    var
        SeminarSetup: Record "BAL Resource Setup";
        CommentLine : record "BAL Seminar Comment Line";
        Seminar: Record "BAL Seminar";
        GenProdPostingGroup: Record "Gen. Product Posting Group";
        NoSeriesMgt: Codeunit NoSeriesManagement;

    trigger OnInsert();
    begin
        if "No." = '' then begin
            SeminarSetup.get;
            SeminarSetup.TestField("No. Series");
            NoSeriesMgt.InitSeries(SeminarSetup."No. Series", xRec."No. Series", 0D, "No.", "No. Series");
        end;
    end;

    trigger OnModify();
    begin
        "Last Date Modified" := Today;
    end;

    trigger OnRename();
    begin
        "Last Date Modified" := Today;
    end;

    trigger OnDelete();
    begin
        CommentLine.Reset;
        CommentLine.SetRange("Table Name",
        CommentLine."Table Name"::Seminar);
        CommentLine.SetRange("No.","No.");
        CommentLine.DeleteAll;
    end;

    procedure AssistEdit(): Boolean;
    begin
        with Seminar do begin
            Seminar := Rec;
            SeminarSetup.get;
            SeminarSetup.TestField("No. Series");
            if NoSeriesMgt.SelectSeries(SeminarSetup."No. Series", xRec."No. Series", "No. Series") then begin
                NoSeriesMgt.SetSeries("No.");
                Rec := Seminar;
                exit(true);
            end;
        end;
    end;
}