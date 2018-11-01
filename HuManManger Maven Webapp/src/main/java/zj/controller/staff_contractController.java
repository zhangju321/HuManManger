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

import zj.entity.staff_contract;
import zj.entity.staff_info;
import zj.service.staff_contractService;

@Controller
@RequestMapping("/contract")
public class staff_contractController {
	@Autowired
	private staff_contractService ser;
	  //��ѯ��ͬ��Ϣ
    @RequestMapping("/selectcontract")
    @ResponseBody
	public List<Map<String,Object>> selectcontract(){
		List<Map<String,Object>> list=ser.selectcontract();
		return list;
	}
         //��ѯԱ��
         @RequestMapping("/selectstaffinfo")
         @ResponseBody
	     public List<staff_info> selectstaffinfo() {
	     	// TODO Auto-generated method stub
	     	return ser.selectstaffinfo();
	     }
	    //��ѯ����
	    @RequestMapping("/selectByID")
	    @ResponseBody
		public staff_contract selectByID(int contractId){
			return ser.selectByID(contractId);
		}  
	    //��Ӻ��޸�
		@RequestMapping("/insertorupdate")
		public void insertorupdate(@RequestBody staff_contract contract,HttpServletResponse response) throws IOException{
			PrintWriter out=response.getWriter();
				int i=ser.insertandupdate(contract);
				 if(i>0){
					 out.print("�ɹ�!");//��ǰ̨��ӡtext�ı���ʽ
				 }else{
					 out.print("ʧ��!");
				 }
		}
		//ɾ��
		@RequestMapping("/delete")
	    @ResponseBody
		public void delete(int contractId){
			if (contractId!=0) {
				ser.delete(contractId);
			}else {
				System.out.println("ɾ��ʧ��");
			}
			
		}
	

}
