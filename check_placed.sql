USE admin_placement_db;

SELECT 'Total placed students:' as info, COUNT(*) as count FROM placed_students;

SELECT 'Offer type distribution:' as info;
SELECT offer_type, COUNT(*) as count FROM placed_students GROUP BY offer_type;

SELECT 'Students matching WHERE clause (not Internship):' as info, COUNT(*) as count
FROM placed_students
WHERE (offer_type != 'Internship' OR offer_type IS NULL);

SELECT 'Sample data:' as info;
SELECT place_id, upid, student_name, company_name, offer_type
FROM placed_students
LIMIT 5;
