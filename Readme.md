This is API server for smart factory based on MR, AR Devices (Hololens, ARcore Device)

API list:
1. /image/upload/[models_name]
-> For data uploading on web browser

2. /image/download/[name]
-> Response: .json data

3. /image/download/[name]/image/detail
4. /image/download/[name]/image/problem
-> Image download link according to #2

Please fill the blank of setting.py (SECRET_KEY, DB_PASSWORD)
