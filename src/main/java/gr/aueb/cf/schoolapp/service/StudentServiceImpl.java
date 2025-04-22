package gr.aueb.cf.schoolapp.service;


import gr.aueb.cf.schoolapp.dao.IStudentDAO;
import gr.aueb.cf.schoolapp.dto.*;
import gr.aueb.cf.schoolapp.exceptions.StudentAlreadyExistsException;
import gr.aueb.cf.schoolapp.exceptions.StudentDAOException;
import gr.aueb.cf.schoolapp.exceptions.StudentNotFoundException;
import gr.aueb.cf.schoolapp.mapper.Mapper;
import gr.aueb.cf.schoolapp.model.Student;
import gr.aueb.cf.schoolapp.model.Teacher;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

public class StudentServiceImpl implements IStudentService {

    private final IStudentDAO studentDAO;

    public StudentServiceImpl(IStudentDAO studentDAO) {
        this.studentDAO = studentDAO;
    }

    @Override
    public StudentReadOnlyDTO insertStudent(StudentInsertDTO dto)
            throws StudentDAOException, StudentAlreadyExistsException {
        Student student;
        Student insertedStudent;

        try {
            student = Mapper.mapStudentInsertToModel(dto);
            if (studentDAO.getStudentByVat(dto.getVat()) != null)
                throw new StudentAlreadyExistsException("Teacher with vat" + dto.getVat() + " exists");
            insertedStudent = studentDAO.insert(student);
            // logging
            return Mapper.mapStudentToReadOnlyDTO(insertedStudent).orElse(null);
        } catch (StudentDAOException e) {
            //e.printStackTrace();
            // logging
            // rollback
            throw e;
        } catch (StudentAlreadyExistsException e) {
            //e.printStackTrace();
            // logging
            // rollback
            throw e;
        }
    }

    @Override
    public StudentReadOnlyDTO updateStudent(Integer id, StudentUpdateDTO dto)
            throws StudentNotFoundException, StudentAlreadyExistsException, StudentDAOException {
        Student student;
        Student fetchedStudent;

        try {
            if (studentDAO.getById(id) == null)
                throw new StudentNotFoundException("Teacher with id " + id + " was not found");


            fetchedStudent = studentDAO.getStudentByVat(dto.getVat());
            if (fetchedStudent != null && !fetchedStudent.getId().equals(dto.getId())) {
                throw new StudentAlreadyExistsException("Teacher with id: " + dto.getId() + " already exists");
            }
            student = Mapper.mapStudentUpdateToModel(dto);
            Student updatedStudent =  studentDAO.update(student);
            // logging
            return Mapper.mapStudentToReadOnlyDTO(updatedStudent).orElse(null);
        } catch (StudentDAOException | StudentNotFoundException e) {
            //e.printStackTrace();
            // logging
            // rollback
            throw e;
        }
    }

    @Override
    public void deleteStudent(Integer id)
            throws StudentDAOException, StudentNotFoundException {

        try {
            if (studentDAO.getById(id) == null) {
                throw new StudentNotFoundException("Student not found");
            }
            studentDAO.delete(id);
        } catch (StudentDAOException | StudentNotFoundException e) {
            // e.printStackTrace();
            // rollback
            throw e;
        }
    }

    @Override
    public StudentReadOnlyDTO getStudentById(Integer id)
            throws StudentNotFoundException, StudentDAOException {
        Student student;

        try {
            student = studentDAO.getById(id);
            return Mapper.mapStudentToReadOnlyDTO(student).orElseThrow(() -> new StudentNotFoundException("Student not found in get teacher by id"));
        } catch (StudentNotFoundException | StudentDAOException e) {
            //e.printStackTrace();
            // rollback
            throw e;
        }
    }

    @Override
    public List<StudentReadOnlyDTO> getAllStudent() throws StudentDAOException {
        List<Student> students;

        try {
            students = studentDAO.getAll();
            return students.stream()
                    .map(Mapper::mapStudentToReadOnlyDTO)
                    .flatMap(Optional::stream)
                    .collect(Collectors.toList());
        } catch (StudentDAOException e) {
            // e.printStackTrace();
            throw e;
        }
    }

    @Override
    public List<StudentReadOnlyDTO> getStudentsByLastname(String lastname)
            throws StudentDAOException {
        List<Student> students;

        try {
            students = studentDAO.getByLastname(lastname);

            return students.stream()
                    .map(Mapper::mapStudentToReadOnlyDTO)
                    .flatMap(Optional::stream)
                    .collect(Collectors.toList());
//            return students.stream()
//                    .map(student -> Mapper.mapStudentToReadOnlyDTO(student).orElse(null))
//                    .collect(Collectors.toList());
        } catch (StudentDAOException e) {
           // e.printStackTrace();
            throw e;
        }
    }

    @Override
    public List<StudentReadOnlyDTO> getFilteredStudents(FiltersDTO filters) throws StudentDAOException {
        List<Student> students;

        try {
            students = studentDAO.getFilteredStudents(filters.getFirstname(), filters.getLastname());
            return students.stream()
                    .map(Mapper::mapStudentToReadOnlyDTO)
                    .flatMap(Optional::stream)
                    .collect(Collectors.toList());
        } catch (StudentDAOException e) {
            e.printStackTrace();
            // logging
            // rollback
            throw e;
        }
    }
}
