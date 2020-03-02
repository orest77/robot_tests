*** Settings ***
Resource        base_keywords.robot
Suite Setup     Test Suite Setup
Suite Teardown  Test Suite Teardown

*** Variables ***
${RESOURCE}         profile
${MODE}             profile
@{USED_ROLES}       e_admin  viewer

*** Test Cases ***
Можливість створити профіль
    [Tags]   ${USERS.users['${e_admin}'].broker}: Створити профіля
  ...      e_admin
  ...      ${USERS.users['${e_admin}'].broker}
  ...      create_profile
  [Setup]    Можливість створити характеристику
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  Можливість створити профіль


Можливість знайти профіль по ідентифікатору
  [Tags]   ${USERS.users['${viewer}'].broker}: Пошук профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      find_profile
  Можливість знайти профіль по ідентифікатору для усіх користувачів


Відображення коду класифікатора в профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення основних даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      profile_view
  Звірити відображення поля classification.id профіля для усіх користувачів


Відображення опису класифікатора в профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення основних даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      profile_view
  Звірити відображення поля classification.description профіля для усіх користувачів


Відображення схема класифікатора в профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення основних даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      profile_view
  Звірити відображення поля classification.scheme профіля для усіх користувачів


Відображення коду додаткового класифікатора в профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення основних даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      profile_view
  Звірити відображення поля additionalClassification[0].id профіля для усіх користувачів


Відображення опису додаткового класифікатора в профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення основних даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      profile_view
  Звірити відображення поля additionalClassification[0].description профіля для усіх користувачів


Відображення схема додаткового класифікатора в профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення основних даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      profile_view
  Звірити відображення поля additionalClassification[0].scheme профіля для усіх користувачів


Відображення статус в профіля
  [Tags]   ${USERS.users['${viewer}'].broker}:  Відображення основних даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      profile_view
  Звірити відображення поля status профіля для усіх користувачів


Відображення автора в профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення основних даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      profile_view
  Звірити відображення поля author профіля для усіх користувачів


Відображення опису в профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення основних даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      profile_view
  Звірити відображення поля description профіля для усіх користувачів


Відображення розмір образу в профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення основних даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      profile_view
  Звірити відображення поля images[0].sizes профіля для усіх користувачів


Відображення посилання образу в профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення основних даних профайла
  ...      viewer  criteria_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      profile_view
  Звірити відображення поля images[0].url профіля для усіх користувачів


Відображення заголовка в профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення основних даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      profile_view
  Звірити відображення поля title профіля для усіх користувачів


Відображення одиниці коду в профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення основних даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      profile_view
  Звірити відображення поля unit.code профіля для усіх користувачів


Відображення назва одиниці в профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення основних даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      profile_view
  Звірити відображення поля unit.name профіля для усіх користувачів


Відображення величини вартості в профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення основних даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      profile_view
  Звірити відображення поля value.amount профіля для усіх користувачів


Відображення валюти в профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення основних даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      profile_view
  Звірити відображення поля value.currency профіля для усіх користувачів


Відображення податока на додану вартість в профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення основних даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      profile_view
  Звірити відображення поля value.valueAddedTaxIncluded профіля для усіх користувачів


Відображення заголовок характеристики в профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення основних даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      profile_view
  Звірити відображення поля criteria[0].title профіля для усіх користувачів


Відображення опису характеристики в профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення основних даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      profile_view
  Звірити відображення поля criteria[0].description профіля для усіх користувачів


Відображення опису групи вимог в профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення основних даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      profile_view
  Звірити відображення поля criteria[0].requirementGroups[0].description профіля для усіх користувачів


Відображення опису вимоги в профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення основних даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      profile_view
  Звірити відображення поля criteria[0].requirementGroups[0].requirements[0].description профіля для усіх користувачів


Відображення назви вимоги в профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення основних даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      profile_view
  Звірити відображення поля criteria[0].requirementGroups[0].requirements[0].title профіля для усіх користувачів


Відображення ідентифікатора критерії в профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення основних даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      profile_view
  Звірити відображення поля criteria[0].requirementGroups[0].requirements[0].relatedCriteria_id профіля для усіх користувачів


Відображення значення вимоги в профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення основних даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      profile_view
  ${key}  Вибрати значення для вимоги  ${USERS.users['${viewer}'].profile_data.criteria[0].requirementGroups[0].requirements[0]}
  Звірити відображення поля criteria[0].requirementGroups[0].requirements[0].${key} профіля для усіх користувачів


Можливість змінити заголовок профайла
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування профіля
  ...      e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${field_value}=  create_fake_title
  Можливість змінити поле title профіля на ${field_value}


Відображення зміненого заголовка профайла
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування профіля
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data}  title
  Звірити відображення поля title профіля із ${USERS.users['${e_admin}'].new_title} для усіх користувачів


Можливість змінити опис профайла
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування профіля
  ...      e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${field_value}=  create_fake_eng_sentence
  Можливість змінити поле description профіля на ${field_value}


