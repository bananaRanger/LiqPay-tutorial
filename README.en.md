# LiqPay iOS integration tutorial

<p align="center">
  <img width="50%" height="50%" src="https://github.com/bananaRanger/LiqPay-tutorial/blob/master/Resources/logo_en.png?raw=true">
</p>

## Introduction

Tutorial languages: [English](README.en.md), [Russian](README.md).

There are a lot of applications and sites with online-payments in our time of online-shops and online-services.
The operation that makes the user's life easier also can force programmers to drink more tea. 
It's clear with America and Europe. They usually use Stripe and PayPal. There is local service - [LiqPay](https://www.liqpay.ua) for sending and receiving payments in Ukraine.

[Fondy](https://www.fondy.ua) is used too.

But I want to focus on LiqPay.

> LiqPay is an online payment settlement system. 
> It allows receiving and sending payments with the mobile phone, 
> internet and payment cards all over the world.
>
> LiqPay was created in 2008 by the PrivatBank command. 
> It's a Webmoney and PayPal alternative.
>
> [LiqPay from Wiki](https://ru.wikipedia.org/wiki/LiqPay)

You can meet LiqPay very often in applications or sites where you should make a payment. But a few time I was witnessed that the iOS library caused some questions and difficulties while the programmer used it.
That's why I considered creating this tutorial.

## Start

First of all, you need to look through the developer's [documentation](https://www.liqpay.ua/documentation/).

And download `.h` and `.a` files from official [repo](https://github.com/liqpay/sdk-ios).

## Integration

In the test project, I used Swift, but actions order will be the some for Objective-C, except point 5, you should skip it if you use Objective-C.

1. In the folder of the created project, you should put already downloaded `.h` and `.a` files from the official [repo](https://github.com/liqpay/sdk-ios) and create the `LiqPay` folder for them.

<p align="center">
  <img width="64%" height="64%" src="https://github.com/bananaRanger/LiqPay-tutorial/blob/master/Resources/tutorial01.png?raw=true">
</p>

2. Go to Xcode and click a right mouse button on the project's file and select 'Add Files to ...'.

<p align="center">
  <img width="64%" height="64%" src="https://github.com/bananaRanger/LiqPay-tutorial/blob/master/Resources/tutorial02.png?raw=true">
</p>

3. Go to `LiqpayMob.h` file and change row `#import <Foundation/Foundation.h>` to row `#import <UIKit/UIKit.h>`.

<p align="center">
  <img width="64%" height="64%" src="https://github.com/bananaRanger/LiqPay-tutorial/blob/master/Resources/tutorial03.png?raw=true">
</p>

4. Go to `Build Settings` check existing of `$(PROJECT_DIR)/LiqPay` (LiqPay is folder name) row for  `Library Search Paths` and `Header Search Path`.

<p align="center">
  <img width="64%" height="64%" src="https://github.com/bananaRanger/LiqPay-tutorial/blob/master/Resources/tutorial04.png?raw=true">
  <img width="64%" height="64%" src="https://github.com/bananaRanger/LiqPay-tutorial/blob/master/Resources/tutorial14.png?raw=true">
</p>

5. Create Bridging-Header.h (only for `Swift`) with content:

    `#import "LiqpayMob.h"`
    
6. Build project.
7. Framework LiqPay is integrated.

<p align="center">
  <img width="64%" height="64%" src="https://github.com/bananaRanger/LiqPay-tutorial/blob/master/Resources/tutorial07.png?raw=true">
</p>

## Usage

