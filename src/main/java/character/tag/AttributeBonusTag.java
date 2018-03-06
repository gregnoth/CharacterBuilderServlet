package character.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import character.util.Modifier;

public class AttributeBonusTag extends TagSupport {

	private static final long serialVersionUID = 1L;

	private String abilityScore;

	public void setAbilityScore(String modifier) {
		this.abilityScore = modifier;
	}

	public int doStartTag() throws JspException {
		JspWriter out = pageContext.getOut();

		try {

			if (abilityScore != null && !abilityScore.equals("")) {				
				int modifier = Modifier.getAbilityScoreModifier(Integer.parseInt(abilityScore));
				out.print(modifier > 0 ? "+" + modifier : modifier);
			} else {
				out.print(abilityScore);
			}
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
		}

		return SKIP_BODY;
	}

}
