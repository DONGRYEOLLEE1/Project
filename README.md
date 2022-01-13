# Project Repository


## 1. R Project
- 빅데이터 마에스트로과정 R 프로젝트
    - NBA 경기데이터 분석
        1. NBA 경기데이터를 통해 각 포지션별 선수들의 스텟 분석 후 전성기 나이대를 알아보기
        2. 역대MVP 스텟을 통해 2020-21 NBA MVP 예측해보기 (1차 Stat을 통해)
            - 모델링
                - RandomForest, DecisionTree, SVM >> 최종 RF 채택


## 2. Python Project 1
- 빅데이터 마에스트로과정 python 프로젝트 1
    - 2019-20 국내 방문자 수 통계를 활용한 다각화 분석
        1. 국가별 국내 방문자 수를 비교해보고 그들의 비율을 살펴보고 그래프를 통해 시각화 (MySQL연동)
        2. 국가별 방문의 목적의 비율을 알아보고 각 목적에서의 top5국가들을 추출하고 시각화


## 3. Python Project 2 
- 빅데이터 마에스트로과정 python 프로젝트 2
    - 호텔 예약 수요데이터의 분석을 통한 다양한 경영인사이트 도출
        1. 취소율이 높은 달 파악 / 입금 형태별 취소 고객 분석
        2. 예약 취소자들의 특성 파악 및 예약 취소 고객을 예측해내는 분류 모델 생성


## 4. Golden Planet 
- 빅데이터 마에스트로과정 멘토링 프로젝트 
    - 2021년 중소기업 빅데이터 분석 활용 지원 사업(제주마미)
        1. 타겟 소비자 예측
            1-1. 제주 특산물을 활용한 과자, 곡류, 수산가공품을 제조하는 고객사
            1-2. 고사리와 멜젓 시장에 진입 후, 고사리장아찌 및 장아찌류 신제품 라인 런칭을 준비 중
        2. 경쟁사 분석
            2-1. 리뷰 키워드를 수집해 소비자 니즈 파악 / 감성분석을 통해 소비자인식을 조사하고 개선방향을 도출
        3. 신제품 런칭 기획
            3-1. 키워드 연관관계를 찾아 신제품 라인업 연구
            3-2. 고사리 장아찌 가격, 양 분석 
        4. 데이터 준비
            4-1. 수집 채널 : 네이버카페, 네이버쇼핑, 네이버블로그, 82cook, 인스타그램, 경쟁사 판매사이트
            4-2. 데이터 수집기간 : 2020.07.01 ~ 2021.07.31
        5. 분석방안
            5-1. 소셜 데이터 분석
            5-2. 경쟁사 조사


## 5. Team Project (최종)
- 빅데이터 마에스트로과정 최종 팀 프로젝트
    - 광양시 재활용품 자동수거기 설치 최적위치 선정 과제(COMPAS 공모전 참여)
        1. 환경부 폐기물 발생 및 처리현황, 인문사회 데이터(인구증가율, 인구분포도, 생활수준 등) 및 제공 데이터를 활용하여 각 지역별 재활용 쓰레기 발생량을 예측
        2. 예측된 발생량을 활용하여 광양시 공동주택 내 재활용품 자동수거기 50개소의 설치 위치 도출을 목적

> Source : https://compas.lh.or.kr/subj/past/info?subjNo=SBJ_2107_002<br></br>
> 최종결과물은 `8. Modify` 폴더 확인


## 6. Baron System
- 빅데이터 마에스트로과정 멘토링 프로젝트
    - 해양 플랫폼 데이터의 상관관계 분석
        1. 목적
            - 각 feature별 상관관계 파악
            - 해양 데이터 수집을 위해 설치한 부표에서 얻어온 데이터셋을 통해 설치된 체인의 교체시기를 예측
            - 모델 예측을 통한 그래프와 실제 데이터와의 유사성 확인
        2. 데이터
            - 설치된 부표를 통해 하루 약 80,000개의 Real-time 센서데이터
            - 5일치 데이터셋 제공 >> 약 280,000개 데이터
        3. 전처리
            - 필터 적용 : Kalman Filter, Low-pass Filter, High-pass Filter, Band-pass Filter ...
        4. 모델링
            - SVR, XGBoost > GridSearch
            - RNN, IRNN, LSTM, GRU, Prophet

- Reference
> [CNN LSTM paper](https://scienceon.kisti.re.kr/commons/util/originalView.do?cn=JAKO202005653789386&oCn=JAKO202005653789386&dbt=JAKO&journal=NJOU00431883) 『CNN-LSTM Combination Method for Improving Particular Matter Contamination (PM2.5) Prediction Accuracy』, 황철현, 신강욱

> [CNN LSTM 참고](https://machinelearningmastery.com/cnn-long-short-term-memory-networks/)

> [IRNN_Paper](https://arxiv.org/abs/1504.00941) 『A Simple Way to Initialize Recurrent Networks of Rectified Linear Units』, Quoc V. Le, Navdeep Jaitly, Geoffrey E. Hinton


## 7. Mini Project
- 개인 프로젝트
    - 스트리머 겸 유튜버인 "케인"의 유튜브 크롤링을 통해 댓글 데이터 수집 후, Natural Language Analysis
        1. 목적
            - 자연어처리 분석 공부 겸, 팬심으로 평소에 즐겨보는 유튜브 영상 댓글을 분석해보자
        2. 데이터
            - 직접 크롤러를 통해 [해당영상](https://www.youtube.com/watch?v=nTTsOgUXAfQ&ab_channel=%EC%BC%80%EC%9D%B8TV) 댓글 수집
            - "케인TV"에서 조회수가 가장 높은 영상으로 댓글도 많을 거라 판단하였기 때문에 위 영상을 채택
        3. 전처리
            - Konlpy Mecab 사용 + 도메인 지식을 활용, Mecab Dictionary에 직접 케인이 가지고 있는 "밈Meme"을 고유명사(nnp.csv)에 추가
            - Stopword Dict 만들어 적용 ([Source](https://gist.github.com/spikeekips/40eea22ef4a89f629abd87eed535ac6a))
        4. 분석방법
            - Scikit-Learn을 활용해 계층적 군집화
            - scipy 사용해 word2vec 사용 비교
            - Gensim
                - CBOW
                - Skip-gram
                - Embedding Vector 시각화
        5. 한계
            - 원 데이터가 워낙 적었어서(약 1200개) 제대로된 분석을 할 수 없었다. 추후 보완할 예정
            - 전처리, Mecab Dict 추가 등록하는데 시간을 많이 소요
            - 더 다양한 분석기법이 필요했다
                - 영상을 테마별(킹오브, 고민상담, 기타게임, ....)로 분류해 댓글/조회수/좋아요 수/싫어요 수/업로드 날짜를 수집하고 여러가지 분석기법을 통해 스트리머에게 조회수와 댓글수를 높게 뽑는 방법을 추천
                - 댓글 긍부정 분석을 통해 어떤 주제의 영상을 업로드하면 긍정여론을 받을 수 있는지 예측 및 제안

                