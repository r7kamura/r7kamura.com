---
title: gemやnpmの所有者追加
---

rubygems.orgやnpmjs.comに登録しているパッケージの所有者を追加する方法について。

## 概要

それぞれのサイトから追加できる。

## 背景

以前所属していた組織から、幾つかのgemやnpmパッケージにうちの組織用の所有者を追加してくれないかという依頼を受け、やり方をあらためて調べながら作業する機会があったので、書き記しておくことにした。

## rubygems.org

所有者管理ページにて、所有者として追加したいアカウントに紐付くメールアドレスかアカウント名を入力すると、そのアカウントのメールアドレスに承認用のメールが送信される。それを利用して48時間以内に承認してもらえれば、無事所有者として登録される。

rubygems.orgのサイトで、そのやり方が説明されている。

<figure>
  <blockquote>
    <p>Adding user as an owner to your gem</p>
    <p>Step: 1 Enter the email or handle of the user in the text field labels Email/Handle and click Add Owner.</p>
    <p>Step: 2 The user added as an owner will be sent an email with a link to confirm the ownership. The ownership will be confirmed after the user clicks on the confirmation link within 48 hours. On confirmation, all the existing owners will be notified about the owner addition.</p>
    <p>Note that the user won’t have access to the gem until they confirm the ownership addition.</p>
  </blockquote>
  <figcaption><a href="<https://guides.rubygems.org/managing-owners-using-ui/>">Managing Owners via UI - RubyGems Guides</a></figcaption>
</figure>

## npmjs.com

パッケージの設定ページで、所有者として追加したいアカウントの名前を入力すれば、その時点で所有者として登録される。
