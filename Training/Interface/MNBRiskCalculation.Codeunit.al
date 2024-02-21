codeunit 50102 "MNB Risk Calculation"
{
    procedure CalculateRisk(var Item: Record Item)
    var
        IRiskIRiskMgt: Interface "MNB IRiskMgt";
    begin
        IRiskIRiskMgt := Item."MNB Risk Score Cal. Method";
        IRiskIRiskMgt.CalculateRiskScore(Item);
    end;
}