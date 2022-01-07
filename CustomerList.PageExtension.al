// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

pageextension 50100 "PTE Customer List" extends "Customer List"
{


    trigger OnOpenPage();
    var
        SalesLine: Record "Sales Line";
    begin
        SalesLine.FindSet();
        repeat
            SalesLine.CalcLineAmount();
        until SalesLine.Next() = 0;

        Message('App published: Hello world');
    end;
}

