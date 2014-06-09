alter table lama_nivasa add column RELIGION CHAR(32) default 'BUDDHISM' after CATEGORY;
alter table lama_nivasa add column COMMENT TEXT after NUMBER_OF_OFFICERS;

alter table child add column ORIGINAL_PROBATION_UNIT CHAR(32) after INTAKE_METHOD;

alter table monthly_data add column NUM_OF_INTAKES INT default 0 after NUM_OF_MEETINGS_UPTO_NOW;
alter table monthly_data add column INTAKE_FROM_COURT INT default 0 after NUM_OF_INTAKES;
alter table monthly_data add column INTAKE_FROM_DEPARTMENT INT default 0 after INTAKE_FROM_COURT;
alter table monthly_data add column INTAKE_FROM_PARENTS INT default 0 after INTAKE_FROM_DEPARTMENT;
alter table monthly_data add column INTAKE_FROM_ORGANIZATIONS INT default 0 after INTAKE_FROM_PARENTS;
alter table monthly_data add column INTAKE_FROM_OTHER INT default 0 after INTAKE_FROM_ORGANIZATIONS;
alter table monthly_data add column NUM_TO_ADOPTION INT default 0 after INTAKE_FROM_OTHER;
alter table monthly_data add column NUM_TO_PARENT INT default 0 after NUM_TO_ADOPTION;
alter table monthly_data add column NUM_TO_MARRAGE INT default 0 after NUM_TO_PARENT;
alter table monthly_data add column NUM_TO_EMPLOYEMENT INT default 0 after NUM_TO_MARRAGE;
alter table monthly_data add column NUM_TO_VOCATIONAL INT default 0 after NUM_TO_EMPLOYEMENT;
alter table monthly_data add column NUM_TO_SELF_EMPLOYEMENTINT INT default 0 after NUM_TO_VOCATIONAL; 

alter table monthly_data add column NUM_TO_OTHER INT default 0 after NUM_TO_VOCATIONAL;

alter table probation_unit add column POLICE_STATION_ID CHAR(32) after ADDRESS;

alter table probation_unit add constrain FOREIGN KEY (POLICE_STATION_ID) REFERENCES police_station(ID) ON DELETE SET NULL ON UPDATE CASCADE;
