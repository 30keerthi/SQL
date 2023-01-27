#table customer
select * from customer;

#table employee detail
select * from employee_dtl;

#table employee_manages_shipment
select * from employee_manges_shipment;

#table membership_table
select * from membership_table;

#table payment_dtl
select * from payment_dtl;

#table shipment_dtl
select * from shipment_dtl;

#table status_table
select * from status_table;
 
 #RELATIONSHIPS:
 
#CUSTOMER has many to one relationship with MEMBERSHIP
#m_id is primary key in MEMBERSHIP and foriegn key in CUSTOMER table

select a.*,b.*
from customer a left outer join membership_table b 
on a.membership_m_id = b.m_id;

#EMPLOYEE_MANAGES_SHIPMENT has many to one relationship with EMPLOYEE_DETAILS
#employee_e_id is foriegn key in EMPLOYEE_MANAGES_SHIPMENT and emp_id is primary key in EMPLOYEE_DETAIL table

select a.*,b.*
from employee_manges_shipment a left outer join employee_dtl b 
on a.employee_E_id = b.emp_id;

#EMPLOYEE_MANAGES_SHIPMENT has many to one relationship with STATUS
#sh_id is primary key in STATUS and status_sh_id foriegn key in EMPLOYEE_MANAGES_SHIPMENT table

select a.*,b.*
from employee_manges_shipment a left outer join status b 
on a.employee_sh_id=b.SH_ID;

#EMPLOYEE_MANAGES_SHIPMENT has many to one relationship with SHIPMENT_DETAIL
#sh_id is primary key in SHIPMENT_DETAILS and shipment_sh_id foriegn key in EMPLOYEE_MANAGES_SHIPMENT table

select a.*,b.*
from employee_manges_shipment a left outer join shipment_dtl b 
on a.employee_sh_id=b.sd_id;

#PAYMENT_DETAIL has many to one relationship with SHIPMENT_DETAIL 
#sh_id is primary key in SHIPMENT_DETAILS and foriegn key in PAYMENT_DETAIL table

select a.*,b.*
from payment_dtl a left outer join shipment_dtl b 
on a.shipment_SH_ID=b.sd_id;

#SHIPMENT_DETAIL has many to one relationship with CUSTOMER
#c_id is primary key in CUSTOMER and foriegn key in SHIPMENT_DETAIL table

select a.*,b.*
from customer a left outer join shipment_details b
on a.c_id=b.c_id;

#PAYMENT_DETAIL has many to one relationship with CUSTOMER
#c_id is primary key in CUSTOMER and foriegn key in PAYMENT_DETAIL table

select a.*,b.*
from customer a left outer join shipment_dtl b
on a.cust_id=b.customer_cust_id;

