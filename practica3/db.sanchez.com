;
; BIND data file for sanchez.com
;
$TTL    604800
@       IN      SOA     ns1.sanchez.com. admin.sanchez.com. (
                              2         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      ns1.sanchez.com.

; 3 resource records
ns1     IN      A       192.168.1.10
ns2     IN      A       192.168.1.20
ns3     IN      A       192.168.1.30

; alias ns1 to web
web     IN      CNAME   ns1.sanchez.com.
