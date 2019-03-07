INSERT INTO PERFIL VALUES ('wkidston0@reddit.com', 'Chet Louisot', 1);
INSERT INTO PERFIL VALUES ('mdaventry1@php.net', 'Katha Corteney', 0);
INSERT INTO PERFIL VALUES ('cortas2@mtv.com', 'Marje Langdale', 0);
INSERT INTO PERFIL VALUES ('ayashunin3@mediafire.com','Ariella Earwaker', 0);
INSERT INTO PERFIL VALUES ('ajarmain4@yolasite.com', 'Flori Munning', 0);
INSERT INTO PERFIL VALUES ('mabreheart5@techcrunch.com', 'Merline McDonell', 0);
INSERT INTO PERFIL VALUES ('sdagon6@youtu.be', 'Christine Rand', 0);
INSERT INTO PERFIL VALUES ('lgoater7@ucoz.com', 'Daffie Hardstaff', 1);
INSERT INTO PERFIL VALUES ('zbatteson8@patch.com', 'Stern Bixley', 0);
INSERT INTO PERFIL VALUES ('jmccart9@mozilla.com', 'Heinrick Corringham', 1);


INSERT INTO TEMA VALUES ('customizable', 'wkidston0@reddit.com');
INSERT INTO TEMA VALUES ('solution', 'mdaventry1@php.net');
INSERT INTO TEMA VALUES ('multimedia', 'cortas2@mtv.com');
INSERT INTO TEMA VALUES ('directional', 'ayashunin3@mediafire.com');
INSERT INTO TEMA VALUES ('Robust', 'ajarmain4@yolasite.com');
INSERT INTO TEMA VALUES ('hybrid', 'mabreheart5@techcrunch.com');
INSERT INTO TEMA VALUES ('motivating', 'sdagon6@youtu.be');
INSERT INTO TEMA VALUES ('Devolved', 'lgoater7@ucoz.com');
INSERT INTO TEMA VALUES ('Full', 'zbatteson8@patch.com');
INSERT INTO TEMA VALUES ('software', 'jmccart9@mozilla.com');


INSERT INTO PALABRA VALUES ('customizable', 'inmagna');
INSERT INTO PALABRA VALUES ('solution', 'namules');
INSERT INTO PALABRA VALUES ('multimedia', 'amettuis');
INSERT INTO PALABRA VALUES ('directional', 'fusce');
INSERT INTO PALABRA VALUES ('Robust', 'a');
INSERT INTO PALABRA VALUES ('hybrid', 'dapibus');
INSERT INTO PALABRA VALUES ('motivating', 'nequeduis');
INSERT INTO PALABRA VALUES ('Devolved', 'habitas');
INSERT INTO PALABRA VALUES ('Full', 'erat');
INSERT INTO PALABRA VALUES ('software', 'suscipit');



INSERT INTO ESPRERREQUISITO VALUES ('solution', 'customizable');
INSERT INTO ESPRERREQUISITO VALUES ('customizable', 'solution');
INSERT INTO ESPRERREQUISITO VALUES ('directional', 'multimedia');
INSERT INTO ESPRERREQUISITO VALUES ('multimedia', 'directional');
INSERT INTO ESPRERREQUISITO VALUES ('hybrid', 'Robust');
INSERT INTO ESPRERREQUISITO VALUES ('Devolved', 'motivating');
INSERT INTO ESPRERREQUISITO VALUES ('motivating', 'Devolved');
INSERT INTO ESPRERREQUISITO VALUES ('software', 'Full');
INSERT INTO ESPRERREQUISITO VALUES ('Full', 'software');


INSERT INTO ESSUBTEMA VALUES ('solution', 'customizable');
INSERT INTO ESSUBTEMA VALUES ('customizable', 'solution');
INSERT INTO ESSUBTEMA VALUES ('directional', 'multimedia');
INSERT INTO ESSUBTEMA VALUES ('multimedia', 'directional');
INSERT INTO ESSUBTEMA VALUES ('hybrid', 'Robust');
INSERT INTO ESSUBTEMA VALUES ('Devolved', 'motivating');
INSERT INTO ESSUBTEMA VALUES ('motivating', 'Devolved');
INSERT INTO ESSUBTEMA VALUES ('software', 'Full');
INSERT INTO ESSUBTEMA VALUES ('Full', 'software');