Відображення зміненого опису профайла
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування профіля
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data}  description
  Звірити відображення поля description профіля із ${USERS.users['${e_admin}'].new_description} для усіх користувачів


Можливість змінити одиницю в профайлі
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування профіля
  ...      e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${field_value}=  create_unit_en
  Можливість змінити поле unit профіля на ${field_value}

Відображення зміненої назви одиниці в профайлі
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування профіля
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data.unit}  name
  Звірити відображення поля unit.name профіля із ${USERS.users['${e_admin}'].new_unit.name} для усіх користувачів

Відображення зміненого коду одиниці в профайлі
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування профіля
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data.unit}  code
  Звірити відображення поля unit.code профіля із ${USERS.users['${e_admin}'].new_unit.code} для усіх користувачів


Можливість змінити податок на додану вартість в профайлі
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування профіля
  ...      e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${field_value}=  create_tax
  Можливість змінити поле value.valueAddedTaxIncluded профіля на ${field_value}


Відображення змін в податку на додану вартість в профайлі
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування профіля
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data.value}  valueAddedTaxIncluded
  Звірити відображення поля value.valueAddedTaxIncluded профіля із ${USERS.users['${e_admin}']['new_value.valueAddedTaxIncluded']} для усіх користувачів


Можливість змінити обсяг вартості в профайлі
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування профіля
  ...      e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${field_value}=  create_value_amount
  Можливість змінити поле value.amount профіля на ${field_value}


Відображення зміненого обсягу вартості в профайлі
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування профіля
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data.value}  amount
  Звірити відображення поля value.amount профіля із ${USERS.users['${e_admin}']['new_value.amount']} для усіх користувачів


Можливість змінити валюту в профайлі
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування профіля
  ...      e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${field_value}=  create_currency
  Можливість змінити поле value.currency профіля на ${field_value}


Відображення зміненої валюти в профайлі
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування профіля
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data.value}  currency
  Звірити відображення поля value.currency профіля із ${USERS.users['${e_admin}']['new_value.currency']} для усіх користувачів


Можливість змінити розмір картинки в профайла
  [Tags]   ${USERS.users['${e_admin}'].broker}: Редагування профіля
  ...      e_admin
  ...      ${USERS.users['${e_admin}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${field_value}=  create_fake_number  1  39
  Можливість змінити поле images[0].sizes профіля на ${field_value}


Відображення змін в полі розмір картинки в профайлі
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування профіля
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data.images[0]}  sizes
  Звірити відображення поля images[0].sizes профіля із ${USERS.users['${e_admin}']['new_images[0].sizes']} для усіх користувачів


Можливість змінити посилання картинки в профайлі
  [Tags]   ${USERS.users['${e_admin}'].broker}: Редагування профіля
  ...      e_admin
  ...      ${USERS.users['${e_admin}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${field_value}=  create_fake_url
  Можливість змінити поле images[0].url профіля на ${field_value}


Відображення змін в полі посилання на картинку в профайлі
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування профіля
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data.images[0]}  url
  Звірити відображення поля images[0].url профіля із ${USERS.users['${e_admin}']['new_images[0].url']} для усіх користувачів


Можливість внести зміни у опис характеристики
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування профіля
  ...      e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${field_value}=  create_fake_word
  Можливість змінити поле criteria[0].description профіля на ${field_value}


Відображення змін у опису характеристики
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування профіля
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data.criteria[0]}  description
  Звірити відображення поля criteria[0].description профіля із ${USERS.users['${e_admin}']['new_criteria[0].description']} для усіх користувачів


Можливість внести змінти у заголовок характеристики
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування профіля
  ...      e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${field_value}=  create_fake_word
  Можливість змінити поле criteria[0].title профіля на ${field_value}


Відображення змін у заголовку характеристики
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування профіля
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data.criteria[0]}  title
  Звірити відображення поля criteria[0].title профіля із ${USERS.users['${e_admin}']['new_criteria[0].title']} для усіх користувачів


Можливість змінти опис у групі вимог
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування профіля
  ...      e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${field_value}=  create_fake_word
  Можливість змінити поле criteria[0].requirementGroups[0].description профіля на ${field_value}


Відображення змінeного опису у групі вимог
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування профіля
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data.criteria[0].requirementGroups[0]}  description
  Звірити відображення поля criteria[0].requirementGroups[0].description профіля із ${USERS.users['${e_admin}']['new_criteria[0].requirementGroups[0].description']} для усіх користувачів


Можливість внести змінти у заголовок вимоги
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування профіля
  ...      e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${field_value}=  create_fake_word
  Можливість змінити поле criteria[0].requirementGroups[0].requirements[0].title профіля на ${field_value}


Відображення змін у заголовоку вимоги
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування профіля
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data.criteria[0].requirementGroups[0].requirements[0]}  title
  Звірити відображення поля criteria[0].requirementGroups[0].requirements[0].title профіля із ${USERS.users['${e_admin}']['new_criteria[0].requirementGroups[0].requirements[0].title']} для усіх користувачів


