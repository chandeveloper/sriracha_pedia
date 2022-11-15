package com.sriracha.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.sriracha.model.CreditDTO;

public class Util {
	private static Util util;
	
	private Util() {}
	
	public static Util getInstance() {
		if(util==null) {
			util = new Util();
		}
		
		return util;
	}
	
	// tmdb 접근 , json 추출하는 메서드
	// params - setSubject : "now_playing" , "popular" , "top_rated" , "upcoming"
	// 					pageNum : 공백이 들어가도 작동되기 때문에 String 타입으로 설정했다. 1~?? 
	public List getMovieList(String setSubject, String pageNum) {
		// URL에 순서대로 들어가면 된다
		String base_url = "https://api.themoviedb.org/3/movie/";					// 영화 검색 기본 url
		String subject = setSubject;																// 주제 ( 인기있는 , 탑레이팅 , 업커밍 등 )
		String api_key = "?api_key=76b35796a3549ed9d36a411955f5428f";	// api 키
		String language = "&language=ko-kr";												// 언어 옵션
		String page = "&page="+ pageNum;													// 페이지 옵션 ( 안넣으면 디폴트 1 )
		
		String completed_url = base_url+subject+api_key+language+page;
		
//		System.out.println("callRestApi 호출");
		
		List<HashMap<String, Object>> movieList = null;
		
		try {
			
			URL url = new URL(completed_url);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-Type", "application/json");
			conn.setDoOutput(true); // 서버로 받는 값이 있다
			
			// 데이터 읽기
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			StringBuilder sb = new StringBuilder();
			String line = null;
			
			// 읽을 수 있을 때 까지
			while((line = br.readLine()) != null) {
				sb.append(line);
			}
			
			JSONParser parser = new JSONParser();
			JSONObject obj = (JSONObject) parser.parse(sb.toString());
			
			JSONArray objArray = (JSONArray) obj.get("results");
			
			movieList = new ArrayList();
			
			for(int i=0; i<objArray.size(); i++) {
				HashMap<String, Object> movieMap = new HashMap<>();
//				System.out.println(objArray.get(i));
				JSONObject result = (JSONObject) objArray.get(i);
				
				// 오버뷰가 "" 이 아닌경우만 담기
				if(!result.get("overview").equals("")) {
					
					movieMap.put("movie_id", result.get("id"));
					movieMap.put("movie_title", result.get("title"));
					movieMap.put("movie_overview", result.get("overview"));
					movieMap.put("movie_popularity", result.get("popularity"));
					movieMap.put("movie_vote_average", result.get("vote_average"));
					movieMap.put("movie_vote_count", result.get("vote_count"));
					movieMap.put("movie_poster_path", result.get("poster_path"));
					movieMap.put("movie_backdrop_path", result.get("backdrop_path"));
					movieMap.put("movie_adult", result.get("adult"));
					movieMap.put("movie_date", result.get("release_date"));
					movieMap.put("movie_subject", setSubject);
					
					// 리스트에 담기
					movieList.add(movieMap);
				}
				
//				System.out.println(objArray.get(i));
				
			}
			
//			for(int i=0; i<movieList.size(); i++) {
//				System.out.println("title : "+movieList.get(i).get("movie_title"));
//			}
			
			
		} catch (MalformedURLException e) {
			e.printStackTrace();
			System.out.println("URL이 잘못되었습니다.");
		} catch (IOException e) {
			e.printStackTrace();
			System.out.println("Input 또는 Ouput 오류");
		} catch (ParseException e) {
			e.printStackTrace();
			System.out.println("제이슨 파싱 실패");
		}
		
		return movieList;
		
	}
	
