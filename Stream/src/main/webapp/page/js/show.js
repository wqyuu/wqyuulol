/**
 * 接入代码示例：
	<script type="text/javascript" id="adm-2">
	(function() {
		window.ADMBlocks = window.ADMBlocks || [];
		ADMBlocks.push({
			id		: '2',	// 广告位id
			width	: 800,		// 宽
			height	: 200		// 高
		});
		var h=document.getElementsByTagName('head')[0], s=document.createElement('script');
		s.async=true; s.src='http://ad.uuu9.com//js/show.js';
		h && h.insertBefore(s,h.firstChild)
	})()
	</script>
 */
(function(ADM) {
	ADM = {
		loadJS: function(url, callback, opts) {
			var q,
				insertNode,
				loadedList,
				onLoaded;
			
			opts = opts || {};
			charset = opts.charset || '';

			// 是否已经加载
			loadedList = ADM['loadJS'];
			if(loadedList && (url in loadedList)) {
				callback();
				return;
			}

			q = document.createElement("script");

			if (callback)  {
				onLoaded = function() {
					var loadedList = ADM['loadJS'];
					!loadedList && (loadedList = {});
					loadedList[url] = 1;

					ADM['loadJS'] = loadedList;

					callback();
					q = null;
					url = null;
				};

				if(window.ActiveXObject) {
					q.onreadystatechange = function() {
						var v = this.readyState;
						if ("loaded" === v || "complete" === v) {
							onLoaded();
							onLoaded = null;
						}
					};
				} else {
					q.onload = onLoaded;
				}
			}

			q.charset = charset;
			q.src = url;

			insertNode = opts.insertNode || (document.getElementsByTagName("head")[0].firstChild);
			insertNode.parentNode.insertBefore(q, insertNode);
		},

		genIframe: function(w, h) {
			var ifr, doc = document;

			w = w || 0;
			h = h || 0;

			ifr = doc.createElement('iframe');
			ifr.width = w;
			ifr.height = h;
			ifr.scrolling = 'no';
			ifr.setAttribute('frameBorder', '0');
			ifr.setAttribute('marginHeight', '0');
			ifr.setAttribute('marginWidth', '0');
			ifr.setAttribute('allowTransparency', true);
			ifr.style.cssText = 'position:static !important;display:block !important;margin:0 auto !important;padding:0 !important;visibility:visible !important;float:none !important;border-width:0 !important;width:'+ w +'px !important;height:'+ h +'px !important';
			
			return ifr;
		},

		getRenderedCount : function() {
			var count = 0,
				ifrs,
				reqUrl = this.config.reqUrl,
				ul = reqUrl.length;

			ifrs= (document.body || document.documentElement).getElementsByTagName('iframe');	
			for (var i = 0, len=ifrs.length; i < len; i++) {
				if(ifrs[i].src.substring(0, ul) == reqUrl) {
					count ++;
				}
			}

			return count;
		},

		renderSlot: function(pageConfig) {
			var doc = document,
				slot,	// 单个广告埋点
				renderedCount ,	// 广告已展示次数
				cfg,
				posid,
				// 配置
				config		= this.config,
				ifr;

			pageConfig	= pageConfig || [];

			// 获取当前页面的广告位
			renderedCount = this.getRenderedCount();

			// 初始化所有广告位
			for(var i=0, l=pageConfig.length; i<l; i++) {
				cfg = pageConfig[i];
				posid = cfg.id;
				if(! posid) {
					continue;
				}

				slot = doc.getElementById(config.prefix + posid);

				// 不再处理已经初始化完成的广告位
				if(slot) {
					renderedCount ++;
					// 修改埋点id, 标记此广告位已经初始化加载,
					slot.id += '_' + renderedCount ;

					renderCfg = {
						posid	: posid,
						width	: cfg.width,
						height	: cfg.height,
						count	: renderedCount
					}

					ifr = this.genIframe(cfg.width, cfg.height);
					// 这里可以传递广告位id到后台
					ifr.src = config.reqUrl + '#id='+ posid;

					// 向页面插入节点
					slot.parentNode.insertBefore(ifr, slot);
				}
			}
		},
		
		// 配置
		config: {
			prefix	: 'adm-',
			// reqUrl	: 'http://'+ location.host +'/html/board.html'
			reqUrl	: 'http://ad.uuu9.com/html/board.html'
		},
		
		/**
		 * 入口
		 */
		init: function() {
			this.renderSlot(ADMBlocks);
		}
	};

	ADM.init();
})(window.ADM = window.ADM || {});