Можливість внести змінти у опис вимоги
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування профіля
  ...      e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${field_value}=  create_fake_word
  Можливість змінити поле criteria[0].requirementGroups[0].requirements[0].description профіля на ${field_value}


Відображення змін у опис вимоги
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування профіля
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data.criteria[0].requirementGroups[0].requirements[0]}  description
  Звірити відображення поля criteria[0].requirementGroups[0].requirements[0].description профіля із ${USERS.users['${e_admin}']['new_criteria[0].requirementGroups[0].requirements[0].description']} для усіх користувачів


Можливість внести змінти у значення характеристики
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування профіля
  ...      e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${field_value}=  choose_type  ${USERS.users['${e_admin}'].initial_data.dataType}
  ${key}  Вибрати значення для вимоги  ${USERS.users['${viewer}'].profile_data.criteria[0].requirementGroups[0].requirements[0]}
  Можливість змінити поле criteria[0].requirementGroups[0].requirements[0].${key} профіля на ${field_value}


Відображення змін у значення характеристики
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування профіля
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  ${key}  Вибрати значення для вимоги  ${USERS.users['${viewer}'].profile_data.criteria[0].requirementGroups[0].requirements[0]}
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data.criteria[0].requirementGroups[0].requirements[0]}  ${key}
  Звірити відображення поля criteria[0].requirementGroups[0].requirements[0].${key} профіля із ${USERS.users['${e_admin}']['new_criteria[0].requirementGroups[0].requirements[0].${key}']} для усіх користувачів


Можливість добавити характеристику у профайл
  [Tags]   ${USERS.users['${viewer}'].broker}: Додати до профайла
  ...      e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      add_profile
  [Setup]    Можливість створити характеристику
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${key_id}  set variable  ${USERS.users['${e_admin}'].profile_data.criteria[0].description}
  ${field_value}=  create_criteria_for_profile  ${CRITERIA['CRITERIA_UAID']}  ${USERS.users['${e_admin}'].initial_data.dataType}
  Можливість додати criteria до профіля ${field_value} по ключу ${key_id}


Відображення заголовка у добавленій характеристиці профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення доданих даних
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      add_profile_view
  [Setup]    Дочекатись синхронізації з майданчиком  ${e_admin}  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_criteria.description}
  Звірити відображення поля title критерія для користувача ${e_admin} по ключу ${key_id}


Відображення опису у добавленій характеристиці профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення доданих даних
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      add_profile_view
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_criteria.description}
  Звірити відображення поля description критерія для користувача ${viewer} по ключу ${key_id}


Відображення опису у добавленій групі вимог профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення доданих даних
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      add_profile_view
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_criteria.requirementGroups[0].description}
  Звірити відображення поля description критерія для користувача ${viewer} по ключу ${key_id}


Відображення значення у добавленій вимозі профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення доданих даних
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      add_profile_view
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_criteria.requirementGroups[0].requirements[0].description}
  ${key}  Вибрати значення для вимоги  ${USERS.users['${e_admin}'].new_criteria.requirementGroups[0].requirements[0]}
  Звірити відображення поля ${key} критерія для користувача ${viewer} по ключу ${key_id}


Відображення заголовка у добавленій вимозі профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення доданих даних
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      add_profile_view
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_criteria.requirementGroups[0].requirements[0].description}
  Звірити відображення поля title критерія для користувача ${viewer} по ключу ${key_id}


Відображення опису у добавленій вимозі профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення доданих даних
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      add_profile_view
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_criteria.requirementGroups[0].requirements[0].description}
  Звірити відображення поля description критерія для користувача ${viewer} по ключу ${key_id}


Відображення пов'язаного ідентифікатору у добавленій вимозі профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення доданих даних
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      add_profile_view
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_criteria.requirementGroups[0].requirements[0].description}
  Звірити відображення поля relatedCriteria_id критерія для користувача ${viewer} по ключу ${key_id}


