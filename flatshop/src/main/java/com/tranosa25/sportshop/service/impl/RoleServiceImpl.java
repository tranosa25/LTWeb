package com.tranosa25.sportshop.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tranosa25.sportshop.dao.RoleDao;
import com.tranosa25.sportshop.entity.Role;
import com.tranosa25.sportshop.model.RoleDTO;
import com.tranosa25.sportshop.service.RoleService;

@Service
@Transactional
public class RoleServiceImpl implements RoleService {

	@Autowired
	private RoleDao roleDao;
	
	@Override
	public List<RoleDTO> findAll() {
		List<Role> roles = roleDao.findAll();
		List<RoleDTO> roleDTOs = new ArrayList<RoleDTO>();
		for (Role role : roles) {
			RoleDTO roleDTO = new RoleDTO();
			roleDTO.setRoleId(role.getRoleId());
			roleDTO.setRoleName(role.getRoleName());
			roleDTOs.add(roleDTO);
		}
		return roleDTOs;
	}
	
	
	
}
