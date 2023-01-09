# testTask for Uny
Тестовое приложение

# Что сделано
1. Сверстан тестовый дизайн профиля User и ModalBottomSheet
2. Описана бизнес логика приложения через библиотеку bloc, flutter_bloc
3. Описаны классы для отзывов и тэгов как для remote так и для local хранения через паттерн repository. Связь сделана по шаблону проектирования service locator, через библиотеку get_it
4. Реализована бизнес логика и отображение отзывов, получаемых от API
# Что не успел
1. Добавление отзывов,так как отзывы не должны хранится на телефоне,поэтому нужен POST запрос на сервер с добавлением отзыва.
2. Аналагично с тэгами пользоваетеля.
# Скриншоты
<p float="left">

  <img src="https://user-images.githubusercontent.com/46132272/211379514-b21e79f6-1c70-4d85-b78d-95bcf3dc93b7.png" width="300" />
  <img src="https://user-images.githubusercontent.com/46132272/211379508-f11ed6e4-7081-45ab-bb8f-e6665b0f9295.png" width="300" />
</p>


# Самостоятельная сборка проекта
1. Установите стабильную версию Flutter 3.3.1 для своей операционной системы, используя [руководство на странице документации](https://docs.flutter.dev/get-started/install). 
2. Установить зависимости пакетов:
```
flutter pub get
```
3. Откройте эмулятор устройства, а затем запустите проект, выполнив команду:
```
flutter run
```
4. Если возникнут какие-либо проблемы при выполнении предыдущих действий, выполните приведенную ниже команду для анализа и устанения неполадок:
```
flutter doctor
```
## При ошибках
**Исключения платформы**
1. flutter clean
2. flutter pub get
3. flutter run

**Любое исключение пакета (зависимости)**
- Удалите pubspec.lock файл

Выполните следующие команды:
1. flutter clean
2. flutter pub cache repair
3. flutter pub get
4. flutter run

