codeunit 50102 "MNB Risk Calculation"
{
    procedure CalculateRisk(var Item: Record Item)
    var
        IRiskScoreCalMethod: Interface "MNB IRiskScoreCalMethod";
    begin
        IRiskScoreCalMethod := Item."MNB Risk Score Cal. Method";
        IRiskScoreCalMethod.CalculateRiskScore(Item);
    end;
}