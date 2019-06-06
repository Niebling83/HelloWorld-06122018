page 50101 "Seminar"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "BAL Seminar";
    Caption ='Seminar';
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("No.";"No.")
                {
                    ApplicationArea = All;
                    AssistEdit = true;
                    trigger OnAssistEdit();
                    begin
                    if AssistEdit then
                        CurrPage.Update;
                    end;
                }
                Field(Name;Name)
                {

                }
                field("Search Name";"Search Name")
                {

                }
                field("Seminar Duration";"Seminar Duration")
                {

                }
                field("Minimum Participants";"Minimum Participants")
                {

                }
                Field("Maximum Participants";"Maximum Participants")
                {

                }
                Field(bLOCKED;bLOCKED)
                {

                }
                Field("Last Date Modified";"Last Date Modified")
                {

                }

            }
            group(Invoicing)
            {
                field("Gen. Prod. Posting Group";"Gen. Prod. Posting Group")
                {

                }
                field("VAT Prod. Posting Group";"VAT Prod. Posting Group")
                {

                }
                field("Seminar Price";"Seminar Price")
                {

                }
            }
        }
        area(FactBoxes)
        {
            systempart("Links";Links)
        {
        }
        systempart("Notes";Notes)
        {
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
                    RunObject=page "Seminar Comment Sheet";
                    RunPageLink = "Table Name"= const(Seminar),
                    "No."=field("No.");
                    Image = Comment;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                }
            }
        }
    }

    var
        myInt: Integer;
}