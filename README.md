# froxlor_api
Commune Tasks with the Froxlor API


## Get the Customer with Domains 
```
SELECT distinct 
c.loginname
,d.domain

FROM `mail_users` m

LEFT JOIN  panel_customers AS c
ON m.customerid = c.customerid

LEFT JOIN panel_domains AS d
ON c.customerid = d.customerid

order by c.loginname

```
## Extract emails with password
```mysql
SELECT 
c.loginname
,m.email
,m.password
,SUBSTRING_INDEX(m.email, '@', 1 ) as email_part
,SUBSTRING_INDEX(m.email, '@', -1 ) as domain

FROM `mail_users` m
LEFT JOIN  panel_customers AS c
ON m.customerid = c.customerid
order by c.loginname
```
