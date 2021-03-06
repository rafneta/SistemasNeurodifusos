%% Pr�ctica 1: Operaciones, relaciones y transformaciones en el dominio difuso
% Duraci�n: 9.5 horas
%% Objetivos 
%%
% 
% * Implementar operaciones de conjuntos difusos, utilizando MATLAB
% * Implementar relaciones de conjuntos difusos, utilizando MATLAB
% * Implementar tranformaciones de conjuntos difusos, utilizando MATLAB
%
% 
% 
%% Desarrollo
% MATLAB cuenta con la herramienta *Fuzzy Logic Toolbox*, que tiene
% implementada la funci�n de membresia _trapmf_, para consultar su 
% documentaci�n y ayuda
%

help trapmf

%%
% Despues de consultar la documentaci�n se implementan las siguientes
% gr�ficas
%

x=-3:0.001:7;
y=trapmf(x,[-2, 1 3, 6]);
plot(x, y, 'Color',[1 0.55 0], 'LineWidth', 3)
grid on
title("Gr�fica de funci�n de menbresia trapecio")
axis([-4,8,-0.1,1.1])

%% 
% De igualmanera se tienen las siguientes funciones de membresia
% implementadas
%%
% 
% * trapmf
% * gbellmf
% * trimf
% * gaussmf
% * gauss2mf
% * smf
% * zmf
% * psigmf
% * dsigmf
% * pimf
% * sigmf
%
% En la ayuda de MATLAB se puede encontrar una descripci�n de cada una
% de estas funcines as� como ejemplos de gr�ficas, la siguiente gr�fica
% muestra estos ejemplos 
%%
% 
% <<fmg.png>>
%
% Se pueden realizar operaciones entre los conjuntos difuzos, utilizando la
% herramienta mencionada

x = -11:0.1:10;
A = trapmf(x,[-10 -8 -2 2]);
B = trapmf(x,[-5 -3 2 4]);
C = max(A, B);

subplot(3,1,1)
plot(x,A,'LineWidth',3);
grid on
axis([-12,11,-0.1,1.1])
title('Gr�fica del conjunto difuzo A')

subplot(3,1,2)
plot(x,B,'LineWidth',3);
grid on
axis([-12,11,-0.1,1.1])
title('Gr�fica del conjunto difuzo B')

subplot(3,1,3)
plot(x,C,'LineWidth',3);
grid on
axis([-12,11,-0.1,1.1])
title('Gr�fica del conjunto difuzo C=A\cup B')

%% Entregables
% Se revisa una publicaci�n (html) de la pr�ctica. En este caso tend� que
% iniciar indicando el nombre de la pr�ctica y sus datos personales,
% equipos de dos o tres personas
% (Portada). El �ndice del contenido lo genera Publish (�ndice). Los
% objetivos deben ser incluidos y se han presentado al principio de la
% pr�ctica.
%
% Como introducci�n investigue  m�dulos de Python para logica difuza,
% puede incluir, como se instala el m�dulo, como se gr�fican las funciones
% de membresia, como se operan los conjuntos difusos, ejemplos, etc., en el
% siguiente <https://github.com/scikit-fuzzy/scikit-fuzzy enlace> se
% encuentra el repositorio oficial del m�dulo *scikit-fuzzy*, por supuesto
% puede buscar otras referencias.
%
% Para el desarrollo se tienen que resolver cada uno de los siguientes
% problemas comenzando una nueva secci�n (para la publicaci�n) en cada uno
% de ellos.
%
% *1.* Implemente tres funci�n que se llame _fm1_, _fm2_ y _fm3_ que 
% implementen cada una de las sigeuintes funciones de membresia
%
% <<fmf.png>>
% 
% Los p�rametros que no muestras restricci�n pueden tener cualquier numero
% real como argumento, la funci�n debe ser capaz de evaluar tanto vectores
% de cualquier dimensi�n. La funci�n $\mu_3$ recibe el nombre de singleton
%
% *2.* Construya una funci�n que gr�fique funciones de membresia en el formato
% de su elecci�n. La funci�n debe de recibir las abscisas y las ordenadas
% as� como las etiquetas de los ejes. No debe incluir el c�digo, solo el 
% uso de la funci�n para mostrar las gr�ficas de los siguientes conjuntos
% difusos del problema anterior
%
% (a) $\mu_1(x)\,con \, m=1,\,k=2$, (b) $\mu_1(x)\,con \, m=2,\,k=4$
%
% (c) $\mu_2(x)\,con\, m=1,\,k=2$, (d) $\mu_2(x)\,con\, m=2\,k=4$
%
% (e) $\mu_3(x)\,con\, m=2$
%
% Experimente con m�s valores de los parametros, �Cu�l es el efecto de cada
% parametro para cada funci�n?
%
% *3.* Implemente una gr�fica (subplot de 3x2) donde indique ejemplos
% especificos para ilustrar
%
% <<ema.png>>
% 
% *4.* Para  los conjuntos difusos $A=\mu_1(x)\,con\, m=1,\,k=2$,
% $B=\mu_1(x)\,con\, m=2,\,k=4$, $C=\mu_2(x)\,con\, m=1,\,k=2$,
%
% verifique las siguientes propiedades
%
% <<propiedades.png>>
% 
% Para la verificaci�n, elabore la gr�fica de los conjuntos de cada lado de
% la igualdad y posteriormente observe que el resultado gr�fico es el mismo
%
% No es necesario incluir conclusiones en esta pr�ctica, si lo considera
% necesario puede incluir ap�ndices, no olvide incluir sus referencias. 
%%
%
% El c�digo de esta publicaci�n lo puedes encontrar en el siguiente
% < enlace>

