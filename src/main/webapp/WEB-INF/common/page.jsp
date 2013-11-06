<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false"%>
<c:set var="totalPages" value="${page.totalPages }"></c:set>
<div class="page">
<c:choose>
	<c:when test="${not empty param.pagingUrl && totalPages > 1 }">
		<c:choose>
			<c:when test="${page.pageNo>1 && not empty param.pagingUrl }">
				<a class="page-cur" href="${param.pagingUrl}?channelId=${currentChannel.goodstypeid }&pageNo=${((page.pageNo)-1)>0?(page.pageNo)-1:(page.pageNo)}">上一页</a>
			</c:when>
		</c:choose>
		<c:choose>
			<c:when test="${page.pageNo eq 1}">
				<a class="page-cur" href="${param.pagingUrl}?channelId=${currentChannel.goodstypeid}&pageNo=1">1</a>&nbsp;
			</c:when>						  
			<c:otherwise>
				<a href="${param.pagingUrl }?channelId=${currentChannel.goodstypeid}&pageNo=1">1</a>&nbsp;</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${totalPages>0}">
				<c:choose>
					<c:when test="${page.pageNo<10}">
						<c:forEach var="i" begin="2" end="${page.pageNo}">
							<c:choose>
								<c:when test="${page.pageNo eq i }">
									<a class="page-cur" href="${param.pagingUrl }?channelId=${currentChannel.goodstypeid}&pageNo=${i}">${i}</a>&nbsp;
								</c:when>
								<c:otherwise>
									<a href="${param.pagingUrl }?channelId=${currentChannel.goodstypeid}&pageNo=${i }">${i}</a>&nbsp;  
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</c:when>
					<c:otherwise>
					  ...&nbsp; 
					<c:forEach var="i" begin="${page.pageNo-3}" end="${page.pageNo}">
						<c:choose>
							<c:when test="${page.pageNo eq i }">
								<a class="page-cur" href="${param.pagingUrl }?channelId=${currentChannel.goodstypeid}&pageNo=${i }">${i}</a>&nbsp;
							</c:when>
							<c:otherwise>
								<a href="${param.pagingUrl }?channelId=${currentChannel.goodstypeid}&pageNo=${i }">${i}</a>&nbsp;  
							</c:otherwise>
						</c:choose>
					</c:forEach>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${page.pageNo>=totalPages-3  || totalPages-3<=0}">
						<c:forEach var="i" begin="${page.pageNo+1}" end="${totalPages}">
							<a href="${param.pagingUrl }?channelId=${currentChannel.goodstypeid }&pageNo=${i}">${i}</a>&nbsp;  
							<c:choose>
								<c:when test="${page.pageNo eq i }">
									<a class="page-cur" href="${param.pagingUrl }?channelId=${currentChannel.goodstypeid}&pageNo=${i }">${i}</a>&nbsp;
								</c:when>
							</c:choose>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<c:forEach var="i" begin="${page.nextPage}" end="${page.pageNo+3}">
							<c:choose>
								<c:when test="${page.pageNo eq i }">
									<a class="page-cur"  href="${param.pagingUrl }?p=${i}&b=${page.orderBy}&o=${page.order}">${i}</a>&nbsp;
								</c:when>
								<c:otherwise>
									<a href="${param.pagingUrl }?channelId=${currentChannel.goodstypeid}&pageNo=${i }">${i}</a>&nbsp;  
								</c:otherwise>
							</c:choose>
						</c:forEach>
						 ...&nbsp;  <a href="${param.pagingUrl }?channelId=${currentChannel.goodstypeid}&pageNo=${totalPages }">${totalPages}</a>&nbsp;  
		        	</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${page.pageNo < totalPages}">
						<a class="page-cur"  href="${param.pagingUrl }?channelId=${currentChannel.goodstypeid }&pageNo=${(page.nextPage) < totalPages?page.nextPage: totalPages}">下一页</a>
					</c:when>
				</c:choose>
			</c:when>
		</c:choose>
	</c:when>
	</c:choose>
</div>
