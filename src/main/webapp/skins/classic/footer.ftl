<#--

    Symphony - A modern community (forum/BBS/SNS/blog) platform written in Java.
    Copyright (C) 2012-2018, b3log.org & hacpai.com

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

-->
<div class="footer">
    <div class="wrapper">
        <div class="slogan">
            ${indexIntroLabel} &nbsp; &nbsp;
            <a href="https://github.com/shminer/symphony_naoowa" target="_blank" class="tooltipped tooltipped-n" aria-label="${siteCodeLabel}">
                <svg class="icon-github"><use xlink:href="#github"></use></svg></a> &nbsp;
        </div>
        <div class="fn-flex-1">
            <div class="footer-nav fn-clear">
                <a rel="help" href="${servePath}/article/1530607945360">${aboutLabel}</a>
                <a href="${servePath}/tag/announcement">${symAnnouncementLabel}</a>
                <a href="${servePath}/domains">${domainLabel}</a>
                <a href="${servePath}/tags">${tagLabel}</a>
                <#-- <a href="${servePath}/statistic">${dataStatLabel}</a> -->

                <div class="fn-right">&COPY; ${year}
                    <a rel="copyright" href="${servePath}" target="_blank">naoowa.cn</a>
                    ${visionLabel}</div>
            </div>
            <div class="fn-clear ft-smaller">
                       ${sloganLabel}
                    <div class="fn-right">
                       社区建立离不开 <a href="https://b3log.org" target="_blank">B3log 开源</a> •
                            <a href="https://github.com/shminer/symphony_naoowa" target="_blank">闹哇社区开源</a>
                            ${version} • ${elapsed?c}ms
                    </div>
                </div>
        </div>
    </div>
</div>

<script src="${staticServePath}/js/symbol-defs${miniPostfix}.js?${staticResourceVersion}"></script>
<script src="${staticServePath}/js/lib/compress/libs.min.js?${staticResourceVersion}"></script>
<script src="${staticServePath}/js/common${miniPostfix}.js?${staticResourceVersion}"></script>
<script>
    var Label = {
        reportSuccLabel: '${reportSuccLabel}',
        breezemoonLabel: '${breezemoonLabel}',
        confirmRemoveLabel: "${confirmRemoveLabel}",
        reloginLabel: "${reloginLabel}",
        invalidPasswordLabel: "${invalidPasswordLabel}",
        loginNameErrorLabel: "${loginNameErrorLabel}",
        followLabel: "${followLabel}",
        unfollowLabel: "${unfollowLabel}",
        symphonyLabel: "${symphonyLabel}",
        visionLabel: "${visionLabel}",
        cmtLabel: "${cmtLabel}",
        collectLabel: "${collectLabel}",
        uncollectLabel: "${uncollectLabel}",
        desktopNotificationTemplateLabel: "${desktopNotificationTemplateLabel}",
        servePath: "${servePath}",
        staticServePath: "${staticServePath}",
        isLoggedIn: ${isLoggedIn?c},
        funNeedLoginLabel: '${funNeedLoginLabel}',
		notificationCommentedLabel: '${notificationCommentedLabel}',
		notificationReplyLabel: '${notificationReplyLabel}',
		notificationAtLabel: '${notificationAtLabel}',
		notificationFollowingLabel: '${notificationFollowingLabel}',
		pointLabel: '${pointLabel}',
		sameCityLabel: '${sameCityLabel}',
		systemLabel: '${systemLabel}',
		newFollowerLabel: '${newFollowerLabel}',
        makeAsReadLabel: '${makeAsReadLabel}',
        <#if isLoggedIn>
            currentUserName: '${currentUser.userName}',
        </#if>
        <#if csrfToken??>
            csrfToken: '${csrfToken}'
        </#if>
    };

    <#if isLoggedIn>
    Label.userKeyboardShortcutsStatus = '${currentUser.userKeyboardShortcutsStatus}';
    </#if>

    Util.init(${isLoggedIn?c});

    <#if isLoggedIn>
    // Init [User] channel
    Util.initUserChannel("${wsScheme}://${serverHost}:${serverPort}${contextPath}/user-channel");
    </#if>

    <#if mouseEffects>
    Util.mouseClickEffects();
    </#if>
</script>
<#if algoliaEnabled>
<script src="${staticServePath}/js/lib/algolia/algolia.min.js"></script>
<script>
    Util.initSearch('${algoliaAppId}', '${algoliaSearchKey}', '${algoliaIndex}');
</script>
</#if>
${footerPCCode}

