# Activity III — Airline Booking Database (MySQL)

This project creates `airline_db`, stores passengers and their bookings, and demonstrates SELECT, INNER JOIN, UPDATE, and DELETE.

## Quick start (Ubuntu)

1. Download/extract all project files into ONE folder.
2. Open a terminal and `cd` into that folder.
3. Run:

   ```bash
   sudo mysql < run_all.sql
   ```

   Or, interactively:

   ```bash
   sudo mysql
   ```

   then at the `mysql>` prompt:

   ```sql
   SOURCE run_all.sql;
   ```

Note: `SOURCE` is a **MySQL client** command, not a regular SQL statement or Linux shell command. The scripts must be in the current working directory for relative SOURCE paths to resolve. **01_setup.sql deletes and recreates demo data**: don't use it against a production database.

## Files and provenance

- `01_setup.sql` — database initialization and clean demo reset (new integration script)
- `bookings.sql` — teammate Genereuse's original schema and starter data, unchanged
- `Gab_Data_Population.sql` — teammate Gabriel's additional population data, unchanged
- `05_queries.sql` — required SELECT and JOIN demo queries (new)
- `06_update_delete.sql` — required UPDATE and DELETE demos (new)
- `07_final_verification.sql` — final state checks (new)
- `run_all.sql` — master launcher (new)

## Expected results

On a complete run: 6 passengers; 7 booking rows inserted; 1 booking deleted; 6 booking rows remain. Remaining classes: Economy=1, Business=2, First=3. Josia's booking ID 4 changes seat preference to Window. Passenger #2 remains after booking #3 is deleted.

## Live presentation (suggested)

1. Show schema and relationship in `bookings.sql`.
2. Run `sudo mysql < run_all.sql` and explain what each section does.
3. Show the Business/First filter, the joined ticket receipt, before/after of the update, and proof booking ID 3 disappeared while passenger ID 2 stayed.
4. Point to the final table counts.

Credit team members for work they actually performed or reviewed. Add truthful Git commit history/role logs and an attendance list for the rubric.
