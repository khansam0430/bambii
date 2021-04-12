package com.bambii.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bambii.entities.Diaper;
import com.bambii.entities.Feeding;
import com.bambii.entities.Parent;
import com.bambii.entities.Pump;
import com.bambii.entities.Sleep;

import com.bambii.services.DiaperService;
import com.bambii.services.FeedingService;
import com.bambii.services.ParentService;
import com.bambii.services.PumpService;
import com.bambii.services.SleepService;


@Controller
@RequestMapping("/") 
public class MainController {
	static ParentService parentService = new ParentService();
	static FeedingService feedingService = new FeedingService();
	static SleepService sleepService = new SleepService();
	static DiaperService diaperService = new DiaperService();
	static PumpService pumpService = new PumpService();
	
	//handlers
	 // "/" ==> this is the root or home page
//	public String indexHandler() {
//		return "index"; // view file name index.jsp
//	}
	@RequestMapping("/")
	public String indexHandler(HttpServletRequest request) {
		if (request.getSession().getAttribute("loggedInUser") != null) {
			System.out.println("it works");
			};
		Parent userId = parentService.getParentByUsername(request.getParameter("username"));
		request.getSession().setAttribute("loggedInUser", userId);
		return "index"; // view file name profile.jsp
	}
	
	@RequestMapping("/index")  // "/" ==> this is the root or home page
	public String indHandler(HttpServletRequest request) {
		if (request.getSession().getAttribute("loggedInUser") != null) {
			System.out.println("it works");
			};
		return "index"; // view file name index.jsp
	}
	
	@RequestMapping("/signUp")  // this is from href value
	public String signUpHandler() {
		return "signUp"; // view file name signUp.jsp
	}
	
	@RequestMapping("/home")  // "/" ==> this is the root or home page
	public ModelAndView homeHandler(HttpServletRequest request) {
		List<Feeding> feedingList = feedingService.getAllFeeding();
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("feedingEntry", feedingList);
		List<Sleep> sleepList = sleepService.getAllSleep();
		model.put("sleepEntry", sleepList);
		List<Diaper> diaperList = diaperService.getAllDiaper();
		model.put("diaperEntry", diaperList);
		List<Pump> pumpList = pumpService.getAllPump();
		model.put("pumpEntry", pumpList);
		
		ModelAndView mav = new ModelAndView("home", "model", model);
		return mav; // view file name home.jsp
	}
	
	@RequestMapping("/aboutUsNoLog")  // this is from href value
	public String aboutHandlerNoLog() {
		return "aboutUsNoLog"; // view file name aboutUsNoLog.jsp
	}
	
	@RequestMapping("/aboutUs")  // this is from href value
	public String aboutHandler() {
		return "aboutUs"; // view file name aboutUs.jsp when logged in
	}
	
	@RequestMapping("/resources")  // this is from href value
	public String resourcesHandler() {
		return "resources"; // view file name aboutUs.jsp when logged in
	}
	
	@RequestMapping("/feed")  // this is from href value
	public ModelAndView feedHandler() {
		List<Feeding> feedingList = feedingService.getAllFeeding();
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("feedingEntry", feedingList);
		ModelAndView mav = new ModelAndView("feed", "model", model);
		return mav; // view file name feed.jsp
	}
	
	@RequestMapping(value="/addFeed", method=RequestMethod.POST)  // this is from href value
	public String addFeedHandler(HttpServletRequest request) throws Exception {
		Feeding feed = new Feeding();
		feed.setFeedType(request.getParameter("feedType"));
		System.out.println(request.getParameter("feedType"));
		feed.setFeedTime(request.getParameter("feedTime"));
		feed.setFeedAmount(request.getParameter("feedAmount"));
		feed.setFeedDate(request.getParameter("feedDate"));
		feedingService.addFeeding(feed);
		return ("redirect:/feed"); // view file name feed.jsp
	}
	
	@RequestMapping("/deleteFeed")  // this is from href value
	public String deleteFeedHandler(HttpServletRequest request) {
		feedingService.removeFeeding(Integer.parseInt(request.getParameter("deleteId")));
		return "redirect:/feed"; // view file name feed.jsp
	}
	
