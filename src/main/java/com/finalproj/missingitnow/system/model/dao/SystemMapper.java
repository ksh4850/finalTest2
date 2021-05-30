package com.finalproj.missingitnow.system.model.dao;

import java.util.List;
import java.util.Map;

import com.finalproj.missingitnow.system.model.dto.CorpDTO;
import com.finalproj.missingitnow.system.model.dto.CorpPageDTO;
import com.finalproj.missingitnow.system.model.dto.CorpSellPageDTO;
import com.finalproj.missingitnow.system.model.dto.DepositDTO;
import com.finalproj.missingitnow.system.model.dto.DepositPageDTO;
import com.finalproj.missingitnow.system.model.dto.OrderDTO;
import com.finalproj.missingitnow.system.model.dto.OrderPageDTO;



public interface SystemMapper {

	

	List<CorpDTO> selectSystemCorp(CorpPageDTO corpPage);

	int selectCorpTotalCount(CorpPageDTO corpPage);

	int modifyRegstAccpet(String corpNo);

	int selectAjaxCorpTotalCount(CorpPageDTO corpPage);

	List<CorpDTO> selectAjaxSystemCorp(CorpPageDTO corpPage);

	int selectDepositCount(DepositPageDTO depositPage);

	List<DepositDTO> selectSystemDepositList(DepositPageDTO depositPage);

	int selectOrderInfoCount(OrderPageDTO orderPage);

	List<OrderDTO> selectSystemOrderInfo(OrderPageDTO orderPage);

	int selectTodaySalse(CorpSellPageDTO corpSellPage);

	int selectOneMonthSalse(CorpSellPageDTO corpSellPage);

	List<Map<String, String>> selectDaySalseInfo(CorpSellPageDTO corpSellPage);

	List<Map<String, String>> selectProductTopInfo(CorpSellPageDTO corpSellPage);

	List<Map<String, String>> selectCategoryInfo(CorpSellPageDTO corpSellPage);

}
