package com.tourism.pojo;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class OrderExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public OrderExample() {
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

        public Criteria andOrderIdIsNull() {
            addCriterion("order_id is null");
            return (Criteria) this;
        }

        public Criteria andOrderIdIsNotNull() {
            addCriterion("order_id is not null");
            return (Criteria) this;
        }

        public Criteria andOrderIdEqualTo(Integer value) {
            addCriterion("order_id =", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdNotEqualTo(Integer value) {
            addCriterion("order_id <>", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdGreaterThan(Integer value) {
            addCriterion("order_id >", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("order_id >=", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdLessThan(Integer value) {
            addCriterion("order_id <", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdLessThanOrEqualTo(Integer value) {
            addCriterion("order_id <=", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdIn(List<Integer> values) {
            addCriterion("order_id in", values, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdNotIn(List<Integer> values) {
            addCriterion("order_id not in", values, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdBetween(Integer value1, Integer value2) {
            addCriterion("order_id between", value1, value2, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdNotBetween(Integer value1, Integer value2) {
            addCriterion("order_id not between", value1, value2, "orderId");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNull() {
            addCriterion("user_id is null");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNotNull() {
            addCriterion("user_id is not null");
            return (Criteria) this;
        }

        public Criteria andUserIdEqualTo(Integer value) {
            addCriterion("user_id =", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotEqualTo(Integer value) {
            addCriterion("user_id <>", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThan(Integer value) {
            addCriterion("user_id >", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("user_id >=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThan(Integer value) {
            addCriterion("user_id <", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("user_id <=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdIn(List<Integer> values) {
            addCriterion("user_id in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotIn(List<Integer> values) {
            addCriterion("user_id not in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdBetween(Integer value1, Integer value2) {
            addCriterion("user_id between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("user_id not between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andAttIdIsNull() {
            addCriterion("att_id is null");
            return (Criteria) this;
        }

        public Criteria andAttIdIsNotNull() {
            addCriterion("att_id is not null");
            return (Criteria) this;
        }

        public Criteria andAttIdEqualTo(Integer value) {
            addCriterion("att_id =", value, "attId");
            return (Criteria) this;
        }

        public Criteria andAttIdNotEqualTo(Integer value) {
            addCriterion("att_id <>", value, "attId");
            return (Criteria) this;
        }

        public Criteria andAttIdGreaterThan(Integer value) {
            addCriterion("att_id >", value, "attId");
            return (Criteria) this;
        }

        public Criteria andAttIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("att_id >=", value, "attId");
            return (Criteria) this;
        }

        public Criteria andAttIdLessThan(Integer value) {
            addCriterion("att_id <", value, "attId");
            return (Criteria) this;
        }

        public Criteria andAttIdLessThanOrEqualTo(Integer value) {
            addCriterion("att_id <=", value, "attId");
            return (Criteria) this;
        }

        public Criteria andAttIdIn(List<Integer> values) {
            addCriterion("att_id in", values, "attId");
            return (Criteria) this;
        }

        public Criteria andAttIdNotIn(List<Integer> values) {
            addCriterion("att_id not in", values, "attId");
            return (Criteria) this;
        }

        public Criteria andAttIdBetween(Integer value1, Integer value2) {
            addCriterion("att_id between", value1, value2, "attId");
            return (Criteria) this;
        }

        public Criteria andAttIdNotBetween(Integer value1, Integer value2) {
            addCriterion("att_id not between", value1, value2, "attId");
            return (Criteria) this;
        }

        public Criteria andAttPriceIsNull() {
            addCriterion("att_price is null");
            return (Criteria) this;
        }

        public Criteria andAttPriceIsNotNull() {
            addCriterion("att_price is not null");
            return (Criteria) this;
        }

        public Criteria andAttPriceEqualTo(Float value) {
            addCriterion("att_price =", value, "attPrice");
            return (Criteria) this;
        }

        public Criteria andAttPriceNotEqualTo(Float value) {
            addCriterion("att_price <>", value, "attPrice");
            return (Criteria) this;
        }

        public Criteria andAttPriceGreaterThan(Float value) {
            addCriterion("att_price >", value, "attPrice");
            return (Criteria) this;
        }

        public Criteria andAttPriceGreaterThanOrEqualTo(Float value) {
            addCriterion("att_price >=", value, "attPrice");
            return (Criteria) this;
        }

        public Criteria andAttPriceLessThan(Float value) {
            addCriterion("att_price <", value, "attPrice");
            return (Criteria) this;
        }

        public Criteria andAttPriceLessThanOrEqualTo(Float value) {
            addCriterion("att_price <=", value, "attPrice");
            return (Criteria) this;
        }

        public Criteria andAttPriceIn(List<Float> values) {
            addCriterion("att_price in", values, "attPrice");
            return (Criteria) this;
        }

        public Criteria andAttPriceNotIn(List<Float> values) {
            addCriterion("att_price not in", values, "attPrice");
            return (Criteria) this;
        }

        public Criteria andAttPriceBetween(Float value1, Float value2) {
            addCriterion("att_price between", value1, value2, "attPrice");
            return (Criteria) this;
        }

        public Criteria andAttPriceNotBetween(Float value1, Float value2) {
            addCriterion("att_price not between", value1, value2, "attPrice");
            return (Criteria) this;
        }

        public Criteria andOrderTimeIsNull() {
            addCriterion("order_time is null");
            return (Criteria) this;
        }

        public Criteria andOrderTimeIsNotNull() {
            addCriterion("order_time is not null");
            return (Criteria) this;
        }

        public Criteria andOrderTimeEqualTo(Date value) {
            addCriterion("order_time =", value, "orderTime");
            return (Criteria) this;
        }

        public Criteria andOrderTimeNotEqualTo(Date value) {
            addCriterion("order_time <>", value, "orderTime");
            return (Criteria) this;
        }

        public Criteria andOrderTimeGreaterThan(Date value) {
            addCriterion("order_time >", value, "orderTime");
            return (Criteria) this;
        }

        public Criteria andOrderTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("order_time >=", value, "orderTime");
            return (Criteria) this;
        }

        public Criteria andOrderTimeLessThan(Date value) {
            addCriterion("order_time <", value, "orderTime");
            return (Criteria) this;
        }

        public Criteria andOrderTimeLessThanOrEqualTo(Date value) {
            addCriterion("order_time <=", value, "orderTime");
            return (Criteria) this;
        }

        public Criteria andOrderTimeIn(List<Date> values) {
            addCriterion("order_time in", values, "orderTime");
            return (Criteria) this;
        }

        public Criteria andOrderTimeNotIn(List<Date> values) {
            addCriterion("order_time not in", values, "orderTime");
            return (Criteria) this;
        }

        public Criteria andOrderTimeBetween(Date value1, Date value2) {
            addCriterion("order_time between", value1, value2, "orderTime");
            return (Criteria) this;
        }

        public Criteria andOrderTimeNotBetween(Date value1, Date value2) {
            addCriterion("order_time not between", value1, value2, "orderTime");
            return (Criteria) this;
        }

        public Criteria andOrderNumberIsNull() {
            addCriterion("order_number is null");
            return (Criteria) this;
        }

        public Criteria andOrderNumberIsNotNull() {
            addCriterion("order_number is not null");
            return (Criteria) this;
        }

        public Criteria andOrderNumberEqualTo(Integer value) {
            addCriterion("order_number =", value, "orderNumber");
            return (Criteria) this;
        }

        public Criteria andOrderNumberNotEqualTo(Integer value) {
            addCriterion("order_number <>", value, "orderNumber");
            return (Criteria) this;
        }

        public Criteria andOrderNumberGreaterThan(Integer value) {
            addCriterion("order_number >", value, "orderNumber");
            return (Criteria) this;
        }

        public Criteria andOrderNumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("order_number >=", value, "orderNumber");
            return (Criteria) this;
        }

        public Criteria andOrderNumberLessThan(Integer value) {
            addCriterion("order_number <", value, "orderNumber");
            return (Criteria) this;
        }

        public Criteria andOrderNumberLessThanOrEqualTo(Integer value) {
            addCriterion("order_number <=", value, "orderNumber");
            return (Criteria) this;
        }

        public Criteria andOrderNumberIn(List<Integer> values) {
            addCriterion("order_number in", values, "orderNumber");
            return (Criteria) this;
        }

        public Criteria andOrderNumberNotIn(List<Integer> values) {
            addCriterion("order_number not in", values, "orderNumber");
            return (Criteria) this;
        }

        public Criteria andOrderNumberBetween(Integer value1, Integer value2) {
            addCriterion("order_number between", value1, value2, "orderNumber");
            return (Criteria) this;
        }

        public Criteria andOrderNumberNotBetween(Integer value1, Integer value2) {
            addCriterion("order_number not between", value1, value2, "orderNumber");
            return (Criteria) this;
        }

        public Criteria andOrderMoneyIsNull() {
            addCriterion("order_money is null");
            return (Criteria) this;
        }

        public Criteria andOrderMoneyIsNotNull() {
            addCriterion("order_money is not null");
            return (Criteria) this;
        }

        public Criteria andOrderMoneyEqualTo(BigDecimal value) {
            addCriterion("order_money =", value, "orderMoney");
            return (Criteria) this;
        }

        public Criteria andOrderMoneyNotEqualTo(BigDecimal value) {
            addCriterion("order_money <>", value, "orderMoney");
            return (Criteria) this;
        }

        public Criteria andOrderMoneyGreaterThan(BigDecimal value) {
            addCriterion("order_money >", value, "orderMoney");
            return (Criteria) this;
        }

        public Criteria andOrderMoneyGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("order_money >=", value, "orderMoney");
            return (Criteria) this;
        }

        public Criteria andOrderMoneyLessThan(BigDecimal value) {
            addCriterion("order_money <", value, "orderMoney");
            return (Criteria) this;
        }

        public Criteria andOrderMoneyLessThanOrEqualTo(BigDecimal value) {
            addCriterion("order_money <=", value, "orderMoney");
            return (Criteria) this;
        }

        public Criteria andOrderMoneyIn(List<BigDecimal> values) {
            addCriterion("order_money in", values, "orderMoney");
            return (Criteria) this;
        }

        public Criteria andOrderMoneyNotIn(List<BigDecimal> values) {
            addCriterion("order_money not in", values, "orderMoney");
            return (Criteria) this;
        }

        public Criteria andOrderMoneyBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("order_money between", value1, value2, "orderMoney");
            return (Criteria) this;
        }

        public Criteria andOrderMoneyNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("order_money not between", value1, value2, "orderMoney");
            return (Criteria) this;
        }

        public Criteria andAttNameIsNull() {
            addCriterion("att_name is null");
            return (Criteria) this;
        }

        public Criteria andAttNameIsNotNull() {
            addCriterion("att_name is not null");
            return (Criteria) this;
        }

        public Criteria andAttNameEqualTo(String value) {
            addCriterion("att_name =", value, "attName");
            return (Criteria) this;
        }

        public Criteria andAttNameNotEqualTo(String value) {
            addCriterion("att_name <>", value, "attName");
            return (Criteria) this;
        }

        public Criteria andAttNameGreaterThan(String value) {
            addCriterion("att_name >", value, "attName");
            return (Criteria) this;
        }

        public Criteria andAttNameGreaterThanOrEqualTo(String value) {
            addCriterion("att_name >=", value, "attName");
            return (Criteria) this;
        }

        public Criteria andAttNameLessThan(String value) {
            addCriterion("att_name <", value, "attName");
            return (Criteria) this;
        }

        public Criteria andAttNameLessThanOrEqualTo(String value) {
            addCriterion("att_name <=", value, "attName");
            return (Criteria) this;
        }

        public Criteria andAttNameLike(String value) {
            addCriterion("att_name like", value, "attName");
            return (Criteria) this;
        }

        public Criteria andAttNameNotLike(String value) {
            addCriterion("att_name not like", value, "attName");
            return (Criteria) this;
        }

        public Criteria andAttNameIn(List<String> values) {
            addCriterion("att_name in", values, "attName");
            return (Criteria) this;
        }

        public Criteria andAttNameNotIn(List<String> values) {
            addCriterion("att_name not in", values, "attName");
            return (Criteria) this;
        }

        public Criteria andAttNameBetween(String value1, String value2) {
            addCriterion("att_name between", value1, value2, "attName");
            return (Criteria) this;
        }

        public Criteria andAttNameNotBetween(String value1, String value2) {
            addCriterion("att_name not between", value1, value2, "attName");
            return (Criteria) this;
        }

        public Criteria andIsEvaluationIsNull() {
            addCriterion("is_evaluation is null");
            return (Criteria) this;
        }

        public Criteria andIsEvaluationIsNotNull() {
            addCriterion("is_evaluation is not null");
            return (Criteria) this;
        }

        public Criteria andIsEvaluationEqualTo(Boolean value) {
            addCriterion("is_evaluation =", value, "isEvaluation");
            return (Criteria) this;
        }

        public Criteria andIsEvaluationNotEqualTo(Boolean value) {
            addCriterion("is_evaluation <>", value, "isEvaluation");
            return (Criteria) this;
        }

        public Criteria andIsEvaluationGreaterThan(Boolean value) {
            addCriterion("is_evaluation >", value, "isEvaluation");
            return (Criteria) this;
        }

        public Criteria andIsEvaluationGreaterThanOrEqualTo(Boolean value) {
            addCriterion("is_evaluation >=", value, "isEvaluation");
            return (Criteria) this;
        }

        public Criteria andIsEvaluationLessThan(Boolean value) {
            addCriterion("is_evaluation <", value, "isEvaluation");
            return (Criteria) this;
        }

        public Criteria andIsEvaluationLessThanOrEqualTo(Boolean value) {
            addCriterion("is_evaluation <=", value, "isEvaluation");
            return (Criteria) this;
        }

        public Criteria andIsEvaluationIn(List<Boolean> values) {
            addCriterion("is_evaluation in", values, "isEvaluation");
            return (Criteria) this;
        }

        public Criteria andIsEvaluationNotIn(List<Boolean> values) {
            addCriterion("is_evaluation not in", values, "isEvaluation");
            return (Criteria) this;
        }

        public Criteria andIsEvaluationBetween(Boolean value1, Boolean value2) {
            addCriterion("is_evaluation between", value1, value2, "isEvaluation");
            return (Criteria) this;
        }

        public Criteria andIsEvaluationNotBetween(Boolean value1, Boolean value2) {
            addCriterion("is_evaluation not between", value1, value2, "isEvaluation");
            return (Criteria) this;
        }

        public Criteria andIsOrderIsNull() {
            addCriterion("is_order is null");
            return (Criteria) this;
        }

        public Criteria andIsOrderIsNotNull() {
            addCriterion("is_order is not null");
            return (Criteria) this;
        }

        public Criteria andIsOrderEqualTo(Boolean value) {
            addCriterion("is_order =", value, "isOrder");
            return (Criteria) this;
        }

        public Criteria andIsOrderNotEqualTo(Boolean value) {
            addCriterion("is_order <>", value, "isOrder");
            return (Criteria) this;
        }

        public Criteria andIsOrderGreaterThan(Boolean value) {
            addCriterion("is_order >", value, "isOrder");
            return (Criteria) this;
        }

        public Criteria andIsOrderGreaterThanOrEqualTo(Boolean value) {
            addCriterion("is_order >=", value, "isOrder");
            return (Criteria) this;
        }

        public Criteria andIsOrderLessThan(Boolean value) {
            addCriterion("is_order <", value, "isOrder");
            return (Criteria) this;
        }

        public Criteria andIsOrderLessThanOrEqualTo(Boolean value) {
            addCriterion("is_order <=", value, "isOrder");
            return (Criteria) this;
        }

        public Criteria andIsOrderIn(List<Boolean> values) {
            addCriterion("is_order in", values, "isOrder");
            return (Criteria) this;
        }

        public Criteria andIsOrderNotIn(List<Boolean> values) {
            addCriterion("is_order not in", values, "isOrder");
            return (Criteria) this;
        }

        public Criteria andIsOrderBetween(Boolean value1, Boolean value2) {
            addCriterion("is_order between", value1, value2, "isOrder");
            return (Criteria) this;
        }

        public Criteria andIsOrderNotBetween(Boolean value1, Boolean value2) {
            addCriterion("is_order not between", value1, value2, "isOrder");
            return (Criteria) this;
        }

        public Criteria andIsDeleteIsNull() {
            addCriterion("is_delete is null");
            return (Criteria) this;
        }

        public Criteria andIsDeleteIsNotNull() {
            addCriterion("is_delete is not null");
            return (Criteria) this;
        }

        public Criteria andIsDeleteEqualTo(Boolean value) {
            addCriterion("is_delete =", value, "isDelete");
            return (Criteria) this;
        }

        public Criteria andIsDeleteNotEqualTo(Boolean value) {
            addCriterion("is_delete <>", value, "isDelete");
            return (Criteria) this;
        }

        public Criteria andIsDeleteGreaterThan(Boolean value) {
            addCriterion("is_delete >", value, "isDelete");
            return (Criteria) this;
        }

        public Criteria andIsDeleteGreaterThanOrEqualTo(Boolean value) {
            addCriterion("is_delete >=", value, "isDelete");
            return (Criteria) this;
        }

        public Criteria andIsDeleteLessThan(Boolean value) {
            addCriterion("is_delete <", value, "isDelete");
            return (Criteria) this;
        }

        public Criteria andIsDeleteLessThanOrEqualTo(Boolean value) {
            addCriterion("is_delete <=", value, "isDelete");
            return (Criteria) this;
        }

        public Criteria andIsDeleteIn(List<Boolean> values) {
            addCriterion("is_delete in", values, "isDelete");
            return (Criteria) this;
        }

        public Criteria andIsDeleteNotIn(List<Boolean> values) {
            addCriterion("is_delete not in", values, "isDelete");
            return (Criteria) this;
        }

        public Criteria andIsDeleteBetween(Boolean value1, Boolean value2) {
            addCriterion("is_delete between", value1, value2, "isDelete");
            return (Criteria) this;
        }

        public Criteria andIsDeleteNotBetween(Boolean value1, Boolean value2) {
            addCriterion("is_delete not between", value1, value2, "isDelete");
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