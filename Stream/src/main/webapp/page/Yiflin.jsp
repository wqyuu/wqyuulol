<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html class="no-js" lang="en">

<head>
 <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all">
    <meta name="author" content="Tencent-CP">
    <meta name="Copyright" content="Tencent">
    <meta name="Description" content="英雄联盟官方网站，海量风格各异的英雄，丰富、便捷的物品合成系统，游戏内置的匹配、排行和竞技系统，独创的“召唤师”系统及技能介绍、符文、天赋等系统组合，必将带你进入一个崭新而又丰富多彩的游戏世界。">
    <meta name="Keywords" content="英雄联盟,lol,lol新手礼包,lol攻略,lol视频,lol视频攻略,英雄资料,英雄联盟战争学院,明星解说视频,101战争学院,英雄,攻略,WCG,点亮图标,赛事">
    <title>英雄更新：痛苦之拥，伊芙琳 — 英雄联盟官方网站 — 腾讯游戏</title>
    <link rel="stylesheet" href="css/flickity.min.css">
    <link rel="stylesheet" href="css/global.css">
    <style>
        body{ margin: 0;}
        .ost_t,.ost_gl{margin:0!important;box-sizing: content-box!important }
        .ost_bg{box-sizing: content-box!important}
        #footer_ied{ text-align: center; line-height: 20px;color: #A09B8C;padding: 10px 0; font-size: 12px;}
        #footer_ied p{ margin: 0;}
        #footer_ied a{ color: #A09B8C;text-decoration: none;}
        .c-game-models .c-quote__line{ font-size: 2.6rem;}
        .c-extras__content::after{ display: none;}
        .logo { position: absolute; width:203px; height:106px; z-index: 10; left: 20px; top: 60px; }
        .logo img{ margin: 0;}
        @media (max-width: 1000px) {
            .logo {
                top: 10px;
            }
        }
    </style>
</head>

