# Главная форма pager_item_aircondition.xml

## Верхняя часть
`@id/ac_auto_region_bg` - бэкграуд для следующих элементов

- `@id/a3_glean_icon` - машинка с листочком
- `@id/cycle_icon` - машинка рециркуляция воздуха
- `@id/front_auto` - кнопка авто, управление рециркуляцией воздуха


`@id/defrost_region_bg` - бэкграуд для следующих элементов
- `@id/sync` - кнопка `Sync`

## Нижняя часть ряд 1
`@id/front_below_region_bg` - бэкграуд для следующих элементов
- `@id/front_defrost` - подогрев лобового стекла
- `@id/front_wind_blow_window` - подогрев лобового стекла и человечка
- `@id/front_wind_blow_face` - человеку дует в лицо
- `@id/front_wind_blow_leg` - человечку дует в ножки
- `@id/behind_defrost_icon` - подогрев заднего стекла

## Нижняя часть ряд 2
- `@id/behind_wind_blow_face` - человечку дует в лицо
- `@id/behind_wind_blow_leg` - человечку дует в ножки


## Основные файлы для редактирования:
1. `smali/com/geely/hvac/databinding/PagerItemAirconditionBindingImpl.smali`: 
Класс привязки данных для экрана климат-контроля. Сюда нужно будет добавить новую логику.

2. `smali/com/geely/hvac/databinding/PagerItemSeatBindingImpl.smali`: 
Класс привязки данных для экрана сидений. Отсюда можно скопировать существующую логику для подогрева руля.

3. `smali/com/geely/hvac/viewmodel/MainViewModel.smali `
и `smali/com/geely/hvac/viewmodel/AppMainViewModel.smali`:
ViewModel, содержащие состояние и бизнес-логику. 
Скорее всего, вам не придется их менять, так как AirConditionViewHolder и 
SeatViewHolder используют общий AppMainViewModel, но полезно знать, что вся логика находится здесь.


