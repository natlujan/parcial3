//
//  Materia.swift
//  proyecto3Parcial
//
//  Created by Alumno on 16/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//
class Materia {
    var nombre : String
    var horario : String
    var asistenciaDia : Bool
    var faltas: String
    var salon : String
    var maestro : String
    var calificacionMaestro : String
    var comentarioMaestro : String
    var fecha: String
    var evaluado : Bool
    
    init(nombre: String, horario: String, asistenciaDia: Bool, faltas: String, salon: String, maestro: String, calificacionMaestro: String, comentarioMaestro: String, fecha: String, evaluado: Bool) {
        self.nombre = nombre
        self.horario = horario
        self.asistenciaDia = asistenciaDia
        self.faltas = faltas
        self.salon = salon
        self.maestro = maestro
        self.calificacionMaestro = calificacionMaestro
        self.comentarioMaestro = comentarioMaestro
        self.fecha = fecha
        self.evaluado = evaluado
    }
}
