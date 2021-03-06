BEGIN;

CREATE TABLE diagnosis(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT
);

CREATE TABLE prescription(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT
);

CREATE TABLE patient(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT
);

CREATE TABLE symptom(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT
);

CREATE TABLE dia2pre(
        diagnosis_name TEXT,
        prescription_name TEXT,
        FOREIGN KEY(diagnosis_name) REFERENCES diagnosis(name),
        FOREIGN KEY(prescription_name) REFERENCES prescription(name)
);

CREATE TABLE pat2sym(
        patient_name TEXT,
        symptom_name TEXT,
        FOREIGN KEY(patient_name) REFERENCES patient(name),
        FOREIGN KEY(symptom_name) REFERENCES symptom(name)
);

CREATE TABLE pat2dia(
        patient_name TEXT,
        diagnosis_name TEXT,
        FOREIGN KEY(patient_name) REFERENCES patient(name),
        FOREIGN KEY(diagnosis_name) REFERENCES diagnosis(name)
);

INSERT INTO diagnosis(name) VALUES('Allergies');
INSERT INTO diagnosis(name) VALUES('Anemia');
INSERT INTO diagnosis(name) VALUES('Arthiritis');
INSERT INTO diagnosis(name) VALUES('Diarrhea');
INSERT INTO diagnosis(name) VALUES('Flu');
INSERT INTO diagnosis(name) VALUES('Gastritis');
INSERT INTO diagnosis(name) VALUES('Parasitic Infection');
INSERT INTO diagnosis(name) VALUES('Pneumonia');
INSERT INTO diagnosis(name) VALUES('Skin Infection');
INSERT INTO diagnosis(name) VALUES('UTI');

INSERT INTO prescription(name) VALUES('Analgesics');
INSERT INTO prescription(name) VALUES('Acetaminophen');
INSERT INTO prescription(name) VALUES('Albendazole');
INSERT INTO prescription(name) VALUES('Albuterol');
INSERT INTO prescription(name) VALUES('Aluminum Hydroxide');
INSERT INTO prescription(name) VALUES('Amoxicillin');
INSERT INTO prescription(name) VALUES('Antacid');
INSERT INTO prescription(name) VALUES('Clotrimazole');
INSERT INTO prescription(name) VALUES('Diphenhydramine');
INSERT INTO prescription(name) VALUES('Folic acid/ferrous sulfate');
INSERT INTO prescription(name) VALUES('Hydrocortisone');
INSERT INTO prescription(name) VALUES('Ibuprofen');
INSERT INTO prescription(name) VALUES('Neomycin');
INSERT INTO prescription(name) VALUES('Suero oral');
INSERT INTO prescription(name) VALUES('Vitamins');

INSERT INTO dia2pre VALUES('Pneumonia', 'Amoxicillin');
INSERT INTO dia2pre VALUES('Pneumonia', 'Acetaminophen');
INSERT INTO dia2pre VALUES('Diarrhea', 'Suero oral');
INSERT INTO dia2pre VALUES('Allergies', 'Diphenhydramine');
INSERT INTO dia2pre VALUES('Anemia', 'Folic acid/ferrous sulfate');
INSERT INTO dia2pre VALUES('Arthritis', 'Ibuprofen');
INSERT INTO dia2pre VALUES('Flu', 'Acetaminophen');
INSERT INTO dia2pre VALUES('Skin Infection', 'Neomycin');
INSERT INTO dia2pre VALUES('Skin Infection', 'Clotrimazole');
INSERT INTO dia2pre VALUES('Parasitic Infection', 'Aluminum Hydroxide');

--Test patients
INSERT INTO patient(name) VALUES('Bob');
INSERT INTO patient(name) VALUES('Alice');

COMMIT;

