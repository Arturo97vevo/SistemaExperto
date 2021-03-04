%%%Definicion de plantas existentes
planta(opio).
planta(coca).
planta(albaca).
planta(arnica).
planta(barbasco).
planta(cuajiote).
planta(damiana).
planta(cempasuchil).
planta(chaparro_amargoso).
planta(chicalote).

%%% Definicion de las formas de usar la planta con la enfermedad o
%%% malestar que cura
uso(albahaca,jugo,tonico_capilar).
uso(albahaca,cocimiento,diuretica).
uso(albahaca,cocimiento,carminativa).
uso(albahaca,cocimiento,emenagoga).
uso(arnica,tintura,t�nico_muscular).
uso(arnica,tintura,bronquitis).
uso(arnica,tintura,neumon�a).
uso(barbasco,t�,ciatica).
uso(barbasco,t�,reumas).
uso(barbasco,t�,artritis).
uso(barbasco,cataplasma,empeines).
uso(barbasco,cataplasma,sarna).
uso(cuajiote,t�,entre�imiento).
uso(cempasuchil,t�,dolor_estomago).
uso(cempasuchil,t�,tonico).
uso(cempasuchil,t�,parasitos_intestinales).
uso(chaparro_amargoso,t�,hemorragias_internas).
uso(chaparro_amargoso,t�,diarrea).
uso(chaparro_amargoso,t�,flujos).
uso(chicalote,cocimiento,tos).
uso(chicalote,cocimiento,asma).
uso(chicalote,cocimiento,tosferina).
uso(chicalote,cocimiento,artritis).
uso(chicalote,cocimiento,insomnio_nervioso).
uso(chicalote,cocimiento,colicos_hepaticos).
uso(chicalote,cocimiento,colicos_renales).
uso(chicalote,cocimiento,epilepsia).

% ! Definicion de la parte de la planta que se va usar para su
% aplicacion%%
parte_usar(albahaca,hojas).
parte_usar(arnica,raiz).
parte_usar(barbasco,raiz).
parte_usar(barbasco,planta).
parte_usar(cuajiote,corteza).
parte_usar(cempasuchil,hoja).
parte_usar(chaparro_amargoso,corteza).
parte_usar(chaparro_amargoso,hojas).
parte_usar(chicalote,leche).
parte_usar(chicalote,semilla_molida).


org_esp(cempasuchil,estomago,hoja,t�).
org_esp(cempasuchil,organismo,hoja,t�).
org_esp(chaparro_amargoso,estomago,hoja,t�).
org_esp(chaparro_amargoso,estomago,corteza,t�).
org_esp(chicalote,tos,hoja,cocimiento).
org_esp(chicalote,asma,hoja,cocimiento).
org_esp(chicalote,tosferina,hoja,cocimiento).
org_esp(chicalote,epilepsia,hoja,cocimiento).
org_esp(chicalote,artritis,hoja,cocimiento).
org_esp(chicalote,carnosidad_ojos,leche,untar).
org_esp(chicalote,nubes_ojos,leche,untar).



dosis_chaparro_amargoso(al_dia,tres_tazas).
dosis_chicalote(al_dia,dos_a_3_veces).

%Aqui hacemos un tratamiento pero con poco detalle de las plantas
tratamiento(P,M,E,O):-uso(P,M,E) , parte_usar(P,O).


%Tratamiento m�s a detalle de cada planta
tratamiento_cempasuchil(P,M,E,Pa,Or):-uso(P,M,E), parte_usar(P,Pa), org_esp(P,Or,Pa,M).













