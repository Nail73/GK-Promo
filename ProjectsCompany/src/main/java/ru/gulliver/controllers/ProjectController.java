package ru.gulliver.controllers;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import ru.gulliver.models.Project;
import ru.gulliver.models.User;
import ru.gulliver.repositories.ProjectRepository;
import ru.gulliver.services.ProjectService;

import javax.validation.Valid;
import java.io.IOException;
import java.security.Principal;

@Controller
@Slf4j
public class ProjectController {

    @Autowired
    private ProjectService projectService;
    @Autowired
    private ProjectRepository projectRepository;

    @Value("${upload.path}")
    private String uploadPath;

    @GetMapping("/")
    public String projects(@RequestParam(name = "searchWord", required = false) String title,
                           Principal principal, Model model) {
        model.addAttribute("projects", projectService.listProjects(title));
        model.addAttribute("user", projectService.getUserByPrincipal(principal));
        model.addAttribute("searchWord", title);
        return "projects";
    }

    @GetMapping("/project/{id}")
    public String projectInfo(@PathVariable Long id, Model model, Principal principal) {
        Project project = projectService.getProjectById(id);
        model.addAttribute("user", projectService.getUserByPrincipal(principal));
        model.addAttribute("project", project);
        model.addAttribute("images", project.getImages());
        model.addAttribute("authorProject", project.getUser());
        return "project-info";
    }

    @PostMapping("/project/create")
    public String createProject(@RequestParam("file1") MultipartFile file1, Project project, Principal principal) throws IOException {
        projectService.saveProject(principal, project, file1);
        return "redirect:/my/projects";
    }


    @PostMapping("/project/delete/{id}")
    public String deleteProject(@PathVariable Long id, Principal principal) {
        projectService.deleteProject(projectService.getUserByPrincipal(principal), id);
        return "redirect:/my/projects";
    }
    @GetMapping("/my/projects")
    public String userProjects(Principal principal, Model model) {
        User user = projectService.getUserByPrincipal(principal);
        model.addAttribute("user", user);
        model.addAttribute("projects", user.getProjects());
        return "my-projects";
    }

}

