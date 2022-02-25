public class MapPractise {
    
    public static void firstmap(){
        
        Map<Integer, List<String>> ma=new Map<Integer, List<String>>{1 => new List<String>{'lavanya'}, 2 => new List<String>{'Krishna'}};
            List<String> a=new List<String>{'sowjanya'};
                ma.put(3,a);
        ma.put(4,new List<String>());
        ma.get(4).add('sampath');
        system.debug('map values'+ma.keySet());
        system.debug('map values'+ma.values());
        //   List<String> as1 = new List<String>(ma.values());
        
    }
    public static void Secondmap(){
        Map<Id,Map<Id,Account>> ma=new map<Id,Map<Id,Account>>();
        Map<Id,Account> ma1=new Map<Id,Account>([select id from Account]);
        
        for(Account a:ma1.values()){
            ma.put(a.id,new Map<Id,Account>());
            ma.get(a.id).putall(ma1);
        }
        System.debug('mamap'+ma);
        System.debug('ma'+ma.values());
        
        //  Map<Id,Account> ms=ma.values();
        Set<Id> s=new Set<Id>();
        List<Account> a=new List<Account>();
        for(Map<Id,Account> m:ma.values()){
            s.addall(m.keySet());
            a.addall(m.values());
        }
        
    }
     public static void thirdmap(){
         Map<Integer,map<id,Account>> ma=new Map<integer,map<id,Account>>{1=>new map<id,Account>()};
              Map<Id,Account> ma1=new Map<Id,Account>([select id from Account]);
         ma.get(1).putall(ma1);
             for(map<id,Account> m : ma.values()){
                 
                 m.putall(ma1);
             }
         
         
     }
    
}