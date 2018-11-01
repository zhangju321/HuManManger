package zj.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import zj.entity.department;
import zj.entity.position;
import zj.entity.staff_info;
import zj.entity.staff_leave;
import zj.service.staff_leaveService;

@Controller
@RequestMapping("/leave")
public class staff_leaveController {
	@Autowired
	private staff_leaveService ser;
    //��ѯ��ְ�� 
    @RequestMapping("/selectleave")
    @ResponseBody
	public List<Map<String,Object>> selectleave(){
		List<Map<String,Object>> list=ser.selectleave();
		return list;
	}
    
    //��ѯ��ְԱ��
    @RequestMapping("/selectinfostu")
    @ResponseBody
    public List<staff_info> selectinfostu() {
    	// TODO Auto-generated method stub
    	return ser.selectinfostu();
    }
    
         //��ѯԱ��
         @RequestMapping("/selectstaffinfo")
         @ResponseBody
	     public List<staff_info> selectstaffinfo() {
	     	// TODO Auto-generated method stub
	     	return ser.selectstaffinfo();
	     }
	     //��ѯ����
         @RequestMapping("/selectdepartment")
         @ResponseBody
         public List<department> selectdepartment() {
		    // TODO Auto-generated method stub
	    	return ser.selectdepartment();
     	}
        //��ѯְ��
        @RequestMapping("/selectposition")
        @ResponseBody
        public List<position> selectposition() {
	     	// TODO Auto-generated method stub
	     	return ser.selectposition();
	    }
	    //��ѯ����
	    @RequestMapping("/selectleaveByID")
	    @ResponseBody
		public staff_leave selectleaveByID(int leaveId){
	    	System.out.println(ser.selectleaveByID(leaveId).getStaStaffId());
			return ser.selectleaveByID(leaveId);
		}  
	    //��Ӻ��޸�
		@RequestMapping("/insertorupdate")
		public void insertorupdate(@RequestBody staff_leave leave,HttpServletResponse response) throws IOException{
			PrintWriter out=response.getWriter();
				int i=ser.insertorupdate(leave);
				 if(i>0){
					 out.print("�ɹ�!");//��ǰ̨��ӡtext�ı���ʽ
				 }else{
					 out.print("ʧ��!");
				 }
		}
		//ɾ��
		@RequestMapping("/deleteleave")
	    @ResponseBody
		public void deleteleave(int leaveId){
			if (leaveId!=0) {
				ser.deleteleave(leaveId);
			}else {
				System.out.println("ɾ��ʧ��");
			}
			
		}
			
}
