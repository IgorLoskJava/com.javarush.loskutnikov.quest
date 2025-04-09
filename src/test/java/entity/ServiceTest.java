package entity;

import org.junit.jupiter.api.Test;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class ServiceTest {

    @Test
    void testGetQuestions() {
        List<String> expectedQuestions = List.of(
                "Выбери язык программирования:",
                "Что в основном делают на Java?",
                "Что первое выводит на консоль начинающий программист?",
                "Ты готов начать обучение?"
        );
        List<String> actualQuestions = Service.getQuestions();
        assertEquals(expectedQuestions, actualQuestions, "Список вопросов не совпадает с ожидаемым");
    }

    @Test
    void getAnswers() {
        List<String> expectedQuestions = List.of(
                "Java",
                "C++",
                "Бэкэнд",
                "Фронтенд",
                "Hello world!",
                "What’s going on?",
                "Всегда готов!",
                "Мне страшно, я лучше пойду."
        );
                List < String > actualAnswer = Service.getAnswers();
        assertEquals(expectedQuestions, actualAnswer, "Список вопросов не совпадает с ожидаемым");
    }
}