	@RequestMapping(value="/editFeed/{feedId}", method=RequestMethod.GET)  // this is from href value
	public ModelAndView editFeedHandler(@PathVariable int feedId) throws Exception {
		Feeding feed = feedingService.getFeedById(feedId);
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("Feed", feed);
		ModelAndView mav= new ModelAndView("editFeed", "model", model);
		return mav; // view file name feed.jsp
	}
	
	@RequestMapping(value="/editFeed/{feedId}/save", method=RequestMethod.POST)  // this is from href value
	public String saveEditFeedHandler(HttpServletRequest request) throws Exception {
		Feeding feed = new Feeding();
		feed.setFeedType(request.getParameter("feedType"));
		feed.setFeedTime(request.getParameter("feedTime"));
		feed.setFeedAmount(request.getParameter("feedAmount"));
		feed.setFeedDate(request.getParameter("feedDate"));
		feedingService.updateFeeding(Integer.parseInt(request.getParameter("feedId")), feed);
		return "redirect:/feed"; // view file name feed.jsp
	}
	
	@RequestMapping("/sleep") // this is from href value
	public ModelAndView sleepHandler() {
		List<Sleep> sleepList = sleepService.getAllSleep();
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("sleepEntry", sleepList);
		ModelAndView mav = new ModelAndView("sleep", "model", model);
		return mav; // view file name feed.jsp
	}
	
	@RequestMapping(value="/addSleep", method=RequestMethod.POST)  // this is from href value
	public String addSleepHandler(HttpServletRequest request) throws Exception {
		Sleep sleep = new Sleep();
		sleep.setSleepStart(request.getParameter("sleepStart"));
		sleep.setSleepEnd(request.getParameter("sleepEnd"));
		sleep.setSleepDate(request.getParameter("sleepDate"));
		sleepService.addSleep(sleep);
		return ("redirect:/sleep"); // view file name feed.jsp
	}
	
	@RequestMapping(value="/editSleep/{sleepSid}", method=RequestMethod.GET)  // this is from href value
	public ModelAndView editSleepHandler(@PathVariable int sleepSid) throws Exception {
		Sleep sleep = sleepService.getSleepById(sleepSid);
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("Sleep", sleep);
		ModelAndView mav= new ModelAndView("editSleep", "model", model);
		return mav; // view file name feed.jsp
	}
	
	@RequestMapping(value="/editSleep/{sleepSid}/save", method=RequestMethod.POST)  // this is from href value
	public String saveEditSleepHandler(HttpServletRequest request) throws Exception {
		Sleep sleep = new Sleep();
		sleep.setSleepStart(request.getParameter("sleepStart"));
		sleep.setSleepEnd(request.getParameter("sleepEnd"));
		sleep.setSleepDate(request.getParameter("sleepDate"));
		sleepService.updateSleep(Integer.parseInt(request.getParameter("sleepSid")), sleep);
		return "redirect:/sleep"; // view file name feed.jsp
	}
	
	@RequestMapping("/deleteSleep")  // this is from href value
	public String deleteSleepHandler(HttpServletRequest request) {
		sleepService.removeSleep(Integer.parseInt(request.getParameter("deletesId")));
		return "redirect:/sleep"; // view file name feed.jsp
	}
	
	@RequestMapping("/diaper") // this is from href value
	public ModelAndView diaperHandler() {
		List<Diaper> diaperList = diaperService.getAllDiaper();
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("diaperEntry", diaperList);
		ModelAndView mav = new ModelAndView("diaper", "model", model);
		return mav; // view file name feed.jsp
	}
	
	@RequestMapping(value="/addDiaper", method=RequestMethod.POST)  // this is from href value
	public String addDiaperHandler(HttpServletRequest request) throws Exception {
		Diaper diaper = new Diaper();
		diaper.setDiaperType(request.getParameter("diaperType"));
		diaper.setDiaperTime(request.getParameter("daiperTime"));
		diaper.setDiaperDate(request.getParameter("diaperDate"));
		diaper.setDiaperNotes(request.getParameter("diaperNotes"));
		diaperService.addDiaper(diaper);
		return ("redirect:/diaper"); // view file name feed.jsp
	}
	
