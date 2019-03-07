insert into perfil values ('wkidston0@reddit.com', 'Chet Louisot', 1);
insert into perfil values ('mdaventry1@php.net', 'Katha Corteney', 0);
insert into perfil values ('cortas2@mtv.com', 'Marje Langdale', 0);
insert into perfil values ('ayashunin3@mediafire.com','Ariella Earwaker', 0);
insert into perfil values ('ajarmain4@yolasite.com', 'Flori Munning', 0);
insert into perfil values ('mabreheart5@techcrunch.com', 'Merline McDonell', 0);
insert into perfil values ('sdagon6@youtu.be', 'Christine Rand', 0);
insert into perfil values ('lgoater7@ucoz.com', 'Daffie Hardstaff', 1);
insert into perfil values ('zbatteson8@patch.com', 'Stern Bixley', 0);
insert into perfil values ('jmccart9@mozilla.com', 'Heinrick Corringham', 1);


insert into opinion values (1, TO_DATE('2006-01-21', 'YYYY-MM-DD'), 'E', 'Ut tellus.', 'momentos de error', 'wkidston0@reddit.com', 'incremental');
insert into opinion values (2, TO_DATE('2010-01-21', 'YYYY-MM-DD'), 'G', 'Etiam justo.', 'momentos de error', 'mdaventry1@php.net', 'static');
insert into opinion values (3, TO_DATE('2015-01-21', 'YYYY-MM-DD'), 'C', 'Nulla nisl.', 'momentos de error', 'cortas2@mtv.com', 'Secured');
insert into opinion values (4, TO_DATE('2011-01-21', 'YYYY-MM-DD'), 'C', 'Sed ante.', 'momentos negativos', 'ayashunin3@mediafire.com', 'logistical');
insert into opinion values (5, TO_DATE('2010-01-21', 'YYYY-MM-DD'), 'G', 'Mauris enim.', 'momentos positivos', 'ajarmain4@yolasite.com', 'project');
insert into opinion values (6, TO_DATE('2003-01-21', 'YYYY-MM-DD'), 'C', 'Morbi  justo.', 'momentos de error', 'mabreheart5@techcrunch.com', 'capability');
insert into opinion values (7, TO_DATE('2001-01-21', 'YYYY-MM-DD'), 'G', 'In platea.', 'momentos negativos', 'sdagon6@youtu.be', 'Innovative');
insert into opinion values (8, TO_DATE('2002-01-21', 'YYYY-MM-DD'), 'E', 'In hac platea .', 'momentos de error', 'lgoater7@ucoz.com', 'software');
insert into opinion values (9, TO_DATE('2010-01-21', 'YYYY-MM-DD'), 'G', 'Nulla neque.', 'momentos de error', 'zbatteson8@patch.com', 'static');
insert into opinion values (10, TO_DATE('2020-01-21', 'YYYY-MM-DD'), 'G', 'Morbi a ipsum.', 'momentos positivos', 'jmccart9@mozilla.com', 'support');


insert into adjetivo values (1, 'Switch');
insert into adjetivo values (2, 'Monitored');
insert into adjetivo values (3, 'Selfenable');
insert into adjetivo values (4, 'zero');
insert into adjetivo values (5, 'benchmak');
insert into adjetivo values (6, 'projection');
insert into adjetivo values (7, 'leading');
insert into adjetivo values (8, 'initiative');
insert into adjetivo values (9, 'freshthink');
insert into adjetivo values (10, 'bifurcate');


insert into tema values ('customizable', 'wkidston0@reddit.com');
insert into tema values ('solution', 'mdaventry1@php.net');
insert into tema values ('multimedia', 'cortas2@mtv.com');
insert into tema values ('directional', 'ayashunin3@mediafire.com');
insert into tema values ('Robust', 'ajarmain4@yolasite.com');
insert into tema values ('hybrid', 'mabreheart5@techcrunch.com');
insert into tema values ('motivating', 'sdagon6@youtu.be');
insert into tema values ('Devolved', 'lgoater7@ucoz.com');
insert into tema values ('Full', 'zbatteson8@patch.com');
insert into tema values ('software', 'jmccart9@mozilla.com');