Можливість змінити опис у добавленій вимозі профіля
  [Tags]   ${USERS.users['${e_admin}'].broker}: Редагування доданих даних профайла
  ...      e_admin
  ...      ${USERS.users['${e_admin}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_add_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_criteria.requirementGroups[0].requirements[0].description}
  ${field_value}  description_with_id
  Можливість змінити description поле характеристики профіля на ${field_value} по ключу ${key_id}
  Set To Dictionary  ${USERS.users['${e_admin}'].new_criteria.requirementGroups[0].requirements[0]}  description=${field_value}


Відображення зміненого опису у добавленій вимозі профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування доданих даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_add_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_criteria.requirementGroups[0].requirements[0].description}
  Видалити дані  description  ${key_id}
  Звірити відображення description поля характеристики профіля із ${USERS.users['${e_admin}'].new_description} для користувачів по ключу ${key_id}


Можливість змінити заголов у добавленій вимозі профіля
  [Tags]   ${USERS.users['${e_admin}'].broker}: Редагування доданих даних профайла
  ...      e_admin
  ...      ${USERS.users['${e_admin}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_add_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_criteria.requirementGroups[0].requirements[0].description}
  ${field_value}=  create_fake_title
  Можливість змінити title поле характеристики профіля на ${field_value} по ключу ${key_id}


Відображення зміненого заголовка у добавленій вимозі профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування доданих даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_add_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_criteria.requirementGroups[0].requirements[0].description}
  Видалити дані  title  ${key_id}
  Звірити відображення title поля характеристики профіля із ${USERS.users['${e_admin}'].new_title} для користувачів по ключу ${key_id}


Можливість змінити значення у добавленій вимозі профіля
  [Tags]   ${USERS.users['${e_admin}'].broker}: Редагування доданих даних профайла
  ...      e_admin
  ...      ${USERS.users['${e_admin}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_add_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_criteria.requirementGroups[0].requirements[0].description}
  ${field_value}=  choose_type  ${USERS.users['${e_admin}'].initial_data.dataType}
  ${key}  Вибрати значення для вимоги  ${USERS.users['${e_admin}'].new_criteria.requirementGroups[0].requirements[0]}
  Можливість змінити ${key} поле характеристики профіля на ${field_value} по ключу ${key_id}


Відображення зміненого значення у добавленій вимозі профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування доданих даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_add_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_criteria.requirementGroups[0].requirements[0].description}
  ${key}  Вибрати значення для вимоги  ${USERS.users['${e_admin}'].new_criteria.requirementGroups[0].requirements[0]}
  Видалити дані  ${key}  ${key_id}
  Звірити відображення ${key} поля характеристики профіля із ${USERS.users['${e_admin}'].new_${key}} для користувачів по ключу ${key_id}


Можливість змінити опис у добавленій групі вимог профіля
  [Tags]   ${USERS.users['${e_admin}'].broker}: Редагування доданих даних профайла
  ...      e_admin
  ...      ${USERS.users['${e_admin}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_add_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_criteria.requirementGroups[0].description}
  ${field_value}  description_with_id
  Можливість змінити description поле характеристики профіля на ${field_value} по ключу ${key_id}
  Set To Dictionary  ${USERS.users['${e_admin}'].new_criteria.requirementGroups[0]}  description=${field_value}


Відображення зміненого опису у добавленій групі вимог профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування доданих даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_add_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_criteria.requirementGroups[0].description}
  Видалити дані  description  ${key_id}
  Звірити відображення description поля характеристики профіля із ${USERS.users['${e_admin}'].new_description} для користувачів по ключу ${key_id}


Можливість добавити групу вимог у нову характеристику у профайл
  [Tags]   ${USERS.users['${viewer}'].broker}: Додати до профайла
  ...      e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      add_profile
  [Setup]    Можливість створити характеристику
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${key_id}  set variable  ${USERS.users['${e_admin}'].new_criteria.description}
  ${field_value}=  create_requirements_group  ${CRITERIA['CRITERIA_UAID']}  ${USERS.users['${e_admin}'].initial_data.dataType}
  Можливість додати requirementGroups до профіля ${field_value} по ключу ${key_id}


Відображення опису у добавленій групі вимог в новій характеристиці
  [Tags]   ${USERS.users['${viewer}'].broker}:  Відображення доданих даних
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      add_profile_view
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_requirementGroups.description}
  Звірити відображення поля description критерія для користувача ${viewer} по ключу ${key_id}


Відображення опису у вимозі групи вимог в новій характеристиці
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення доданих даних
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      add_profile_view
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_requirementGroups.requirements[0].description}
  Звірити відображення поля description критерія для користувача ${viewer} по ключу ${key_id}


Відображення заголовка у вимозі групи вимог в новій характеристиці
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення доданих даних
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      add_profile_view
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_requirementGroups.requirements[0].description}
  Звірити відображення поля title критерія для користувача ${viewer} по ключу ${key_id}


Відображення значення у вимозі групи вимог в новій характеристиці
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення доданих даних
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      add_profile_view
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_requirementGroups.requirements[0].description}
  ${key}  Вибрати значення для вимоги  ${USERS.users['${e_admin}'].new_requirementGroups.requirements[0]}
  Звірити відображення поля ${key} критерія для користувача ${viewer} по ключу ${key_id}


