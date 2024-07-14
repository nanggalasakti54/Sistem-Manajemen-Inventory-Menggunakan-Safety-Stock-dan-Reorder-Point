<?php
// get_dashboard_data.php

// Include your database connection script
include 'html/connection/db.php'; // Adjust the path as needed

$query = "
    WITH bulan AS (
        SELECT 1 AS bulan, 'jan' AS nama_bulan UNION ALL
        SELECT 2, 'feb' UNION ALL
        SELECT 3, 'mar' UNION ALL
        SELECT 4, 'apr' UNION ALL
        SELECT 5, 'mei' UNION ALL
        SELECT 6, 'jun' UNION ALL
        SELECT 7, 'jul' UNION ALL
        SELECT 8, 'agu' UNION ALL
        SELECT 9, 'sep' UNION ALL
        SELECT 10, 'okt' UNION ALL
        SELECT 11, 'nov' UNION ALL
        SELECT 12, 'des'
    )

    SELECT 
        b.nama_bulan,
        COALESCE(p.jumlah_produk, 0) AS jumlah_produk,
        COALESCE(p.status1, 0) AS status1,
        COALESCE(p.status2, 0) AS status2
    FROM 
        bulan b
    LEFT JOIN (
        SELECT 
            MONTH(tanggal_masuk) AS bulan,
            COUNT(*) AS jumlah_produk,
            SUM(CASE WHEN status = 1 THEN 1 ELSE 0 END) AS status1,
            SUM(CASE WHEN status = 4 AND tanggal_keluar > LAST_DAY(DATE_SUB(CURDATE(), INTERVAL 1 MONTH)) THEN 1 ELSE 0 END) AS status2
        FROM 
            produk
        WHERE 
            YEAR(tanggal_masuk) = YEAR(CURDATE())
        GROUP BY 
            MONTH(tanggal_masuk)
    ) p ON b.bulan = p.bulan
    ORDER BY b.bulan;
";

// Execute query and fetch results
try {
    $result = $conn->query($query);

    if ($result) {
        $results = [];
        while ($row = $result->fetch_assoc()) {
            $results[] = $row;
        }

        // Return data as JSON
        header('Content-Type: application/json');
        echo json_encode($results);
    } else {
        throw new Exception("Query failed: " . $conn->error);
    }
} catch (Exception $e) {
    echo json_encode(['error' => $e->getMessage()]);
}
?>