tableextension 50100 "BSL Recource Ext" extends Resource
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate()
            begin
                TestField("Unit Cost");
            end;
        }
        modify(Type)
        {
            OptionCaption = 'Instructer,Room';
        }
        field(50101; "BAL Resource Type"; Option)
        {
            DataClassification = CustomerContent;
            OptionMembers = "Internal","External";
            OptionCaption = 'Internal,External';
        }
        field(50102; "BAL Maximiun Party Pants"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Maximiun Party Pants';
        }
        field(50103; "BAL Quantity Per Day"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Quantity Per Day';
        }
    }
}