Можливість змінити опис у вимозі групи вимог в новій характеристиці
  [Tags]   ${USERS.users['${e_admin}'].broker}: Редагування доданих даних профайла
  ...      e_admin
  ...      ${USERS.users['${e_admin}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_add_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_requirementGroups.requirements[0].description}
  ${field_value}  description_with_id
  Можливість змінити description поле характеристики профіля на ${field_value} по ключу ${key_id}
  Set To Dictionary  ${USERS.users['${e_admin}'].new_requirementGroups.requirements[0]}  description=${field_value}


Відображення зміненого опису у вимозі групи вимог в новій характеристиці
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування доданих даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_add_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_requirementGroups.requirements[0].description}
  Видалити дані  description  ${key_id}
  Звірити відображення description поля характеристики профіля із ${USERS.users['${e_admin}'].new_description} для користувачів по ключу ${key_id}


Можливість змінити заголов у вимозі групи вимог в новій характеристиці
  [Tags]   ${USERS.users['${e_admin}'].broker}: Редагування доданих даних профайла
  ...      e_admin
  ...      ${USERS.users['${e_admin}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_add_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_requirementGroups.requirements[0].description}
  ${field_value}=  create_fake_title
  Можливість змінити title поле характеристики профіля на ${field_value} по ключу ${key_id}


Відображення зміненого заголовка у вимозі групи вимог в новій характеристиці
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування доданих даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_add_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_requirementGroups.requirements[0].description}
  Видалити дані  title  ${key_id}
  Звірити відображення title поля характеристики профіля із ${USERS.users['${e_admin}'].new_title} для користувачів по ключу ${key_id}


Можливість змінити значення у вимозі групи вимог в новій характеристиці
  [Tags]   ${USERS.users['${e_admin}'].broker}: Редагування доданих даних профайла
  ...      e_admin
  ...      ${USERS.users['${e_admin}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_add_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_requirementGroups.requirements[0].description}
  ${field_value}=  choose_type  ${USERS.users['${e_admin}'].initial_data.dataType}
  ${key}  Вибрати значення для вимоги  ${USERS.users['${e_admin}'].new_requirementGroups.requirements[0]}
  Можливість змінити ${key} поле характеристики профіля на ${field_value} по ключу ${key_id}


Відображення зміненого значення у вимозі групи вимог в новій характеристиці
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування доданих даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_add_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_requirementGroups.requirements[0].description}
  ${key}  Вибрати значення для вимоги  ${USERS.users['${e_admin}'].new_requirementGroups.requirements[0]}
  Видалити дані  ${key}  ${key_id}
  Звірити відображення ${key} поля характеристики профіля із ${USERS.users['${e_admin}'].new_${key}} для користувачів по ключу ${key_id}


Можливість змінити опис у групі вимог в новій характеристиці
  [Tags]   ${USERS.users['${e_admin}'].broker}: Редагування доданих даних профайла
  ...      e_admin
  ...      ${USERS.users['${e_admin}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_add_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_requirementGroups.description}
  ${field_value}  description_with_id
  Можливість змінити description поле характеристики профіля на ${field_value} по ключу ${key_id}
  Set To Dictionary  ${USERS.users['${e_admin}'].new_requirementGroups}  description=${field_value}


Відображення зміненого опису у групі вимог в новій характеристиці
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування доданих даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_add_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_requirementGroups.description}
  Видалити дані  description  ${key_id}
  Звірити відображення description поля характеристики профіля із ${USERS.users['${e_admin}'].new_description} для користувачів по ключу ${key_id}


Можливість добавити вимогу у нову групу вимог
  [Tags]   ${USERS.users['${viewer}'].broker}: Додати до профайла
  ...      e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      add_profile
  [Setup]    Можливість створити характеристику
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${key_id}  set variable  ${USERS.users['${e_admin}'].new_requirementGroups.description}
  ${field_value}=  create_requirements  ${CRITERIA['CRITERIA_UAID']}  ${USERS.users['${e_admin}'].initial_data.dataType}
  Можливість додати requirements до профіля ${field_value} по ключу ${key_id}


Відображення опису у новій вимозі
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення доданих даних
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      add_profile_view
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_requirements.description}
  Звірити відображення поля description критерія для користувача ${viewer} по ключу ${key_id}


Відображення заголовка у новій вимозі
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення доданих даних
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      add_profile_view
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_requirements.description}
  Звірити відображення поля title критерія для користувача ${viewer} по ключу ${key_id}


Відображення значення у новій вимозі
  [Tags]   ${USERS.users['${viewer}'].broker}: Відображення доданих даних
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      add_profile_view
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_requirements.description}
  ${key}  Вибрати значення для вимоги  ${USERS.users['${e_admin}'].new_requirements}
  Звірити відображення поля ${key} критерія для користувача ${viewer} по ключу ${key_id}


Можливість змінити опис у новій вимозі
  [Tags]   ${USERS.users['${e_admin}'].broker}: Редагування доданих даних профайла
  ...      e_admin
  ...      ${USERS.users['${e_admin}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_add_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_requirements.description}
  ${field_value}  description_with_id
  Можливість змінити description поле характеристики профіля на ${field_value} по ключу ${key_id}
  Set To Dictionary  ${USERS.users['${e_admin}'].new_requirements}  description=${field_value}


Відображення зміненого опису у новій вимозі
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування доданих даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_add_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_requirements.description}
  Видалити дані  description  ${key_id}
  Звірити відображення description поля характеристики профіля із ${USERS.users['${e_admin}'].new_description} для користувачів по ключу ${key_id}


Можливість змінити заголов у новій вимозі
  [Tags]   ${USERS.users['${e_admin}'].broker}: Редагування доданих даних профайла
  ...      e_admin
  ...      ${USERS.users['${e_admin}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_add_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_requirements.description}
  ${field_value}=  create_fake_title
  Можливість змінити title поле характеристики профіля на ${field_value} по ключу ${key_id}


Відображення зміненого заголовка у новій вимозі
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування доданих даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_add_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_requirements.description}
  Видалити дані  title  ${key_id}
  Звірити відображення title поля характеристики профіля із ${USERS.users['${e_admin}'].new_title} для користувачів по ключу ${key_id}


Можливість змінити значення у новій вимозі
  [Tags]   ${USERS.users['${e_admin}'].broker}: Редагування доданих даних профайла
  ...      e_admin
  ...      ${USERS.users['${e_admin}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_add_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_requirements.description}
  ${field_value}=  choose_type  ${USERS.users['${e_admin}'].initial_data.dataType}
  ${key}  Вибрати значення для вимоги  ${USERS.users['${e_admin}'].new_requirements}
  Можливість змінити ${key} поле характеристики профіля на ${field_value} по ключу ${key_id}


Відображення зміненого значення у новій вимозі
  [Tags]   ${USERS.users['${viewer}'].broker}: Редагування доданих даних профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      modify_add_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_requirements.description}
  ${key}  Вибрати значення для вимоги  ${USERS.users['${e_admin}'].new_requirements}
  Видалити дані  ${key}  ${key_id}
  Звірити відображення ${key} поля характеристики профіля із ${USERS.users['${e_admin}'].new_${key}} для користувачів по ключу ${key_id}


Можливість видалити нову вимогу
  [Tags]   ${USERS.users['${viewer}'].broker}: Видалити з профайла
  ...      e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      delete_add_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_requirements.description}
  Можливість видалити з профіля по ключу ${key_id}


Неможливість знайти видалену нову вимогу
  [Tags]   ${USERS.users['${viewer}'].broker}: Видалити з профайла
  ...      e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      delete_add_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_requirements.description}
  Неможливість знайти видаленні дані з характеристики по ключу ${key_id} для користувача ${viewer}


Можливість видалити нову групу вимог
  [Tags]   ${USERS.users['${viewer}'].broker}: Видалити з профайла
  ...      e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      delete_add_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_requirementGroups.description}
  Можливість видалити з профіля по ключу ${key_id}


Неможливість знайти видалену нову групу вимог
  [Tags]   ${USERS.users['${viewer}'].broker}: Видалити з профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      delete_add_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_requirementGroups.description}
  Неможливість знайти видаленні дані з характеристики по ключу ${key_id} для користувача ${viewer}


