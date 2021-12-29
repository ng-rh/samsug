package org.samsung;

import org.apache.camel.Exchange;
import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.math.BigDecimal;

class Validate {

    public void DBDate(Exchange exchange)throws ParseException  {
        
        String date_s = exchange.getIn().getHeader("schemeStartDate").toString();
        SimpleDateFormat dts = new SimpleDateFormat("dd-MMM-yy");
        Date dateS = dts.parse(date_s);
        SimpleDateFormat dt1S = new SimpleDateFormat("yyyy-MM-dd");
        System.out.println(dt1S.format(dateS));
	    exchange.getIn().setHeader("StartDate",dt1S.format(dateS));

        String date_e = exchange.getIn().getHeader("schemeEndDate").toString();
        SimpleDateFormat dte = new SimpleDateFormat("dd-MMM-yy");
        Date dateE = dte.parse(date_e);
        SimpleDateFormat dt1E = new SimpleDateFormat("yyyy-MM-dd");
        System.out.println(dt1E.format(dateE));
	    exchange.getIn().setHeader("EndDate",dt1E.format(dateE));

    }

    public void productType(Exchange exchange)throws ParseException  {
        
        String list = exchange.getIn().getBody(String.class);
        String body=list.replace("[","('");
        body=body.replace("]","')");
        body=body.replace(",","','");
        String fbody=  body ;  
        System.out.println(fbody);
        exchange.getIn().setHeader("PRODUCTTYPE",fbody);

    }

    public void SConvert(Exchange exchange)throws ParseException  {
        
        String body = exchange.getIn().getHeader("minProductPriceforExclusion").toString();
        System.out.println(body);
        exchange.getIn().setHeader("minProductPriceforExclusion",body);

    }

    public void minProduct(Exchange exchange)throws ParseException  {

        List<Map<String, Object> >list =new ArrayList(exchange.getIn().getBody(List.class));
		System.out.println("list is  "+list);
        System.out.println("size is  "+list.size());
        String body = "";
        for(int i=0;i<list.size();i++){
            Map<String, Object> map = list.get(i);
            String s1 = map.get("PRODUCTCODE").toString();
            if (i == list.size()-1) {                 
                body += "'"+s1+"'";                  
            }             
            else {                    
                body += "'"+s1+"',";                  
            } 
        }
        System.out.println("body  is  "+body);
        String fbody = "("+body+")";
        System.out.println("body  is  "+fbody);
        exchange.getIn().setHeader("minProduct",fbody);

    }

    public void partnerverify(Exchange exchange)throws ParseException  {

        List<Map<String, Object> >list =new ArrayList(exchange.getIn().getBody(List.class));
		System.out.println("list is  "+list);
        System.out.println("size is  "+list.size());
       
        try{
            Map<String, Object> map = list.get(0);
            System.out.println("PARTNERCODE is *** "+map.get("PARTNERCODE"));
            exchange.getIn().setHeader("validPtnr","YES");
        }
        catch(Exception e){
            System.out.println("PARTNERCODE is *** NO");
            exchange.getIn().setHeader("validPtnr","NO");
        }
        
    }


}