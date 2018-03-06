<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<%@ taglib uri="WEB-INF/character.tld" prefix="character" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/character.css">
<script src="javascript/character.js"></script>
<title>CharacterBuilder</title>
</head>


<body>
<div class="background">
	<div id="fields">
	
		<form id=attributes action="/CharacterBuilderServlet/CalculateScores" method="post">
			 <select class="numberofdice" name="generateScoresDice" id="generateScoresDice" title="Number of Six Sided Dice to Roll">
  					<option value="3">3</option>
  					<option value="4" selected>4</option>
  					<option value="5">5</option>  
			</select>

		<input id="characterName" class="name" type="text" name="characterName" value='<%=(request.getAttribute("characterName") == null) ? "" : request.getAttribute("characterName")%>'/>
		<input id="characterClass" class="characterClass" type="text" name="characterClass" value='<%=(request.getAttribute("characterClass") == null) ? "" : request.getAttribute("characterClass")%>'/>
		<input id="level" class="level" type="text" name="level" value='<%=(request.getAttribute("level") == null) ? "" : request.getAttribute("level")%>'/>
		
		<input id="experiencePoints" class="experiencePoints" type="text" name="experiencePoints" value='<%=(request.getAttribute("experiencePoints") == null) ? "" : request.getAttribute("experiencePoints")%>'/>
		<input id="race" class="characterData" type="text" name="race" value='<%=(request.getAttribute("race") == null) ? "" : request.getAttribute("race")%>'/>
		<input id="alignment" class="characterData" type="text" name="alignment" value='<%=(request.getAttribute("alignment") == null) ? "" : request.getAttribute("alignment")%>'/>
		<input id="playerName" class="characterData" type="text" name="playerName" value='<%=(request.getAttribute("playerName") == null) ? "" : request.getAttribute("playerName")%>'/>
		<input id="characterBackground" class="characterData" type="text" name="characterBackground" value='<%=(request.getAttribute("characterBackground") == null) ? "" : request.getAttribute("characterBackground")%>'/>
		<input id="inspiration" class="inspiration" type="text" name="inspiration" value='<%=(request.getAttribute("inspiration") == null) ? "" : request.getAttribute("inspiration")%>'/>
		<input id="proficiencyBonus" class="proficiencyBonus" type="text" name="proficiencyBonus" value='<%=(request.getAttribute("proficiencyBonus") == null) ? "" : request.getAttribute("proficiencyBonus")%>'/>
		
		<!-- saving throws -->
		<label class="savingThrow">
			<input id="strengthSave" type="checkbox" name="strengthSave" class="savingThrow" value="strengthSave">
		</label>
		<label class="savingThrow">
  			<input id="dexteritySave" type="checkbox" name="dexteritySave" class="savingThrow" value="dexteritySave">
		</label>
		<label class="savingThrow">
			<input id="constitutionSave" type="checkbox" name="constitutionSave" class="savingThrow" value="constitutionhSave">
		</label>
		<label class="savingThrow">
  			<input id="intelligenceSave" type="checkbox" name="intelligenceSave" class="savingThrow" value="intelligenceSave">
		</label>
		<label class="savingThrow">
			<input id="wisdomSave" type="checkbox" name="wisdomSave" class="savingThrow" value="wisdomSave">
		</label>
		<label class="savingThrow">
  			<input id="charismaSave" type="checkbox" name="charismaSave" class="savingThrow" value="charismaSave">
		</label>
		
		
		<%String strengthScore =  (request.getAttribute("strength") == null) ? "" : request.getAttribute("strength") + "";%>
		<input id="strength" class="attribute" type="text" name="strength" id="strength" value="<%=strengthScore%>">
		<input id="strengthModifier" class="attributeModifier" type="text" name="strengthModifier" value='<character:attribute abilityScore="<%=strengthScore%>"/>'/>
		
		<%String dexterityScore = (request.getAttribute("dexterity") == null) ? "" : request.getAttribute("dexterity") + "";%>
		<input id="dexterity" class="attribute" type="text" name="dexterity" id="dexterity" value="<%=dexterityScore%>"/>
		<input id="dexterityModifier" class="attributeModifier" type="text" name="dexterityModifier" value='<character:attribute abilityScore="<%=dexterityScore%>"/>'/>
		
		<%String constitutionScore = (request.getAttribute("constitution") == null) ? "" : request.getAttribute("constitution") + "";%>
		<input id="constitution" class="attribute" type="text" name="constitution" id="constitution" value="<%=constitutionScore%>"/>
		<input id="constitutionModifier" class="attributeModifier" type="text" name="constitutionModifier" value='<character:attribute abilityScore="<%=constitutionScore%>"/>'/>
		
		<%String intelligenceScore = (request.getAttribute("intelligence") == null) ? "" : request.getAttribute("intelligence") + "";%>
		<input id="intelligence" class="attribute" type="text" name="intelligence" id="intelligence" value="<%=intelligenceScore%>"/>
		<input id="intelligenceModifier" class="attributeModifier" type="text" name="intelligenceModifier" value='<character:attribute abilityScore="<%=intelligenceScore%>"/>'/>
		
		<%String wisdomScore = (request.getAttribute("wisdom") == null) ? "" : request.getAttribute("wisdom") + "";%>
		<input id="wisdom" class="attribute" type="text" name="wisdom" id="wisdom" value="<%=wisdomScore%>"/>
		<input id="wisdomModifier" class="attributeModifier" type="text" name="wisdomModifier" value='<character:attribute abilityScore="<%=wisdomScore%>"/>'/>
		
		<%String charismaScore = (request.getAttribute("charisma") == null) ? "" : request.getAttribute("charisma") + "";%>
		<input id="charisma" class="attribute" type="text" name="charisma" id="charisma" value="<%=charismaScore%>"/>
		<input id="charismaModifier" class="attributeModifier" type="text" name="charismaModifier" value='<character:attribute abilityScore="<%=charismaScore%>"/>'/>
		
		<input type="submit" id="generateScores" value="" title="Generate Ability Scores"/>
		</form>	
		
	</div>
</div>

</body>
</html>