<body class="i18n-en_US js-body p-video-active">
    <a class="logo" href="http://lol.qq.com/" target="_blank"><img src="//ossweb-img.qq.com/images/lol/web201310/public/logo.png" width="203" height="106" alt="logo"></a>
    <nav class="c-sticky-nav is-sticky js-nav">
        <ul id="js-nav-list" class="c-sticky-nav__list">
            <li class="c-sticky-nav__list-item c-sticky-nav__list-item-1"><a id="" class="js-sticky-1 c-sticky-nav__link js-section-nav is-active" href="index.html#intro" data-icon="-27">背景介绍</a></li>
            <li class="c-sticky-nav__list-item c-sticky-nav__list-item-2"><a id="" class="js-sticky-2 c-sticky-nav__link js-section-nav" href="index.html#abilities" data-icon="19">技能介绍</a></li>
            <li class="c-sticky-nav__list-item c-sticky-nav__list-item-3"><a id="" class="js-sticky-3 c-sticky-nav__link js-section-nav" href="index.html#gameplay" data-icon="63">使用伊芙琳</a></li>
            <li class="c-sticky-nav__list-item c-sticky-nav__list-item-4"><a id="" class="js-sticky-4 c-sticky-nav__link js-section-nav" href="index.html#tips" data-icon="108">使用技巧</a></li>
            <li class="c-sticky-nav__list-item c-sticky-nav__list-item-5"><a id="" class="js-sticky-5 c-sticky-nav__link js-section-nav" href="index.html#extras" data-icon="154">更多信息</a></li>
            <div class="c-sticky-nav__icon js-nav-icon"></div>
        </ul>
    </nav>
    <nav class="c-mobile-nav js-mobile-nav">
        <ul class="c-mobile-nav__list">
            <li class="c-mobile-nav__list-item u-text-beaufort"><a class="js-sticky-1 js-mobile-nav-link c-mobile-nav__link" href="index.html#intro">背景介绍</a></li>
            <li class="c-mobile-nav__list-item u-text-beaufort"><a class="js-sticky-2 js-mobile-nav-link c-mobile-nav__link" href="index.html#abilities">技能介绍</a></li>
            <li class="c-mobile-nav__list-item u-text-beaufort"><a class="js-sticky-3 js-mobile-nav-link c-mobile-nav__link" href="index.html#gameplay">使用伊芙琳</a></li>
            <li class="c-mobile-nav__list-item u-text-beaufort"><a class="js-sticky-4 js-mobile-nav-link c-mobile-nav__link" href="index.html#tips">使用技巧</a></li>
            <li class="c-mobile-nav__list-item u-text-beaufort"><a class="js-sticky-5 js-mobile-nav-link c-mobile-nav__link" href="index.html#extras">更多信息</a></li>
        </ul>
    </nav>
    <div class="c-mobile-nav-btn js-mobile-nav-trigger">
        <div class="c-mobile-nav-btn__inner u-position-center">
            <div class="c-mobile-nav__bar c-mobile-nav__bar--up u-position-center"></div>
            <div class="c-mobile-nav__bar c-mobile-nav__bar--mid u-position-center"></div>
            <div class="c-mobile-nav__bar c-mobile-nav__bar--bot u-position-center"></div>
        </div>
    </div><a id="skip-to-content" href="index.html#content" class="u-sr-only">跳至主要内容</a>
    <div class="o-wrap">
        <div class="o-main">
            <div id="" class="o-aspect o-aspect--hero c-hero js-hero"><img src="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/hero.jpg" class="c-hero__img" alt=""></div>
            <div class="c-main js-main">
                <section id="intro" class="c-intro js-sticky-1 js-section" data-section="#intro">
                    <div class="c-intro__wrapper">
                        <div class="o-container">
                            <div class="c-intro__inner">
                                <h1 class="c-heading-page">伊芙琳</h1>
                                <h3 class="c-heading-page-subtitle">痛苦之拥<img src="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/intro-hr-top.png" alt="" class="c-accent c-intro__top-accent"></h3>
                                <p class="c-intro__p">恶魔伊芙琳诱捕猎物的方式是凭借一个美丽的谎言：人类女子的撩人美色。当她的目标沉沦于她的魅惑，她就会让他们遭受无法言喻的折磨，用他们的痛苦让自己满足。可惜，接受痛苦之拥的人类都坚持不了多久。伊芙琳的每个舞伴都只能为她提供微薄的愉悦 —— 勉强够她坚持到下一次开荤。</p><img src="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/intro-hr-bot.png" alt="" class="c-accent c-intro__bottom-accent"></div>
                        </div>
                    </div>
                </section>
                <section id="abilities" class="c-abilities c-section js-section" data-section="#abilities">
                    <div class="o-container o-container--abilities-mobile">
                        <div class="o-section__content">
                            <h1 class="c-heading-section">技能介绍</h1></div>
                        <div class="o-section__main">
                            <div class="c-video-frame">
                                <div class="c-video-frame__inner">
                                    <div class="o-aspect o-aspect--video"><iframe class="js-video" width="100" height="100" src="https://v.qq.com/iframe/txp/player.html?vid=w055556u4vu" frameborder="0" allowfullscreen></iframe></div>
                                </div>
                            </div>
                            <div class="c-video-info c-video-info--mobile">
                                <div class="c-abilities-mobile__header">
                                    <div class="c-abilities-mobile__icon">
                                        <div class="c-video-info__icon-frame"><img src="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/icon-p.jpg" alt="" class="c-video-info__icon-img"></div>
                                    </div>
                                    <div class="c-abilities-mobile__header-copy">
                                        <h1 class="c-heading-section u-color-white">P</h1>
                                        <h4 class="c-heading-subtitle">恶魔魅影</h4></div>
                                </div>
                                <div class="c-video-info__copy">脱离战斗数秒后，伊芙琳将披上<strong>恶魔魅影</strong>。如果伊芙琳的生命值较低，她将在该技能激活的同时快速回复生命。从6级开始，<strong>恶魔魅影</strong>还将提供伪装效果 —— 只有靠近敌方英雄、控制守卫和防御塔时才会被发现。</div>
                            </div>
                            <div class="c-video-frame">
                                <div class="c-video-frame__inner">
                                    <div class="o-aspect o-aspect--video"><iframe class="js-video" width="100" height="100" src="https://v.qq.com/iframe/txp/player.html?vid=m0555s5wpb2" frameborder="0" allowfullscreen></iframe></div>
                                </div>
                            </div>
                            <div class="c-video-info c-video-info--mobile">
                                <div class="c-abilities-mobile__header">
                                    <div class="c-abilities-mobile__icon">
                                        <div class="c-video-info__icon-frame"><img src="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/icon-q.jpg" alt="" class="c-video-info__icon-img"></div>
                                    </div>
                                    <div class="c-abilities-mobile__header-copy">
                                        <h1 class="c-heading-section u-color-white">Q</h1>
                                        <h4 class="c-heading-subtitle">憎恨之刺</h4></div>
                                </div>
                                <div class="c-video-info__copy "><span class="c-video-info__subtitle"><b>憎恨之刺 -</b></span>伊芙琳向目标方向抽打，对命中的第一个目标造成伤害。如果抽打命中了目标，则伊芙琳对该目标的下三次施法或攻击会造成额外伤害。如果命中的目标是野怪，则会大幅返还<strong>憎恨之刺</strong>的冷却时间。初次施放以后，伊芙琳可以重复施放<strong>憎恨之刺</strong>至多三次，以距离最近的敌人作为方向，放出直线路径的尖刺攻击。尖刺会对路径上的所有敌人造成伤害。<strong>憎恨之刺</strong>会优先选定伊芙琳正在攻击的敌人。</div>
                            </div>
                            <div class="c-video-frame">
                                <div class="c-video-frame__inner">
                                    <div class="o-aspect o-aspect--video"><iframe class="js-video" width="100" height="100" src="https://v.qq.com/iframe/txp/player.html?vid=f055539sr3r" frameborder="0" allowfullscreen></iframe></div>
                                </div>
                            </div>
                            <div class="c-video-info c-video-info--mobile">
                                <div class="c-abilities-mobile__header">
                                    <div class="c-abilities-mobile__icon">
                                        <div class="c-video-info__icon-frame"><img src="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/icon-w.jpg" alt="" class="c-video-info__icon-img"></div>
                                    </div>
                                    <div class="c-abilities-mobile__header-copy">
                                        <h1 class="c-heading-section u-color-white">W</h1>
                                        <h4 class="c-heading-subtitle">欲望红尘</h4></div>
                                </div>
                                <div class="c-video-info__copy">伊芙琳短暂诅咒敌方英雄或野怪，短暂将自己的位置暴露给目标。使用普通攻击或伊芙琳的其他技能击中被诅咒的目标时，将会抹除诅咒效果，返还<strong>欲望红尘</strong>的法力消耗，并让目标严重减速。</div>
                                <div class="c-video-info__copy">如果诅咒效果已经持续了数秒，此时再抹除诅咒效果还会使目标魅惑。如果目标是敌方英雄，则会在数秒内降低魔法抗性。如果目标是野怪，则魅惑的效果会被延长，且该技能将造成额外伤害。</div>
                                <div class="c-video-info__copy">施放<strong>欲望红尘</strong>不会打破<strong>恶魔魅影</strong>的伪装效果。</div>
                            </div>
                            <div class="c-video-frame">
                                <div class="c-video-frame__inner">
                                    <div class="o-aspect o-aspect--video"><iframe class="js-video" width="100" height="100" src="https://v.qq.com/iframe/txp/player.html?vid=n0555sv4o81" frameborder="0" allowfullscreen></iframe></div>
                                </div>
                            </div>
                            <div class="c-video-info c-video-info--mobile">
                                <div class="c-abilities-mobile__header">
                                    <div class="c-abilities-mobile__icon">
                                        <div class="c-video-info__icon-frame"><img src="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/icon-e.jpg" alt="" class="c-video-info__icon-img"></div>
                                    </div>
                                    <div class="c-abilities-mobile__header-copy">
                                        <h1 class="c-heading-section u-color-white">E</h1>
                                        <h4 class="c-heading-subtitle">鞭笞&强化鞭笞</h4></div>
                                </div>
                                <div class="c-video-info__copy "><span class="c-video-info__subtitle"><b>鞭笞 -</b></span>伊芙琳用她的鞭子刺穿一名敌人，可触发攻击特效，并造成目标最大生命值的百分比伤害。随后伊芙琳将获得短暂的爆发性移动速度加成。
                                    <br /><br />伊芙琳进入<strong>恶魔魅影</strong>状态后，会使下一次<strong>鞭笞</strong>变为<strong>强化鞭笞</strong>。</div>
                                <div class="c-video-info__copy "><span class="c-video-info__subtitle"><b>强化鞭笞 -</b></span>伊芙琳将自己拽向目标并将其刺穿，对目标及其周围所有敌人造成<strong>鞭笞</strong>效果。</div>
                            </div>
                            <div class="c-video-frame">
                                <div class="c-video-frame__inner">
                                    <div class="o-aspect o-aspect--video"><iframe class="js-video" width="100" height="100" src="https://v.qq.com/iframe/txp/player.html?vid=z05554siiru" frameborder="0" allowfullscreen></iframe></div>
                                </div>
                            </div>
                            <div class="c-video-info c-video-info--mobile">
                                <div class="c-abilities-mobile__header">
                                    <div class="c-abilities-mobile__icon">
                                        <div class="c-video-info__icon-frame"><img src="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/icon-r.jpg" alt="" class="c-video-info__icon-img"></div>
                                    </div>
                                    <div class="c-abilities-mobile__header-copy">
                                        <h1 class="c-heading-section u-color-white">R</h1>
                                        <h4 class="c-heading-subtitle">寡妇制造者</h4></div>
                                </div>
                                <div class="c-video-info__copy">伊芙琳释放恶魔能量，变为不可被选取状态，同时对面前的敌人造成毁灭打击。然后她会向身后瞬移。该技能对生命值较低的敌人造成额外伤害。</div>
                            </div>
                        </div>
                    </div>
                    <div class="o-container o-container--abilities-desktop">
                        <div class="c-abilities__bg-accent">
                            <h1 class="c-heading-section">技能介绍</h1>
                            <div class="o-section__content">
                                <div class="o-section__main">
                                    <div class="c-video-player">
                                        <div class="c-video-frame">
                                            <div class="c-video-frame__inner">
                                                <div class="o-aspect o-aspect--video"><iframe class="js-video-player" width="100" height="100" src="https://v.qq.com/iframe/txp/player.html?vid=w055556u4vu" frameborder="0" allowfullscreen></iframe></div>
                                            </div>
                                        </div>
                                        <div class="c-video-menu"><img src="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/abilities-hr-left.png" class="c-accent c-video-menu__accent c-video-menu__accent--left" alt=""><img src="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/abilities-hr-right.png" class="c-accent c-video-menu__accent c-video-menu__accent--right" alt="">
                                            <ul class="c-video-menu__list o-list-unstyled">
                                                <li class="c-video-menu__list-item">
                                                    <a class="c-video-menu__anchor js-ability-btn" data-video-id="w055556u4vu" data-video-ability="p">
                                                        <div class="c-video-icon-frame c-video-icon-frame--p">
                                                            <div class="o-aspect o-aspect--icon"><img src="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/icon-p.jpg" alt="" class="c-video-menu__icon-img"></div>
                                                        </div><span class="c-video-menu__label c-video-menu__label--p">P</span></a>
                                                </li>
                                                <li class="c-video-menu__list-item c-video-menu__list-item--divider">
                                                    <div class="c-video-menu__divider"></div>
                                                </li>
                                                <li class="c-video-menu__list-item">
                                                    <a class="c-video-menu__anchor js-ability-btn" data-video-id="m0555s5wpb2" data-video-ability="q">
                                                        <div class="c-video-icon-frame c-video-icon-frame--q">
                                                            <div class="o-aspect o-aspect--icon"><img src="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/icon-q.jpg" alt="" class="c-video-menu__icon-img"></div>
                                                        </div><span class="c-video-menu__label c-video-menu__label--q">Q</span></a>
                                                </li>
                                                <li class="c-video-menu__list-item">
                                                    <a class="c-video-menu__anchor js-ability-btn" data-video-id="f055539sr3r" data-video-ability="w">
                                                        <div class="c-video-icon-frame c-video-icon-frame--w">
                                                            <div class="o-aspect o-aspect--icon"><img src="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/icon-w.jpg" alt="" class="c-video-menu__icon-img"></div>
                                                        </div><span class="c-video-menu__label c-video-menu__label--w">W</span></a>
                                                </li>
                                                <li class="c-video-menu__list-item">
                                                    <a class="c-video-menu__anchor js-ability-btn" data-video-id="n0555sv4o81" data-video-ability="e">
                                                        <div class="c-video-icon-frame c-video-icon-frame--e">
                                                            <div class="o-aspect o-aspect--icon"><img src="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/icon-e.jpg" alt="" class="c-video-menu__icon-img"></div>
                                                        </div><span class="c-video-menu__label c-video-menu__label--e">E</span></a>
                                                </li>
                                                <li class="c-video-menu__list-item">
                                                    <a class="c-video-menu__anchor js-ability-btn" data-video-id="z05554siiru" data-video-ability="r">
                                                        <div class="c-video-icon-frame c-video-icon-frame--r">
                                                            <div class="o-aspect o-aspect--icon"><img src="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/icon-r.jpg" alt="" class="c-video-menu__icon-img"></div>
                                                        </div><span class="c-video-menu__label c-video-menu__label--r">R</span></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="o-section__aside">
                                    <div class="c-video-info c-video-info--p js-ability-copy " data-video-ability="p">
                                        <div class="c-video-info__icon">
                                            <div class="c-video-info__icon-frame"><img src="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/icon-p.jpg" alt="" class="c-video-info__icon-img"></div>
                                        </div>
                                        <h1 class="c-video-info__title">被动：恶魔魅影</h1>
                                        <div class="c-video-info__copy">脱离战斗数秒后，伊芙琳将披上<strong>恶魔魅影</strong>。如果伊芙琳的生命值较低，她将在该技能激活的同时快速回复生命。从6级开始，<strong>恶魔魅影</strong>还将提供伪装效果 —— 只有靠近敌方英雄、控制守卫和防御塔时才会被发现。</div>
                                    </div>
                                    <div class="c-video-info c-video-info--q js-ability-copy " data-video-ability="q">
                                        <div class="c-video-info__icon">
                                            <div class="c-video-info__icon-frame"><img src="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/icon-q.jpg" alt="" class="c-video-info__icon-img"></div>
                                        </div>
                                        <h1 class="c-video-info__title">Q: 憎恨之刺</h1>
                                        <!-- <div class="c-video-info__copy "><span class="c-video-info__subtitle"><b>Lash Out -</b></span>Evelynn strikes out in a target direction, dealing damage to the first unit hit. If the lash strikes a target, Evelynn's next three spells or attacks on that target will deal additional damage. If the struck target is a monster, a significant chunk of <strong>Lash Out</strong>'s cooldown will be refunded. After casting <strong>Lash Out</strong>, Evelynn can cast <strong>Hate Spike</strong> up to three times.</div> -->
                                        <div class="c-video-info__copy "><span class="c-video-info__subtitle"><b>憎恨之刺 -</b></span>伊芙琳向目标方向抽打，对命中的第一个目标造成伤害。如果抽打命中了目标，则伊芙琳对该目标的下三次施法或攻击会造成额外伤害。如果命中的目标是野怪，则会大幅返还<strong>憎恨之刺</strong>的冷却时间。初次施放以后，伊芙琳可以重复施放<strong>憎恨之刺</strong>至多三次，以距离最近的敌人作为方向，放出直线路径的尖刺攻击。尖刺会对路径上的所有敌人造成伤害。<strong>憎恨之刺</strong>会优先选定伊芙琳正在攻击的敌人。</div>
                                    </div>
                                    <div class="c-video-info c-video-info--w js-ability-copy " data-video-ability="w">
                                        <div class="c-video-info__icon">
                                            <div class="c-video-info__icon">
                                                <div class="c-video-info__icon-frame"><img src="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/icon-w.jpg" alt="" class="c-video-info__icon-img"></div>
                                            </div>
                                        </div>
                                        <h1 class="c-video-info__title">W: 欲望红尘</h1>
                                        <div class="c-video-info__copy">伊芙琳短暂诅咒敌方英雄或野怪，短暂将自己的位置暴露给目标。使用普通攻击或伊芙琳的其他技能击中被诅咒的目标时，将会抹除诅咒效果，返还<strong>欲望红尘</strong>的法力消耗，并让目标严重减速。</div>
                                        <div class="c-video-info__copy">如果诅咒效果已经持续了数秒，此时再抹除诅咒效果还会使目标魅惑。如果目标是敌方英雄，则会在数秒内降低魔法抗性。如果目标是野怪，则魅惑的效果会被延长，且该技能将造成额外伤害。</div>
                                        <div class="c-video-info__copy">施放<strong>欲望红尘</strong>不会打破<strong>恶魔魅影</strong>的伪装效果。</div>
                                    </div>
                                    <div class="c-video-info c-video-info--e js-ability-copy " data-video-ability="e">
                                        <div class="c-video-info__icon">
                                            <div class="c-video-info__icon">
                                                <div class="c-video-info__icon-frame"><img src="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/icon-e.jpg" alt="" class="c-video-info__icon-img"></div>
                                            </div>
                                        </div>
                                        <h1 class="c-video-info__title">E: 鞭笞&强化鞭笞</h1>
                                        <div class="c-video-info__copy "><span class="c-video-info__subtitle"><b>鞭笞 -</b></span>伊芙琳用她的鞭子刺穿一名敌人，可触发攻击特效，并造成目标最大生命值的百分比伤害。随后伊芙琳将获得短暂的爆发性移动速度加成。<br /><br />伊芙琳进入<strong>恶魔魅影</strong>状态后，会使下一次<strong>鞭笞</strong>变为<strong>强化鞭笞</strong>。</div>
                                        <div class="c-video-info__copy "><span class="c-video-info__subtitle"><b>强化鞭笞 -</b></span>伊芙琳将自己拽向目标并将其刺穿，对目标及其周围所有敌人造成<strong>鞭笞</strong>效果。</div>
                                    </div>
                                    <div class="c-video-info c-video-info--r js-ability-copy " data-video-ability="r">
                                        <div class="c-video-info__icon">
                                            <div class="c-video-info__icon">
                                                <div class="c-video-info__icon-frame"><img src="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/icon-r.jpg" alt="" class="c-video-info__icon-img"></div>
                                            </div>
                                        </div>
                                        <h1 class="c-video-info__title">R: 寡妇制造者</h1>
                                        <div class="c-video-info__copy">伊芙琳释放恶魔能量，变为不可被选取状态，同时对面前的敌人造成毁灭打击。然后她会向身后瞬移。该技能对生命值较低的敌人造成额外伤害。</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section id="gameplay" class="c-gameplay js-section" data-section="#gameplay">
                    <div class="o-container">
                        <div class="o-section__content">
                            <div class="o-section__main">
                                <div class="c-video-frame">
                                    <div class="c-video-frame__inner">
                                        <div class="o-aspect o-aspect--video"><iframe width="100" height="100" src="https://v.qq.com/iframe/txp/player.html?vid=d055565slgg" frameborder="0" allowfullscreen></iframe></div>
                                    </div>
                                </div>
                            </div>
                            <div class="o-section__aside">
                                <h1 class="c-heading-section">使用伊芙琳</h1>
                                <p class="c-section__copy">作为伊芙琳，你是峡谷中任何对手的鲜活的噩梦。当你对爱慕之人洒下<strong>欲望红尘</strong>的时候，他们会知道自己被跟踪了，虽然他们能掌握你的位置，但只有非常短暂的一瞬间。而随后的一段时间里，他们将成为你情感折磨的猎物。</p>
                                <p class="c-section__copy">当你最终现形时，你有很宝贵的几秒钟时间品尝自己的成果。使用<strong>憎恨之刺</strong>迅速把目标打残，然后用 <strong>强化鞭笞</strong>贴紧目标。当你获得了满足，就可以使用<strong>寡妇制造者</strong>蜷缩回到阴影之中。</p>
                            </div>
                        </div>
                    </div>
                </section>
                <div class="c-quote c-section c-quote--chains">
                    <div class="c-quote__container">
                        <div class="c-quote__line">“我会将他们的折磨物尽其用。绝不浪费。”<img src="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/playing-hr.png" class="c-accent c-accent--quote-whole" alt=""><br>
                            <div class="c-quote__source">- 伊芙琳</div>
                        </div>
                    </div>
                </div>
                <section id="tips" class="c-tips-tricks js-section" data-section="#tips">
                    <div class="o-container">
                        <div class="o-section__content">
                            <div class="o-section__main"><img src="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/collage.jpg" class="c-tips-tricks__img c-frame u-img-respond" alt=""></div>
                            <div class="o-section__aside">
                                <h1 class="c-heading-section">使用技巧</h1>
                                <div class="c-tip"><img src="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/accent-bullet.png" alt="" class="c-bullet">
                                    <p class="c-section__copy">现在，伊芙琳的伪装效果不会在游戏一开始就生效，降低了她对线上英雄的前期威胁。但当她获得<strong>寡妇制造者</strong>能力的时候，自带的无法被选取效果会让她成为游戏中最棒的六级越塔强杀英雄。</p>
                                </div>
                                <div class="c-tip"><img src="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/accent-bullet.png" alt="" class="c-bullet">
                                    <p class="c-section__copy"><strong>欲望红尘</strong>造成魅惑的同时还会减少目标的魔法抗性。所以伊芙琳非常适合搭配法术伤害较多的阵容，让队友配合你的进场打出伤害。</p>
                                </div>
                                <div class="c-tip"><img src="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/accent-bullet.png" alt="" class="c-bullet">
                                    <p class="c-section__copy">请在清理野怪的时候妥善运用Q技能。初次施放 <strong>憎恨之刺</strong> 的目标要挑选野怪营地里个头最大的家伙，这样接下来几次额外伤害才不会浪费。此外，和重做以前的伊芙琳一样，请尽量让营地里的小怪排成一条线，这样才能将伤害最大化。</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <div id="extras" class="c-extras js-group js-extras-group js-section" data-section="#extras">
                    <h4 class="c-heading-section u-text-center">更多信息</h4>
                    <section class="c-game-models" data-section="#game-models">
                        <div class="o-container">
                            <div class="o-section__content">
                                <div class="o-section__model-viewer">
                                    <div class="c-game-model__quote c-game-model__quote--mobile">
                                        <div class="c-quote c-quote--idea"><span class="c-quote__line">“没有痛苦，他们如何学会欢乐?”<img src="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/skins-quote.png" class="c-accent c-accent--quote-right" alt=""><br><div class="c-quote__source">- 伊芙琳</div></span></div>
                                    </div>
                                    <div class="c-game-model__carousel js-model-carousel" data-flickity='{ "pageDots": "false" }'>
                                        <div class="o-aspect o-aspect--model-video">
                                            <video width="100%" height="100%" preload="none" loop muted poster="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/evelynn-poster.jpg"><source src="" type="video/webm"><source src="" type="video/mp4"></video>
                                        </div>
                                        <div class="o-aspect o-aspect--model-video">
                                            <video width="100%" height="100%" preload="none" loop muted poster="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/shadow-poster.jpg"><source src="" type="video/webm"><source src="" type="video/mp4"></video>
                                        </div>
                                        <div class="o-aspect o-aspect--model-video">
                                            <video width="100%" height="100%" preload="none" loop muted poster="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/tango-poster.jpg"><source src="" type="video/webm"><source src="" type="video/mp4"></video>
                                        </div>
                                        <div class="o-aspect o-aspect--model-video">
                                            <video width="100%" height="100%" preload="none" loop muted poster="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/masquerade-poster.jpg"><source src="" type="video/webm"><source src="" type="video/mp4"></video>
                                        </div>
                                        <div class="o-aspect o-aspect--model-video">
                                            <video width="100%" height="100%" preload="none" loop muted poster="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/safecracker-poster.jpg"><source src="" type="video/webm"><source src="" type="video/mp4"></video>
                                        </div>
                                    </div>
                                    <div class="c-game-model__quote c-game-model__quote--desktop">
                                        <div class="c-quote c-quote--idea"><span class="c-quote__line">“没有痛苦，他们如何学会欢乐？”<img src="//ossweb-img.qq.com/images/lol/act/a20170928evelynn/skins-quote.png" class="c-accent c-accent--quote-right" alt=""><br><div class="c-quote__source">- 伊芙琳</div></span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="">
                        <div class="c-extras__content u-text-center">
                            <h4 class="c-heading-section u-text-center u-hidden">更多信息</h4>
                            <div class="c-extras__thumbnails">
                                <div class="c-thumbnails__line-through c-thumbnails__line-through--extra">
                                    <div class="c-thumbnails__track c-thumbnails__track--left"></div>
                                    <div class="c-thumbnails__track c-thumbnails__track--right"></div>
                                </div><label for="wallpaper-1" class="js-wallpaper__thumbnail c-extras__thumbnail-positioner is-active"><div class="c-extras__thumbnail c-extras__thumbnail--standard"></div></label><label for="wallpaper-2" class="js-wallpaper__thumbnail c-extras__thumbnail-positioner"><div class="c-extras__thumbnail c-extras__thumbnail--alternate-1"></div></label><label for="wallpaper-3" class="js-wallpaper__thumbnail c-extras__thumbnail-positioner"><div class="c-extras__thumbnail c-extras__thumbnail--alternate-2"></div></label><label for="wallpaper-4" class="js-wallpaper__thumbnail c-extras__thumbnail-positioner"><div class="c-extras__thumbnail c-extras__thumbnail--alternate-3"></div></label><label for="wallpaper-5" class="js-wallpaper__thumbnail c-extras__thumbnail-positioner"><div class="c-extras__thumbnail c-extras__thumbnail--alternate-4"></div></label>
                                <div class="c-thumb-divider"></div><label for="wallpaper-6" class="js-wallpaper__thumbnail c-extras__thumbnail-positioner"><div class="c-extras__thumbnail c-extras__thumbnail--alternate-5"></div></label></div>
                            <div class="c-extras__wallpaper-group"><input type="radio" name="wallpaper" id="wallpaper-1" checked>
                                <div class="c-extras__wallpaper c-extras__wallpaper--standard">
                                    <a class="js-wallpaper-standard c-extras__wallpaper-link" href="index.html" data-wallpaper-name="standard"></a>
                                </div><input type="radio" name="wallpaper" id="wallpaper-2">
                                <div class="c-extras__wallpaper c-extras__wallpaper--alternate-1">
                                    <a class="js-wallpaper-alternate-1 c-extras__wallpaper-link" href="index.html" data-wallpaper-name="alternate-1"></a>
                                </div><input type="radio" name="wallpaper" id="wallpaper-3">
                                <div class="c-extras__wallpaper c-extras__wallpaper--alternate-2">
                                    <a class="js-wallpaper-alternate-2 c-extras__wallpaper-link" href="index.html" data-wallpaper-name="alternate-2"></a>
                                </div><input type="radio" name="wallpaper" id="wallpaper-4">
                                <div class="c-extras__wallpaper c-extras__wallpaper--alternate-3">
                                    <a class="js-wallpaper-alternate-3 c-extras__wallpaper-link" href="index.html" data-wallpaper-name="alternate-3"></a>
                                </div><input type="radio" name="wallpaper" id="wallpaper-5">
                                <div class="c-extras__wallpaper c-extras__wallpaper--alternate-4">
                                    <a class="js-wallpaper-alternate-4 c-extras__wallpaper-link" href="index.html" data-wallpaper-name="alternate-4"></a>
                                </div><input type="radio" name="wallpaper" id="wallpaper-6">
                                <div class="c-extras__wallpaper c-extras__wallpaper--alternate-5">
                                    <a class="js-wallpaper-alternate-5 c-extras__wallpaper-link" href="index.html" data-wallpaper-name="alternate-5"></a>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>

    <script src="//ossweb-img.qq.com/images/spiderMediaData/lol_new/mediaURLData.js"></script>
    <script src="./js/foot.js"></script>
    <script src="//ossweb-img.qq.com/images/js/jquery/jquery-1.11.3.min.js"></script>
    <script src="js/scrollMonitor.js"></script>
    <script src="js/flickity.pkgd.min.js"></script>
    <script src="js/jquery.fancybox.js"></script>
    <script src="js/main.js"></script>
    <script type="text/javascript">
        if(window.innerWidth>1000){
            var script = document.createElement ("script");
            script.type = "text/javascript";
            script.src = "//ossweb-img.qq.com/images/lol/title/lol.js";
            document.getElementsByTagName("body")[0].appendChild(script);
            $('.buy-box').css('display','block');
        }
        var vidm=['1998','1997','2004','2003','2006','2005','2000','1999','2002','2001'];
        var source=$('.c-game-model__carousel').find('source');
        for(var i=0;i<10;i++){
            source.eq(i).attr('src',mediaURLData[vidm[i]]);
        }
    </script>
    <script src=".js/ping_tcss_ied.js"></script>
    <script>if(typeof(pgvMain) == 'function')pgvMain();</script>
</body>

</html>