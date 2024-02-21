tableextension 50101 "MNB Item Category" extends "Item Category"
{
    fields
    {
        field(50100; "MNB Risk Impact"; Integer)
        {
            BlankZero = true;
            Caption = 'Risk Impact';
            DataClassification = CustomerContent;
            MinValue = 0;
        }
    }
}