Можливість видалити нову характеристику
  [Tags]   ${USERS.users['${viewer}'].broker}: Видалити з профайла
  ...      e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      delete_add_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_criteria.description}
  Можливість видалити з профіля по ключу ${key_id}


Неможливість знайти видалену нову характеристику
  [Tags]   ${USERS.users['${viewer}'].broker}: Видалити з профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      delete_add_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_criteria.description}
  Неможливість знайти видаленні дані з характеристики по ключу ${key_id} для користувача ${viewer}


Можливіть видалити профіля
  [Tags]   ${USERS.users['${viewer}'].broker}: Видалення профіля
  ...      e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      delete_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  Можливість видалити профіль


Перевірити статус видаленого профіля
  [Tags]   ${USERS.users['${viewer}'].broker}:  Видалення профіля
  ...      e_admin  viewer
  ...      ${USERS.users['${viewer}'].broker}
  ...      delete_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data}  status
  Звірити відображення поля status профіля із hidden для користувача ${viewer}


Неможливість створити профіль
    [Tags]   ${USERS.users['${e_admin}'].broker}: Неможливість оголошення профіля
  ...      viewer
  ...      ${USERS.users['${e_admin}'].broker}
  ...      impossibility_create_profile
  [Setup]    Можливість створити характеристику
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  Неможливість створити профайл для ${viewer}


Неможливість змінити заголовок профайла
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість редагувати профіля
  ...      viewer
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_modify_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${field_value}=  create_fake_title
  Неможливість змінити поле title профіля на ${field_value} для ${viewer}


Відображення незміненого заголовка профайла
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість редагувати профіля
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_modify_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data}  title
  Звірити відображення поля title профіля із ${USERS.users['${e_admin}'].initial_profile.title} для усіх користувачів


Неможливість змінити опис профайла
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість редагувати профіля
  ...      viewer
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_modify_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${field_value}=  create_fake_eng_sentence
  Неможливість змінити поле description профіля на ${field_value} для ${viewer}


Відображення незміненого опису профайла
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість редагувати профіля
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_modify_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data}  description
  Звірити відображення поля description профіля із ${USERS.users['${e_admin}'].initial_profile.description} для усіх користувачів


Неможливість змінити одиницю в профайлі
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість редагувати профіля
  ...      viewer
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_modify_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${field_value}=  create_unit_en
  Неможливість змінити поле unit профіля на ${field_value} для ${viewer}


Відображення незміненої назви одиниці в профайлі
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість редагувати профіля
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_modify_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data.unit}  name
  Звірити відображення поля unit.name профіля із ${USERS.users['${e_admin}'].initial_profile.unit.name} для усіх користувачів


