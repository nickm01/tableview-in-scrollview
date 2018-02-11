# tableview-in-scrollview

Demonstrates how to use tableview (of "intrinsic size") within scrollview where the scrollview scrolls not the table view

Uses stackview for additional non-tableview content fot convenience (recommended) 

The trick is need to use content size of the table view

`stackViewHeight.constant = tableView.contentSize.height + labelHeight.constant`

![Alt text](/screen.png?raw=true "Optional Title")
