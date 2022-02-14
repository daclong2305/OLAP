alter table Dim_Album
add constraint fk_Artist_Album
foreign key(Artist_Id) references Dim_Artist(Artist_Id)
GO
alter table Dim_Album
add constraint fk_Format_Album
foreign key(Format_Id) references Dim_Format(Format_Id)
GO
alter table Dim_Album
add constraint fk_Genre_Album
foreign key(Genre_Id) references Dim_Genre(Genre_Id)
GO
alter table Dim_Album
add constraint fk_Label_Album
foreign key(Label_Id) references Dim_Label(Label_Id)
GO
alter table Dim_Album
add constraint fk_Time_Album
foreign key(Time_Id) references Dim_Time(Time_Id)
GO
alter table Fact_Rating
add constraint fk_Album_Rating
foreign key(Album_Id) references Dim_Album(Album_Id)
GO
alter table Fact_Review
add constraint fk_Source_Review
foreign key(Source_Id) references Dim_Source(Source_Id)
GO
alter table Fact_Review
add constraint fk_Reception_Review
foreign key(Reception_Id) references Dim_Reception(Reception_Id)
GO
alter table Fact_Review
add constraint fk_Album_Review
foreign key(Album_Id) references Dim_Album(Album_Id)
GO
