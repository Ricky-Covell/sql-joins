-- 1:
    SELECT * FROM owners 
        FULL JOIN vehicles ON owners.id = vehicles.owner_id;


-- 2:
    SELECT first_name, last_name, COUNT(owner_id)
        FROM owners
        JOIN vehicles ON owners.id = vehicles.owner_id
        GROUP BY (first_name, last_name)
    ORDER BY (first_name); 


-- 3:
    SELECT first_name, last_name, 
    ROUND(AVG(price)) AS average_price,
    COUNT(owner_id) AS vehicle_count
        FROM vehicles 
        JOIN owners 
            ON owners.id = vehicles.owner_id
    GROUP BY (first_name, last_name)
        HAVING ROUND(AVG(price)) > 10000
        AND COUNT(owner_id) > 1
    ORDER BY first_name DESC;
        
    
