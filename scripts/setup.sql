use warehouse compute_wh;
create or replace database instacart_demo;
show warehouses;
show parameters for account;
alter account set TIMEZONE = 'America/New_York';
alter account set CLIENT_RESULT_COLUMN_CASE_INSENSITIVE = true;

use database instacart_demo;
create or replace schema RAW_INSTACART;





use database instacart_demo;
use schema RAW_INSTACART;
use warehouse COMPUTE_WH;

show parameters for account;

alter user jadmin set RSA_PUBLIC_KEY='MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAm3ayKi8YkCp3PqH1czK9
MISjt72NPYC6uz+ncaWajqv1Wj6T87/XiGBtnqHNvyGCSsYKnS25s9OfOPlTY+DW
wbRopvSuySL0q4qtqYVIaj7OLRriBkBNzzHUtY3a/+geYmyTwufd1cEotL3hoRvC
q/IERBldFgwjDSPgVNU/hiIqn1jQ9I32TnRkm7xg/sUXLI/5gM/8oTvsWsOKPjjp
q8Cx+VPLfE9dIxVQa7EAVE9DtOFYDSY1ZWx6FxvVHC1hzYZ7TVl2Hybo2ycouuWd
gUd7bBu2LE6sPHG7OQEaaBGnobif6XkrMTx3iM00hRIWI5SFvuU/RfPKETI4GaV/
tQIDAQAB';

desc user jadmin;

DESC USER jadmin
  ->> SELECT SUBSTR(
        (SELECT "value" FROM $1
           WHERE "property" = 'RSA_PUBLIC_KEY_FP'),
        LEN('SHA256:') + 1) AS key;

alter account set allow_id_token = true;