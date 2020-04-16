This is API server for smart factory based on MR, AR Devices (Hololens, ARcore Device)

Python Environment:
python3, django 2.1.5,pymysql,Pillow

For Run:
1. Import /database
-> you would set schema's name as "vizinf_db"

2. modify setting.py
-> modify DB information that was generated at #1
-> Generate ScretKey and insert it ( https://miniwebtool.com/django-secret-key-generator/)

3. Go to temp_server/ directory

4. python manage.py runserver

API list:
1. /image/upload/[product or product_hp]
-> Appears page For data uploading

2. /image/download/[name]
-> Response: .json data

3. /image/download/[name]/image/detail
4. /image/download/[name]/image/problem
-> Image download link according to #2