Відображення незміненого коду одиниці в профайлі
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість редагувати профіля
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_modify_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data.unit}  code
  Звірити відображення поля unit.code профіля із ${USERS.users['${e_admin}'].initial_profile.unit.code} для усіх користувачів


Неможливість змінити податок на додану вартість в профайлі
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість редагувати профіля
  ...      viewer
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_modify_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${field_value}=  create_tax
  Неможливість змінити поле value.valueAddedTaxIncluded профіля на ${field_value} для ${viewer}


Відображення незміненого податку на додану вартість в профайлі
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість редагувати профіля
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_modify_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data.value}  valueAddedTaxIncluded
  Звірити відображення поля value.valueAddedTaxIncluded профіля із ${USERS.users['${e_admin}'].initial_profile.value.valueAddedTaxIncluded} для усіх користувачів


Неможливість змінити обсяг вартості в профайлі
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість редагувати профіля
  ...      viewer
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_modify_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${field_value}=  create_value_amount
  Неможливість змінити поле value.amount профіля на ${field_value} для ${viewer}


Відображення незміненого обсягу вартості в профайлі
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість редагувати профіля
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_modify_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data.value}  amount
  Звірити відображення поля value.amount профіля із ${USERS.users['${e_admin}'].initial_profile.value.amount} для усіх користувачів


Неможливість змінити валюту в профайлі
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість редагувати профіля
  ...      viewer
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_modify_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${field_value}=  create_currency
  Неможливість змінити поле value.currency профіля на ${field_value} для ${viewer}


Відображення незміненої валюти в профайлі
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість редагувати профіля
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_modify_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data.value}  currency
  Звірити відображення поля value.currency профіля із ${USERS.users['${e_admin}'].initial_profile.value.currency} для усіх користувачів


Неможливість змінити розмір картинки в профайла
  [Tags]   ${USERS.users['${e_admin}'].broker}: Неможливість редагувати профіля
  ...      e_admin
  ...      ${USERS.users['${e_admin}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_modify_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${field_value}=  create_fake_number  1  39
  Неможливість змінити поле images[0].sizes профіля на ${field_value} для ${viewer}


Відображення незміненого розміру картинки в профайлі
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість редагувати профіля
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_modify_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data.images[0]}  sizes
  Звірити відображення поля images[0].sizes профіля із ${USERS.users['${e_admin}'].initial_profile.images[0].sizes} для усіх користувачів


Неможливість змінити посилання картинки в профайлі
  [Tags]   ${USERS.users['${e_admin}'].broker}: Неможливість редагувати профіля
  ...      e_admin
  ...      ${USERS.users['${e_admin}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_modify_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${field_value}=  create_fake_url
  Неможливість змінити поле images[0].url профіля на ${field_value} для ${viewer}


Відображення незміненого посилання на картинку в профайлі
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість редагувати профіля
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_modify_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data.images[0]}  url
  Звірити відображення поля images[0].url профіля із ${USERS.users['${e_admin}'].initial_profile.images[0].url} для усіх користувачів


Неможливість внести зміни у опис характеристики
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість редагувати профіля
  ...      e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_modify_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${field_value}=  create_fake_word
  Неможливість змінити поле criteria[0].description профіля на ${field_value} для ${viewer}


Відображення незміненого опису у характеристики
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість редагувати профіля
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_modify_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data.criteria[0]}  description
  Звірити відображення поля criteria[0].description профіля із ${USERS.users['${e_admin}'].initial_profile.criteria[0].description} для усіх користувачів


Неможливість внести змінти у заголовок характеристики
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість редагувати профіля
  ...      e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_modify_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${field_value}=  create_fake_word
  Неможливість змінити поле criteria[0].title профіля на ${field_value} для ${viewer}


Відображення незміненого заголовку характеристики
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість редагувати профіля
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_modify_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data.criteria[0]}  title
  Звірити відображення поля criteria[0].title профіля із ${USERS.users['${e_admin}'].initial_profile.criteria[0].title} для усіх користувачів


Неможливість змінти опис у групі вимог
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість редагувати профіля
  ...      e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_modify_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${field_value}=  create_fake_word
  Неможливість змінити поле criteria[0].requirementGroups[0].description профіля на ${field_value} для ${viewer}


Відображення незміненого опису у групі вимог
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість редагувати профіля
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_modify_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data.criteria[0].requirementGroups[0]}  description
  Звірити відображення поля criteria[0].requirementGroups[0].description профіля із ${USERS.users['${e_admin}'].initial_profile.criteria[0].requirementGroups[0].description} для усіх користувачів


Неможливість внести змінти у заголовок вимоги
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість редагувати профіля
  ...      e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_modify_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${field_value}=  create_fake_word
  Неможливість змінити поле criteria[0].requirementGroups[0].requirements[0].title профіля на ${field_value} для ${viewer}


Відображення незміненого заголовоку вимоги
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість редагувати профіля
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_modify_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data.criteria[0].requirementGroups[0].requirements[0]}  title
  Звірити відображення поля criteria[0].requirementGroups[0].requirements[0].title профіля із ${USERS.users['${e_admin}'].initial_profile.criteria[0].requirementGroups[0].requirements[0].title} для усіх користувачів


