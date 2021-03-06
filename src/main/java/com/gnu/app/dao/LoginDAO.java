package com.gnu.app.dao;

import java.util.HashMap;
import java.util.List;

/**
 * @Class Name : LoginDAO.interface
 * @Description : LoginDAO
 * @Modification Information
 * @
 * @  수정일         수정자                   수정내용
 * @ -------    --------    ---------------------------
 * @ 2018.04.15    hwanee   최초 생성
 *
 *  
 */

public interface LoginDAO {
	/**
	 * 로그인처리
	 * @param map - 화면에서 입력한 로그인정보
	 * @return booelan  
	 * @exception Exception
	 */
	public boolean login(HashMap<String, String> map) throws Exception;
	
	/**
	 * 사용자 등록처리
	 * @param map - 화면에서 입력한 사용자정보
	 * @return   
	 * @exception Exception
	 */
	public void register(HashMap<String, String> map) throws Exception;
	
}