insert into PALABRA values ('customizable', 'inmagna');
insert into PALABRA values ('solution', 'namules');
insert into PALABRA values ('multimedia', 'amettuis');
insert into PALABRA values ('directional', 'fusce');
insert into PALABRA values ('Robust', 'a');
insert into PALABRA values ('hybrid', 'dapibus');
insert into PALABRA values ('motivating', 'nequeduis');
insert into PALABRA values ('Devolved', 'habitas');
insert into PALABRA values ('Full', 'erat');
insert into PALABRA values ('software', 'suscipit');



insert into ESPRERREQUISITO values ('solution', 'customizable');
insert into ESPRERREQUISITO values ('customizable', 'solution');
insert into ESPRERREQUISITO values ('directional', 'multimedia');
insert into ESPRERREQUISITO values ('multimedia', 'directional');
insert into ESPRERREQUISITO values ('hybrid', 'Robust');
insert into ESPRERREQUISITO values ('Devolved', 'motivating');
insert into ESPRERREQUISITO values ('motivating', 'Devolved');
insert into ESPRERREQUISITO values ('software', 'Full');
insert into ESPRERREQUISITO values ('Full', 'software');


insert into ESSUBTEMA values ('solution', 'customizable');
insert into ESSUBTEMA values ('customizable', 'solution');
insert into ESSUBTEMA values ('directional', 'multimedia');
insert into ESSUBTEMA values ('multimedia', 'directional');
insert into ESSUBTEMA values ('hybrid', 'Robust');
insert into ESSUBTEMA values ('Devolved', 'motivating');
insert into ESSUBTEMA values ('motivating', 'Devolved');
insert into ESSUBTEMA values ('software', 'Full');
insert into ESSUBTEMA values ('Full', 'software');


insert into TEMPORAL values ('incremental',TO_DATE('2006-01-21', 'YYYY-MM-DD'), 'https://macromedia.com.xml', 'A','wkidston0@reddit.com', 3, 'I');
insert into TEMPORAL values ('Secured', TO_DATE('2010-01-21', 'YYYY-MM-DD'), 'https://cornell.edu/vestibulum.quam', 'V','mdaventry1@php.net', 46, 'F');
insert into TEMPORAL values ('static', TO_DATE('2015-01-21', 'YYYY-MM-DD'), 'http://bloglines.com.s', 'F','cortas2@mtv.com', 48, 'I');
insert into TEMPORAL values ('collaboration', TO_DATE('2015-01-21', 'YYYY-MM-DD'), 'https://intel.com.', 'V','ayashunin3@mediafire.com', '1.72', 'F');
insert into TEMPORAL values ('Intuitive',TO_DATE('2011-01-21', 'YYYY-MM-DD'), 'https://webs.com.auctor/gravida/', 'V','ajarmain4@yolasite.com', '2.45', 'E');
insert into TEMPORAL values ('model', TO_DATE('2010-01-21', 'YYYY-MM-DD'), 'https://yolasite.com/tellus/semper.xml', 'A','mabreheart5@techcrunch.com', '0.69', 'I');
insert into TEMPORAL values ('alliance', TO_DATE('2003-01-21', 'YYYY-MM-DD'), 'https://cnn.com/at.turpis/donec/posuere/', 'V','sdagon6@youtu.be', '0.68', 'I');
insert into TEMPORAL values ('intangible', TO_DATE('2001-01-21', 'YYYY-MM-DD'), 'https://1und1.de.', 'V','lgoater7@ucoz.com', '2.27', 'I');
insert into TEMPORAL values ('real-time', TO_DATE('2002-01-21', 'YYYY-MM-DD'), 'https://tinyurl.com.i', 'A','zbatteson8@patch.com', '8.34', 'E');
insert into TEMPORAL values ('application', TO_DATE('2020-01-21', 'YYYY-MM-DD'), 'https://stanford.edu.morbi/', 'A','jmccart9@mozilla.com', '5.52', 'F');


insert into etiqueta values ('incremental', 'VersatileS');
insert into etiqueta values ('Secured', 'motivating');
insert into etiqueta values ('static', 'maximized');
insert into etiqueta values ('collaboration', 'Multilayer');
insert into etiqueta values ('Intuitive', 'workforce');
insert into etiqueta values ('model', 'Custom');
insert into etiqueta values ('alliance', 'national');
insert into etiqueta values ('intangible', 'concept');
insert into etiqueta values ('real-time', 'logistical');
insert into etiqueta values ('application', 'human');

