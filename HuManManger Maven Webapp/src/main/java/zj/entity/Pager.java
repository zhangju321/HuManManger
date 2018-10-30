package zj.entity;

import java.util.List;

public class Pager {
//数据集合
	private List list;
	//当前页
	private int curPage;
	//每页条数
	private int pageSize;
	//总条数
	private int totalCount;
	//总页数
	private int totalPages;
	//首页
	private int first;
	//上页
	private int up;
	//下页
	private int down;
	//尾页
	private int last;
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
	public int getCurPage() {
		if (curPage<1) {
			return 1;
		}
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getTotalPages() {
		return getTotalCount()%getPageSize()==0?getTotalCount()/getPageSize():getTotalCount()/getPageSize()+1;
	}
	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}
	public int getFirst() {
		return 1;
	}
	public void setFirst(int first) {
		this.first = first;
	}
	public int getUp() {
		return getCurPage()<=1?1:getCurPage()-1;
	}
	public void setUp(int up) {
		this.up = up;
	}
	public int getDown() {
		return getCurPage()<getTotalPages()?getCurPage()+1:getTotalPages();
	}
	public void setDown(int down) {
		this.down = down;
	}
	public int getLast() {
		return getTotalPages();
	}
	public void setLast(int last) {
		this.last = last;
	}
	public Pager(List list, int curPage, int pageSize, int totalCount, int totalPages, int first, int up, int down,
			int last) {
		super();
		this.list = list;
		this.curPage = curPage;
		this.pageSize = pageSize;
		this.totalCount = totalCount;
		this.totalPages = totalPages;
		this.first = first;
		this.up = up;
		this.down = down;
		this.last = last;
	}
	public Pager() {
		super();
	}
	
}
