// import 'package:flutter/material.dart';
// import '../pagetypes.dart';

// const pageMap = {
//   '/Death': ChoicePage(
//     "Остановка кровообращения",
//     Text("""Базовая СЛР, после:
// Вызов реанимационной бригады в помощь и оценка ритма (по монитору дефибриляттора)"""),
//     {
//       "ФЖ": "/Death/Fibrillation",
//       "Асистолия": "/Death/Asistoliya",
//       "ЭАБП": "/Death/EABP",
//     },
//   ),
//   //
//   '/Death/Asistoliya': ChoicePage(
//     "Асистолия",
//     Text("""Провести СЛР
// Обеспечить доступ в крупную периферическую вену.
// Эпинефрин 1 мг (дети: 0,01 мг/кг)
// каждые 3-5 минут
// Через 2 минуты (для детей через 1) - оценка ритма (не более 10 сек)"""),
//     {
//       "СЛР": "/Death/SLR",
//       "Оценка ритма": "/Death/Asistoliya/Evaluation",
//     },
//   ),
//   '/Death/SLR': DescriptionPage(
//     "СЛР",
//     Text("""ЗМС: частота компрессий 100-120 в мин.,
// глубина у взрослых – 5-6 см.,
// паузы не более 10 сек.
// − Обеспечение проходимости ВДП
// (прием Сафара, воздуховод, аспиратор).
// − ИВЛ: основной метод – лицевая маска и
// дыхательный мешок с подключением 100% О2.
// Продолжительность вдоха – 1 секунда.
// Пауза в ЗМС для двух вдохов – 5 секунд.
// Соотношение компрессий и вдохов у
// взрослых при негерметизированных
// дыхательных путях – 30:2."""),
//   ),
//   '/Death/Asistoliya/Evaluation': ChoicePage(
//     "Асистолия",
//     Text("Оценка ритма"),
//     {
//       "Асистолия": "",
//       "ФЖ": "/Death/Fibrillation",
//       "ЭАБП": "/Death/EABP",
//       "Восстановление сердечного ритма": "/Death/Complete",
//     },
//   ),

//   '/Death/Fibrillation':
//       ChoicePage("Фибрилляция желудочков", Text("""Провести ЗМС:ИВЛ по возрасту
// Как можно быстрее: дефибриляция (дети: 4 Дж/кг)"""), {
//     "ЗМС:ИВЛ": "/Death/SLR",
//     "Далее": "/Death/Fibrillation/Next",
//   }),

//   '/Death/Fibrillation/Next':
//       ChoicePage("Фибрилляция желудочков", Text("""ЗМС : ИВЛ 2 минуты
// Доступ в крупную периферическую вену.
// Эпинефрин 1 мг вводится после третьего разряда, далее по 1 мг
// каждые 3-5 минут (дети: 0,01 мг/кг – max разовая доза 1 мг).
// Антиаритмические препараты вводятся сразу после
// дефибрилляции, начиная с третьего разряда, по схеме
// препарат – ЗМС, ИВЛ в течение 2 минут – дефибрилляция:
// − амиодарон 300 мг (дети: 5 мг/кг),
// при отсутствии – лидокаин 1,5мг/кг;
// − нет эффекта (после пятого разряда) – повторно амиодарон
// 150 мг (дети: 2,5 мг/кг),
// при отсутствии – лидокаин 1мг/кг;
// − при вероятности изначальной двунаправленной
// веретенообразной желудочковой тахикардии –
// магния сульфат 2000 мг (дети: 20-40 мг/кг).

// Оценка ритма (не более 10 секунд)"""), {
//     "ЗМС:ИВЛ": "/Death/SLR",
//     "ФЖ": "",
//     "Асистолия": "/Death/Fibrillation/Asistoliya",
//     "Восстановление сердечного ритма": "/Death/Complete",
//   }),

//   '/Death/Fibrillation/Asistoliya':
//       ChoicePage("Фибрилляция желудочков", Text("""СЛР при ФЖ не прекращается.
// При переходе в асистолию – действовать по протоколу «Асистолия»"""), {
//     "Асистолия": "/Death/Asistoliya",
//   }),

