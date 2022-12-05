package ru.gulliver.services;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.crossstore.ChangeSetPersister;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import ru.gulliver.models.Image;
import ru.gulliver.models.Project;
import ru.gulliver.models.User;
import ru.gulliver.repositories.ProjectRepository;
import ru.gulliver.repositories.UserRepository;

import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
@Slf4j
public class ProjectService {

    @Autowired
    private ProjectRepository projectRepository;
    @Autowired
    private UserRepository userRepository;

    public List<Project> listProjects(String title) {
        if (title != null) return projectRepository.findByTitle(title);
        return (List<Project>) projectRepository.findAll();
    }

    public void saveProject(Principal principal, Project project, MultipartFile file1) throws IOException {
        project.setUser(getUserByPrincipal(principal));
        Image image1;
        if (file1.getSize() != 0) {
            image1 = toImageEntity(file1);
            image1.setPreviewImage(true);
            project.setImages(image1);

        }
        log.info("Saving new Project. Title: {}; Author email: {}", project.getTitle(), project.getUser().getEmail());

        projectRepository.save(project);
    }

    public User getUserByPrincipal(Principal principal) {
        if (principal == null) {
            return new User();
        }
        return userRepository.findByEmail(principal.getName());
    }

    private Image toImageEntity(MultipartFile file) throws IOException {
        Image image = new Image();
        image.setName(file.getName());
        image.setOriginalFileName(file.getOriginalFilename());
        image.setContentType(file.getContentType());
        image.setSize(file.getSize());
        image.setBytes(file.getBytes());
        return image;
    }

   public void deleteProject(User user, Long id) {
        Project project = projectRepository.findById(id)
                .orElse(null);
        if (project != null) {
            if (project.getUser().getId().equals(user.getId())) {
                projectRepository.delete(project);
                log.info("Project with id = {} was deleted", id);
            } else {
                log.error("User: {} haven't this project with id = {}", user.getEmail(), id);
            }
        } else {
            log.error("Project with id = {} is not found", id);
        }
    }


    public Project getProjectById(Long id) {
        return projectRepository.findById(id).orElse(null);
    }

}
