# Dataset Import and Observations

## Chosen Dataset: Netflix Shows

### Step-by-Step Guide to Importing the Dataset into MySQL Workbench

#### 1. Download the Dataset
First, download the `netflix_titles.csv` dataset from a reliable source. Ensure the CSV file is accessible on your local machine.

-------------------------------------------------------------------------------------------------------------------
#### 2. Open MySQL Workbench
- Launch MySQL Workbench and connect to your MySQL server.

#### 3. Create a New Database
- In MySQL Workbench, create a new database to hold your dataset.
  ```sql
  CREATE DATABASE NetflixShowsDB;
  ```
- Select the new database:
  ```sql
  USE NetflixShowsDB;
  ```

#### 4. Create a Table
- Create a table structure in MySQL Workbench that matches the CSV file structure:
  ```sql
  CREATE TABLE NetflixShows (
      show_id VARCHAR(255) PRIMARY KEY,
      type VARCHAR(50),
      title VARCHAR(255),
      director VARCHAR(255),
      cast TEXT,
      country VARCHAR(255),
      date_added VARCHAR(50), -- This should be adjusted to DATE if necessary
      release_year INT,
      rating VARCHAR(50),
      duration VARCHAR(50),
      listed_in VARCHAR(255),
      description TEXT
  );
  ```

#### 5. Import the CSV File
- Use the `Table Data Import Wizard` in MySQL Workbench to import the CSV file:
  1. Go to `Server` > `Data Import`.
  2. Select `Import from Self-Contained File` and choose your `netflix_titles.csv`.
  3. Choose the target database (`NetflixShowsDB`).
  4. Select the table (`NetflixShows`).
  5. Configure the column mappings if necessary.
  6. Execute the import process.

### Difficulties Encountered

1. **Data Type Matching:**
   - Ensuring that the data types in the table structure matched the data in the CSV file. For example, date fields in the CSV needed to be adjusted from strings to a suitable date format.
   - The `show_id` column needed to be set as `VARCHAR` instead of `INT` to accommodate alphanumeric IDs.

2. **Large File Handling:**
   - Importing large CSV files can sometimes cause timeouts or performance issues. Adjusting the MySQL Workbench settings or importing the data in chunks might be necessary.

### Interesting Observation

One interesting thing I noticed about the dataset is the diversity of content available on Netflix. The dataset includes a wide variety of genres, countries of origin, and types (movies and TV shows). It provides a rich source of information for analyzing global media consumption trends.

For example, you can observe trends in:
- The types of content that are more prevalent (movies vs. TV shows).
- The geographical diversity of content production.
- The variety of genres offered on the platform.
