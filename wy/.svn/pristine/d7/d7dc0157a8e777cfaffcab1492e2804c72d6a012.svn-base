package com.dhcc.bussiness.order;

import java.io.File;
import java.io.FileInputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;

import com.opensymphony.xwork2.ActionSupport;

public class UploadAction extends ActionSupport{
	private OrderModel model = new OrderModel();
	public OrderModel getModel() {
		return model;
	}
	
	private OrderService orderService = new OrderService();
	
	//使用struts2框架接收上传文件:通过文件上传拦截器
	
	//定义变量接收上传文件相关信息即可
	//接收上传文件，变量名称必须跟上传参数一致
	private File upload;
	//接收上传文件名称,上传文件MIME类型
	private String uploadFileName;
	private String uploadContentType;
	public void setUpload(File upload) {
		this.upload = upload;
	}
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}


	/**
	  * @Description: 1、将上传文件接收到  2、通过POI将excel文件中数据解析  3、将数据持久化到数据库
	 */
	public String importXls() throws Exception {
		List<OrderModel> list = new ArrayList<OrderModel>();
		HSSFWorkbook workbook = new HSSFWorkbook(new FileInputStream(upload));
		//获取标签页
		HSSFSheet sheet = workbook.getSheetAt(0);
		OrderModel orderModel = new OrderModel();
		Date date = new Date();
		//获取行
		for (Row row : sheet) {  //每一行就是一个区域对象
			//将标题行忽略
			if(row.getRowNum()==0){
				continue;
			}
			/*String id = row.getCell(0).getStringCellValue();*/
			row.getCell(0).setCellType(Cell.CELL_TYPE_STRING);
			String house = row.getCell(0).getStringCellValue();
			
			row.getCell(1).setCellType(Cell.CELL_TYPE_STRING);
			String source = row.getCell(1).getStringCellValue();
			
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			date = row.getCell(2).getDateCellValue();
	        date = sdf.parse(sdf.format(date));
	        long ts = date.getTime();
	        String start = String.valueOf(ts);
			
	        SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");
			date = row.getCell(3).getDateCellValue();
	        date = sdf2.parse(sdf.format(date));
	        System.out.println(date);
	        long ts2 = date.getTime();
	        String stop = String.valueOf(ts2);
	        
			row.getCell(4).setCellType(Cell.CELL_TYPE_STRING);
			String name = row.getCell(4).getStringCellValue();
			
			row.getCell(5).setCellType(Cell.CELL_TYPE_STRING);
			String phone = row.getCell(5).getStringCellValue();
			
			row.getCell(6).setCellType(Cell.CELL_TYPE_STRING);
			String people = row.getCell(6).getStringCellValue();
			
			row.getCell(7).setCellType(Cell.CELL_TYPE_STRING);
			String money = row.getCell(7).getStringCellValue();
			
			row.getCell(8).setCellType(Cell.CELL_TYPE_STRING);
			String paytype = row.getCell(8).getStringCellValue();
			
			row.getCell(9).setCellType(Cell.CELL_TYPE_STRING);
			String checkstate = row.getCell(9).getStringCellValue();
			
			orderModel.setHouse(house);
			orderModel.setSource(source);
			orderModel.setStart(start);
			orderModel.setStop(stop);
			orderModel.setName(name);
			orderModel.setPhone(phone);
			orderModel.setPeople(people);
			orderModel.setMoney(money);
			orderModel.setPaytype(Integer.parseInt(paytype));
			orderModel.setCheckstate(Integer.parseInt(checkstate));
			list.add(orderModel);
			System.out.println(start);
			
/*			System.out.println(orderModel.getStart());
			System.out.println(orderModel.getStop()); 
			43324
			*/
//			areaService.save(area);
		}
		orderService.save(list);
		return NONE;
	}
}
