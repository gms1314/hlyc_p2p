package cn.hlyc.action.productRate;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.hlyc.action.common.BaseAction;
import cn.hlyc.domain.product.ProductEarningRate;
import cn.hlyc.service.productRate.IProductRateService;
import cn.hlyc.utils.Response;

@Namespace("/productRate")
@Controller
@Scope("prototype")
public class ProductRateAction extends BaseAction {

	@Autowired
	private IProductRateService productRateService;

	// 根据id查询产品的利率
	@Action("yearInterest")
	public void yearInterest() {
		// 1.得到理财产品的id
		String pid = this.getRequest().getParameter("pid");

		// 2.根据id查询理财产品的利率
		List<ProductEarningRate> pers = productRateService.findByProId(pid);

		// 3.将数据处理
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		for (ProductEarningRate per : pers) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("incomeRate", per.getIncomeRate());
			map.put("endMonth", per.getMonth());
			list.add(map);
		}

		// 4.响应数据
		try {
			this.getResponse().getWriter().write(Response.build().setStatus("1").setData(list).toJSON());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
