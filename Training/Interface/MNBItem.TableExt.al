tableextension 50100 "MNB Item" extends Item
{
    fields
    {
        field(50100; "MNB Risk Score Cal. Method"; Enum "MNB Risk Score Cal. Method")
        {
            Caption = 'Risk Score Cal. Method';

            trigger OnValidate()
            begin
                RiskCalculation.CalculateRisk(Rec);
            end;
        }
        field(50101; "MNB Risk Impact"; Integer)
        {
            BlankZero = true;
            Caption = 'Risk Impact';
            MinValue = 0;

            trigger OnValidate()
            begin
                RiskCalculation.CalculateRisk(Rec);
            end;
        }
        field(50102; "MNB Risk Probability"; Integer)
        {
            BlankZero = true;
            Caption = 'Risk Probability';
            MinValue = 0;

            trigger OnValidate()
            begin
                RiskCalculation.CalculateRisk(Rec);
            end;
        }
        field(50103; "MNB Risk Score"; Integer)
        {
            BlankZero = true;
            Caption = 'Risk Score';
            Editable = false;
            MinValue = 0;

            trigger OnValidate()
            begin
                RiskCalculation.CalculateRisk(Rec);
            end;
        }
    }

    var
        RiskCalculation: Codeunit "MNB Risk Calculation";

}