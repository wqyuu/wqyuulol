package com.Stream.entity;

import java.util.List;

import com.Stream.constants.CommonConstants;
/**
	 * 基类做一些通用的事情
	 * 不硬编码
	 * @author oracle
	 *
	 */
	public class BaseEntity {

		private int Page=CommonConstants.PAGE_VALUE;
		private int pageRow=CommonConstants.PAGE_ROW;
		private boolean pageYes = CommonConstants.PAGE_YES_NO;
		
		private int upPage;
		private int downPage;
		private int totalPage;
		private int totalCount;
		private List list;
		
		public int getPage() {
			return Page;
		}

		public void setPage(int page) {
			Page = page;
		}

		public int getTotalCount() {
			return totalCount;
		}

		public void setTotalCount(int totalCount) {
			this.totalCount = totalCount;
		}

		public List getList() {
			return list;
		}

		public void setList(List list) {
			this.list = list;
		}

		public int getUpPage() {
			if(this.Page==1){
				this.upPage=1;
			}
			this.upPage=this.Page-1;
			return upPage;
		}

		public void setUpPage(int upPage) {
			if(this.Page==1){
				this.upPage=1;
			}
			this.upPage=this.Page-1;

			this.upPage = upPage;
		}

		public int getDownPage() {
			if(Page>=this.totalPage){
			   this.downPage=this.totalPage;
			}
			this.downPage=this.Page+1;
			return downPage;
		}

		public void setDownPage(int downPage) {
			if(Page>=this.totalPage){
				   this.downPage=this.totalPage;
				}
				this.downPage=this.Page+1;
			this.downPage = downPage;
		}

		public int getTotalPage() {
			if (totalCount % pageRow == 0) {
				this.totalPage = totalCount / pageRow;
			} else {
				this.totalPage = totalCount / pageRow+1;
			}
			return totalPage;
		}

		public void setTotalPage(int totalPage) {
			this.totalPage = totalPage;
		}


		public int getPageRow() {
			return pageRow;
		}

		public void setPageRow(int pageRow) {
			this.pageRow = pageRow;
		}

		public boolean isPageYes() {
			return pageYes;
		}

		public void setPageYes(boolean pageYes) {
			this.pageYes = pageYes;
		}

	}


