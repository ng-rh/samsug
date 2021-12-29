package org.samsung;

import org.apache.camel.Exchange;
import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;
import java.text.ParseException;

public class Sale {

    public void ValueExcMinPP(Exchange exchange)throws ParseException  {

        List<Map<String, Object> >list =new ArrayList(exchange.getIn().getBody(List.class));
		System.out.println("list is  "+list);
        System.out.println("size is  "+list.size());
        Map<String, Object> map = list.get(0);
        System.out.println("ValueExcMinPP is *** "+map.get("ValueExcMinPP"));
        String total = "";
        if(map.get("ValueExcMinPP") == null){
            total = "0";
            exchange.getIn().setHeader("ValueExcMinPP",0);
        }else {
            exchange.getIn().setHeader("ValueExcMinPP",map.get("ValueExcMinPP"));
        }
        

    }

    public void TotalSales(Exchange exchange)throws ParseException  {
        
        String str = exchange.getIn().getHeader("DBOUT").toString();    
        List<Map<String, Object> >list =new ArrayList(exchange.getIn().getBody(List.class));
		System.out.println("list is  "+list);
        System.out.println("size is  "+list.size());
    	Map<String, Object> map = list.get(0);
        System.out.println("DBOUT is *** "+str);
        String total ="";
        try{   
            total = map.get("total_sales").toString();
        }
        catch(Exception e){
            total = "0";
        }  
        //System.out.println("total_sales is *** "+map.get("total_sales"));
        if(str.equals("count")){
            System.out.println("quantity is *** "+total);
            exchange.getIn().setHeader("quantity",total);
        }
        else if(str.equals("PreviousValue")){
            System.out.println("saleValuePreviousMonth is *** "+total);
            exchange.getIn().setHeader("saleValuePreviousMonth",total);
        }
        else{
            System.out.println("saleValueAcheived is *** "+total);
            exchange.getIn().setHeader("saleValueAcheived",total);
        }

    }
    
}
