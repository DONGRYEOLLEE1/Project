library(dplyr)
library(ggplot2)
library(grid)
library(gridExtra)
library(gtable)



getwd()
stat <- read.csv('data/Seasons_Stats_Last.csv')
options(digits=2)


# 각 나이대별 스탯 평균
stat_1 <- stat %>% filter(Year>=2000)

### 각 포지션별로 리바운드,득점,어시스트 수치 시각화
library(gridExtra)
grid.arrange(pos_pt, pos_ast, pos_rb, pos_fg, pos_3, pos_2, pos_stl,
             ncol=)
ggarrange(pos_pt, pos_ast, pos_rb, pos_fg, pos_3, pos_2, pos_stl,
         ncol=2, legend= 'bottom')





################################################

stat_1 <- stat %>% filter(Year>=2000) 
# PG (PT, 2P, 3P, AST, STL, FT, MP)
pg_pt <- stat_1 %>% filter(Pos == 'PG' & MP>=median(MP)) %>% 
    group_by(Age, Pos) %>% 
    select(PT, Pos) %>% 
    arrange(desc(Age)) %>% 
    summarize('PT'=mean(PT, na.rm=T)) %>% 
    ggplot(aes(Age, PT)) + 
    geom_line(size=1) + 
    ggtitle("경기당 득점")

pg_ast <- stat_1 %>% filter(Pos == 'PG' & MP>=median(MP)) %>% 
    group_by(Age, Pos) %>% 
    select(AST, Pos) %>% 
    arrange(desc(Age)) %>% 
    summarize('AST'=mean(AST, na.rm=T)) %>% 
    ggplot(aes(Age, AST)) + 
    geom_line(size=1) + 
    ggtitle("어시스트")

pg_x2p <- stat_1 %>% filter(Pos == 'PG' & MP>=median(MP)) %>% 
    group_by(Age, Pos) %>% 
    select(X2P., Pos) %>% 
    arrange(desc(Age)) %>% 
    summarize('X2P'=mean(X2P., na.rm=T)) %>% 
    ggplot(aes(Age, X2P)) + 
    geom_line(size=1) + 
    ggtitle("2점슛")

pg_x3p <- stat_1 %>% filter(Pos == 'PG' & MP>=median(MP)) %>% 
    group_by(Age, Pos) %>% 
    select(X3P., Pos) %>% 
    arrange(desc(Age)) %>% 
    summarize('X3P'=mean(X3P., na.rm=T)) %>% 
    ggplot(aes(Age, X3P)) + 
    geom_line(size=1) + 
    ggtitle("3점슛")

pg_ft <- stat_1 %>% filter(Pos == 'PG' & MP>=median(MP)) %>% 
    group_by(Age, Pos) %>% 
    select(FT., Pos) %>% 
    arrange(desc(Age)) %>% 
    summarize('FT'=mean(FT., na.rm=T)) %>% 
    ggplot(aes(Age, FT)) + 
    geom_line(size=1) + 
    ggtitle("자유투")

pg_stl <- stat_1 %>% filter(Pos == 'PG' & MP>=median(MP)) %>% 
    group_by(Age, Pos) %>% 
    select(STL, Pos) %>% 
    arrange(desc(Age)) %>% 
    summarize('STL'=mean(STL, na.rm=T)) %>% 
    ggplot(aes(Age, STL)) + 
    geom_line(size=1) + 
    ggtitle("스틸")

pg_mp <- stat_1 %>% filter(Pos == 'PG' & MP>=median(MP)) %>% 
    group_by(Age, Pos) %>% 
    select(MP, Pos) %>% 
    arrange(desc(Age)) %>% 
    summarize('MP'=mean(MP, na.rm=T)) %>% 
    ggplot(aes(Age, MP)) + 
    geom_line(size=1) + 
    ggtitle("출전시간")

title_pg <- textGrob("포인트가드 세부 스텟",
                  gp=gpar(fontsize=20,fontface=2))
grid.arrange(pg_ast, pg_ft, pg_pt, pg_x2p, pg_x3p, pg_stl, pg_mp, ncol=2, 
             top = title_pg)

# SG (PT, 2P, 3P, FT, MP)

sg_pt <- stat_1 %>% filter(Pos == 'SG' & MP>=median(MP)) %>% 
    group_by(Age, Pos) %>% 
    select(PT, Pos) %>% 
    arrange(desc(Age)) %>% 
    summarize('PT'=mean(PT, na.rm=T)) %>% 
    ggplot(aes(Age, PT)) + 
    geom_line(size=1) + 
    ggtitle("경기당 득점")

sg_ft <- stat_1 %>% filter(Pos == 'SG' & MP>=median(MP)) %>% 
    group_by(Age, Pos) %>% 
    select(FT., Pos) %>% 
    arrange(desc(Age)) %>% 
    summarize('FT'=mean(FT., na.rm=T)) %>% 
    ggplot(aes(Age, FT)) + 
    geom_line(size=1) + 
    ggtitle("자유투")

