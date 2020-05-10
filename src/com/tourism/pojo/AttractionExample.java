package com.tourism.pojo;

import java.util.ArrayList;
import java.util.List;

public class AttractionExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public AttractionExample() {
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

        public Criteria andAdminIdIsNull() {
            addCriterion("admin_id is null");
            return (Criteria) this;
        }

        public Criteria andAdminIdIsNotNull() {
            addCriterion("admin_id is not null");
            return (Criteria) this;
        }

        public Criteria andAdminIdEqualTo(Integer value) {
            addCriterion("admin_id =", value, "adminId");
            return (Criteria) this;
        }

        public Criteria andAdminIdNotEqualTo(Integer value) {
            addCriterion("admin_id <>", value, "adminId");
            return (Criteria) this;
        }

        public Criteria andAdminIdGreaterThan(Integer value) {
            addCriterion("admin_id >", value, "adminId");
            return (Criteria) this;
        }

        public Criteria andAdminIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("admin_id >=", value, "adminId");
            return (Criteria) this;
        }

        public Criteria andAdminIdLessThan(Integer value) {
            addCriterion("admin_id <", value, "adminId");
            return (Criteria) this;
        }

        public Criteria andAdminIdLessThanOrEqualTo(Integer value) {
            addCriterion("admin_id <=", value, "adminId");
            return (Criteria) this;
        }

        public Criteria andAdminIdIn(List<Integer> values) {
            addCriterion("admin_id in", values, "adminId");
            return (Criteria) this;
        }

        public Criteria andAdminIdNotIn(List<Integer> values) {
            addCriterion("admin_id not in", values, "adminId");
            return (Criteria) this;
        }

        public Criteria andAdminIdBetween(Integer value1, Integer value2) {
            addCriterion("admin_id between", value1, value2, "adminId");
            return (Criteria) this;
        }

        public Criteria andAdminIdNotBetween(Integer value1, Integer value2) {
            addCriterion("admin_id not between", value1, value2, "adminId");
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

        public Criteria andAttPhotoIsNull() {
            addCriterion("\"att_ photo\" is null");
            return (Criteria) this;
        }

        public Criteria andAttPhotoIsNotNull() {
            addCriterion("\"att_ photo\" is not null");
            return (Criteria) this;
        }

        public Criteria andAttPhotoEqualTo(String value) {
            addCriterion("\"att_ photo\" =", value, "attPhoto");
            return (Criteria) this;
        }

        public Criteria andAttPhotoNotEqualTo(String value) {
            addCriterion("\"att_ photo\" <>", value, "attPhoto");
            return (Criteria) this;
        }

        public Criteria andAttPhotoGreaterThan(String value) {
            addCriterion("\"att_ photo\" >", value, "attPhoto");
            return (Criteria) this;
        }

        public Criteria andAttPhotoGreaterThanOrEqualTo(String value) {
            addCriterion("\"att_ photo\" >=", value, "attPhoto");
            return (Criteria) this;
        }

        public Criteria andAttPhotoLessThan(String value) {
            addCriterion("\"att_ photo\" <", value, "attPhoto");
            return (Criteria) this;
        }

        public Criteria andAttPhotoLessThanOrEqualTo(String value) {
            addCriterion("\"att_ photo\" <=", value, "attPhoto");
            return (Criteria) this;
        }

        public Criteria andAttPhotoLike(String value) {
            addCriterion("\"att_ photo\" like", value, "attPhoto");
            return (Criteria) this;
        }

        public Criteria andAttPhotoNotLike(String value) {
            addCriterion("\"att_ photo\" not like", value, "attPhoto");
            return (Criteria) this;
        }

        public Criteria andAttPhotoIn(List<String> values) {
            addCriterion("\"att_ photo\" in", values, "attPhoto");
            return (Criteria) this;
        }

        public Criteria andAttPhotoNotIn(List<String> values) {
            addCriterion("\"att_ photo\" not in", values, "attPhoto");
            return (Criteria) this;
        }

        public Criteria andAttPhotoBetween(String value1, String value2) {
            addCriterion("\"att_ photo\" between", value1, value2, "attPhoto");
            return (Criteria) this;
        }

        public Criteria andAttPhotoNotBetween(String value1, String value2) {
            addCriterion("\"att_ photo\" not between", value1, value2, "attPhoto");
            return (Criteria) this;
        }

        public Criteria andAttAddressIsNull() {
            addCriterion("att_address is null");
            return (Criteria) this;
        }

        public Criteria andAttAddressIsNotNull() {
            addCriterion("att_address is not null");
            return (Criteria) this;
        }

        public Criteria andAttAddressEqualTo(String value) {
            addCriterion("att_address =", value, "attAddress");
            return (Criteria) this;
        }

        public Criteria andAttAddressNotEqualTo(String value) {
            addCriterion("att_address <>", value, "attAddress");
            return (Criteria) this;
        }

        public Criteria andAttAddressGreaterThan(String value) {
            addCriterion("att_address >", value, "attAddress");
            return (Criteria) this;
        }

        public Criteria andAttAddressGreaterThanOrEqualTo(String value) {
            addCriterion("att_address >=", value, "attAddress");
            return (Criteria) this;
        }

        public Criteria andAttAddressLessThan(String value) {
            addCriterion("att_address <", value, "attAddress");
            return (Criteria) this;
        }

        public Criteria andAttAddressLessThanOrEqualTo(String value) {
            addCriterion("att_address <=", value, "attAddress");
            return (Criteria) this;
        }

        public Criteria andAttAddressLike(String value) {
            addCriterion("att_address like", value, "attAddress");
            return (Criteria) this;
        }

        public Criteria andAttAddressNotLike(String value) {
            addCriterion("att_address not like", value, "attAddress");
            return (Criteria) this;
        }

        public Criteria andAttAddressIn(List<String> values) {
            addCriterion("att_address in", values, "attAddress");
            return (Criteria) this;
        }

        public Criteria andAttAddressNotIn(List<String> values) {
            addCriterion("att_address not in", values, "attAddress");
            return (Criteria) this;
        }

        public Criteria andAttAddressBetween(String value1, String value2) {
            addCriterion("att_address between", value1, value2, "attAddress");
            return (Criteria) this;
        }

        public Criteria andAttAddressNotBetween(String value1, String value2) {
            addCriterion("att_address not between", value1, value2, "attAddress");
            return (Criteria) this;
        }

        public Criteria andAttIntroduceIsNull() {
            addCriterion("att_introduce is null");
            return (Criteria) this;
        }

        public Criteria andAttIntroduceIsNotNull() {
            addCriterion("att_introduce is not null");
            return (Criteria) this;
        }

        public Criteria andAttIntroduceEqualTo(String value) {
            addCriterion("att_introduce =", value, "attIntroduce");
            return (Criteria) this;
        }

        public Criteria andAttIntroduceNotEqualTo(String value) {
            addCriterion("att_introduce <>", value, "attIntroduce");
            return (Criteria) this;
        }

        public Criteria andAttIntroduceGreaterThan(String value) {
            addCriterion("att_introduce >", value, "attIntroduce");
            return (Criteria) this;
        }

        public Criteria andAttIntroduceGreaterThanOrEqualTo(String value) {
            addCriterion("att_introduce >=", value, "attIntroduce");
            return (Criteria) this;
        }

        public Criteria andAttIntroduceLessThan(String value) {
            addCriterion("att_introduce <", value, "attIntroduce");
            return (Criteria) this;
        }

        public Criteria andAttIntroduceLessThanOrEqualTo(String value) {
            addCriterion("att_introduce <=", value, "attIntroduce");
            return (Criteria) this;
        }

        public Criteria andAttIntroduceLike(String value) {
            addCriterion("att_introduce like", value, "attIntroduce");
            return (Criteria) this;
        }

        public Criteria andAttIntroduceNotLike(String value) {
            addCriterion("att_introduce not like", value, "attIntroduce");
            return (Criteria) this;
        }

        public Criteria andAttIntroduceIn(List<String> values) {
            addCriterion("att_introduce in", values, "attIntroduce");
            return (Criteria) this;
        }

        public Criteria andAttIntroduceNotIn(List<String> values) {
            addCriterion("att_introduce not in", values, "attIntroduce");
            return (Criteria) this;
        }

        public Criteria andAttIntroduceBetween(String value1, String value2) {
            addCriterion("att_introduce between", value1, value2, "attIntroduce");
            return (Criteria) this;
        }

        public Criteria andAttIntroduceNotBetween(String value1, String value2) {
            addCriterion("att_introduce not between", value1, value2, "attIntroduce");
            return (Criteria) this;
        }

        public Criteria andAttGradeIsNull() {
            addCriterion("att_grade is null");
            return (Criteria) this;
        }

        public Criteria andAttGradeIsNotNull() {
            addCriterion("att_grade is not null");
            return (Criteria) this;
        }

        public Criteria andAttGradeEqualTo(Float value) {
            addCriterion("att_grade =", value, "attGrade");
            return (Criteria) this;
        }

        public Criteria andAttGradeNotEqualTo(Float value) {
            addCriterion("att_grade <>", value, "attGrade");
            return (Criteria) this;
        }

        public Criteria andAttGradeGreaterThan(Float value) {
            addCriterion("att_grade >", value, "attGrade");
            return (Criteria) this;
        }

        public Criteria andAttGradeGreaterThanOrEqualTo(Float value) {
            addCriterion("att_grade >=", value, "attGrade");
            return (Criteria) this;
        }

        public Criteria andAttGradeLessThan(Float value) {
            addCriterion("att_grade <", value, "attGrade");
            return (Criteria) this;
        }

        public Criteria andAttGradeLessThanOrEqualTo(Float value) {
            addCriterion("att_grade <=", value, "attGrade");
            return (Criteria) this;
        }

        public Criteria andAttGradeIn(List<Float> values) {
            addCriterion("att_grade in", values, "attGrade");
            return (Criteria) this;
        }

        public Criteria andAttGradeNotIn(List<Float> values) {
            addCriterion("att_grade not in", values, "attGrade");
            return (Criteria) this;
        }

        public Criteria andAttGradeBetween(Float value1, Float value2) {
            addCriterion("att_grade between", value1, value2, "attGrade");
            return (Criteria) this;
        }

        public Criteria andAttGradeNotBetween(Float value1, Float value2) {
            addCriterion("att_grade not between", value1, value2, "attGrade");
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