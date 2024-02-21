codeunit 50101 "MNB IRiskMgtItemCat" implements "MNB IRiskMgt"
{
    procedure CalculateRiskScore(var Item: Record Item)
    var
        ItemCategory: Record "Item Category";
    begin
        if ItemCategory.Get(Item."Item Category Code") then begin
            Item."MNB Risk Score" := ItemCategory."MNB Risk Impact" * Item."MNB Risk Probability";
            exit;
        end;

        Item."MNB Risk Score" := 0;
    end;

    procedure SetRiskImpEditable(): Boolean
    begin
        exit(false);
    end;
}