package com.tourism.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class EvaluationExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public EvaluationExample() {
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

        public Criteria andEvaIdIsNull() {
            addCriterion("eva_id is null");
            return (Criteria) this;
        }

        public Criteria andEvaIdIsNotNull() {
            addCriterion("eva_id is not null");
            return (Criteria) this;
        }

        public Criteria andEvaIdEqualTo(Integer value) {
            addCriterion("eva_id =", value, "evaId");
            return (Criteria) this;
        }

        public Criteria andEvaIdNotEqualTo(Integer value) {
            addCriterion("eva_id <>", value, "evaId");
            return (Criteria) this;
        }

        public Criteria andEvaIdGreaterThan(Integer value) {
            addCriterion("eva_id >", value, "evaId");
            return (Criteria) this;
        }

        public Criteria andEvaIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("eva_id >=", value, "evaId");
            return (Criteria) this;
        }

        public Criteria andEvaIdLessThan(Integer value) {
            addCriterion("eva_id <", value, "evaId");
            return (Criteria) this;
        }

        public Criteria andEvaIdLessThanOrEqualTo(Integer value) {
            addCriterion("eva_id <=", value, "evaId");
            return (Criteria) this;
        }

        public Criteria andEvaIdIn(List<Integer> values) {
            addCriterion("eva_id in", values, "evaId");
            return (Criteria) this;
        }

        public Criteria andEvaIdNotIn(List<Integer> values) {
            addCriterion("eva_id not in", values, "evaId");
            return (Criteria) this;
        }

        public Criteria andEvaIdBetween(Integer value1, Integer value2) {
            addCriterion("eva_id between", value1, value2, "evaId");
            return (Criteria) this;
        }

        public Criteria andEvaIdNotBetween(Integer value1, Integer value2) {
            addCriterion("eva_id not between", value1, value2, "evaId");
            return (Criteria) this;
        }

        public Criteria andEvaContentIsNull() {
            addCriterion("eva_content is null");
            return (Criteria) this;
        }

        public Criteria andEvaContentIsNotNull() {
            addCriterion("eva_content is not null");
            return (Criteria) this;
        }

        public Criteria andEvaContentEqualTo(String value) {
            addCriterion("eva_content =", value, "evaContent");
            return (Criteria) this;
        }

        public Criteria andEvaContentNotEqualTo(String value) {
            addCriterion("eva_content <>", value, "evaContent");
            return (Criteria) this;
        }

        public Criteria andEvaContentGreaterThan(String value) {
            addCriterion("eva_content >", value, "evaContent");
            return (Criteria) this;
        }

        public Criteria andEvaContentGreaterThanOrEqualTo(String value) {
            addCriterion("eva_content >=", value, "evaContent");
            return (Criteria) this;
        }

        public Criteria andEvaContentLessThan(String value) {
            addCriterion("eva_content <", value, "evaContent");
            return (Criteria) this;
        }

        public Criteria andEvaContentLessThanOrEqualTo(String value) {
            addCriterion("eva_content <=", value, "evaContent");
            return (Criteria) this;
        }

        public Criteria andEvaContentLike(String value) {
            addCriterion("eva_content like", value, "evaContent");
            return (Criteria) this;
        }

        public Criteria andEvaContentNotLike(String value) {
            addCriterion("eva_content not like", value, "evaContent");
            return (Criteria) this;
        }

        public Criteria andEvaContentIn(List<String> values) {
            addCriterion("eva_content in", values, "evaContent");
            return (Criteria) this;
        }

        public Criteria andEvaContentNotIn(List<String> values) {
            addCriterion("eva_content not in", values, "evaContent");
            return (Criteria) this;
        }

        public Criteria andEvaContentBetween(String value1, String value2) {
            addCriterion("eva_content between", value1, value2, "evaContent");
            return (Criteria) this;
        }

        public Criteria andEvaContentNotBetween(String value1, String value2) {
            addCriterion("eva_content not between", value1, value2, "evaContent");
            return (Criteria) this;
        }

        public Criteria andEvaTimeIsNull() {
            addCriterion("eva_time is null");
            return (Criteria) this;
        }

        public Criteria andEvaTimeIsNotNull() {
            addCriterion("eva_time is not null");
            return (Criteria) this;
        }

        public Criteria andEvaTimeEqualTo(Date value) {
            addCriterion("eva_time =", value, "evaTime");
            return (Criteria) this;
        }

        public Criteria andEvaTimeNotEqualTo(Date value) {
            addCriterion("eva_time <>", value, "evaTime");
            return (Criteria) this;
        }

        public Criteria andEvaTimeGreaterThan(Date value) {
            addCriterion("eva_time >", value, "evaTime");
            return (Criteria) this;
        }

        public Criteria andEvaTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("eva_time >=", value, "evaTime");
            return (Criteria) this;
        }

        public Criteria andEvaTimeLessThan(Date value) {
            addCriterion("eva_time <", value, "evaTime");
            return (Criteria) this;
        }

        public Criteria andEvaTimeLessThanOrEqualTo(Date value) {
            addCriterion("eva_time <=", value, "evaTime");
            return (Criteria) this;
        }

        public Criteria andEvaTimeIn(List<Date> values) {
            addCriterion("eva_time in", values, "evaTime");
            return (Criteria) this;
        }

        public Criteria andEvaTimeNotIn(List<Date> values) {
            addCriterion("eva_time not in", values, "evaTime");
            return (Criteria) this;
        }

        public Criteria andEvaTimeBetween(Date value1, Date value2) {
            addCriterion("eva_time between", value1, value2, "evaTime");
            return (Criteria) this;
        }

        public Criteria andEvaTimeNotBetween(Date value1, Date value2) {
            addCriterion("eva_time not between", value1, value2, "evaTime");
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

        public Criteria andUserNicknameIsNull() {
            addCriterion("user_nickname is null");
            return (Criteria) this;
        }

        public Criteria andUserNicknameIsNotNull() {
            addCriterion("user_nickname is not null");
            return (Criteria) this;
        }

        public Criteria andUserNicknameEqualTo(String value) {
            addCriterion("user_nickname =", value, "userNickname");
            return (Criteria) this;
        }

        public Criteria andUserNicknameNotEqualTo(String value) {
            addCriterion("user_nickname <>", value, "userNickname");
            return (Criteria) this;
        }

        public Criteria andUserNicknameGreaterThan(String value) {
            addCriterion("user_nickname >", value, "userNickname");
            return (Criteria) this;
        }

        public Criteria andUserNicknameGreaterThanOrEqualTo(String value) {
            addCriterion("user_nickname >=", value, "userNickname");
            return (Criteria) this;
        }

        public Criteria andUserNicknameLessThan(String value) {
            addCriterion("user_nickname <", value, "userNickname");
            return (Criteria) this;
        }

        public Criteria andUserNicknameLessThanOrEqualTo(String value) {
            addCriterion("user_nickname <=", value, "userNickname");
            return (Criteria) this;
        }

        public Criteria andUserNicknameLike(String value) {
            addCriterion("user_nickname like", value, "userNickname");
            return (Criteria) this;
        }

        public Criteria andUserNicknameNotLike(String value) {
            addCriterion("user_nickname not like", value, "userNickname");
            return (Criteria) this;
        }

        public Criteria andUserNicknameIn(List<String> values) {
            addCriterion("user_nickname in", values, "userNickname");
            return (Criteria) this;
        }

        public Criteria andUserNicknameNotIn(List<String> values) {
            addCriterion("user_nickname not in", values, "userNickname");
            return (Criteria) this;
        }

        public Criteria andUserNicknameBetween(String value1, String value2) {
            addCriterion("user_nickname between", value1, value2, "userNickname");
            return (Criteria) this;
        }

        public Criteria andUserNicknameNotBetween(String value1, String value2) {
            addCriterion("user_nickname not between", value1, value2, "userNickname");
            return (Criteria) this;
        }

        public Criteria andIsAnonymousIsNull() {
            addCriterion("is_anonymous is null");
            return (Criteria) this;
        }

        public Criteria andIsAnonymousIsNotNull() {
            addCriterion("is_anonymous is not null");
            return (Criteria) this;
        }

        public Criteria andIsAnonymousEqualTo(Boolean value) {
            addCriterion("is_anonymous =", value, "isAnonymous");
            return (Criteria) this;
        }

        public Criteria andIsAnonymousNotEqualTo(Boolean value) {
            addCriterion("is_anonymous <>", value, "isAnonymous");
            return (Criteria) this;
        }

        public Criteria andIsAnonymousGreaterThan(Boolean value) {
            addCriterion("is_anonymous >", value, "isAnonymous");
            return (Criteria) this;
        }

        public Criteria andIsAnonymousGreaterThanOrEqualTo(Boolean value) {
            addCriterion("is_anonymous >=", value, "isAnonymous");
            return (Criteria) this;
        }

        public Criteria andIsAnonymousLessThan(Boolean value) {
            addCriterion("is_anonymous <", value, "isAnonymous");
            return (Criteria) this;
        }

        public Criteria andIsAnonymousLessThanOrEqualTo(Boolean value) {
            addCriterion("is_anonymous <=", value, "isAnonymous");
            return (Criteria) this;
        }

        public Criteria andIsAnonymousIn(List<Boolean> values) {
            addCriterion("is_anonymous in", values, "isAnonymous");
            return (Criteria) this;
        }

        public Criteria andIsAnonymousNotIn(List<Boolean> values) {
            addCriterion("is_anonymous not in", values, "isAnonymous");
            return (Criteria) this;
        }

        public Criteria andIsAnonymousBetween(Boolean value1, Boolean value2) {
            addCriterion("is_anonymous between", value1, value2, "isAnonymous");
            return (Criteria) this;
        }

        public Criteria andIsAnonymousNotBetween(Boolean value1, Boolean value2) {
            addCriterion("is_anonymous not between", value1, value2, "isAnonymous");
            return (Criteria) this;
        }

        public Criteria andEvaGradeIsNull() {
            addCriterion("eva_grade is null");
            return (Criteria) this;
        }

        public Criteria andEvaGradeIsNotNull() {
            addCriterion("eva_grade is not null");
            return (Criteria) this;
        }

        public Criteria andEvaGradeEqualTo(Float value) {
            addCriterion("eva_grade =", value, "evaGrade");
            return (Criteria) this;
        }

        public Criteria andEvaGradeNotEqualTo(Float value) {
            addCriterion("eva_grade <>", value, "evaGrade");
            return (Criteria) this;
        }

        public Criteria andEvaGradeGreaterThan(Float value) {
            addCriterion("eva_grade >", value, "evaGrade");
            return (Criteria) this;
        }

        public Criteria andEvaGradeGreaterThanOrEqualTo(Float value) {
            addCriterion("eva_grade >=", value, "evaGrade");
            return (Criteria) this;
        }

        public Criteria andEvaGradeLessThan(Float value) {
            addCriterion("eva_grade <", value, "evaGrade");
            return (Criteria) this;
        }

        public Criteria andEvaGradeLessThanOrEqualTo(Float value) {
            addCriterion("eva_grade <=", value, "evaGrade");
            return (Criteria) this;
        }

        public Criteria andEvaGradeIn(List<Float> values) {
            addCriterion("eva_grade in", values, "evaGrade");
            return (Criteria) this;
        }

        public Criteria andEvaGradeNotIn(List<Float> values) {
            addCriterion("eva_grade not in", values, "evaGrade");
            return (Criteria) this;
        }

        public Criteria andEvaGradeBetween(Float value1, Float value2) {
            addCriterion("eva_grade between", value1, value2, "evaGrade");
            return (Criteria) this;
        }

        public Criteria andEvaGradeNotBetween(Float value1, Float value2) {
            addCriterion("eva_grade not between", value1, value2, "evaGrade");
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

        public Criteria andEvaPhotoIsNull() {
            addCriterion("eva_photo is null");
            return (Criteria) this;
        }

        public Criteria andEvaPhotoIsNotNull() {
            addCriterion("eva_photo is not null");
            return (Criteria) this;
        }

        public Criteria andEvaPhotoEqualTo(String value) {
            addCriterion("eva_photo =", value, "evaPhoto");
            return (Criteria) this;
        }

        public Criteria andEvaPhotoNotEqualTo(String value) {
            addCriterion("eva_photo <>", value, "evaPhoto");
            return (Criteria) this;
        }

        public Criteria andEvaPhotoGreaterThan(String value) {
            addCriterion("eva_photo >", value, "evaPhoto");
            return (Criteria) this;
        }

        public Criteria andEvaPhotoGreaterThanOrEqualTo(String value) {
            addCriterion("eva_photo >=", value, "evaPhoto");
            return (Criteria) this;
        }

        public Criteria andEvaPhotoLessThan(String value) {
            addCriterion("eva_photo <", value, "evaPhoto");
            return (Criteria) this;
        }

        public Criteria andEvaPhotoLessThanOrEqualTo(String value) {
            addCriterion("eva_photo <=", value, "evaPhoto");
            return (Criteria) this;
        }

        public Criteria andEvaPhotoLike(String value) {
            addCriterion("eva_photo like", value, "evaPhoto");
            return (Criteria) this;
        }

        public Criteria andEvaPhotoNotLike(String value) {
            addCriterion("eva_photo not like", value, "evaPhoto");
            return (Criteria) this;
        }

        public Criteria andEvaPhotoIn(List<String> values) {
            addCriterion("eva_photo in", values, "evaPhoto");
            return (Criteria) this;
        }

        public Criteria andEvaPhotoNotIn(List<String> values) {
            addCriterion("eva_photo not in", values, "evaPhoto");
            return (Criteria) this;
        }

        public Criteria andEvaPhotoBetween(String value1, String value2) {
            addCriterion("eva_photo between", value1, value2, "evaPhoto");
            return (Criteria) this;
        }

        public Criteria andEvaPhotoNotBetween(String value1, String value2) {
            addCriterion("eva_photo not between", value1, value2, "evaPhoto");
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