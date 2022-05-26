package com.owl.heybuddy.modules.meet;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.owl.heybuddy.common.util.UtilDateTime;

@Controller
public class MeetController {
	
	@Autowired
	MeetServiceImpl service;
	
	@RequestMapping(value = "/meet/index")
	public String index() {
		
		
		return "user/meet/index";
	}
	@RequestMapping(value = "/meet/zoomStart")
	public String zoomStart() throws Exception {
		
		
		return "user/meet/zoomStart";
	}
	
	
	@RequestMapping(value = "/meet/zoomInst")
	public String zoomInst(Zoom dto) throws Exception {
		
		String apiUrl = "https://api.zoom.us/v2/users/yym2044@gmail.com/meetings";
		
		URL url = new URL(apiUrl);
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("POST");
		conn.setRequestProperty("authorization", "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOm51bGwsImlzcyI6IjJuQ21oazYzU3NPaW1sSlhJdHpka0EiLCJleHAiOjE2NTQwNDg4MjMsImlhdCI6MTY1MzQ0NDAyM30.LvPYI6nF2idwcGhmgB_wUI7nCJc8Zk_0ci5ABJ7cxBE");
		
		conn.setRequestProperty("Content-Type", "application/json");
		conn.setRequestProperty("Accept", "application/json");
		conn.setDoOutput(true); 
		
		
		
		String json = "{\"agenda\" : \"" + dto.getAgenda() + "\", \"topic\": \"" + dto.getTopic() + "\", \"settings\": { \"jbh_time\": 0, \"join_before_host\": true, \"mute_upon_entry\": true }, \"type\": 2, \"start_time\": \" " + UtilDateTime.nowStringZoom() + "\" }";
		
		OutputStream os = conn.getOutputStream();
		os.write(json.getBytes());
		os.flush();
		
		// 이 부분을 빼면 반응 없음
		BufferedReader bufferedReader;
		if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
			bufferedReader = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else {
			bufferedReader = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		}
		
		StringBuilder stringBuilder = new StringBuilder();
		String line;
		while ((line = bufferedReader.readLine()) != null) {
			stringBuilder.append(line);
		}
		
		
	
		bufferedReader.close();
		conn.disconnect();
		os.close();
		
		System.out.println("생성된 줌 미팅");
		System.out.println("stringBuilder.toString(): " + stringBuilder.toString());
		System.out.println("생성된 줌 미팅");
		System.out.println();
		
		return "redirect:/meet/zoomList";
	}
	
	@RequestMapping(value = "/meet/zoomList")
	public String zoomList(Model model) throws Exception {
		
		String apiUrl = "https://api.zoom.us/v2/users/yym2044@gmail.com/meetings";
		
		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");
		httpURLConnection.setRequestProperty("authorization", "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOm51bGwsImlzcyI6IjJuQ21oazYzU3NPaW1sSlhJdHpka0EiLCJleHAiOjE2NTQwNDg4MjMsImlhdCI6MTY1MzQ0NDAyM30.LvPYI6nF2idwcGhmgB_wUI7nCJc8Zk_0ci5ABJ7cxBE");
		
		BufferedReader bufferedReader;
		if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		} else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
		}
		
		StringBuilder stringBuilder = new StringBuilder();
		String line;
		while ((line = bufferedReader.readLine()) != null) {
			stringBuilder.append(line);
		}
	
		bufferedReader.close();
		httpURLConnection.disconnect();
	
		System.out.println("stringBuilder.toString(): " + stringBuilder.toString());
		
		ObjectMapper objectMapper = new ObjectMapper();
		Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
		
