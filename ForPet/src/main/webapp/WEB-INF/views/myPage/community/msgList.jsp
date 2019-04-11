<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/myPage/myPageCommon.jsp" %>

<link rel="stylesheet" href="${path }/resources/css/myPage_msgListStyle.css" />

    <div class="myPageMain_top">
        <div class="myPageMain_topBox">
            <div class="myPageMain_loc">
                <ul>
                    <li onclick="location.href='${path}/main/myPageMain'">
                        <img src="${path}/resources/images/back.png" width="18px">
                    </li>
                    <li>Member</li>
                    <li>마이페이지 > 내 커뮤니티 > 쪽지관리</li>
                </ul>
            </div>
        </div>
    </div><br/>

	<div class="myPageMain_right">
        <div id="myPage_msgList">
            <div class="msgListTop">
                <div class="msgListTop_left">
                    <button type="button" class="msgListBtn" onclick="fn_msgListDel()">
                        <span style="color: #c60700; font-weight: 900;">X</span>
                        &nbsp;삭제
                    </button>
                    <button type="button" class="msgListBtn">보관</button>
                    <button type="button" class="msgListBtn">스팸신고</button>
                </div>
                <div class="msgListSearch">
                    <input type="text" class="mlSearchText">
                    <button type="button" class="mlSearchBtn">검색</button>
                </div>
            </div>
            <div class="msgListTable">
                <div class="msgListTitle">
                    <div class="msgListColcc">
                        <input type="checkbox" class="mlCheckBoxAll"/>
                    </div>
                    <div class="msgListColRecUser">보낸사람</div>
                    <div class="msgListColCont">내용</div>
                    <div class="msgListColDate">날짜</div>
                    <div class="msgListColBlock">수신(친구)차단</div>
                </div>
                <div class="msgListContentBox"></div>
            </div>
        </div>
	</div>
	<form id="msgListViewFrm" action="${path}/community/msgListView" method="post">
		<input type="hidden" name="mMsgSeq" value=""/>
	</form>
</section>
<script>
    $(function() {
        $.ajax({
	        url: "${path}/community/msgList.do",
	        dataType: "html",
	        success: function (data) {
                $(".msgListContentBox").empty();
	        	$(".msgListContentBox").html(data);
	        	var readLoc = $("input[name='mMsgRead'");
	        	for(var i=0;i<readLoc.length;i++) {
	        		console.log(readLoc.get(i).value);
	        		if(readLoc.get(i).value == 'Y') {
	        			$(".msgListContent").get(i).style.color = "#c69c7680";
	        		}
	        	}
	        	userBox();
	        }
	    })
	    
    })

    // 리스트 전체체크 로직
    $(function() {
        $('.mlCheckBoxAll').on("change", function() {
            var checkBoxAllFlag = $('.mlCheckBoxAll').get(0).checked;
            if(checkBoxAllFlag) {
                for(var i=0;i<$('.mlCheckBoxOne').length;i++) {
                    $('.mlCheckBoxOne').get(i).checked = true;
                }
            } else {
                for(var i=0;i<$('.mlCheckBoxOne').length;i++) {
                    $('.mlCheckBoxOne').get(i).checked = false;
                }
            }
        })
        $(document).on("change",".mlCheckBoxOne", function() {
            $('.mlCheckBoxAll').get(0).checked = false;
            var checkBoxOneFlag = true;
            for(var i=0;i<$('.mlCheckBoxOne').length;i++) {
            	if(!$('.mlCheckBoxOne').get(i).checked) {
            		checkBoxOneFlag = false;
            	}
            }
            if(checkBoxOneFlag) {
                $('.mlCheckBoxAll').get(0).checked = true;
            }
        })
    })

    function fn_msgListOne() {
        
    }

    function fn_msgListDel() {
        var msgDelListNo = new Array();
        var arrCount = 0;
        for(var i=0;i<$('.mlCheckBoxOne').length;i++) {
            if($('.mlCheckBoxOne').get(i).checked) {
                msgDelListNo[arrCount] = $('.mlCheckBoxOne').get(i).value;
                arrCount++;
            }
        }
        $.ajax({
	        url: "${path}/community/delMsg.do",
	        traditional: true,
	        data: { "msgDelListNo": msgDelListNo },
	        dataType: "html",
	        success: function (data) {
	        	$(".msgListContentBox").empty();
                $('.mlCheckBoxAll').get(0).checked = false;
                location.href="${path }/community/msgList";
	        }
	    })
    }
    
    //pageBar ajax 처리
    function fn_paging(cPage) {
        $.ajax({
	        url: "${path}/community/msgList.do",
	        type: "POST",
	        data: {"cPage":cPage},
	        dataType: "html",
	        success: function (data) {
                $(".msgListContentBox").empty();
	        	$(".msgListContentBox").html(data);
                var readLoc = $("input[name='mMsgRead'");
                for(var i=0;i<readLoc.length;i++) {
                    console.log(readLoc.get(i).value);
                    if(readLoc.get(i).value == 'Y') {
                        $(".msgListContent").get(i).style.color = "#c69c7680";
                    }
                }
	        	userBox();
	        }
	    })
    }
    
    function fn_msgListOne(mMsgSeq) {
    	$("#msgListViewFrm>input[name='mMsgSeq']").val(mMsgSeq);
    	$("#msgListViewFrm").submit();
    }
    
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
