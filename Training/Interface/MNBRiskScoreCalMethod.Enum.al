enum 50100 "MNB Risk Score Cal. Method" implements "MNB IRiskScoreCalMethod"
{
    Extensible = true;

    value(1; Item)
    {
        Caption = 'Item';
        Implementation = "MNB IRiskScoreCalMethod" = "MNB ICalMethodItem";
    }
    value(2; ItemCategory)
    {
        Caption = 'Item Category';
        Implementation = "MNB IRiskScoreCalMethod" = "MNB ICalMethodItemCat";
    }
}