	public List<CreditDTO> getCreditList(int movie_id) {
		//https://api.themoviedb.org/3/movie/851644/credits?api_key=76b35796a3549ed9d36a411955f5428f&language=ko-KR
		String base_url = "https://api.themoviedb.org/3/movie/";					// 영화 검색 기본 url
		String api_key = "?api_key=76b35796a3549ed9d36a411955f5428f";	// api 키
		String language = "&language=ko-KR";												// 언어 옵션
		
		String completed_url = base_url+movie_id+"/credits"+api_key+language;
		
//		System.out.println(completed_url);
		
		List<CreditDTO> creditList = null;
		
		try {
			URL url = new URL(completed_url);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-Type", "application/json");
			conn.setDoOutput(true); // 서버로 받는 값이 있다
			
			// 데이터 읽기
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			StringBuilder sb = new StringBuilder();
			String line = null;
			
			// 읽을 수 있을 때 까지
			while((line = br.readLine()) != null) {
				sb.append(line);
			}
			
			JSONParser parser = new JSONParser();
			JSONObject obj = (JSONObject) parser.parse(sb.toString());
			
			JSONArray objArray = (JSONArray) obj.get("cast");
			JSONArray objArray2 = (JSONArray) obj.get("crew");
			
			creditList = new ArrayList<>();
			
			// 출연진 담기 (출연진은 job이 null일것이다. )
			for(int i=0; i<objArray.size(); i++) {
				JSONObject result = (JSONObject) objArray.get(i);
				
				CreditDTO cdto = new CreditDTO();
				if(result.get("name")!=null&&result.get("profile_path")!=null&&result.get("character")!=null
					&&!result.get("name").equals("") && !result.get("profile_path").equals("") && !result.get("character").equals("")) {
						cdto.setName(result.get("name").toString());
						cdto.setProfile_path(result.get("profile_path").toString());
						cdto.setCharacter(result.get("character").toString());
				}
				
				creditList.add(cdto);
			}
			
			// 감독 담기 (감독은 character가 null일것이다.)
			for(int i=0; i<objArray2.size(); i++) {
				JSONObject result = (JSONObject) objArray2.get(i);
				if(result.get("job").equals("Director")) {
					CreditDTO cdto = new CreditDTO();
					if(result.get("name")!=null&&result.get("profile_path")!=null&&result.get("job")!=null
						&&!result.get("name").equals("") && !result.get("profile_path").equals("") && !result.get("job").equals("")) {
							cdto.setName(result.get("name").toString());
							cdto.setProfile_path(result.get("profile_path").toString());
							cdto.setJob(result.get("job").toString());
					}
					creditList.add(cdto);
				}
			}
		
			
		} catch (MalformedURLException e) {
			e.printStackTrace();
			System.out.println("URL이 잘못되었습니다.");
		} catch (IOException e) {
			e.printStackTrace();
			System.out.println("Input 또는 Ouput 오류");
		} catch (ParseException e) {
			e.printStackTrace();
			System.out.println("제이슨 파싱 실패");
		}
		
		return creditList;
		
	}
	
	public String getVideoKey(int movie_id) {
		String key = "";
		
		// https://api.themoviedb.org/3/movie/436270/videos?api_key=76b35796a3549ed9d36a411955f5428f&language=ko-KR
		String base_url = "https://api.themoviedb.org/3/movie/";					// 영화 검색 기본 url
		String api_key = "?api_key=76b35796a3549ed9d36a411955f5428f";	// api 키
		String language = "&language=ko-KR";												// 언어 옵션
		
		String completed_url = base_url+movie_id+"/videos"+api_key+language;
		
//		System.out.println(completed_url);
		
		try {
			URL url = new URL(completed_url);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-Type", "application/json");
			conn.setDoOutput(true); // 서버로 받는 값이 있다
			
			// 데이터 읽기
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			StringBuilder sb = new StringBuilder();
			String line = null;
			
			// 읽을 수 있을 때 까지
			while((line = br.readLine()) != null) {
				sb.append(line);
			}
			
			JSONParser parser = new JSONParser();
			JSONObject obj = (JSONObject) parser.parse(sb.toString());
			
			JSONArray objArray = (JSONArray) obj.get("results");
			
			if(objArray.size()>0) {
				JSONObject result = (JSONObject) objArray.get(0);
//				System.out.println("key : "+result.get("key"));
				key = result.get("key").toString();
			}
			
		} catch (MalformedURLException e) {
			e.printStackTrace();
			System.out.println("URL이 잘못되었습니다.");
		} catch (IOException e) {
			e.printStackTrace();
			System.out.println("Input 또는 Ouput 오류");
		} catch (ParseException e) {
			e.printStackTrace();
			System.out.println("제이슨 파싱 실패");
		}
		
		
		return key;
	}
	
}
