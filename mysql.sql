SELECT UnitPrice, DrugName, Dosage, Description
FROM Drug
WHERE UnitPRice > 200
ORDER BY UnitPrice;

SELECT PatientID, PrescriptionID, DrugID, Date 
FROM Prescription 
WHERE PatientID = 105;

SELECT P.PatientID, P.PrescriptionID, O.FirstName, O.LastName, D.DrugID, DrugName, Dosage, UnitPrice 
FROM Patient AS O 
JOIN Prescription P ON O.PatientID = P.PatientID 
JOIN Drug D ON D.DrugID = P.DrugID 
ORDER BY P.PatientID ASC;