INSERT INTO TEMPORAL VALUES ('incremental',TO_DATE('2006-01-21', 'YYYY-MM-DD'), 'https://macromedia.com.xml', 'A','wkidston0@reddit.com', 3, 'I');
INSERT INTO TEMPORAL VALUES ('Secured', TO_DATE('2010-01-21', 'YYYY-MM-DD'), 'https://cornell.edu/vestibulum.quam', 'V','mdaventry1@php.net', 46, 'F');
INSERT INTO TEMPORAL VALUES ('static', TO_DATE('2015-01-21', 'YYYY-MM-DD'), 'http://bloglines.com.s', 'F','cortas2@mtv.com', 48, 'I');
INSERT INTO TEMPORAL VALUES ('collaboration', TO_DATE('2015-01-21', 'YYYY-MM-DD'), 'https://intel.com.', 'V','ayashunin3@mediafire.com', '1.72', 'F');
INSERT INTO TEMPORAL VALUES ('Intuitive',TO_DATE('2011-01-21', 'YYYY-MM-DD'), 'https://webs.com.auctor/gravida/', 'V','ajarmain4@yolasite.com', '2.45', 'E');
INSERT INTO TEMPORAL VALUES ('model', TO_DATE('2010-01-21', 'YYYY-MM-DD'), 'https://yolasite.com/tellus/semper.xml', 'A','mabreheart5@techcrunch.com', '0.69', 'I');
INSERT INTO TEMPORAL VALUES ('alliance', TO_DATE('2003-01-21', 'YYYY-MM-DD'), 'https://cnn.com/at.turpis/donec/posuere/', 'V','sdagon6@youtu.be', '0.68', 'I');
INSERT INTO TEMPORAL VALUES ('intangible', TO_DATE('2001-01-21', 'YYYY-MM-DD'), 'https://1und1.de.', 'V','lgoater7@ucoz.com', '2.27', 'I');
INSERT INTO TEMPORAL VALUES ('real-time', TO_DATE('2002-01-21', 'YYYY-MM-DD'), 'https://tinyurl.com.i', 'A','zbatteson8@patch.com', '8.34', 'E');
INSERT INTO TEMPORAL VALUES ('application', TO_DATE('2020-01-21', 'YYYY-MM-DD'), 'https://stanford.edu.morbi/', 'A','jmccart9@mozilla.com', '5.52', 'F');


INSERT INTO ETIQUETA VALUES ('incremental', 'VersatileS');
INSERT INTO ETIQUETA VALUES ('Secured', 'motivating');
INSERT INTO ETIQUETA VALUES ('static', 'maximized');
INSERT INTO ETIQUETA VALUES ('collaboration', 'Multilayer');
INSERT INTO ETIQUETA VALUES ('Intuitive', 'workforce');
INSERT INTO ETIQUETA VALUES ('model', 'Custom');
INSERT INTO ETIQUETA VALUES ('alliance', 'national');
INSERT INTO ETIQUETA VALUES ('intangible', 'concept');
INSERT INTO ETIQUETA VALUES ('real-time', 'logistical');
INSERT INTO ETIQUETA VALUES ('application', 'human');

INSERT INTO CONTENIDOTEMA VALUES('incremental','customizable');
INSERT INTO CONTENIDOTEMA VALUES('Secured','Robust');
INSERT INTO CONTENIDOTEMA VALUES('static','hybrid');
INSERT INTO CONTENIDOTEMA VALUES('collaboration','hybrid');
INSERT INTO CONTENIDOTEMA VALUES('Intuitive','hybrid');
INSERT INTO CONTENIDOTEMA VALUES('model','hybrid');
INSERT INTO CONTENIDOTEMA VALUES('alliance','hybrid');
INSERT INTO CONTENIDOTEMA VALUES('intangible','hybrid');
INSERT INTO CONTENIDOTEMA VALUES('real-time','hybrid');
INSERT INTO CONTENIDOTEMA VALUES('application','hybrid');


