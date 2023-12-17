package bertrandd.hotel.dao;

import bertrandd.hotel.entity.Role;

//DAO Pattern for Role
public interface RoleDao {

	public Role findRoleByName(String roleName);
	
}
