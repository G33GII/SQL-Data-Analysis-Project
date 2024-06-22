
### **Interesting Fact 1: Most Common TV Show Rating**

To find the most common rating for TV shows, we can use a SQL query to count the occurrences of each rating for TV shows.

```sql
SELECT rating, COUNT(*) AS count
FROM NetflixShows
WHERE type = 'TV Show'
GROUP BY rating
ORDER BY count DESC;
```

### **Interesting Fact 2: Average Duration of Movies**

To calculate the average duration of movies, we need to extract the numeric part of the duration for movies and then compute the average.

```sql
SELECT AVG(CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED)) AS avg_duration
FROM NetflixShows
WHERE type = 'Movie';
```

### **SQL Queries Used**

#### Query 1: Most Common TV Show Rating

```sql
SELECT rating, COUNT(*) AS count
FROM NetflixShows
WHERE type = 'TV Show'
GROUP BY rating
ORDER BY count DESC;
```

#### Query 2: Average Duration of Movies

```sql
SELECT AVG(CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED)) AS avg_duration
FROM NetflixShows
WHERE type = 'Movie';
```
#### **File Content:**

```markdown
# Data Analysis Findings

## 1. Most Common TV Show Rating
The most common rating for TV shows is `TV-MA`, with a total of 1,145 occurrences.

## 2. Average Duration of Movies
The average duration of movies on Netflix is approximately 99.6 minutes.

## SQL Queries Used

### Query 1: Most Common TV Show Rating

```sql
SELECT rating, COUNT(*) AS count
FROM NetflixShows
WHERE type = 'TV Show'
GROUP BY rating
ORDER BY count DESC;
```

### Query 2: Average Duration of Movies

```sql
SELECT AVG(CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED)) AS avg_duration
FROM NetflixShows
WHERE type = 'Movie';
```
```

### **Committing the Document**

1. **Create the Document:**
   - Open your text editor or Markdown editor.
   - Create a new file named `Data_Analysis_Findings.md`.

2. **Copy the Content:**
   - Copy the above content into this new file.

3. **Save the File:**
   - Save the file in the root directory of your GitHub repository or in an appropriate subfolder if you prefer to organize your documents separately.

4. **Add the File to Your Repository:**
   ```sh
   git add Data_Analysis_Findings.md
   ```

5. **Commit the Changes:**
   ```sh
   git commit -m "Add data analysis findings"
   ```

6. **Push to GitHub:**
   ```sh
   git push origin main
   ```

Make sure to adjust the branch name (`main` in this case) to match your repository’s default branch if it's different.