//   '/Death/EABP':
//       ChoicePage("Электрическая активность без пульса", Text("""Провести СЛР
// Обеспечить доступ в крупную периферическую вену.
// Эпинефрин 1 мг (дети: 0,01 мг/кг) каждые 3-5 минут.
// Корректировать возможную причину (4 «Т», 4 «Г»)

// Через 2 минуты (дети 1 мин) - Оценка ритма (не более 10 секунд)"""), {
//     "СЛР": "/Death/SLR",
//     "Возможные причины": "/Death/EABP/Reasons",
//     "Оценка ритма": "/Death/EABP/Evaluation"
//   }),

//   '/Death/EABP/Reasons': DescriptionPage(
//     "Электрическая активность без пульса",
//     Text("""Возможные причины: 
// − Торакальная причина (напряженный пневмоторакс);
// − Тампонада сердца;
// − Тромбоэмболия легочной или коронарной артерий;
// − Токсическая причина (интоксикация);
// − Гиповолемия;
// − Гипоксия;
// − Гипотермия;
// − Гипо-, гиперэлектролитемия."""),
//   ),

//   '/Death/EABP/Evaluation': ChoicePage(
//     "Электрическая активность без пульса",
//     Text("Оценка ритма"),
//     {
//       "ЭАБП\nАсистолия": "",
//       "ФЖ": "/Death/Fibrillation",
//       "Восстановление сердечного ритма": "/Death/Complete",
//     },
//   ),

//   '/Death/Complete':
//       ChoicePage("Лихорадка", Text("""Постреанимационные мероприятия.
// Медицинская эвакуация в ОРИТ."""), {
//     "На главную": "/",
//   }),

//   '/Death/Info': DescriptionPage(
//     "Клиническая смерть",
//     Text("""Диагностика:
// Отсутствие сознания и пульса на сонных артериях, позже – прекращение дыхания.

// Механизмы:
// По кардиомонитору: фибрилляция желудочков, асистолия или электрическая активность без пульса (ЭАБП).
// При невозможности экстренной регистрации ЭКГ или кардиомониторирования ориентируются по проявлениям начала клинической смерти и реакции на СЛР.

// Основные правила:
// − Основной принцип СЛР – сведение к минимуму пауз в ЗМС. Допустимы паузы только для проведения вдохов (≤ 5 сек.), для дефибрилляции (≤ 5 сек.), интубации трахеи (≤ 10 сек.) и оценки ритма (≤ 10 сек).
// − ЗМС проводится с частотой 100-120 в мин., глубиной компрессий 5-6 см.
// − Основной метод ИВЛ – лицевая маска и дыхательный мешок с подключением 100% О2. Продолжительность вдоха при ИВЛ должна составлять 1 сек. Пауза в ЗМС для проведения двух вдохов не должна превышать 5 сек.
// − Соотношение компрессий и вдохов при негерметизированных дыхательных путях у взрослых - 30:2.
// − При применении дефибрилляторов с монофазной формой импульса с первого разряда – максимальный уровень энергии. При двухфазном импульсе первый разряд от 150 до 200 Дж, далее (при возможности) повышать до максимальной энергии.
// − СЛР при фибрилляции желудочков уже с первого разряда проводить по схеме: дефибрилляция – ЗМС, ИВЛ в течение 2 минут – оценка ритма.
// − Все препараты вводить внутривенно быстро на 20 мл изотонического раствора натрия хлорида (можно «промыть» вену инфузией).
// − Интубация трахеи проводится только при наличии должного навыка. Допустимо 3 попытки, каждая не должна превышать 10 секунд. Между попытками проводится масочная вентиляция с сохранением соотношения ЗМС и ИВЛ 30:2. После герметизации дыхательных путей компрессии и вдохи разобщены: ЗМС постоянно с частотой 100-120 в мин., ИВЛ 10 в мин."""),
//   )
// };