Неможливість внести змінти у опис вимоги
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість редагувати профіля
  ...      e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_modify_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${field_value}=  create_fake_word
  Неможливість змінити поле criteria[0].requirementGroups[0].requirements[0].description профіля на ${field_value} для ${viewer}


Відображення незміненого опис вимоги
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість редагувати профіля
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_modify_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data.criteria[0].requirementGroups[0].requirements[0]}  description
  Звірити відображення поля criteria[0].requirementGroups[0].requirements[0].description профіля із ${USERS.users['${e_admin}'].initial_profile.criteria[0].requirementGroups[0].requirements[0].description} для усіх користувачів


Неможливість внести змінти у значення характеристики
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість редагувати профіля
  ...      e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_modify_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${field_value}=  choose_type  ${USERS.users['${e_admin}'].initial_data.dataType}
  ${key}  Вибрати значення для вимоги  ${USERS.users['${viewer}'].profile_data.criteria[0].requirementGroups[0].requirements[0]}
  Неможливість змінити поле criteria[0].requirementGroups[0].requirements[0].${key} профіля на ${field_value} для ${viewer}


Відображення незміненого значення характеристики
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість редагувати профіля
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_modify_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  ${key}  Вибрати значення для вимоги  ${USERS.users['${viewer}'].profile_data.criteria[0].requirementGroups[0].requirements[0]}
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data.criteria[0].requirementGroups[0].requirements[0]}  ${key}
  Звірити відображення поля criteria[0].requirementGroups[0].requirements[0].${key} профіля із ${USERS.users['${e_admin}'].initial_profile.criteria[0].requirementGroups[0].requirements[0].${key}} для усіх користувачів


Неможливість добавити нову характеристику у профайл
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість додати до профайла
  ...      e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_add_profile
  [Setup]    Можливість створити характеристику
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${key_id}  set variable  ${USERS.users['${e_admin}'].initial_profile.criteria[0].description}
  ${field_value}=  create_criteria_for_profile  ${CRITERIA['CRITERIA_UAID']}  ${USERS.users['${e_admin}'].initial_data.dataType}
  Неможливість додати criteria до профіля ${field_value} по ключу ${key_id} для ${viewer}


Неможливість знайти нову характеристику
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість додати до профайла
  ...      viewer
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_delete_add_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_criteria.description}
  Неможливість знайти видаленні дані з характеристики по ключу ${key_id} для користувача ${viewer}


Неможливість добавити групу вимог у характеристику профайл
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість додати до профайла
  ...      e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_add_profile
  [Setup]    Можливість створити характеристику
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${key_id}  set variable  ${USERS.users['${e_admin}'].initial_profile.criteria[0].description}
  ${field_value}=  create_requirements_group  ${CRITERIA['CRITERIA_UAID']}  ${USERS.users['${e_admin}'].initial_data.dataType}
  Неможливість додати requirementGroups до профіля ${field_value} по ключу ${key_id} для ${viewer}


Неможливість знайти нову групу вимог
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість додати до профайла
  ...      viewer  e_admin
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_delete_add_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_requirementGroups.description}
  Неможливість знайти видаленні дані з характеристики по ключу ${key_id} для користувача ${viewer}


Неможливість добавити вимогу групу вимог
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість додати до профайла
  ...      viewer
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_add_profile
  [Setup]    Можливість створити характеристику
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  ${key_id}  set variable  ${USERS.users['${e_admin}'].initial_profile.criteria[0].requirementGroups[0].description}
  ${field_value}=  create_requirements  ${CRITERIA['CRITERIA_UAID']}  ${USERS.users['${e_admin}'].initial_data.dataType}
  Неможливість додати requirements до профіля ${field_value} по ключу ${key_id} для ${viewer}


Неможливість знайти вимогу
  [Tags]   ${USERS.users['${viewer}'].broker}: Неможливість додати до профайла
  ...      viewer
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_delete_add_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  ${key_id}  Set Variable  ${USERS.users['${e_admin}'].new_requirements.description}
  Неможливість знайти видаленні дані з характеристики по ключу ${key_id} для користувача ${viewer}


Неможливість видалити профіль
  [Tags]   ${USERS.users['${viewer}'].broker}:  Неможливість видалити профіль
  ...      viewer
  ...      ${USERS.users['${viewer}'].broker}  ${USERS.users['${e_admin}'].broker}
  ...      impossibility_delete_profile
  [Teardown]  Оновити LAST_MODIFICATION_DATE  PROFILE
  Неможливість видалити профіль для ${viewer}


Перевірити статус видаленого профіля
  [Tags]   ${USERS.users['${viewer}'].broker}:  Неможливість видалити профіль
  ...      viewer
  ...      ${USERS.users['${viewer}'].broker}
  ...      impossibility_delete_profile
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}  PROFILE
  Remove From Dictionary  ${USERS.users['${viewer}'].profile_data}  status
  Звірити відображення поля status профіля із active для користувача ${viewer}


