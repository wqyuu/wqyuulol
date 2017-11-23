package com.Stream.controller;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import com.Stream.utils.PaymentUtil;


@Controller
@Scope("prototype")
public class OrderPayCollbackAction extends BaseController {

	String hmac ; // 支付网关发来的加密验证码
	String p1_MerId ; // 商户编号
	String r0_Cmd; // 业务类型
	String r1_Code; // 支付结果
	String r2_TrxId; // 易宝支付交易流水号
	String r3_Amt; // 支付金额
	String r4_Cur ; // 交易币种
	String r5_Pid; // 商品名称
	String r6_Order; // 商户订单号
	String r7_Uid; // 易宝支付会员ID
	String r8_MP; // 商户扩展信息
	String r9_BType ;// 交易结果返回类型
	
	public ModelAndView okpay() throws Exception {
		
		
		
		
		
		
		
		
		
		String keyValue = "69cl522AV6q613Ii4W6u8K6XuW8vM1N6bFgyv769220IuYe9u37N4y7rI4Pl";// 密钥
		System.out.println(hmac + p1_MerId + r0_Cmd + r1_Code + r2_TrxId
				+ r3_Amt + r4_Cur + r5_Pid + r6_Order + r7_Uid + r8_MP
				+ r9_BType + keyValue);
		boolean bool = PaymentUtil.verifyCallback(hmac, p1_MerId, r0_Cmd,
				r1_Code, r2_TrxId, r3_Amt, r4_Cur, r5_Pid, r6_Order, r7_Uid,
				r8_MP, r9_BType, keyValue);
		if (bool) {
			//支付成功,进行支付成功之后对数据库的操作
			System.out.println(r6_Order);
			return new ModelAndView("jsp/order");
		} else {
			//支付失败
			return  new ModelAndView("jsp/index1");
		}
	}

	
	public String getHmac() {
		return hmac;
	}

	public void setHmac(String hmac) {
		this.hmac = hmac;
	}

	public String getP1_MerId() {
		return p1_MerId;
	}

	public void setP1_MerId(String p1_MerId) {
		this.p1_MerId = p1_MerId;
	}

	public String getR0_Cmd() {
		return r0_Cmd;
	}

	public void setR0_Cmd(String r0_Cmd) {
		this.r0_Cmd = r0_Cmd;
	}

	public String getR1_Code() {
		return r1_Code;
	}

	public void setR1_Code(String r1_Code) {
		this.r1_Code = r1_Code;
	}

	public String getR2_TrxId() {
		return r2_TrxId;
	}

	public void setR2_TrxId(String r2_TrxId) {
		this.r2_TrxId = r2_TrxId;
	}

	public String getR3_Amt() {
		return r3_Amt;
	}

	public void setR3_Amt(String r3_Amt) {
		this.r3_Amt = r3_Amt;
	}

	public String getR4_Cur() {
		return r4_Cur;
	}

	public void setR4_Cur(String r4_Cur) {
		this.r4_Cur = r4_Cur;
	}

	public String getR5_Pid() {
		return r5_Pid;
	}

	public void setR5_Pid(String r5_Pid) {
		this.r5_Pid = r5_Pid;
	}

	public String getR6_Order() {
		return r6_Order;
	}

	public void setR6_Order(String r6_Order) {
		this.r6_Order = r6_Order;
	}

	public String getR7_Uid() {
		return r7_Uid;
	}

	public void setR7_Uid(String r7_Uid) {
		this.r7_Uid = r7_Uid;
	}

	public String getR8_MP() {
		return r8_MP;
	}

	public void setR8_MP(String r8_MP) {
		this.r8_MP = r8_MP;
	}

	public String getR9_BType() {
		return r9_BType;
	}

	public void setR9_BType(String r9_BType) {
		this.r9_BType = r9_BType;
	}

}
