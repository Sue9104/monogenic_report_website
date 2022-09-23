# Gene Report Websites

- Search gene reports by keywords
- upload reports
- statistics

## Run 
```sh
python manage.py runserver 192.168.31.121:8000
```

### Database

- init
```sh
psql -U postgres -d monogenic_disease_report < monogenic_report_db.sql 
```

- data
```sh
pgcli postgres://postgres:password@localhost:5432
> \c monogenic_disease_report
You are now connected to database "monogenic_disease_report" as user "postgres"
Time: 0.010s

> \d 
+----------+-----------------------------------+----------+----------+
| Schema   | Name                              | Type     | Owner    |
|----------+-----------------------------------+----------+----------|
| public   | report_pathogenicity              | table    | postgres |
| public   | report_pathogenicity_id_seq       | sequence | postgres |
| public   | report_report                     | table    | postgres |
| public   | report_report_id_seq              | sequence | postgres |
| public   | report_sample                     | table    | postgres |
| public   | report_sample_id_seq              | sequence | postgres |
| public   | tutorial_person                   | table    | postgres |
| public   | tutorial_person_id_seq            | sequence | postgres |
+----------+-----------------------------------+----------+----------+

> \copy report_uploadpdf from 'uploadpdf.csv' DELIMITER ',' CSV HEADER;
> 

```

## Framework

- Django web interface

- postgres database
