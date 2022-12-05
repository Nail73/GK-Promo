package ru.gulliver.repositories;

import org.springframework.data.repository.CrudRepository;
import ru.gulliver.aspects.Timed;
import ru.gulliver.models.User;


public interface UserRepository extends CrudRepository<User, Long> {

    @Timed
    User findByEmail(String email);

    @Timed
    User findByActivationCode(String code);

}
