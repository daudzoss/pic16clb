{"class":"GraphLinksModel","linkKeyProperty":"key","linkFromPortIdProperty":"fromPort","linkToPortIdProperty":"toPort","nodeDataArray":[{"category":"inputport","portname":"CLBIN0PPS","size":"130 20","loc":"-450 -250","key":1,"inputmodifier":"direct"},{"category":"inputport","portname":"CLBIN1PPS","size":"130 20","loc":"-450 -230","key":2,"inputmodifier":"direct"},{"category":"low","loc":"-380 -210","key":3},{"category":"outputport","portname":"PPS_OUT3","size":"130 20","loc":"-50 -250","inputmodifier":"synchronized","flipX":false,"key":9},{"category":"outputport","portname":"PPS_OUT2","size":"130 20","loc":"-50 -230","inputmodifier":"synchronized","flipX":false,"key":10},{"category":"outputport","portname":"PPS_OUT1","size":"130 20","loc":"-50 -210","inputmodifier":"synchronized","flipX":false,"key":11},{"category":"outputport","portname":"PPS_OUT0","size":"130 20","loc":"-50 -190","inputmodifier":"synchronized","flipX":false,"key":12},{"key":4,"refdes":"","loc":"-370 -280","category":"sheet","name":"qe","inputs":[{"portId":"i"},{"portId":"q"},{"portId":"clr"},{"portId":"clk"}],"outputs":[{"portId":"y3"},{"portId":"y2"},{"portId":"y1"},{"portId":"y0"}],"globalinputs":[],"globaloutputs":[]},{"category":"inputport","portname":"CLBSWIN0","size":"130 20","loc":"-450 -190","key":5,"inputmodifier":"synchronized"}],"linkDataArray":[{"from":1,"to":4,"fromPort":"OUT","toPort":"i","key":-1,"points":[-385,-250,-375,-250,-375,-250,-380,-250,-380,-250,-370,-250]},{"from":2,"to":4,"fromPort":"OUT","toPort":"q","key":-2,"points":[-385,-230,-375,-230,-375,-230,-380,-230,-380,-230,-370,-230]},{"from":3,"to":4,"fromPort":"OUT","toPort":"clr","key":-3,"points":[-380,-210,-370,-210,-370,-210,-380,-210,-380,-210,-370,-210]},{"from":4,"to":9,"fromPort":"y3","toPort":"IN","key":-4,"points":[-128,-250,-118,-250,-118,-250,-125,-250,-125,-250,-115,-250]},{"from":4,"to":10,"fromPort":"y2","toPort":"IN","key":-5,"points":[-128,-230,-118,-230,-118,-230,-125,-230,-125,-230,-115,-230]},{"from":4,"to":11,"fromPort":"y1","toPort":"IN","key":-6,"points":[-128,-210,-118,-210,-118,-210,-125,-210,-125,-210,-115,-210]},{"from":4,"to":12,"fromPort":"y0","toPort":"IN","key":-7,"points":[-128,-190,-118,-190,-118,-190,-125,-190,-125,-190,-115,-190]},{"from":5,"to":4,"fromPort":"OUT","toPort":"clk","key":-8,"points":[-385,-190,-375,-190,-375,-190,-380,-190,-380,-190,-370,-190]}]}