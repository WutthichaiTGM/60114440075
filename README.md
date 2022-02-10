# 60114440075

> เกมเสริมสร้างพัฒนาการของเด็กปฐมวัย (3-5 ปี) (kid kid kids)

### สิ่งที่ต้องใช้
* android studio - [ติดตั้ง](https://developer.android.com/studio/) .  
* cordova - [ติดตั้ง](https://cordova.apache.org/#getstarted/) .  
* git - [ติดตั้ง](https://git-scm.com/) .  
* node.js - [ติดตั้ง](https://nodejs.org/en/) .
* ionic cli - [ติดตั้ง](https://ionicframework.com/docs/intro/cli/) .

### การติดตั้ง
``` bash
# clone repository
git clone http://projectcs.sci.ubu.ac.th/senior-prj-63/60114440075.git
cd 60114440075/kidkidkids

# ติดตั้ง dependencies ที่ใช้กับ project
npm install

# เพื่ม platform android ไปยัง project
ionic cordova platform add android

# สร้างไฟล์ .apk
ionic cordova build androd

# run serve with hot reload at localhost:8100
ionic cordova run android -l
```