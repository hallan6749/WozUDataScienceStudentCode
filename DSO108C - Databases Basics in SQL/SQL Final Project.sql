#Part 1
create table viewer (
	viewer_id integer primary key auto_increment, 
    first_name varchar(50),
    last_name varchar(50),
    email varchar(50));
    
    insert into viewer 
    values ("1", "Kenneth", "Davis", "kenneth.davis@gmail.com");
    insert into viewer
    values ("2", "David", "Shirley", "david.shirley@gmail.com");
	insert into viewer
    values ("3", "Gaby", "Garcia", "gaby.garcia@gmail.com"); 
	insert into viewer
    values ("4", "Donna", "Bumbleton", "donna.bumbleton@gmail.com"); 

    select * from viewer; 


#Part 2
CREATE TABLE sakila.StreamingServiceQueue(
    queue_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    genre NVARCHAR(50) NOT NULL,
    filmTitle NVARCHAR(50) NOT NULL,
    streamAvailable BOOLEAN CHECK(streamAvailable IN (true, false))
)

INSERT INTO sakila.StreamingServiceQueue (genre, filmTitle, streamAvailable)
VALUES ("Movies based on books","The Breadwinner", true);

INSERT INTO sakila.StreamingServiceQueue (genre, filmTitle, streamAvailable)
VALUES ("Emotional","Roma", false); 

INSERT INTO sakila.StreamingServiceQueue (genre, filmTitle, streamAvailable)
VALUES ("Campy","To Wong Foo, Thanks for Everything Julie Newmar", true); 

INSERT INTO sakila.StreamingServiceQueue (genre, filmTitle, streamAvailable)
VALUES ("Critically Acclaimed","A Single Man", true);

Select filmtitle from sakila.streamingservicequeue; 


#Part 3
CREATE TABLE sakila.WatchedList(
    watch_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    queue_id INTEGER NOT NULL,
    viewer_id INTEGER NOT NULL,
    FOREIGN KEY(viewer_id) REFERENCES sakila.viewer(viewer_id),
    FOREIGN KEY(queue_id) REFERENCES sakila.StreamingServiceQueue(queue_id)
);

INSERT INTO sakila.WatchedList (viewer_id, queue_id)
VALUES (1, 2);

INSERT INTO sakila.WatchedList (viewer_id, queue_id)
VALUES (2, 1); 

INSERT INTO sakila.WatchedList (viewer_id, queue_id)
VALUES (3, 2); 

INSERT INTO sakila.WatchedList (viewer_id, queue_id)
VALUES (4, 1); 

Select * from sakila.viewer
Join sakila.watchedlist using (viewer_id)
Join sakila.streamingservicequeue using (queue_id)
order by last_name;
