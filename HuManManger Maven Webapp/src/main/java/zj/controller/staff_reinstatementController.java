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
import zj.entity.staff_reinstatement;
import zj.service.staff_reinstatementService;

@Controller
@RequestMapping("/Rein")
public class staff_reinstatementController {
	@Autowired
	private staff_reinstatementService ser;
    //��ѯ��ְ�� 
    @RequestMapping("/selectRein")
    @ResponseBody
	public List<Map<String,Object>> selectRein(){
		List<Map<String,Object>> list=ser.selectRein();
		System.out.println(list.get(0));
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
	    @RequestMapping("/selectReinid")
	    @ResponseBody
		public staff_reinstatement selectReinid(int reinstatementId){
			return ser.selectReinid(reinstatementId);
		}  
	    //��Ӻ��޸�
		@RequestMapping("/insertorupdate")
		public void insertorupdate(@RequestBody staff_reinstatement Rein,HttpServletResponse response) throws IOException{
			PrintWriter out=response.getWriter();
				int i=ser.insertorupdate(Rein);
				 if(i>0){
					 out.print("�ɹ�!");//��ǰ̨��ӡtext�ı���ʽ
				 }else{
					 out.print("ʧ��!");
				 }
		}
		//ɾ��
		@RequestMapping("/deleteRein")
	    @ResponseBody
		public void deleteRein(int reinstatementId){
			if (reinstatementId!=0) {
				ser.deleteRein(reinstatementId);
			}else {
				System.out.println("ɾ��ʧ��");
			}
			
		}
}
