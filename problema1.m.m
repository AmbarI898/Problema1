% octave.script
% Escuela: Tecnologico de estudios superiores de jilotepec
% Especialidad: Ingenieria en Sistemas Computacionales
% Título: Problema 1 cilindro 
% Autor: Ambar Itzel Cruz Zarza
% Fecha: 202123174
% Versión: 1
% Uso: octava> / ruta / ClasificacionNumeros
% Notas: Requiere aplicación octave, usar su linea de comandos

%limpiar varaibles 
clear
%Ejemplo minimo de material para envase cilindrico
%Rango de 0..1 en i=0.1
r=-50:0.1:50;
%Valor de la funsion 
ar=@(r) (pi() * (r.^2)) + (2./(r));
%funcion a plotear
y=(pi() * (r.^2)) + (2./(r));
%funsion para determinar valor minimo
resr = fminbnd(ar,0,1);
%Dibujar
plot(r,y);
%Titulo
title(['Minimo material r = ' num2str(resr)]);
%Etiqueta para x
xlabel(['Minimo r = ' num2str(resr)]);
%Etiqueta para y
ylabel(['Min y = ' num2str(ar (resr))]);