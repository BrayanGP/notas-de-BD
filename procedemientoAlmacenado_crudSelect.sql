use pruebaExamen
go
create table alumno
(
id int identity primary key,
nombre varchar(30),
apellido varchar(30),
edad int
)
go

create procedure pruebas
(
@opcion varchar(20),
@nombre varchar(30),
@apellido varchar(30),
@edad int
)
as
if(@opcion = 'select')
begin
select * from alumno
end
else if(@opcion = 'insert')
begin
insert alumno(nombre,apellido,edad)
values (@nombre,@apellido,@edad)
end
else if(@opcion = 'update')
begin
update alumno set nombre=@nombre,apellido=@apellido,edad=@edad
end
else if(@opcion = 'delete')
begin
delete alumno where nombre = @nombre 
end

exec pruebas 'select','jose','garcia',26