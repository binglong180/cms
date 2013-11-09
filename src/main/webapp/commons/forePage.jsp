<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/commons/taglibs.jsp"%>
<c:set var="totalPages" value="${page.totalPages }"></c:set>
<div class="new_page">
<span>
<c:choose>
	<c:when test="${not empty param.pageLink && totalPages > 1 }">
		<c:choose>
			<c:when test="${page.pageNo>1 && not empty param.pageLink }">
				<li><a class="cms-page-forward" href="#none" lang="${param.pageLink}?pageNo=${((page.pageNo)-1)>0?(page.pageNo)-1:(page.pageNo)}">上一页</a></li>
			</c:when>
		</c:choose>
		<c:choose>
			<c:when test="${page.pageNo eq 1}">
				<li><a class="cms-page-forward" href="#none" lang="${param.pageLink}?pageNo=1">1</a></li>
<!-- 				&nbsp; -->
			</c:when>						  
			<c:otherwise>
				<li><a class="cms-page-forward" href="#none" lang="${param.pageLink }?pageNo=1">1</a></li>
<!-- 				&nbsp; -->
			</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${totalPages>0}">
				<c:choose>
					<c:when test="${page.pageNo<10}">
						<c:forEach var="i" begin="2" end="${page.pageNo}">
							<c:choose>
								<c:when test="${page.pageNo eq i }">
									<li><a class="cms-page-forward" href="#none" lang="${param.pageLink }?pageNo=${i}">${i}</a></li>
<!-- 									&nbsp; -->
								</c:when>
								<c:otherwise>
									<li><a class="cms-page-forward" href="#none" lang="${param.pageLink }?pageNo=${i }">${i}</a></li>
<!-- 									&nbsp;   -->
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</c:when>
					<c:otherwise>
<!-- 					  ...&nbsp;  -->
					<c:forEach var="i" begin="${page.pageNo-3}" end="${page.pageNo}">
						<c:choose>
							<c:when test="${page.pageNo eq i }">
								<li><a class="cms-page-forward" href="#none" lang="${param.pageLink }?pageNo=${i }">${i}</a></li>
<!-- 								&nbsp; -->
							</c:when>
							<c:otherwise>
								<li><a class="cms-page-forward" href="#none" lang="${param.pageLink }?pageNo=${i }">${i}</a></li>
<!-- 								&nbsp;   -->
							</c:otherwise>
						</c:choose>
					</c:forEach>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${page.pageNo>=totalPages-3  || totalPages-3<=0}">
						<c:forEach var="i" begin="${page.pageNo+1}" end="${totalPages}">
							<li><a class="cms-page-forward" href="#none" lang="${param.pageLink }?pageNo=${i}">${i}</a></li>
<!-- 							&nbsp;   -->
							<c:choose>
								<c:when test="${page.pageNo eq i }">
									<li><a   class="cms-page-forward" href="#none" lang="${param.pageLink }?pageNo=${i }">${i}</a></li>
<!-- 									&nbsp; -->
								</c:when>
							</c:choose>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<c:forEach var="i" begin="${page.nextPage}" end="${page.pageNo+3}">
							<c:choose>
								<c:when test="${page.pageNo eq i }">
									<li><a class="cms-page-forward" href="#none" lang="${param.pageLink }?pageNo=${i}">${i}</a></li>
<!-- 									&nbsp; -->
								</c:when>
								<c:otherwise>
									<li><a class="cms-page-forward" href="#none" lang="${param.pageLink }?pageNo=${i }">${i}</a></li>
<!-- 									&nbsp;   -->
								</c:otherwise>
							</c:choose>
						</c:forEach>
<!-- 						 ...&nbsp;   -->
						 <li><a class="cms-page-forward" href="#none" lang="${param.pageLink }?pageNo=${totalPages }">${totalPages}</a></li>
<!-- 						 &nbsp;   -->
		        	</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${page.pageNo < totalPages}">
						<li><a class="cms-page-forward" href="#none" lang="${param.pageLink }?pageNo=${(page.nextPage) < totalPages?page.nextPage: totalPages}">下一页</a></li>
					</c:when>
				</c:choose>
			</c:when>
		</c:choose>
	</c:when>
	</c:choose>
	</span>
</div>
