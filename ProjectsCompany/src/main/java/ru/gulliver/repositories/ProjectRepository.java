package ru.gulliver.repositories;

import org.springframework.data.repository.CrudRepository;
import ru.gulliver.aspects.Timed;
import ru.gulliver.models.Project;

import java.util.List;


public interface ProjectRepository extends CrudRepository<Project, Long> {

    @Timed
    List<Project> findByTitle(String title);
}
