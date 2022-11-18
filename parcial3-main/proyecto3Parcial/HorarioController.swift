//
//  HorarioController.swift
//  proyecto3Parcial
//
//  Created by Alumno on 16/1/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class HorarioController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tvClases: UITableView!
    
    var materias: [Materia] = []
    var comidas: [Comida] = []
    var pagos: [Pago] = []
    
    var alumno: Alumno? = Alumno(nombre: "Natalia Luján Chávez",foto:"fotoperfil", matricula: "199415", nombreContacto: "Marcela Chávez Lechuga", parentesco: "Madre", telefono1: "6141412269", telefono2: "NA")
    
    override func viewDidLoad() {
        //INICIALIAZACION MATERIAS
        materias.append(Materia(nombre: "Animación por Computadora", horario: "9:00 - 12:00 p.m.", asistenciaDia: false, faltas: "0", salon: "G18B", maestro: "Guillermo Aceves", calificacionMaestro: "", comentarioMaestro: "", fecha: "1 de nov", evaluado: false))
        materias.append(Materia(nombre: "México en el Contexto Global", horario: "3:00 - 5:00 p.m.", asistenciaDia: false, faltas: "0", salon: "A14", maestro: "Rosalva Castro", calificacionMaestro: "", comentarioMaestro: "", fecha: "1 de nov", evaluado: false))
        materias.append(Materia(nombre: "Redes Comunicacionales", horario: "11:00 - 13:00 p.m.", asistenciaDia: false, faltas: "0", salon: "E3", maestro: "Rubén Vega", calificacionMaestro: "", comentarioMaestro: "", fecha: "1 de nov", evaluado: false))
        
        //INICIALIAZACION COMIDAS
        comidas.append(Comida(nombre: "Molletes", foto: "molletes", precio: "27$", rate: "4.0"))
        comidas.append(Comida(nombre: "Quesadillas", foto: "quesadilla", precio: "15$", rate: "5"))
        
        //INICIALIAZACION PAGOS
        pagos.append(Pago(semestre: "Agosto - Diciembre 2022", concepto: "Inscripción", referencia: "1994151202207", fechaLimite: "22-Julio-2022", cantidadPagar: "$10,190.00", pagado: true))
        pagos.append(Pago(semestre: "Agosto - Diciembre 2022", concepto: "Primera colegiatura", referencia: "1994152202208", fechaLimite: "26-Agosto-2022", cantidadPagar: "$4,676.00", pagado: true))
        pagos.append(Pago(semestre: "Agosto - Diciembre 2022", concepto: "Segunda colegiatura", referencia: "1994152202209", fechaLimite: "15-Septiembre-2022", cantidadPagar: "$4,676.00", pagado: true))
        pagos.append(Pago(semestre: "Agosto - Diciembre 2022", concepto: "Tercera colegiatura", referencia: "1994152202210", fechaLimite: "14-Octubre-2022", cantidadPagar: "$4,676.00", pagado: true))
        pagos.append(Pago(semestre: "Agosto - Diciembre 2022", concepto: "Cuarta colegiatura", referencia: "1994152202211", fechaLimite: "11-Noviembre-2022", cantidadPagar: "$4,676.00", pagado: true))
        pagos.append(Pago(semestre: "Agosto - Diciembre 2022", concepto: "Quinta colegiatura", referencia: "1994152202212", fechaLimite: "05-Diciembre-2022", cantidadPagar: "$4,676.00", pagado: true))
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 108
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materias.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMateria") as? CeldaMateriaController
        celda?.lblNombre.text = materias[indexPath.row].nombre
        celda?.lblHorario.text = materias[indexPath.row].horario
        
        return celda!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "infoAlumno" {
            let destino = segue.destination as! AlumnoController
            destino.alumno = alumno
            destino.pagos = pagos
        } else if segue.identifier == "menuCafeteria" {
            let destino = segue.destination as! ComidaController
            destino.comidas = comidas
        } else if segue.identifier == "infoClase" {
            let destino = segue.destination as! MateriaController
            destino.clase = materias[tvClases.indexPathForSelectedRow!.row]
            destino.callBackAsistencia = tomarAsistencia
            destino.callBackEvaluacion = tomarAsistencia
        } else if segue.identifier == "evaluacionDocente" {
            let destino = segue.destination as! EvaluacionController
            destino.materias = materias
        }
    }
    
    func tomarAsistencia(clase: Materia){
        tvClases.reloadData()
        }
    
}

