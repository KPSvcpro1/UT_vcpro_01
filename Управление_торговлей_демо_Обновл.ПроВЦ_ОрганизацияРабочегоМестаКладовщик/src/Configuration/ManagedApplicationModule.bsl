
&После("ПриНачалеРаботыСистемы")
Процедура ПроВЦ_ПриНачалеРаботыСистемы()
	///+++ вмешаться и заменить форму на начальной странице
	Если ПроВЦ_Сервер.ПолучитьРоль("ПроВЦ_Кладовщик") Тогда
		ОткрытьФорму("Документ.РеализацияТоваровУслуг.Форма.ПроВЦ_ФормаСпискаКладовщика");	
	КонецЕсли;  
КонецПроцедуры