sg_x2p <- stat_1 %>% filter(Pos == 'SG' & MP>=median(MP)) %>% 
    group_by(Age, Pos) %>% 
    select(X2P., Pos) %>% 
    arrange(desc(Age)) %>% 
    summarize('X2P'=mean(X2P., na.rm=T)) %>% 
    ggplot(aes(Age, X2P)) + 
    geom_line(size=1) + 
    ggtitle("2점슛")

sg_x3p <- stat_1 %>% filter(Pos == 'SG' & MP>=median(MP)) %>% 
    group_by(Age, Pos) %>% 
    select(X3P., Pos) %>% 
    arrange(desc(Age)) %>% 
    summarize('X3P'=mean(X3P., na.rm=T)) %>% 
    ggplot(aes(Age, X3P)) + 
    geom_line(size=1) + 
    ggtitle("3점슛")

sg_mp <- stat_1 %>% filter(Pos == 'SG' & MP>=median(MP)) %>% 
    group_by(Age, Pos) %>% 
    select(MP, Pos) %>% 
    arrange(desc(Age)) %>% 
    summarize('MP'=mean(MP, na.rm=T)) %>% 
    ggplot(aes(Age, MP)) + 
    geom_line(size=1) + 
    ggtitle("출전시간")
sg_mp
title_sg <- textGrob("슈팅가드 세부 스텟",
                     gp=gpar(fontsize=20,fontface=2))
grid.arrange(sg_ft, sg_pt, sg_x2p, sg_x3p, sg_mp, ncol=2, 
             top = title_sg)


# SF (3P%, 2P%, TRB, STL, PT, MP)
sf_pt <- stat_1 %>% filter(Pos == 'SF' & MP>=median(MP)) %>% 
    group_by(Age, Pos) %>% 
    select(PT, Pos) %>% 
    arrange(desc(Age)) %>% 
    summarize('PT'=mean(PT, na.rm=T)) %>% 
    ggplot(aes(Age, PT)) + 
    geom_line(size=1) + 
    ggtitle("경기당 득점")

sf_x2p <- stat_1 %>% filter(Pos == 'SF' & MP>=median(MP)) %>% 
    group_by(Age, Pos) %>% 
    select(X2P., Pos) %>% 
    arrange(desc(Age)) %>% 
    summarize('X2P'=mean(X2P., na.rm=T)) %>% 
    ggplot(aes(Age, X2P)) + 
    geom_line(size=1) + 
    ggtitle("2점슛")

sf_x3p <- stat_1 %>% filter(Pos == 'SF' & MP>=median(MP)) %>% 
    group_by(Age, Pos) %>% 
    select(X3P., Pos) %>% 
    arrange(desc(Age)) %>% 
    summarize('X3P'=mean(X3P., na.rm=T)) %>% 
    ggplot(aes(Age, X3P)) + 
    geom_line(size=1) + 
    ggtitle("3점슛")

sf_stl <- stat_1 %>% filter(Pos == 'SF' & MP>=median(MP)) %>% 
    group_by(Age, Pos) %>% 
    select(STL, Pos) %>% 
    arrange(desc(Age)) %>% 
    summarize('STL'=mean(STL, na.rm=T)) %>% 
    ggplot(aes(Age, STL)) + 
    geom_line(size=1) + 
    ggtitle("스틸")

sf_mp <- stat_1 %>% filter(Pos == 'SF' & MP>=median(MP)) %>% 
    group_by(Age, Pos) %>% 
    select(MP, Pos) %>% 
    arrange(desc(Age)) %>% 
    summarize('MP'=mean(MP, na.rm=T)) %>% 
    ggplot(aes(Age, MP)) + 
    geom_line(size=1) + 
    ggtitle("출전시간")

sf_trb <- stat_1 %>% filter(Pos == 'SF' & MP>=median(MP)) %>% 
    group_by(Age, Pos) %>% 
    select(TRB, Pos) %>% 
    arrange(desc(Age)) %>% 
    summarize('TRB'=mean(TRB, na.rm=T)) %>% 
    ggplot(aes(Age, TRB)) + 
    geom_line(size=1) + 
    ggtitle("리바운드")

title_sf <- textGrob("스몰포워드 세부 스텟",
                     gp=gpar(fontsize=20,fontface=2))
grid.arrange(sf_pt, sf_trb, sf_x2p, sf_x3p, sf_stl, sf_mp, ncol=2, 
             top = title_sf)

# PF (2P%, TRB, BLK, FT, PT, MP)
pf_pt <- stat_1 %>% filter(Pos == 'PF' & MP>=median(MP)) %>% 
    group_by(Age, Pos) %>% 
    select(PT, Pos) %>% 
    arrange(desc(Age)) %>% 
    summarize('PT'=mean(PT, na.rm=T)) %>% 
    ggplot(aes(Age, PT)) + 
    geom_line(size=1) + 
    ggtitle("경기당 득점")

