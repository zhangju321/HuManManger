package zj.entity;

import java.util.List;

public class Pager {
//���ݼ���
	private List list;
	//��ǰҳ
	private int curPage;
	//ÿҳ����
	private int pageSize;
	//������
	private int totalCount;
	//��ҳ��
	private int totalPages;
	//��ҳ
	private int first;
	//��ҳ
	private int up;
	//��ҳ
	private int down;
	//βҳ
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
