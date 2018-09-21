/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.wy.dao;

import com.wy.model.UserInfo;

/**
 *
 * @author Administrator
 */
public interface UserInfoDaoImp {
  
    public boolean saveUserInfo(UserInfo userinfo);
    public UserInfo queryUserInfo(String account);
	public boolean updateUserInfo(UserInfo userInfo);


}