INSERT INTO OPINION VALUES (1, TO_DATE('2006-01-21', 'YYYY-MM-DD'), 'E', 'Ut tellus.', 'momentos de error', 'wkidston0@reddit.com', 'incremental');
INSERT INTO OPINION VALUES (2, TO_DATE('2010-01-21', 'YYYY-MM-DD'), 'G', 'Etiam justo.', 'momentos de error', 'mdaventry1@php.net', 'static');
INSERT INTO OPINION VALUES (3, TO_DATE('2015-01-21', 'YYYY-MM-DD'), 'C', 'Nulla nisl.', 'momentos de error', 'cortas2@mtv.com', 'Secured');
INSERT INTO OPINION VALUES (4, TO_DATE('2011-01-21', 'YYYY-MM-DD'), 'C', 'Sed ante.', 'momentos negativos', 'ayashunin3@mediafire.com', 'collaboration');
INSERT INTO OPINION VALUES (5, TO_DATE('2010-01-21', 'YYYY-MM-DD'), 'G', 'Mauris enim.', 'momentos positivos', 'ajarmain4@yolasite.com', 'Intuitive');
INSERT INTO OPINION VALUES (6, TO_DATE('2003-01-21', 'YYYY-MM-DD'), 'C', 'Morbi  justo.', 'momentos de error', 'mabreheart5@techcrunch.com', 'model');
INSERT INTO OPINION VALUES (7, TO_DATE('2001-01-21', 'YYYY-MM-DD'), 'G', 'In platea.', 'momentos negativos', 'sdagon6@youtu.be', 'alliance');
INSERT INTO OPINION VALUES (8, TO_DATE('2002-01-21', 'YYYY-MM-DD'), 'E', 'In hac platea .', 'momentos de error', 'lgoater7@ucoz.com', 'intangible');
INSERT INTO OPINION VALUES (9, TO_DATE('2010-01-21', 'YYYY-MM-DD'), 'G', 'Nulla neque.', 'momentos de error', 'zbatteson8@patch.com', 'real-time');
INSERT INTO OPINION VALUES (10, TO_DATE('2020-01-21', 'YYYY-MM-DD'), 'G', 'Morbi a ipsum.', 'momentos positivos', 'jmccart9@mozilla.com', 'application');


INSERT INTO ADJETIVO VALUES (1, 'Switch');
INSERT INTO ADJETIVO VALUES (2, 'Monitored');
INSERT INTO ADJETIVO VALUES (3, 'Selfenable');
INSERT INTO ADJETIVO VALUES (4, 'zero');
INSERT INTO ADJETIVO VALUES (5, 'benchmak');
INSERT INTO ADJETIVO VALUES (6, 'projection');
INSERT INTO ADJETIVO VALUES (7, 'leading');
INSERT INTO ADJETIVO VALUES (8, 'initiative');
INSERT INTO ADJETIVO VALUES (9, 'freshthink');
INSERT INTO ADJETIVO VALUES (10, 'bifurcate');



INSERT INTO CONSULTA VALUES (TO_DATE('2006-01-21', 'YYYY-MM-DD'), 'wkidston0@reddit.com', 'incremental');
INSERT INTO CONSULTA VALUES (TO_DATE('2010-01-21', 'YYYY-MM-DD'), 'mdaventry1@php.net', 'Secured');
INSERT INTO CONSULTA VALUES (TO_DATE('2015-01-21', 'YYYY-MM-DD'), 'cortas2@mtv.com', 'static');
INSERT INTO CONSULTA VALUES (TO_DATE('2015-01-21', 'YYYY-MM-DD'), 'ayashunin3@mediafire.com', 'collaboration');
INSERT INTO CONSULTA VALUES (TO_DATE('2011-01-21', 'YYYY-MM-DD'), 'ajarmain4@yolasite.com', 'Intuitive');
INSERT INTO CONSULTA VALUES (TO_DATE('2010-01-21', 'YYYY-MM-DD'), 'mabreheart5@techcrunch.com', 'model');
INSERT INTO CONSULTA VALUES (TO_DATE('2003-01-21', 'YYYY-MM-DD'), 'sdagon6@youtu.be', 'alliance');
INSERT INTO CONSULTA VALUES (TO_DATE('2001-01-21', 'YYYY-MM-DD'), 'lgoater7@ucoz.com', 'intangible');
INSERT INTO CONSULTA VALUES (TO_DATE('2011-01-21', 'YYYY-MM-DD'), 'zbatteson8@patch.com', 'real-time');
INSERT INTO CONSULTA VALUES (TO_DATE('2020-01-21', 'YYYY-MM-DD'), 'jmccart9@mozilla.com', 'application');




