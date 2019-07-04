&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	ТипДокумента = Тип("ДокументСсылка.РеализацияТоваровУслуг");
	ИспользуемыеТипыДокументов = Новый Массив;
	ИспользуемыеТипыДокументов.Добавить(ТипДокумента);
	
	// СтандартныеПодсистемы.ПодключаемыеКоманды
	ПараметрыРазмещения = ПодключаемыеКоманды.ПараметрыРазмещения();
	ПараметрыРазмещения.Источники = Новый ОписаниеТипов(ИспользуемыеТипыДокументов);
	ПараметрыРазмещения.КоманднаяПанель = Элементы.ФормаКоманднаяПанель;
	ПодключаемыеКоманды.ПриСозданииНаСервере(ЭтотОбъект, ПараметрыРазмещения);
	// Конец СтандартныеПодсистемы.ПодключаемыеКоманды
	
КонецПроцедуры

&НаКлиенте
Процедура Собран(Команда)
	ПарамОткрытия = Новый Структура("ДокументРеализация",Элементы.Реализации.ТекущаяСтрока); 
	ОповещениеОЗакрытии = Новый ОписаниеОповещения("ПослеЗакрытияФормыКладовщика", ЭтотОбъект);
	ОткрытьФорму("Документ.РеализацияТоваровУслуг.Форма.ПроВЦ_ФормаКладовщика",ПарамОткрытия,,,,,ОповещениеОЗакрытии,РежимОткрытияОкнаФормы.БлокироватьОкноВладельца);
КонецПроцедуры

&НаКлиенте
Процедура ПослеЗакрытияФормыКладовщика(ПараметрыЗакрытия,СтандартныеРеквизиты)  Экспорт
	ОбновитьИнтерфейс();
КонецПроцедуры


&НаКлиенте
Процедура РеализацииВыбор(Элемент, ВыбраннаяСтрока, Поле, СтандартнаяОбработка)
	РаспечататьРасходнуюНакладную();
КонецПроцедуры

&НаСервере
Процедура РаспечататьРасходнуюНакладную()
	//ПодключаемыеКомандыКлиент.ВыполнитьКоманду(ЭтотОбъект, Команда, Элементы.СписокДокументыПродажи);
	//ПодключаемыеКомандыКлиент.ВыполнитьКоманду(ЭтотОбъект, Команда, Элементы.СписокДокументыПродажи);
	//МассивОбъектов = Новый Массив;
	//МассивОбъектов.Добавить(Элемент);
	//
	//КоллекцияПечатныхФорм = Новый ТаблицаЗначений;
	//
	//УправлениеПечатью.ВывестиТабличныйДокументВКоллекцию(
	//КоллекцияПечатныхФорм,
	//"РасходнаяНакладная",
	//НСтр("ru = 'Росасходная накладная'"),
	//СформироватьПечатнуюФормуРасходнаяНакладная(МассивОбъектов, ОбъектыПечати),
	//,
	//"Документ.РеализацияТоваровУслуг.ПФ_MXL_РасходнаяНакладная");
	//
КонецПроцедуры

&НаКлиенте
Процедура ПодменюПечатьОбычное_РасходнаяНакладная(Команда)
	ПодключаемыеКомандыКлиент.ВыполнитьКоманду(ЭтотОбъект, Команда, Элементы.Реализации);
КонецПроцедуры

// СтандартныеПодсистемы.ПодключаемыеКоманды
&НаКлиенте
Процедура Подключаемый_ВыполнитьКоманду(Команда)
	ФормаРеализации = ПолучитьФорму("Документ.РеализацияТоваровУслуг.Форма.ФормаДокумента",
		Новый Структура("Ключ", Элементы.Реализации.ТекущаяСтрока));
	ПодключаемыеКомандыКлиент.ВыполнитьКоманду(ФормаРеализации, Команда, ФормаРеализации.Объект);
	ФормаРеализации.Закрыть();
КонецПроцедуры


