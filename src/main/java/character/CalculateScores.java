package character;

import java.io.IOException;
import java.util.Arrays;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import character.util.DDAbilityScores;
import character.util.RequestRetainer;

/**
 * Servlet implementation class CalculateScores
 */
public class CalculateScores extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalculateScores() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("In Calculate Scores");
		RequestRetainer.saveParameters(request);
		
		int numberOfDice = Integer.parseInt(request.getParameter("generateScoresDice") == null ? "4" : request.getParameter("generateScoresDice"));
		int abilityScores [] = new int[DDAbilityScores.values().length];
		abilityScores = (int[]) Arrays.stream(abilityScores).map(score -> DDAbilityScores.generateScore(numberOfDice, 6, 3)).toArray();
				
		request.setAttribute("strength", abilityScores[0]);
		request.setAttribute("dexterity", abilityScores[1]);
		request.setAttribute("constitution", abilityScores[2]);
		request.setAttribute("intelligence", abilityScores[3]);
		request.setAttribute("wisdom", abilityScores[4]);
		request.setAttribute("charisma", abilityScores[5]);
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("character.jsp");
		requestDispatcher.forward(request, response);		
		
	}

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