//		System.out.println("################################ map ################################");
//		for (String key : map.keySet()) {
//			
//			String value = String.valueOf(map.get(key));
//			
//			System.out.println("[key] : " + key + ", [value] : " + value);
//		}
		
		List<Zoom> list = new ArrayList<Zoom>();
		list = (List<Zoom>) map.get("meetings");
		
		
		System.out.println("~~~~~~~~~ list 출력 ~~~~~~~~");
		for(int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i));
			System.out.println();
		}
		
		
		model.addAttribute("list", list);
		
		return "user/meet/zoomList";
	}
	
	@RequestMapping(value = "/meet/zoomDele")
	public String zoomDele(Zoom dto) throws Exception {
		
		String apiUrl = "https://api.zoom.us/v2/meetings/" + dto.getId();
		
		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("DELETE");
		httpURLConnection.setRequestProperty("authorization", "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOm51bGwsImlzcyI6IjJuQ21oazYzU3NPaW1sSlhJdHpka0EiLCJleHAiOjE2NTQwNDg4MjMsImlhdCI6MTY1MzQ0NDAyM30.LvPYI6nF2idwcGhmgB_wUI7nCJc8Zk_0ci5ABJ7cxBE");
		
		httpURLConnection.disconnect();
		
		return "redirect:/meet/zoomList";
	}
	
	//////////////// ZOOM ////////////////
	
	@RequestMapping(value = "/meet/meetList")
	public String meetList(Model model, MeetVo vo, HttpSession httpSession) throws Exception {
		
		vo.setHyspSeq((String)httpSession.getAttribute("hyspSeq"));
		
		return "user/meet/meetList";
	}
	
	@RequestMapping(value = "/meet/meetStart")
	public String meetStart() {
		
		
		return "user/meet/meetStart";
	}
	
	
	// 방을 만드는 경우 => meetRoom 으로 리디렉션
	@RequestMapping(value = "/meet/startRoom")
	public String startRoom(Meet dto, HttpSession httpSession, RedirectAttributes redirectAttributes) throws Exception {
		
		dto.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
		dto.setHymmSeq((String) httpSession.getAttribute("sessSeq"));
		dto.setHymmName((String) httpSession.getAttribute("sessName"));
		
		service.startRoom(dto);
		
		httpSession.setAttribute("hymrSeq", dto.getHymrSeq());
		httpSession.setAttribute("meetRoomHostNy", 1);
		
		return "redirect:/meet/meetRoom?" + dto.getHymrRoomId();
	}
	
	
	// 이미 있는 방에 들어가는 경우 => meetRoom 으로 리디렉션
	@RequestMapping(value = "/meet/enterRoom")
	public String enterRoom(Meet dto, HttpSession httpSession) throws Exception {
		
		service.enterRoom(dto);
		
		httpSession.setAttribute("hymrSeq", dto.getHymrSeq());
		httpSession.setAttribute("meetRoomHostNy", 0);
		
		return "redirect:/meet/meetRoom";
	}
	
	@RequestMapping(value = "/meet/meetEnter")
	public String meetEnter(Model model, @ModelAttribute("vo") MeetVo vo, HttpSession httpSession) throws Exception {
		
		vo.setHyspSeq((String)httpSession.getAttribute("hyspSeq"));
		
		model.addAttribute("rt", service.selectOneRoom(vo));
		
		return "user/meet/meetEnter";
	}
	@RequestMapping(value = "/meet/meetRoom")
	public String meetRoom(Model model, @ModelAttribute("vo") MeetVo vo, Meet dto, HttpSession httpSession) throws Exception {
		
		vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
		
		if(vo.getHymrSeq() == null) {
			vo.setHymrSeq((String) httpSession.getAttribute("hymrSeq"));
		}
		
		model.addAttribute("rt", service.selectOneRoom(vo));
		
		return "user/meet/meetRoom";
	}
	
	@RequestMapping(value = "/meet/meetLeave")
	public String meetLeave(MeetVo vo) throws Exception {
		
		service.leaveRoom(vo);
		
		return "redirect:/meet/meetList";
	}
	
	
	@RequestMapping(value = "/meet/meetEnd")
	public String meetEnd() {
		
		
		return "user/meet/meetEnd";
	}
	
}