insert into contenidotema values('incremental','Customizable');
insert into contenidotema values('Secured','Robust');
insert into contenidotema values('static','hybrid');
insert into contenidotema values('collaboration','hybrid');
insert into contenidotema values('Intuitive','hybrid');
insert into contenidotema values('model','hybrid');
insert into contenidotema values('alliance','hybrid');
insert into contenidotema values('intangible','hybrid');
insert into contenidotema values('real-time','hybrid');
insert into contenidotema values('application','hybrid');



insert into consulta values (TO_DATE('2006-01-21', 'YYYY-MM-DD'), 'wkidston0@reddit.com', 'incremental');
insert into consulta values (TO_DATE('2010-01-21', 'YYYY-MM-DD'), 'mdaventry1@php.net', 'Secured');
insert into consulta values (TO_DATE('2015-01-21', 'YYYY-MM-DD'), 'cortas2@mtv.com', 'static');
insert into consulta values (TO_DATE('2015-01-21', 'YYYY-MM-DD'), 'ayashunin3@mediafire.com', 'collaboration');
insert into consulta values (TO_DATE('2011-01-21', 'YYYY-MM-DD'), 'ajarmain4@yolasite.com', 'Intuitive');
insert into consulta values (TO_DATE('2010-01-21', 'YYYY-MM-DD'), 'mabreheart5@techcrunch.com', 'model');
insert into consulta values (TO_DATE('2003-01-21', 'YYYY-MM-DD'), 'sdagon6@youtu.be', 'alliance');
insert into consulta values (TO_DATE('2001-01-21', 'YYYY-MM-DD'), 'lgoater7@ucoz.com', 'intangible');
insert into consulta values (TO_DATE('2011-01-21', 'YYYY-MM-DD'), 'zbatteson8@patch.com', 'real-time');
insert into consulta values (TO_DATE('2020-01-21', 'YYYY-MM-DD'), 'jmccart9@mozilla.com', 'application');




insert into asignatura values ('HUR', 'superstructure');
insert into asignatura values ('EAE', 'responsive');
insert into asignatura values ('TEC', 'responsive');
insert into asignatura values ('LDO', 'Public-key');
insert into asignatura values ('PTX', 'migration');
insert into asignatura values ('NHL', 'Extended');
insert into asignatura values ('FTG', 'Grass-roots');
insert into asignatura values ('ECC', 'Assimilated');
insert into asignatura values ('ACG', 'even-keeled');
insert into asignatura values ('ITG', 'portal');



insert into Trata  values ('A', 76, 'Customizable', 'HUR');
insert into Trata  values ('P', 8, 'solution-oriented', 'EAE');
insert into Trata  values ('A', 91, 'multimedia', 'TEC');
insert into Trata  values ('A', 65, 'directional', 'LDO');
insert into Trata  values ('A', 91, 'Robust', 'PTX');
insert into Trata  values ('P', 98, 'hybrid', 'NHL');
insert into Trata  values ('A', 11, 'motivating', 'FTG');
insert into Trata  values ('E', 2, 'Devolved', 'ECC');
insert into Trata  values ('E', 34, 'Fully-configurable', 'ACG');
insert into Trata  values ('P', 71, 'software', 'ITG');


insert into filtro values ('id', 'posuere metus vitae ipsum');
insert into filtro values ('vestibulum', 'ultrices enim lorem ipsum');
insert into filtro values ('lacus', 'placerat praesent blandit nam');
insert into filtro values ('sit', 'ultricies eu nibh quisque id');
insert into filtro values ('nec', 'semper rutrum nulla nunc purus');
insert into filtro values ('in', 'nibh in quis justo');
insert into filtro values ('consequat', 'in leo maecenas pulvinar');
insert into filtro values ('tempus', 'nullam varius nulla facilisi cras');
insert into filtro values ('turpis', 'in felis donec semper');
insert into filtro values ('suspense', 'rutrum neque aenean');



insert into ContenidoFiltro values ('incremental', 'id');
insert into ContenidoFiltro values ('Secured', 'vestibulum');
insert into ContenidoFiltro values ('static', 'lacus');
insert into ContenidoFiltro values ('Intuitive', 'sit');
insert into ContenidoFiltro values ('model', 'nec');
insert into ContenidoFiltro values ('alliance', 'in');
insert into ContenidoFiltro values ('intangible', 'consequat');
insert into ContenidoFiltro values ('real-time', 'tempus');
insert into ContenidoFiltro values ('application', 'turpis');
insert into ContenidoFiltro values ('collaboration', 'suspense');
