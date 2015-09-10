---
title: "Summary of Half of Lesson 3 from Data Analysis with R"
author: "Mingyu Lee"
date: "Wednesday, September 02, 2015"
output: slidy_presentation
---

## 3장에서 배울 내용

- 한 데이터 세트의 단일 변수 조사 방법
- 히스토그램과 시각화와 관련 R 명령어
- 데이터에 접근하는 방법

## 먼저 해야할 것은?

- 탐색적 데이터 분석에 앞서, 연구의 목적을 돌이켜보고
- **구하고자 하는 답에 대한 질문이 무엇인가?** 상기
- 연구에서 가장 중요한 변수를 이해하기 위해서
- 그 개별 변수들에 대한 요약과 시각화를 만드는 형태를 취할 것이다.

## 가상 페이스북 유저데이터
- 이번 3장에서는 가상의 페이스북 유저 데이터를 이용한다.
- 강의 노트에서 *pseudo-facebook.tsv*를 다운 받는다. 
- `getwd()` 명령어로 R에 설정된 현재 홈 디렉토리를 확인한다.
- `setwd("주소")` 명령어로 홈 디렉토리를 설정할 수 있다.
- **주의사항** 주소 경로는 '/' 로 구분한다.

```r
setwd("C:/Users/Mingyu/workspace/3. R/Data Analysis with R_Udacity/Lesson 3")
getwd()
```

```
## [1] "C:/Users/Mingyu/workspace/3. R/Data Analysis with R_Udacity/Lesson 3"
```

```r
list.files()
```

```
## [1] "presentation_lesson3-copy.html"    "presentation_lesson3-copy.Rmd"    
## [3] "presentation_lesson3-copy2-figure" "presentation_lesson3-copy2.md"    
## [5] "presentation_lesson3-copy2.Rpres"  "presentation_lesson3.html"        
## [7] "presentation_lesson3.md"           "presentation_lesson3.Rmd"         
## [9] "pseudo_facebook.tsv"
```
- `list.files()` 명령어로 홈 디렉토리 내의 파일 목록을 확인한다.
- `read.csv()` 명령어로 *pseudo-facebook.tsv*를 불러온다.

```r
pf <- read.csv('pseudo_facebook.tsv', sep ='\t')
```
- `\t` 으로 구분하고, 불러온 데이터를 *pf* 변수에 담는다는 의미이다.


## 데이터세트 컬럼 확인하기

`names(pf)` 명령어로 pf 변수에 담긴 데이터세트의 컬럼 정보를 확인 가능하다.


```r
names(pf)
```

```
##  [1] "userid"                "age"                  
##  [3] "dob_day"               "dob_year"             
##  [5] "dob_month"             "gender"               
##  [7] "tenure"                "friend_count"         
##  [9] "friendships_initiated" "likes"                
## [11] "likes_received"        "mobile_likes"         
## [13] "mobile_likes_received" "www_likes"            
## [15] "www_likes_received"
```
