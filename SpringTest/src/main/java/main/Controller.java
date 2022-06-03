package main;

import org.springframework.web.bind.annotation.*;
import ru.appline.logic.Pet;
import ru.appline.logic.PetModel;

import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

@RestController
public class Controller {
    public static final PetModel petModel = PetModel.getInstance();
    private static final AtomicInteger newId = new AtomicInteger(1);

    @PostMapping(value = "/createPet", consumes = "application/json")
    public String createPet(@RequestBody Pet pet) {

        if (petModel.getAll().isEmpty()) {
            petModel.add(pet, newId.getAndIncrement());
            return "Вы создали своего первого домашнего питомца! \nБудьте ответствены!";
        } else {
            petModel.add(pet, newId.getAndIncrement());
            return "Вы создали домашнего питомца! \nЕще одного, да вы кошатник)";
        }
    }

    @GetMapping(value = "/getAll", produces = "application/json")
    public Map<Integer, Pet> getAll() {
        return petModel.getAll();
    }

    @GetMapping(value = "/getPet", consumes = "application/json", produces = "application/json")
    public Pet getPet(@RequestBody Map<String, Integer> id) {
        return petModel.getFromList(id.get("id"));
    }

    @PutMapping(value = "/editPet", consumes = "application/json")
    public String editPet(@RequestBody Map<String, String> pet) {
        int requestId = Integer.parseInt(pet.get("id"));
        if (petModel.getAll().containsKey(requestId)) {
            String name = pet.get("name");
            String type = pet.get("type");
            int age = Integer.parseInt(pet.get("age"));

            petModel.editPet(requestId, name, type, age);
            return "Вы изменили данные о своем питомце на госуслугах!";
        } else {
            return "Питомца с таким ID у вас еще нет(";
        }
    }

    @DeleteMapping(value = "/deletePet", consumes = "application/json")
    public String deletePet(@RequestBody Map<String, Integer> id) {
        int requestId = id.get("id");

        if (petModel.getAll().containsKey(requestId)) {
            petModel.deletePet(requestId);

            return "Питомец успешно удален(усыплён)!";
        } else {
            return "Питомца с таким ID нет! Питомцу повезло.";
        }
    }
}


