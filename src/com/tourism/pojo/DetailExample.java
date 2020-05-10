package com.tourism.pojo;

import java.util.ArrayList;
import java.util.List;

public class DetailExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public DetailExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andLineIdIsNull() {
            addCriterion("line_id is null");
            return (Criteria) this;
        }

        public Criteria andLineIdIsNotNull() {
            addCriterion("line_id is not null");
            return (Criteria) this;
        }

        public Criteria andLineIdEqualTo(Integer value) {
            addCriterion("line_id =", value, "lineId");
            return (Criteria) this;
        }

        public Criteria andLineIdNotEqualTo(Integer value) {
            addCriterion("line_id <>", value, "lineId");
            return (Criteria) this;
        }

        public Criteria andLineIdGreaterThan(Integer value) {
            addCriterion("line_id >", value, "lineId");
            return (Criteria) this;
        }

        public Criteria andLineIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("line_id >=", value, "lineId");
            return (Criteria) this;
        }

        public Criteria andLineIdLessThan(Integer value) {
            addCriterion("line_id <", value, "lineId");
            return (Criteria) this;
        }

        public Criteria andLineIdLessThanOrEqualTo(Integer value) {
            addCriterion("line_id <=", value, "lineId");
            return (Criteria) this;
        }

        public Criteria andLineIdIn(List<Integer> values) {
            addCriterion("line_id in", values, "lineId");
            return (Criteria) this;
        }

        public Criteria andLineIdNotIn(List<Integer> values) {
            addCriterion("line_id not in", values, "lineId");
            return (Criteria) this;
        }

        public Criteria andLineIdBetween(Integer value1, Integer value2) {
            addCriterion("line_id between", value1, value2, "lineId");
            return (Criteria) this;
        }

        public Criteria andLineIdNotBetween(Integer value1, Integer value2) {
            addCriterion("line_id not between", value1, value2, "lineId");
            return (Criteria) this;
        }

        public Criteria andDetailStartIsNull() {
            addCriterion("detail_start is null");
            return (Criteria) this;
        }

        public Criteria andDetailStartIsNotNull() {
            addCriterion("detail_start is not null");
            return (Criteria) this;
        }

        public Criteria andDetailStartEqualTo(String value) {
            addCriterion("detail_start =", value, "detailStart");
            return (Criteria) this;
        }

        public Criteria andDetailStartNotEqualTo(String value) {
            addCriterion("detail_start <>", value, "detailStart");
            return (Criteria) this;
        }

        public Criteria andDetailStartGreaterThan(String value) {
            addCriterion("detail_start >", value, "detailStart");
            return (Criteria) this;
        }

        public Criteria andDetailStartGreaterThanOrEqualTo(String value) {
            addCriterion("detail_start >=", value, "detailStart");
            return (Criteria) this;
        }

        public Criteria andDetailStartLessThan(String value) {
            addCriterion("detail_start <", value, "detailStart");
            return (Criteria) this;
        }

        public Criteria andDetailStartLessThanOrEqualTo(String value) {
            addCriterion("detail_start <=", value, "detailStart");
            return (Criteria) this;
        }

        public Criteria andDetailStartLike(String value) {
            addCriterion("detail_start like", value, "detailStart");
            return (Criteria) this;
        }

        public Criteria andDetailStartNotLike(String value) {
            addCriterion("detail_start not like", value, "detailStart");
            return (Criteria) this;
        }

        public Criteria andDetailStartIn(List<String> values) {
            addCriterion("detail_start in", values, "detailStart");
            return (Criteria) this;
        }

        public Criteria andDetailStartNotIn(List<String> values) {
            addCriterion("detail_start not in", values, "detailStart");
            return (Criteria) this;
        }

        public Criteria andDetailStartBetween(String value1, String value2) {
            addCriterion("detail_start between", value1, value2, "detailStart");
            return (Criteria) this;
        }

        public Criteria andDetailStartNotBetween(String value1, String value2) {
            addCriterion("detail_start not between", value1, value2, "detailStart");
            return (Criteria) this;
        }

        public Criteria andDetailEndIsNull() {
            addCriterion("detail_end is null");
            return (Criteria) this;
        }

        public Criteria andDetailEndIsNotNull() {
            addCriterion("detail_end is not null");
            return (Criteria) this;
        }

        public Criteria andDetailEndEqualTo(String value) {
            addCriterion("detail_end =", value, "detailEnd");
            return (Criteria) this;
        }

        public Criteria andDetailEndNotEqualTo(String value) {
            addCriterion("detail_end <>", value, "detailEnd");
            return (Criteria) this;
        }

        public Criteria andDetailEndGreaterThan(String value) {
            addCriterion("detail_end >", value, "detailEnd");
            return (Criteria) this;
        }

        public Criteria andDetailEndGreaterThanOrEqualTo(String value) {
            addCriterion("detail_end >=", value, "detailEnd");
            return (Criteria) this;
        }

        public Criteria andDetailEndLessThan(String value) {
            addCriterion("detail_end <", value, "detailEnd");
            return (Criteria) this;
        }

        public Criteria andDetailEndLessThanOrEqualTo(String value) {
            addCriterion("detail_end <=", value, "detailEnd");
            return (Criteria) this;
        }

        public Criteria andDetailEndLike(String value) {
            addCriterion("detail_end like", value, "detailEnd");
            return (Criteria) this;
        }

        public Criteria andDetailEndNotLike(String value) {
            addCriterion("detail_end not like", value, "detailEnd");
            return (Criteria) this;
        }

        public Criteria andDetailEndIn(List<String> values) {
            addCriterion("detail_end in", values, "detailEnd");
            return (Criteria) this;
        }

        public Criteria andDetailEndNotIn(List<String> values) {
            addCriterion("detail_end not in", values, "detailEnd");
            return (Criteria) this;
        }

        public Criteria andDetailEndBetween(String value1, String value2) {
            addCriterion("detail_end between", value1, value2, "detailEnd");
            return (Criteria) this;
        }

        public Criteria andDetailEndNotBetween(String value1, String value2) {
            addCriterion("detail_end not between", value1, value2, "detailEnd");
            return (Criteria) this;
        }

        public Criteria andDetailLineIsNull() {
            addCriterion("detail_line is null");
            return (Criteria) this;
        }

        public Criteria andDetailLineIsNotNull() {
            addCriterion("detail_line is not null");
            return (Criteria) this;
        }

        public Criteria andDetailLineEqualTo(String value) {
            addCriterion("detail_line =", value, "detailLine");
            return (Criteria) this;
        }

        public Criteria andDetailLineNotEqualTo(String value) {
            addCriterion("detail_line <>", value, "detailLine");
            return (Criteria) this;
        }

        public Criteria andDetailLineGreaterThan(String value) {
            addCriterion("detail_line >", value, "detailLine");
            return (Criteria) this;
        }

        public Criteria andDetailLineGreaterThanOrEqualTo(String value) {
            addCriterion("detail_line >=", value, "detailLine");
            return (Criteria) this;
        }

        public Criteria andDetailLineLessThan(String value) {
            addCriterion("detail_line <", value, "detailLine");
            return (Criteria) this;
        }

        public Criteria andDetailLineLessThanOrEqualTo(String value) {
            addCriterion("detail_line <=", value, "detailLine");
            return (Criteria) this;
        }

        public Criteria andDetailLineLike(String value) {
            addCriterion("detail_line like", value, "detailLine");
            return (Criteria) this;
        }

        public Criteria andDetailLineNotLike(String value) {
            addCriterion("detail_line not like", value, "detailLine");
            return (Criteria) this;
        }

        public Criteria andDetailLineIn(List<String> values) {
            addCriterion("detail_line in", values, "detailLine");
            return (Criteria) this;
        }

        public Criteria andDetailLineNotIn(List<String> values) {
            addCriterion("detail_line not in", values, "detailLine");
            return (Criteria) this;
        }

        public Criteria andDetailLineBetween(String value1, String value2) {
            addCriterion("detail_line between", value1, value2, "detailLine");
            return (Criteria) this;
        }

        public Criteria andDetailLineNotBetween(String value1, String value2) {
            addCriterion("detail_line not between", value1, value2, "detailLine");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}