pf_trb <- stat_1 %>% filter(Pos == 'PF' & MP>=median(MP)) %>% 
    group_by(Age, Pos) %>% 
    select(TRB, Pos) %>% 
    arrange(desc(Age)) %>% 
    summarize('TRB'=mean(TRB, na.rm=T)) %>% 
    ggplot(aes(Age, TRB)) + 
    geom_line(size=1) + 
    ggtitle("리바운드")

pf_ft <- stat_1 %>% filter(Pos == 'PF' & MP>=median(MP)) %>% 
    group_by(Age, Pos) %>% 
    select(FT., Pos) %>% 
    arrange(desc(Age)) %>% 
    summarize('FT'=mean(FT., na.rm=T)) %>% 
    ggplot(aes(Age, FT)) + 
    geom_line(size=1) + 
    ggtitle("자유투")

pf_mp <- stat_1 %>% filter(Pos == 'PF' & MP>=median(MP)) %>% 
    group_by(Age, Pos) %>% 
    select(MP, Pos) %>% 
    arrange(desc(Age)) %>% 
    summarize('MP'=mean(MP, na.rm=T)) %>% 
    ggplot(aes(Age, MP)) + 
    geom_line(size=1) + 
    ggtitle("출전시간")

pf_x2p <- stat_1 %>% filter(Pos == 'PF' & MP>=median(MP)) %>% 
    group_by(Age, Pos) %>% 
    select(X2P., Pos) %>% 
    arrange(desc(Age)) %>% 
    summarize('X2P'=mean(X2P., na.rm=T)) %>% 
    ggplot(aes(Age, X2P)) + 
    geom_line(size=1) + 
    ggtitle("2점슛")

pf_blk <- stat_1 %>% filter(Pos == 'PF' & MP>=median(MP)) %>% 
    group_by(Age, Pos) %>% 
    select(BLK, Pos) %>% 
    arrange(desc(Age)) %>% 
    summarize('BLK'=mean(BLK, na.rm=T)) %>% 
    ggplot(aes(Age, BLK)) + 
    geom_line(size=1) + 
    ggtitle("블락")

title_pf <- textGrob("파워포워드 세부 스텟",
                     gp=gpar(fontsize=20,fontface=2))
grid.arrange(pf_pt, pf_trb, pf_ft, pf_x2p, pf_blk, pf_mp, ncol=2, 
             top = title_sf)
# C (2P%, TRB, BLK, FT, PT, MP)
c_x2p <- stat_1 %>% filter(Pos == 'C' & MP>=median(MP)) %>% 
    group_by(Age, Pos) %>% 
    select(X2P., Pos) %>% 
    arrange(desc(Age)) %>% 
    summarize('X2P'=mean(X2P., na.rm=T)) %>% 
    ggplot(aes(Age, X2P)) + 
    geom_line(size=1) + 
    ggtitle("2점슛")

c_trb <- stat_1 %>% filter(Pos == 'C' & MP>=median(MP)) %>% 
    group_by(Age, Pos) %>% 
    select(TRB, Pos) %>% 
    arrange(desc(Age)) %>% 
    summarize('TRB'=mean(TRB, na.rm=T)) %>% 
    ggplot(aes(Age, TRB)) + 
    geom_line(size=1) + 
    ggtitle("리바운드")

c_blk <-stat_1 %>% filter(Pos == 'C' & MP>=median(MP)) %>% 
    group_by(Age, Pos) %>% 
    select(BLK, Pos) %>% 
    arrange(desc(Age)) %>% 
    summarize('BLK'=mean(BLK, na.rm=T)) %>% 
    ggplot(aes(Age, BLK)) + 
    geom_line(size=1) + 
    ggtitle("블락")

c_ft <- stat_1 %>% filter(Pos == 'C' & MP>=median(MP)) %>% 
    group_by(Age, Pos) %>% 
    select(FT., Pos) %>% 
    arrange(desc(Age)) %>% 
    summarize('FT'=mean(FT., na.rm=T)) %>% 
    ggplot(aes(Age, FT)) + 
    geom_line(size=1) + 
    ggtitle("자유투")

c_pt <- stat_1 %>% filter(Pos == 'C' & MP>=median(MP)) %>% 
    group_by(Age, Pos) %>% 
    select(PT, Pos) %>% 
    arrange(desc(Age)) %>% 
    summarize('PT'=mean(PT, na.rm=T)) %>% 
    ggplot(aes(Age, PT)) + 
    geom_line(size=1) + 
    ggtitle("경기당 득점")

c_mp <- stat_1 %>% filter(Pos == 'C' & MP>=median(MP)) %>% 
    group_by(Age, Pos) %>% 
    select(MP, Pos) %>% 
    arrange(desc(Age)) %>% 
    summarize('MP'=mean(MP, na.rm=T)) %>% 
    ggplot(aes(Age, MP)) + 
    geom_line(size=1) + 
    ggtitle("출전시간")

title_c <- textGrob("센터 세부 스텟",
                     gp=gpar(fontsize=20,fontface=2))
grid.arrange(c_pt, c_ft, c_x2p, c_mp, c_blk, c_trb, ncol=2, 
             top = title_sf)
