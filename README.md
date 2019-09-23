# Руководство по интеграции LiqPay для iOS

<p align="center">
  <img width="50%" height="50%" src="https://github.com/bananaRanger/LiqPay-tutorial/blob/master/Resources/logo_ru.png?raw=true">
</p>

## Введение

Языки руководства: [английский](README.en.md), [русский](README.md).

В наше время онлайн-магазинов и интернет-услуг не новость встретить оплату через приложение или через веб-сайт.
Операция, которая облегчает жизнь клиенту, но в свое время заставляет программиста выпить на пару чашек чая больше.
С Европой, Америкой — все ясно, чаще всего они используют Stripe или PayPal. В Украине для этого есть локальный сервис, который позволяет принимать и переводить платежи - [LiqPay](https://www.liqpay.ua).

Также используют [Fondy](https://www.fondy.ua).

Но заострю внимание именно на LiqPay.

> LiqPay - электронный кошелёк, который позволяет принимать платежи 
> и переводить деньги с помощью мобильного телефона, интернета и платёжных карт во всём мире.
> 
> Система LiqPay была создана в 2008 году командой ПриватБанка. Выступает альтернативой Webmoney и PayPal. 
> 
> [LiqPay из Вики](https://ru.wikipedia.org/wiki/LiqPay)

Довольно часто LiqPay встречается, когда нужно произвести оплату с телефона. Но несколько раз был свидетелем того, что при взаимодействии с библиотекой LiqPay на iOS возникают некоторые вопросы. 
Именно это и стало предпосылкой для создания этого руководства.

## Начало 

Перед тем как начать следует ознакомится с [официальной документацией](https://www.liqpay.ua/documentation/).

Также нужно скачать `.h` и `.a` файлы с [официального репозитория](https://github.com/liqpay/sdk-ios).

## Интеграция 

В тестовом проекте я буду использовать `Swift`, но порядок действий не будет сильно отличаться для `Objective-C`, за исключением пункта 5 для `Objective-C` его нужно пропустить.

1. В папку уже созданного проекта перетащить `.h` и `.a`, которые были скачаны с [официального репозитория](https://github.com/liqpay/sdk-ios) и создать для них папку `LiqPay`.

<p align="center">
  <img width="64%" height="64%" src="https://github.com/bananaRanger/LiqPay-tutorial/blob/master/Resources/tutorial01.png?raw=true">
</p>

2. Перейти в Xcode и нажать на файл проекта правой кнопкой мыши и выбрать 'Add Files to ...'.

<p align="center">
  <img width="64%" height="64%" src="https://github.com/bananaRanger/LiqPay-tutorial/blob/master/Resources/tutorial02.png?raw=true">
</p>

3. После добавления перейти в файл `LiqpayMob.h` и заменить строку `#import <Foundation/Foundation.h>` на строку `#import <UIKit/UIKit.h>`.

<p align="center">
  <img width="64%" height="64%" src="https://github.com/bananaRanger/LiqPay-tutorial/blob/master/Resources/tutorial03.png?raw=true">
</p>

4. Теперь нужно в `Build Settings` для `Library Search Paths` и `Header Search Path` проверить наличие строки `$(PROJECT_DIR)/LiqPay` (LiqPay - имя папки).

<p align="center">
  <img width="64%" height="64%" src="https://github.com/bananaRanger/LiqPay-tutorial/blob/master/Resources/tutorial04.png?raw=true">
  <img width="64%" height="64%" src="https://github.com/bananaRanger/LiqPay-tutorial/blob/master/Resources/tutorial14.png?raw=true">
</p>

5. Создать Bridging-Header.h (только для `Swift`), в котором должно быть следующее:

    `#import "LiqpayMob.h"`
    
6. Cбилдить проект.
7. Теперь библиотека LiqPay интегрирована в Ваш проект.

<p align="center">
  <img width="64%" height="64%" src="https://github.com/bananaRanger/LiqPay-tutorial/blob/master/Resources/tutorial07.png?raw=true">
</p>

## Использование 

<p align="center">
  <img width="36%" height="36%" src="https://github.com/bananaRanger/LiqPay-tutorial/blob/master/Resources/example-demo.png?raw=true">
</p>
