%% Práctica 1: Operaciones, relaciones y transformaciones en el dominio difuso

%% Objetivos 
%%
% 
% # Gráficar las funciones de pertenecia implementadas en la herramienta
% Fuzzy Logic Toolbox
% # 
% # 

%% Desarrollo
% MATLAB cuenta con la herramienta *Fuzzy Logic Toolbox*, que tiene
% implementada la función de menbresia _trapmf_, para consultar su 
% documentación y ayuda
%

help trapmf

%%
% Despues de consultar la documentación se implementan las siguientes
% gráficas
%

x=-3:0.001:7;
y=trapmf(x,[-2, 1 3, 6]);
plot(x, y, 'Color',[1 0.55 0], 'LineWidth', 3)
grid on
title("Gráfica de función de menbresia trapecio")
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
% En la ayuda de MATLAB se puede encontrar una descripción de cada una
% de estas funcines así como ejemplos de gráficas, la siguiente gráfica
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
title('Gráfica del conjunto difuzo A')

subplot(3,1,2)
plot(x,B,'LineWidth',3);
grid on
axis([-12,11,-0.1,1.1])
title('Gráfica del conjunto difuzo B')

subplot(3,1,3)
plot(x,C,'LineWidth',3);
grid on
axis([-12,11,-0.1,1.1])
title('Gráfica del conjunto difuzo C=A\cup B')

%% Entregables
% Se revisa una publicación (html) de la práctica. En este caso tendá que
% iniciar indicando el nombre de la práctica y sus datos personales,
% equipos de dos o tres personas
% (Portada). El índice del contenido lo genera Publish (índice). Los
% objetivos son los sigueintes:
%
% * 
%
% Como introducción investigue  módulos de Python para logica difuza,
% puede incluir, como se instala el módulo, como se gráfican las funciones
% de membresia, como se operan los conjuntos difusos, ejemplosl etc., en el
% siguiente <https://github.com/scikit-fuzzy/scikit-fuzzy enlace> se
% encuentra el repositorio oficial del módulo *scikit-fuzzy*, por supuesto
% puede buscar otras referencias.
%
% Para el desarrollo se tienen que resolver cada uno de los siguientes
% problemas comenzando una nueva sección (para la publicación) en cada uno
% de ellos.
%
% *1.* Implemente una función que se llame _senomf_ que implemente la
% sigueinte función de membresia
%
% *2.* Construya una función que gráfique funciones de membresia en el formato
% de su elección. La función debe de recibir las abscisas y las ordenadas
% así como las etiquetas de los ejes. No debe incluir el código, solo el 
% uso de la función para mostrar la gráfica del sigueinte conjunto difuzo
%
% *3.* Implemente una gráfica (subplot de 3x2) donde indique ejemplos
% especificos para ilustrar
%
% <<ema.png>>
% 
% *4.* Para  los conjuntos difusos
%
% verifique las siguientes propiedades
%
% <<propiedades.png>>
% 
% No es necesario incluir conclusiones en esta práctica, si lo considera
% necesario puede incluir apéndices, no olvide incluir sus referencias. 
%%
%
% El código de esta publicación lo puedes encontrar en el siguiente
% < enlace>


