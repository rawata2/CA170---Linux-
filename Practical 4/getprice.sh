#!/bin/bash

wget -q -O - http://bigcharts.marketwatch.com/quickchart/quickchart.asp?symb=$1 | 
tr -d '\r\n' | 
sed -e "s|.*.Last:</span>||" 
| sed -e "s|</div>..$||" | 
sed -e "s|^..<div>||"