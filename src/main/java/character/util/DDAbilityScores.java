package character.util;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Random;

public enum DDAbilityScores {
	Strength(8), Dexterity(8), Constitution(8), Intelligence(8), Wisdom(8), Charisma(8);	
	
	
	public static void generateScores(DDAbilityScores [] scores) {
		int i = 0;
    	for(DDAbilityScores score: DDAbilityScores.values() ) {
    		scores[i] = score;
    		score.setScore(DDAbilityScores.generateScore(4,6,3));
    		i++;
    	}	
	}
	
	public static int generateScore(int numberOfDice, int diceSize, int diceUsed) {		
		List<Integer> attributeScores = new ArrayList<Integer>();
		for(int i = 0; i<numberOfDice; i++) {
			attributeScores.add(new Random().nextInt(diceSize) + 1);
		}		
		return attributeScores.stream().sorted(Comparator.reverseOrder()).mapToInt(x -> x).limit(diceUsed).sum();		
	}
	
	private int score;
	
	private DDAbilityScores(int score) {
		this.setScore(score);
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

}