INSERT INTO ASIGNATURA VALUES ('HUR', 'superstructure');
INSERT INTO ASIGNATURA VALUES ('EAE', 'responsive');
INSERT INTO ASIGNATURA VALUES ('TEC', 'responsive');
INSERT INTO ASIGNATURA VALUES ('LDO', 'Public-key');
INSERT INTO ASIGNATURA VALUES ('PTX', 'migration');
INSERT INTO ASIGNATURA VALUES ('NHL', 'Extended');
INSERT INTO ASIGNATURA VALUES ('FTG', 'Grass-roots');
INSERT INTO ASIGNATURA VALUES ('ECC', 'Assimilated');
INSERT INTO ASIGNATURA VALUES ('ACG', 'even-keeled');
INSERT INTO ASIGNATURA VALUES ('ITG', 'portal');



INSERT INTO TRATA  VALUES ('A', 76, 'customizable', 'HUR');
INSERT INTO TRATA  VALUES ('P', 8, 'solution', 'EAE');
INSERT INTO TRATA  VALUES ('A', 91, 'multimedia', 'TEC');
INSERT INTO TRATA  VALUES ('A', 65, 'directional', 'LDO');
INSERT INTO TRATA  VALUES ('A', 91, 'Robust', 'PTX');
INSERT INTO TRATA  VALUES ('P', 98, 'hybrid', 'NHL');
INSERT INTO TRATA  VALUES ('A', 11, 'motivating', 'FTG');
INSERT INTO TRATA  VALUES ('E', 2, 'Devolved', 'ECC');
INSERT INTO TRATA  VALUES ('E', 34, 'Full', 'ACG');
INSERT INTO TRATA  VALUES ('P', 71, 'software', 'ITG');


INSERT INTO FILTRO VALUES ('id', 'posuere metus vitae ipsum');
INSERT INTO FILTRO VALUES ('vestibulum', 'ultrices enim lorem ipsum');
INSERT INTO FILTRO VALUES ('lacus', 'placerat praesent blandit nam');
INSERT INTO FILTRO VALUES ('sit', 'ultricies eu nibh quisque id');
INSERT INTO FILTRO VALUES ('nec', 'semper rutrum nulla nunc purus');
INSERT INTO FILTRO VALUES ('in', 'nibh in quis justo');
INSERT INTO FILTRO VALUES ('consequat', 'in leo maecenas pulvinar');
INSERT INTO FILTRO VALUES ('tempus', 'nullam varius nulla facilisi cras');
INSERT INTO FILTRO VALUES ('turpis', 'in felis donec semper');
INSERT INTO FILTRO VALUES ('suspense', 'rutrum neque aenean');



INSERT INTO CONTENIDOFILTRO VALUES ('incremental', 'id');
INSERT INTO CONTENIDOFILTRO VALUES ('Secured', 'vestibulum');
INSERT INTO CONTENIDOFILTRO VALUES ('static', 'lacus');
INSERT INTO CONTENIDOFILTRO VALUES ('Intuitive', 'sit');
INSERT INTO CONTENIDOFILTRO VALUES ('model', 'nec');
INSERT INTO CONTENIDOFILTRO VALUES ('alliance', 'in');
INSERT INTO CONTENIDOFILTRO VALUES ('intangible', 'consequat');
INSERT INTO CONTENIDOFILTRO VALUES ('real-time', 'tempus');
INSERT INTO CONTENIDOFILTRO VALUES ('application', 'turpis');
INSERT INTO CONTENIDOFILTRO VALUES ('collaboration', 'suspense');
