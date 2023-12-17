package bertrand.hotel.services;

import bertrand.hotel.entity.User;
import bertrand.hotel.temp.CurrentUser;

import org.springframework.security.core.userdetails.UserDetailsService;

//Service Pattern for User
public interface UserService extends UserDetailsService {

	public User findUserByEmail(String email);

	public void saveUser(CurrentUser currentUser);

	public int getLoggedUserId();
}
