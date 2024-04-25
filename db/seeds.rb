# Créer les cities
city1 = City.create(name: "Paris")
city2 = City.create(name: "Lyon")

# Créer les specialties
specialty1 = Specialty.create(name: "Cardiologie")
specialty2 = Specialty.create(name: "Dermatologie")

# Créer les docteurs
doctor1 = Doctor.create(first_name: "Jean", last_name: "Dupont", zip_code: "75000", city: city1)
doctor1.specialties << specialty1
doctor1.specialties << specialty2

doctor2 = Doctor.create(first_name: "Marie", last_name: "Durand", zip_code: "69000", city: city2)
doctor2.specialties << specialty1

# Créer les patients
patient1 = Patient.create(first_name: "Paul", last_name: "Martin", city: city1)
patient2 = Patient.create(first_name: "Sophie", last_name: "Lefevre", city: city2)

# Créer les rendez-vous
Appointment.create(doctor: doctor1, patient: patient1, date: DateTime.now)
Appointment.create(doctor: doctor2, patient: patient2, date: DateTime.now)