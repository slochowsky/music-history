--SELECT * FROM Genre;

--SELECT
--    Id,
--    ArtistName,
--    YearEstablished
--FROM Artist
--ORDER BY ArtistName
--;

--SELECT
--    s.Id,
--    Title,
--    a.ArtistName
--FROM Song s 
--    JOIN Artist a ON s.ArtistId = a.Id

--SELECT
--    album.Id,
--    Title,
--    ArtistId,
--    GenreId,
--    genre.Label,
--    artist.ArtistName
--FROM Album album
--JOIN Artist artist ON album.ArtistId = artist.Id
--JOIN Genre genre ON album.GenreId = genre.Id 
--WHERE genre.Label = 'Pop'
--;

--SELECT
--    album.Id,
--    Title,
--    ArtistId,
--    GenreId,
--    genre.Label,
--    artist.ArtistName
--FROM Album album
--JOIN Artist artist ON album.ArtistId = artist.Id
--JOIN Genre genre ON album.GenreId = genre.Id 
--WHERE genre.Label = 'Rock' OR genre.Label = 'Jazz'
--;

--SELECT
--    album.Title,
--    song.Title 
--FROM Album album
--LEFT JOIN Song song ON album.Id = Song.AlbumId
--WHERE song.AlbumId IS NULL

--INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Rebecca Black', 2011)

--INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Carly Rae Jepsen', 2012)
--
--INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('KISS', '1/1/2012', 3120, 'Interscrop Records', 29, 7)

--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Call Me Maybe', 212, '1/1/2012', 7, 29, 23)
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Good Time', 290, '1/1/2012', 7, 29, 23)

--SELECT
--    a.Title,
--    s.Title,
--    artist.ArtistName
--FROM Album a
--JOIN Song s ON s.AlbumId = a.Id
--JOIN Artist artist ON artist.Id = a.ArtistId
--WHERE a.Id = 23

--SELECT a.Title, COUNT(song.Id) AS 'Song Count'
--FROM Album a
--INNER JOIN Song song ON song.AlbumId = a.Id
--GROUP BY (a.Title)
--ORDER BY COUNT(song.Id) DESC

--SELECT a.ArtistName, COUNT(song.Id) AS 'Song Count'
--FROM Artist a
--INNER JOIN Song song ON song.ArtistId = a.Id
--GROUP BY (a.ArtistName)
--ORDER BY COUNT(song.Id) DESC

--SELECT genre.Label, COUNT(song.Id) AS 'Song Count' 
--FROM Genre genre
--INNER JOIN Song song ON song.GenreId = genre.Id
--GROUP BY (genre.Label)
--ORDER BY COUNT(song.Id) DESC

--SELECT artist.ArtistName, COUNT(DISTINCT album.Label) AS 'Label Count'
--FROM Artist artist
--JOIN Album album ON album.ArtistId = artist.Id
--GROUP BY (artist.ArtistName)
--HAVING COUNT(DISTINCT album.Label) > 1

--SELECT album.Title, album.AlbumLength
--FROM Album album
--WHERE album.AlbumLength = (
--    SELECT MAX(AlbumLength) FROM album
--);

--SELECT song.SongLength, song.Title, album.Title AS 'Album Title', artist.ArtistName
--FROM Song song
--JOIN Album album ON song.AlbumId = album.Id
--JOIN Artist artist ON song.ArtistId = artist.Id
--WHERE SongLength = (
  --  SELECT MAX(SongLength) FROM song
--)