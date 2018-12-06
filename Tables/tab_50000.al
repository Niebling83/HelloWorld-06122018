table 50100 "BAL Resource Setup"
{
    DataClassification = CustomerContent;

    fields
    {
        field(10; "No. Series"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(20; "No. Series2"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(30; "No. Series Posted"; code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
    }
}