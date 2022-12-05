package ru.gulliver.repositories;

import org.springframework.data.repository.CrudRepository;
import ru.gulliver.models.Image;

public interface ImageRepository extends CrudRepository<Image, Long> {
}
