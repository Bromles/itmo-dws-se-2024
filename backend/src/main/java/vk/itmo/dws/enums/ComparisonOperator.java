package vk.itmo.dws.enums;

import lombok.Getter;

@Getter
public enum ComparisonOperator {
    EQUALS("="),
    GREATER_THAN(">"),
    LESS_THAN("<"),
    GREATER_THAN_OR_EQUALS(">="),
    LESS_THAN_OR_EQUALS("<="),
    CONTAINS("contains"),
    NOT_EQUALS("!=");

    private final String symbol;

    ComparisonOperator(String symbol) {
        this.symbol = symbol;
    }

    public static ComparisonOperator fromSymbol(String symbol) {
        for (ComparisonOperator operator : values()) {
            if (operator.getSymbol().equals(symbol)) {
                return operator;
            }
        }
        return EQUALS;
    }
}
