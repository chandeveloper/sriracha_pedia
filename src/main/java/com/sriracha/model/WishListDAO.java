package com.sriracha.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sriracha.mybatis.SqlMapConfig;

public class WishListDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;
	
	public WishListDAO() {
		sqlSession = factory.openSession(true);
	}
	
	public List<WishListDTO> selectWishByUserNum(int user_num){
		return sqlSession.selectList("WishList.selectWishByUserNum", user_num);
	}
	
	public WishListDTO selectWishByUserNumMovieId(int user_num, int movie_id) {
		HashMap<String, Integer> paramMap = new HashMap<>();
		paramMap.put("user_num", user_num);
		paramMap.put("movie_id", movie_id);
		
		return sqlSession.selectOne("WishList.selectWishByUserNumMovieId", paramMap);
	}

	public boolean insertWish(WishListDTO wdto) {
		boolean result = false;
		boolean isThereSameMovie = false;
		
		List<WishListDTO> wishList = selectWishByUserNum(wdto.getUser_num()); 
		
		// 해당 user_num으로 wishlist를 셀렉했을 때, null이 아니라면 (영화 찜을 하나라도 한 것)
		if(wishList!=null) {
			// wishDTO list 의 movie_id를 다 확인해야한다. (같은 영화가 또 들어가는걸 방지)
			for(int i=0; i<wishList.size(); i++) {
				if(wdto.getMovie_id()==wishList.get(i).getMovie_id()) {
					// 같은 영화가 있다면
					isThereSameMovie = true;
				}
			}
		}
		
		if(!isThereSameMovie) {
			// 같은 영화가 없다면 위시리스트 테이블에 값 추가
			sqlSession.insert("WishList.insertWish", wdto);
			result = true;
		}
		
		return result;
	}

	public void deleteWish(WishListDTO wdto) {
		sqlSession.delete("WishList.deleteWish", wdto);
	}
	
	
	
}
