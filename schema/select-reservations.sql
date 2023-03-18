SELECT id from RESERVATIONS 
WHERE   (deleted is NULL OR deleted is false) AND
        ((start_date BETWEEN TO_DATE('10/07/2022', 'DD/MM/YYYY') AND TO_DATE('15/07/2022', 'DD/MM/YYYY')) OR
         (start_date <= TO_DATE('10/07/2022', 'DD/MM/YYYY') AND end_date >= TO_DATE('10/07/2022', 'DD/MM/YYYY')));
;