	@RequestMapping(value="/editDiaper/{diaperDid}", method=RequestMethod.GET)  // this is from href value
	public ModelAndView editDiaperHandler(@PathVariable int diaperDid) throws Exception {
		Diaper diaper = diaperService.getDiaperById(diaperDid);
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("Diaper", diaper);
		ModelAndView mav= new ModelAndView("editDiaper", "model", model);
		return mav; // view file name feed.jsp
	}
	
	@RequestMapping(value="/editDiaper/{diaperDid}/save", method=RequestMethod.POST)  // this is from href value
	public String saveEditDiaperHandler(HttpServletRequest request) throws Exception {
		Diaper diaper = new Diaper();
		diaper.setDiaperType(request.getParameter("diaperType"));
		diaper.setDiaperTime(request.getParameter("diaperTime"));
		diaper.setDiaperDate(request.getParameter("diaperDate"));
		diaper.setDiaperNotes(request.getParameter("diaperNotes"));
		diaperService.updateDiaper(Integer.parseInt(request.getParameter("diaperDid")), diaper);
		return "redirect:/diaper"; // view file name feed.jsp
	}
	
	@RequestMapping("/deleteDiaper")  // this is from href value
	public String deleteDiaperHandler(HttpServletRequest request) {
		diaperService.removeDiaper(Integer.parseInt(request.getParameter("deletedId")));
		return "redirect:/diaper"; // view file name feed.jsp
	}
	
	@RequestMapping("/pump") // this is from href value
	public ModelAndView pumpHandler() {
		List<Pump> pumpList = pumpService.getAllPump();
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("pumpEntry", pumpList);
		ModelAndView mav = new ModelAndView("pump", "model", model);
		return mav; // view file name feed.jsp
	}
	
	@RequestMapping(value="/addPump", method=RequestMethod.POST)  // this is from href value
	public String addPumpHandler(HttpServletRequest request) throws Exception {
		Pump pump = new Pump();
		pump.setPumpType(request.getParameter("pumpType"));
		pump.setPumpTime(request.getParameter("pumpTime"));
		pump.setPumpAmount(request.getParameter("pumpAmount"));
		pump.setPumpDate(request.getParameter("pumpDate"));
		pumpService.addPump(pump);
		return ("redirect:/pump"); // view file name feed.jsp
	}
	
	@RequestMapping(value="/editPump/{pumpPid}", method=RequestMethod.GET)  // this is from href value
	public ModelAndView editPumpHandler(@PathVariable int pumpPid) throws Exception {
		Pump pump = pumpService.getPumpById(pumpPid);
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("Pump", pump);
		ModelAndView mav= new ModelAndView("editPump", "model", model);
		return mav; // view file name feed.jsp
	}
	
	@RequestMapping(value="/editPump/{pumpPid}/save", method=RequestMethod.POST)  // this is from href value
	public String saveEditPumpHandler(HttpServletRequest request) throws Exception {
		Pump pump = new Pump();
		pump.setPumpType(request.getParameter("pumpType"));
		pump.setPumpTime(request.getParameter("pumpTime"));
		pump.setPumpAmount(request.getParameter("pumpAmount"));
		pump.setPumpDate(request.getParameter("pumpDate"));
		pumpService.updatePump(Integer.parseInt(request.getParameter("pumpPid")), pump);
		return "redirect:/pump"; // view file name feed.jsp
	}
	
	@RequestMapping("/deletePump")  // this is from href value
	public String deletePumpHandler(HttpServletRequest request) {
		pumpService.removePump(Integer.parseInt(request.getParameter("deletepId")));
		return "redirect:/pump"; // view file name feed.jsp
	}
	
	@RequestMapping("/extra") // this is from href value
	public String extraHandler() {
		return "extra"; // view file name extra.jsp
	}
	
	
}
