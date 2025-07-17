
# STDesignSystem

STDesignSystem - це сучасна дизайн-система для iOS додатків, написана на SwiftUI. Фреймворк надає набір готових компонентів, систему кольорів, типографіку та відступи для створення консистентного користувацького інтерфейсу.

## Особливості

- 🎨 Система кольорів з підтримкою темної теми
- 📝 Уніфікована типографічна система
- 📏 Стандартизована система відступів
- 🔲 Готові UI компоненти
- ✅ Покриття тестами
- 📱 Оптимізовано для iOS

## Компоненти

### STButton
Кастомізована кнопка з підтримкою різних стилів:
- Primary
- Secondary
- Outline
- Підтримка іконок
- Можливість вибору позиції іконки

```swift
STButton(
    title: "Натисни мене",
    style: .primary,
    icon: Image(systemName: "star"),
    iconPosition: .leading
) {
    print("Кнопка натиснута!")
}
```

### STTextField
Текстове поле з розширеними можливостями:
- Кастомізований дизайн
- Підтримка іконок
- Різні стилі відображення

```swift
@State private var text = ""

STTextField(
    text: $text,
    placeholder: "Введіть текст",
    icon: Image(systemName: "magnifyingglass")
)
```

### STCardView
Контейнер для групування контенту:
- Різні стилі відображення
- Підтримка інтерактивності
- Кастомізовані тіні та заокруглення

```swift
STCardView(style: .primary) {
    VStack {
        Text("Заголовок")
            .font(STTypography.title3)
        Text("Опис")
            .font(STTypography.body)
    }
}
```

## Встановлення

### Swift Package Manager

1. У Xcode виберіть File → Add Packages
2. Вставте URL репозиторію
3. Виберіть версію

Або додайте залежність вручну у Package.swift:
```swift
dependencies: [
    .package(url: "https://github.com/username/STDesignSystem.git", from: "1.0.0")
]
```

## Використання

1. Імпортуйте фреймворк:
```swift
import STDesignSystem
```

2. Використовуйте компоненти:
```swift
struct ContentView: View {
    var body: some View {
        STButton(title: "Привіт!") {
            print("Натиснуто!")
        }
    }
}
```

## Вимоги

- iOS 14.0+
- Xcode 13.0+
- Swift 5.5+

## Ліцензія

STDesignSystem доступний під MIT ліцензією. Дивіться файл LICENSE для деталей.

