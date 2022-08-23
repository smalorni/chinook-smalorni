--(15)Provide a query that shows the total number of tracks in each playlist. Includes playlist name, total number of tracks on each playlist

SELECT
    p.Name,
        COUNT(*) AS "Total Number of Tracks"
            FROM Playlist p 
                JOIN PlaylistTrack pt
                    ON p.PlayListId = pt.PlaylistId
                        GROUP BY p.Name

