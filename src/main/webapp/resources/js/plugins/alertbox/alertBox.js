/*!
 * AlertBox
 * Copyright (c) 2010 cloudgamer
 * Blog: http://cloudgamer.cnblogs.com/
 * Date: 2010-10-10
 */

/*!
 * CJL.0.1.min.js
 * Date : 2013-01-25
 * */

eval(function(p,a,c,k,e,r){e=function(c){return(c<62?'':e(parseInt(c/62)))+((c=c%62)>35?String.fromCharCode(c+29):c.toString(36))};if('0'.replace(0,e)==0){while(c--)r[e(c)]=k[c];k=[function(e){return r[e]||e}];e=function(){return'([3-59cf-hj-mo-rt-yCG-NP-RT-Z]|[12]\\w)'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('4 $$,$$B,$$A,$$F,$$D,$$E,$$CE,$$S;(3(1K){4 O,B,A,F,D,E,CE,S;O=3(id){5"2f"==1L id?G.getElementById(id):id};O.emptyFunction=3(){};O.extend=3(Q,13,1v){9(1v===1K)1v=14;J(4 R x 13){9(1v||!(R x Q)){Q[R]=13[R]}}5 Q};O.deepextend=3(Q,13){J(4 R x 13){4 1j=13[R];9(Q===1j)continue;9(1L 1j==="c"){Q[R]=M.callee(Q[R]||{},1j)}N{Q[R]=1j}}5 Q};O.wrapper=3(me,15){4 1M=3(){me.T(Z,M)};4 1N=3(){};1N.17=15.17;1M.17=new 1N;5 1M};B=(3(U){4 b={18:/18/.P(U)&&!/1O/.P(U),1O:/1O/.P(U),2h:/webkit/.P(U)&&!/1P/.P(U),2i:/2i/.P(U),1P:/1P/.P(U)};4 1w="";J(4 i x b){9(b[i]){1w="2h"==i?"1k":i;1Q}}b.1k=1w&&1R("(?:"+1w+")[\\\\/: ]([\\\\d.]+)").P(U)?1R.$1:"0";b.ie=b.18;b.2j=b.18&&1T(b.1k,10)==6;b.ie7=b.18&&1T(b.1k,10)==7;b.2k=b.18&&1T(b.1k,10)==8;5 b})(1U.navigator.userAgent.toLowerCase());A=3(){4 p={isArray:3(2l){5 Object.17.toString.19(2l)==="[c 1V]"},1x:3(K,W,l){9(K.1x){5 1y(l)?K.1x(W):K.1x(W,l)}N{4 V=K.1l;l=1y(l)?0:l<0?1z.2m(l)+V:1z.2n(l);J(;l<V;l++){9(K[l]===W)5 l}5-1}},1A:3(K,W,l){9(K.1A){5 1y(l)?K.1A(W):K.1A(W,l)}N{4 V=K.1l;l=1y(l)||l>=V-1?V-1:l<0?1z.2m(l)+V:1z.2n(l);J(;l>-1;l--){9(K[l]===W)5 l}5-1}}};3 11(c,u){9(1K===c.1l){J(4 o x c){9(y===u(c[o],o,c))1Q}}N{J(4 i=0,V=c.1l;i<V;i++){9(i x c){9(y===u(c[i],i,c))1Q}}}};11({2o:3(c,u,t){11(c,3(){u.T(t,M)})},map:3(c,u,t){4 p=[];11(c,3(){p.2p(u.T(t,M))});5 p},1B:3(c,u,t){4 p=[];11(c,3(2q){u.T(t,M)&&p.2p(2q)});5 p},every:3(c,u,t){4 p=14;11(c,3(){9(!u.T(t,M)){p=y;5 y}});5 p},some:3(c,u,t){4 p=y;11(c,3(){9(u.T(t,M)){p=14;5 y}});5 p}},3(2r,o){p[o]=3(c,u,t){9(c[o]){5 c[o](u,t)}N{5 2r(c,u,t)}}});5 p}();F=(3(){4 1a=1V.17.1a;5{bind:3(1C,t){4 1b=1a.19(M,2);5 3(){5 1C.T(t,1b.2s(1a.19(M)))}},bindAsEventListener:3(1C,t){4 1b=1a.19(M,2);5 3(j){5 1C.T(t,[E.1m(j)].2s(1b))}}}})();D={1D:3(r){4 1c=r?r.2t:G;5 1c.2u.2v||1c.1d.2v},1E:3(r){4 1c=r?r.2t:G;5 1c.2u.2w||1c.1d.2w},1W:G.1n?3(a,b){5!!(a.2x(b)&16)}:3(a,b){5 a!=b&&a.1W(b)},H:3(r){4 q=0,L=0,X=0,Y=0;9(!r.2y||B.2k){4 n=r;while(n){q+=n.offsetLeft,L+=n.offsetTop;n=n.offsetParent};X=q+r.1X;Y=L+r.1Y}N{4 H=r.2y();q=X=D.1E(r);L=Y=D.1D(r);q+=H.q;X+=H.X;L+=H.L;Y+=H.Y};5{"q":q,"L":L,"X":X,"Y":Y}},clientRect:3(r){4 H=D.H(r),1Z=D.1E(r),20=D.1D(r);H.q-=1Z;H.X-=1Z;H.L-=20;H.Y-=20;5 H},1e:G.1n?3(g){5 G.1n.2z(g,1o)}:3(g){5 g.1F},getStyle:G.1n?3(g,o){4 k=G.1n.2z(g,1o);5 o x k?k[o]:k.getPropertyValue(o)}:3(g,o){4 k=g.k,1e=g.1F;9(o=="12"){9(/21\\(12=(.*)\\)/i.P(1e.1B)){4 12=parseFloat(1R.$1);5 12?12/2A:0}5 1}9(o=="2B"){o="2C"}4 p=1e[o]||1e[S.22(o)];9(!/^-?\\d+(?:px)?$/i.P(p)&&/^\\-?\\d/.P(p)){4 q=k.q,1G=g.runtimeStyle,2E=1G.q;1G.q=1e.q;k.q=p||0;p=k.pixelLeft+"px";k.q=q;1G.q=2E}5 p},23:3(1p,k,1f){9(!1p.1l){1p=[1p]}9(1L k=="2f"){4 s=k;k={};k[s]=1f}A.2o(1p,3(g){J(4 o x k){4 1f=k[o];9(o=="12"&&B.ie){g.k.1B=(g.1F&&g.1F.1B||"").2F(/21\\([^)]*\\)/,"")+" 21(12="+(1f*2A|0)+")"}N 9(o=="2B"){g.k[B.ie?"2C":"cssFloat"]=1f}N{g.k[S.22(o)]=1f}}})},getSize:3(g){4 1q=g.1X,1r=g.1Y;9(!1q&&!1r){4 24=!D.1W(G.1d,g),15;9(24){15=g.parentNode;G.1d.insertBefore(g,G.1d.childNodes[0])}4 k=g.k,2G={25:"absolute",26:"hidden",27:"block",q:"-2H",L:"-2H"},2I={25:k.25,26:k.26,27:k.27,q:k.q,L:k.L};D.23(g,2G);1q=g.1X;1r=g.1Y;D.23(g,2I);9(24){15?15.appendChild(g):G.1d.removeChild(g)}}5{"1q":1q,"1r":1r}}};E=(3(){4 1g,1h,v=1,28=3(h,f,m){9(!m.$$v)m.$$v=v++;9(!h.C)h.C={};4 I=h.C[f];9(!I){I=h.C[f]={};9(h["on"+f]){I[0]=h["on"+f]}}};9(1U.2a){4 1s={"mouseenter":"2J","mouseleave":"2K"};1g=3(h,f,m){9(f x 1s){28(h,f,m);4 2L=h.C[f][m.$$v]=3(j){4 1H=j.1t;9(!1H||(h!=1H&&!(h.2x(1H)&16))){m.19(Z,j)}};h.2a(1s[f],2L,y)}N{h.2a(f,m,y)}};1h=3(h,f,m){9(f x 1s){9(h.C&&h.C[f]){h.2M(1s[f],h.C[f][m.$$v],y);2b h.C[f][m.$$v]}}N{h.2M(f,m,y)}}}N{1g=3(h,f,m){28(h,f,m);h.C[f][m.$$v]=m;h["on"+f]=1I};1h=3(h,f,m){9(h.C&&h.C[f]){2b h.C[f][m.$$v]}};3 1I(){4 1J=14,j=1m();4 I=Z.C[j.f];J(4 i x I){Z.$$1I=I[i];9(Z.$$1I(j)===y){1J=y}}5 1J}}3 1m(j){9(j)5 j;j=1U.j;j.pageX=j.clientX+D.1E(j.2c);j.pageY=j.clientY+D.1D(j.2c);j.target=j.2c;j.2d=2d;j.2e=2e;4 1t={"2K":j.toElement,"2J":j.fromElement}[j.f];9(1t){j.1t=1t}5 j};3 2d(){Z.cancelBubble=14};3 2e(){Z.1J=y};5{"1g":1g,"1h":1h,"1m":1m}})();CE=(3(){4 v=1;5{1g:3(c,f,m){9(!m.$$$v)m.$$$v=v++;9(!c.w)c.w={};9(!c.w[f])c.w[f]={};c.w[f][m.$$$v]=m},1h:3(c,f,m){9(c.w&&c.w[f]){2b c.w[f][m.$$$v]}},fireEvent:3(c,f){9(!c.w)5;4 1b=1V.17.1a.19(M,2),I=c.w[f];J(4 i x I){I[i].T(c,1b)}},clearEvent:3(c){9(!c.w)5;J(4 f x c.w){4 I=c.w[f];J(4 i x I){I[i]=1o}c.w[f]=1o}c.w=1o}}})();S={22:3(s){5 s.2F(/-([a-z])/ig,3(all,2N){5 2N.toUpperCase()})}};9(B.2j){try{G.execCommand("BackgroundImageCache",y,14)}catch(e){}};$$=O;$$B=B;$$A=A;$$F=F;$$D=D;$$E=E;$$CE=CE;$$S=S})();',[],174,'|||function|var|return||||if|||object|||type|elem|element||event|style|from|handler||name|ret|left|node||thisp|callback|guid|cusevents|in|false||||events||||document|rect|handlers|for|array|top|arguments|else||test|destination|property||apply|ua|len|elt|right|bottom|this||each|opacity|source|true|parent||prototype|msie|call|slice|args|doc|body|curStyle|value|addEvent|removeEvent||copy|version|length|fixEvent|defaultView|null|elems|width|height|fix|relatedTarget||override|vMark|indexOf|isNaN|Math|lastIndexOf|filter|fun|getScrollTop|getScrollLeft|currentStyle|rtStyle|related|handleEvent|returnValue|undefined|typeof|ins|subclass|opera|chrome|break|RegExp||parseInt|window|Array|contains|offsetWidth|offsetHeight|sLeft|sTop|alpha|camelize|setStyle|repair|position|visibility|display|storage||addEventListener|delete|srcElement|stopPropagation|preventDefault|string||safari|firefox|ie6|ie8|obj|ceil|floor|forEach|push|item|method|concat|ownerDocument|documentElement|scrollTop|scrollLeft|compareDocumentPosition|getBoundingClientRect|getComputedStyle|100|float|styleFloat||rsLeft|replace|cssShow|9999px|cssBack|mouseover|mouseout|fixhandler|removeEventListener|letter'.split('|'),0,{}))

//显示层对象
var AlertBox = function(box, options){
	//初始化程序
	this._initialize( box, options );
	this._initBox();
};
AlertBox.prototype = {
  _initialize: function(box, options) {
	
	this.box = $$(box);//显示层
	
	this._css = null;//备份样式
	
	this._setOptions(options);
	
	this.fixed = !!this.options.fixed;
	this.zIndex = this.options.zIndex;
	
	this.onShow = this.options.onShow;
	this.onClose = this.options.onClose;
	
	$$CE.fireEvent( this, "init" );
  },
  //设置默认属性
  _setOptions: function(options) {
    this.options = {//默认值
		fixed:		false,//是否固定定位
		zIndex:		99999,//层叠值
		onShow:		$$.emptyFunction,//显示时执行
		onClose:	$$.emptyFunction//关闭时执行
	};
    return $$.extend(this.options, options || {});
  },
  //初始化显示层对象
  _initBox: function() {
	var style = this.box.style;
	this._css = { "display": style.display, "visibility": style.visibility, "position": style.position, "zIndex": style.zIndex };//备份样式
	style.display = "none";
	style.visibility = "visible";
	document.body.insertBefore(this.box, document.body.childNodes[0]);
	$$CE.fireEvent( this, "initBox" );
  },
  //显示
  show: function(isResize) {
	//定位显示
	var style = this.box.style;
	style.position = this.fixed ? "fixed" : "absolute";
	style.zIndex = 10000;//this.zIndex;
	$$CE.fireEvent( this, "show", isResize );
	style.display = "block";
	this.onShow();
  },
  //关闭
  close: function() {
	this.box.style.display = "none";
	$$CE.fireEvent( this, "close" );
	this.onClose();
  },
  //销毁程序
  dispose: function() {
	$$CE.fireEvent( this, "dispose" );
	$$D.setStyle( this.box, this._css );//恢复样式
	//清除属性
	this.box = this.onShow = this.onClose = null;
  }
};



//修正fixed对象
var RepairFixed = function() {
	if ( !$$B.ie6 ) return;
	var layer, body, parent = "__repairfixed";//记录父节点
	function Create(){//创建定位层函数
		body = document.body
		if (body.currentStyle.backgroundAttachment !== "fixed") {
			if (body.currentStyle.backgroundImage === "none") {
				body.runtimeStyle.backgroundRepeat = "no-repeat";
				body.runtimeStyle.backgroundImage = "url(about:blank)";
			}
			body.runtimeStyle.backgroundAttachment = "fixed";
		}
		layer = document.createElement("<div style='position:absolute;border:0;padding:0;margin:0;overflow:hidden;background:transparent;top:expression((document).documentElement.scrollTop);left:expression((document).documentElement.scrollLeft);width:expression((document).documentElement.clientWidth);height:expression((document).documentElement.clientHeight);display:block;'>");
		Create = $$.emptyFunction;
	}
	return {
		"append": function(elem){
			Create();
			elem[ parent ] = elem.parentNode;
			layer.appendChild(elem).runtimeStyle.position = "absolute";
			//插入body
			if ( layer.parentNode !== body ) body.insertBefore(layer, body.childNodes[0]);
		},
		"remove": function(elem){
			if ( !layer ) return;
			//移除元素
			if ( elem.parentNode === layer ) {
				elem.runtimeStyle.position = "";
				elem[ parent ] ? elem[parent].appendChild(elem) : layer.removeChild(elem);
				elem.removeAttribute(parent);//不能用delete
			}
			//没有内部元素就移除
			if ( !layer.childNodes.length && layer.parentNode == body ) body.removeChild(layer);
		}
	};
}();

//兼容ie6扩展
if ( $$B.ie6 ) { AlertBox.prototype._initialize = (function(){
	var init = AlertBox.prototype._initialize,
		methods = {
			"init": function(){
				this._iframe = null;//遮盖select的iframe
				this.fixSelect = !!this.options.fixSelect;
			},
			"show": function(isResize) {
				RepairFixed[ this.fixed ? "append" : "remove" ]( this.box );
				if ( this.fixSelect ) {
					if ( !this._iframe ) {
						this._iframe = this.box.appendChild( document.createElement("<iframe style=\"position:absolute;z-index:-1;filter:alpha(opacity=0);\"></iframe>") );
						isResize = true;
					}
					if ( isResize ) {
						var size = $$D.getSize(this.box);
						$$D.setStyle( this._iframe, {
							height: size.height + "px", width: size.width + "px",
							top: -this.box.clientTop + "px", left: -this.box.clientLeft + "px"
						});
					}
				}
			},
			"close": function() {
				RepairFixed.remove( this.box );
			},
			"dispose": function() {
				RepairFixed.remove( this.box );
				if ( this._iframe ) this.box.removeChild( this._iframe );
				this._iframe = null;
			}
		};
	return function(){
		var args = [].slice.call(arguments), options = args[1] = args[1] || {};
		//扩展options
		$$.extend( options, {
			fixSelect:	true//是否修复select遮盖问题
		}, false );
		//扩展钩子
		$$A.forEach( methods, function( method, name ){
			$$CE.addEvent( this, name, method );
		}, this );
		init.apply( this, args );
	}
})();}


//居中扩展
AlertBox.prototype._initialize = (function(){
	var init = AlertBox.prototype._initialize,
		methods = {
			"init": function(){
				this._centerCss = null;//记录原始样式
				this.center = !!this.options.center;
			},
			"show": function(isResize){
				if ( this.center ) {
					if ( !this._centerCss ) {
						var style = this.box.style;
						this._centerCss = { marginTop: style.marginTop, marginLeft: style.marginLeft, left: style.left, top: style.top };
						isResize = true;
					}
					if ( isResize ) {
						var size = $$D.getSize(this.box);
						$$D.setStyle( this.box, {
							marginTop: (this.fixed ? 0 : $$D.getScrollTop()) - size.height / 2 + "px",
							marginLeft: (this.fixed ? 0 : $$D.getScrollLeft()) - size.width / 2 + "px",
							top: "50%", left: "50%"
						});
					}
				} else {
					if ( this._centerCss ) {
						$$D.setStyle( this.box, this._centerCss ); this._centerCss = null;
					}
				}
			},
			"dispose": function(){
				if ( this._centerCss ) $$D.setStyle( this.box, this._centerCss );
				this._centerCss = null;
			}
		};
	return function(){
		var args = [].slice.call(arguments), options = args[1] = args[1] || {};
		//扩展options
		$$.extend( options, {
			center:	false//是否居中
		}, false );
		//扩展钩子
		$$A.forEach( methods, function( method, name ){
			$$CE.addEvent( this, name, method );
		}, this );
		init.apply( this, args );
	}
})();


//覆盖层
var OverLay = function(){
	var overlay;
	function Create(){
		var lay = document.body.insertBefore(document.createElement("div"), document.body.childNodes[0]);
		$$D.setStyle( lay, {
			overflow: "hidden", width: "100%", height: "100%",
			border: 0, padding: 0, margin: 0, top: 0, left: 0
		});
		overlay = new AlertBox( lay, { fixed: true } );
		Create = $$.emptyFunction;
	}
	return {
		"color": "#000",//背景色
		"opacity":0.5,//透明度(0-1)
		"zIndex":99998,//层叠值
		"show": function(){
			Create();
			$$D.setStyle( overlay.box, {
				backgroundColor: this.color, opacity: this.opacity
			});
			overlay.zIndex = this.zIndex;
			overlay.show();
		},
		"close": function(){ overlay && overlay.close(); }
	};
}()

/**
 * @author Linxiaosheng
 * @param id
 * @return
 */
function newAlertBox(id) {
	
	var instance = new AlertBox(id);
	instance.center = true;
	//锁定键盘
	function lockup(e){ e.preventDefault(); }
	//高亮层不锁定
	function lockout(e){ e.stopPropagation(); }
	
	instance.onShow = function(){
		$$E.addEvent( document, "keydown", lockup );
		$$E.addEvent( this.box, "keydown", lockout );
		OverLay.show();
	}
	instance.onClose = function(){
		$$E.removeEvent( document, "keydown", lockup );
		$$E.removeEvent( this.box, "keydown", lockout );
		OverLay.close();
	}
	
	return instance;
	
};





