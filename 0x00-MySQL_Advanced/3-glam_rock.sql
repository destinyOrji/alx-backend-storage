-- List bands with Glam rock as their main style, ranked by longevity

-- Step 1: Ensure we're working with the correct database
USE your_database_name;  -- Replace 'your_database_name' with your actual database name

-- Step 2: Query to select bands with Glam rock as main style and calculate their lifespan
SELECT
    band_name,
    (YEAR('2022-01-01') - YEAR(formed)) - IF(splits IS NOT NULL, YEAR('2022-01-01') - YEAR(splits), 0) AS lifespan
FROM
    metal_bands
WHERE
    main_style = 'Glam rock'
ORDER BY
    lifespan DESC;
