package character.util;

import javax.servlet.http.HttpServletRequest;

public class RequestRetainer {
	
	public static void saveParameters(HttpServletRequest request) {
		
		//save meta character data
		request.setAttribute("characterName", request.getParameter("characterName"));
		request.setAttribute("characterClass", request.getParameter("characterClass"));
		request.setAttribute("level", request.getParameter("level"));
		request.setAttribute("experiencePoints", request.getParameter("experiencePoints"));
		request.setAttribute("race", request.getParameter("race"));
		request.setAttribute("alignment", request.getParameter("alignment"));
		request.setAttribute("playerName", request.getParameter("playerName"));
		request.setAttribute("characterBackground", request.getParameter("characterBackground"));
		
		//save misc data
		request.setAttribute("inspiration", request.getParameter("inspiration"));
		request.setAttribute("proficiencyBonus", request.getParameter("proficiencyBonus"));
		
		
		//save attribute data
		request.setAttribute("strength", request.getParameter("strength"));
		request.setAttribute("dexterity",request.getParameter("dexterity"));
		request.setAttribute("constitution", request.getParameter("constitution"));
		request.setAttribute("intelligence", request.getParameter("intelligence"));
		request.setAttribute("wisdom", request.getParameter("wisdom"));
		request.setAttribute("charisma", request.getParameter("charisma"));
		
		
		
	}

}
