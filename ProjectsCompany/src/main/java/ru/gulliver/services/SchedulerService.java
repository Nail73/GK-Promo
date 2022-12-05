package ru.gulliver.services;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import ru.gulliver.models.User;
import ru.gulliver.repositories.UserRepository;

import java.time.LocalDate;
import java.util.List;

@Slf4j
@Service
public class SchedulerService {

    @Autowired
    private UserRepository userRepository;
    @Autowired
    private UserService userService;
    @Autowired
    private MailSenderService mailSenderService;

    private static final String CRON = "0 0 16 * * *";

    @Scheduled(cron = CRON)
    public void sendMailToUsers() {
        if (!userService.list().isEmpty()) {
            LocalDate date = LocalDate.now();
            List<User> list = userService.list();
            list.forEach(user -> {
                if (date.getDayOfWeek().getValue() == 2) {

                    try {
                        String message = "Нужно заполнить информацию по проекту " + user.getProjects() + "!";
                        mailSenderService.send(user.getEmail(), "Еженедельный отчет о проете", message);
                        log.info("Email have been sent. User's id: {}, Date: {}", user.getId(), date);
                    } catch (Exception e) {
                        log.error("Email can't be sent.User's id: {}, Error: {}", user.getId(), e.getMessage());
                        log.error("Email can't be sent", e);
                    }
                }

            });
        }
    }
}
