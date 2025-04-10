package entity;

import java.util.ArrayList;
import java.util.List;

public class Service {

    public static List<String> getQuestions() {
        List<String> questions = new ArrayList<>();
        questions.add("Выбери язык программирования:");
        questions.add("Что в основном делают на Java?");
        questions.add("Что первое выводит на консоль начинающий программист?");
        questions.add("Ты готов начать обучение?");


        return questions;
    }

    public static List<String> getAnswers() {
        List<String> answers = new ArrayList<>();
        answers.add("Java");
        answers.add("C++");
        answers.add("Бэкэнд");
        answers.add("Фронтенд");
        answers.add("Hello world!");
        answers.add("What’s going on?");
        answers.add("Всегда готов!");
        answers.add("Мне страшно, я лучше пойду.");
        return answers;
    }

}
