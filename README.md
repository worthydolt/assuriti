# assuriti

To run with the h2 db use command "gradle bootRun -Dspring.profiles.active=h2"

Users to sign on with can be found in the script main/resources/db/migration/h2/V1.0.3__initial_data.sql.

To run with the postgres db use command "gradle bootRun -Dspring.profiles.active=postgres".  Note that on Linux the
postgres client authentication method defined in pg_hba.conf needs to be md5 rather than peer or ident.
