table 50100 "BAL Resource Setup"
{
    DataClassification = CustomerContent;

    fields
    {
        field(10; "Primary Key"; integer)
        {
            DataClassification = ToBeClassified;
        }
        field(20; "No. Series"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(30; "No. Series2"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(40; "No. Series Posted"; code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
    }
    keys
    {
        Key(PK;"Primary Key")
        {
            Clustered = true;
        }
    }
}