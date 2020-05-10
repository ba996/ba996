package com.tourism.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class AdminExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public AdminExample() {
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

        public Criteria andAdminAccountIsNull() {
            addCriterion("admin_account is null");
            return (Criteria) this;
        }

        public Criteria andAdminAccountIsNotNull() {
            addCriterion("admin_account is not null");
            return (Criteria) this;
        }

        public Criteria andAdminAccountEqualTo(String value) {
            addCriterion("admin_account =", value, "adminAccount");
            return (Criteria) this;
        }

        public Criteria andAdminAccountNotEqualTo(String value) {
            addCriterion("admin_account <>", value, "adminAccount");
            return (Criteria) this;
        }

        public Criteria andAdminAccountGreaterThan(String value) {
            addCriterion("admin_account >", value, "adminAccount");
            return (Criteria) this;
        }

        public Criteria andAdminAccountGreaterThanOrEqualTo(String value) {
            addCriterion("admin_account >=", value, "adminAccount");
            return (Criteria) this;
        }

        public Criteria andAdminAccountLessThan(String value) {
            addCriterion("admin_account <", value, "adminAccount");
            return (Criteria) this;
        }

        public Criteria andAdminAccountLessThanOrEqualTo(String value) {
            addCriterion("admin_account <=", value, "adminAccount");
            return (Criteria) this;
        }

        public Criteria andAdminAccountLike(String value) {
            addCriterion("admin_account like", value, "adminAccount");
            return (Criteria) this;
        }

        public Criteria andAdminAccountNotLike(String value) {
            addCriterion("admin_account not like", value, "adminAccount");
            return (Criteria) this;
        }

        public Criteria andAdminAccountIn(List<String> values) {
            addCriterion("admin_account in", values, "adminAccount");
            return (Criteria) this;
        }

        public Criteria andAdminAccountNotIn(List<String> values) {
            addCriterion("admin_account not in", values, "adminAccount");
            return (Criteria) this;
        }

        public Criteria andAdminAccountBetween(String value1, String value2) {
            addCriterion("admin_account between", value1, value2, "adminAccount");
            return (Criteria) this;
        }

        public Criteria andAdminAccountNotBetween(String value1, String value2) {
            addCriterion("admin_account not between", value1, value2, "adminAccount");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordIsNull() {
            addCriterion("admin_password is null");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordIsNotNull() {
            addCriterion("admin_password is not null");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordEqualTo(String value) {
            addCriterion("admin_password =", value, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordNotEqualTo(String value) {
            addCriterion("admin_password <>", value, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordGreaterThan(String value) {
            addCriterion("admin_password >", value, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordGreaterThanOrEqualTo(String value) {
            addCriterion("admin_password >=", value, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordLessThan(String value) {
            addCriterion("admin_password <", value, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordLessThanOrEqualTo(String value) {
            addCriterion("admin_password <=", value, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordLike(String value) {
            addCriterion("admin_password like", value, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordNotLike(String value) {
            addCriterion("admin_password not like", value, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordIn(List<String> values) {
            addCriterion("admin_password in", values, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordNotIn(List<String> values) {
            addCriterion("admin_password not in", values, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordBetween(String value1, String value2) {
            addCriterion("admin_password between", value1, value2, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordNotBetween(String value1, String value2) {
            addCriterion("admin_password not between", value1, value2, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminNicknameIsNull() {
            addCriterion("admin_nickname is null");
            return (Criteria) this;
        }

        public Criteria andAdminNicknameIsNotNull() {
            addCriterion("admin_nickname is not null");
            return (Criteria) this;
        }

        public Criteria andAdminNicknameEqualTo(String value) {
            addCriterion("admin_nickname =", value, "adminNickname");
            return (Criteria) this;
        }

        public Criteria andAdminNicknameNotEqualTo(String value) {
            addCriterion("admin_nickname <>", value, "adminNickname");
            return (Criteria) this;
        }

        public Criteria andAdminNicknameGreaterThan(String value) {
            addCriterion("admin_nickname >", value, "adminNickname");
            return (Criteria) this;
        }

        public Criteria andAdminNicknameGreaterThanOrEqualTo(String value) {
            addCriterion("admin_nickname >=", value, "adminNickname");
            return (Criteria) this;
        }

        public Criteria andAdminNicknameLessThan(String value) {
            addCriterion("admin_nickname <", value, "adminNickname");
            return (Criteria) this;
        }

        public Criteria andAdminNicknameLessThanOrEqualTo(String value) {
            addCriterion("admin_nickname <=", value, "adminNickname");
            return (Criteria) this;
        }

        public Criteria andAdminNicknameLike(String value) {
            addCriterion("admin_nickname like", value, "adminNickname");
            return (Criteria) this;
        }

        public Criteria andAdminNicknameNotLike(String value) {
            addCriterion("admin_nickname not like", value, "adminNickname");
            return (Criteria) this;
        }

        public Criteria andAdminNicknameIn(List<String> values) {
            addCriterion("admin_nickname in", values, "adminNickname");
            return (Criteria) this;
        }

        public Criteria andAdminNicknameNotIn(List<String> values) {
            addCriterion("admin_nickname not in", values, "adminNickname");
            return (Criteria) this;
        }

        public Criteria andAdminNicknameBetween(String value1, String value2) {
            addCriterion("admin_nickname between", value1, value2, "adminNickname");
            return (Criteria) this;
        }

        public Criteria andAdminNicknameNotBetween(String value1, String value2) {
            addCriterion("admin_nickname not between", value1, value2, "adminNickname");
            return (Criteria) this;
        }

        public Criteria andAdminPhotoIsNull() {
            addCriterion("admin_photo is null");
            return (Criteria) this;
        }

        public Criteria andAdminPhotoIsNotNull() {
            addCriterion("admin_photo is not null");
            return (Criteria) this;
        }

        public Criteria andAdminPhotoEqualTo(String value) {
            addCriterion("admin_photo =", value, "adminPhoto");
            return (Criteria) this;
        }

        public Criteria andAdminPhotoNotEqualTo(String value) {
            addCriterion("admin_photo <>", value, "adminPhoto");
            return (Criteria) this;
        }

        public Criteria andAdminPhotoGreaterThan(String value) {
            addCriterion("admin_photo >", value, "adminPhoto");
            return (Criteria) this;
        }

        public Criteria andAdminPhotoGreaterThanOrEqualTo(String value) {
            addCriterion("admin_photo >=", value, "adminPhoto");
            return (Criteria) this;
        }

        public Criteria andAdminPhotoLessThan(String value) {
            addCriterion("admin_photo <", value, "adminPhoto");
            return (Criteria) this;
        }

        public Criteria andAdminPhotoLessThanOrEqualTo(String value) {
            addCriterion("admin_photo <=", value, "adminPhoto");
            return (Criteria) this;
        }

        public Criteria andAdminPhotoLike(String value) {
            addCriterion("admin_photo like", value, "adminPhoto");
            return (Criteria) this;
        }

        public Criteria andAdminPhotoNotLike(String value) {
            addCriterion("admin_photo not like", value, "adminPhoto");
            return (Criteria) this;
        }

        public Criteria andAdminPhotoIn(List<String> values) {
            addCriterion("admin_photo in", values, "adminPhoto");
            return (Criteria) this;
        }

        public Criteria andAdminPhotoNotIn(List<String> values) {
            addCriterion("admin_photo not in", values, "adminPhoto");
            return (Criteria) this;
        }

        public Criteria andAdminPhotoBetween(String value1, String value2) {
            addCriterion("admin_photo between", value1, value2, "adminPhoto");
            return (Criteria) this;
        }

        public Criteria andAdminPhotoNotBetween(String value1, String value2) {
            addCriterion("admin_photo not between", value1, value2, "adminPhoto");
            return (Criteria) this;
        }

        public Criteria andAdminPhoneIsNull() {
            addCriterion("admin_phone is null");
            return (Criteria) this;
        }

        public Criteria andAdminPhoneIsNotNull() {
            addCriterion("admin_phone is not null");
            return (Criteria) this;
        }

        public Criteria andAdminPhoneEqualTo(String value) {
            addCriterion("admin_phone =", value, "adminPhone");
            return (Criteria) this;
        }

        public Criteria andAdminPhoneNotEqualTo(String value) {
            addCriterion("admin_phone <>", value, "adminPhone");
            return (Criteria) this;
        }

        public Criteria andAdminPhoneGreaterThan(String value) {
            addCriterion("admin_phone >", value, "adminPhone");
            return (Criteria) this;
        }

        public Criteria andAdminPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("admin_phone >=", value, "adminPhone");
            return (Criteria) this;
        }

        public Criteria andAdminPhoneLessThan(String value) {
            addCriterion("admin_phone <", value, "adminPhone");
            return (Criteria) this;
        }

        public Criteria andAdminPhoneLessThanOrEqualTo(String value) {
            addCriterion("admin_phone <=", value, "adminPhone");
            return (Criteria) this;
        }

        public Criteria andAdminPhoneLike(String value) {
            addCriterion("admin_phone like", value, "adminPhone");
            return (Criteria) this;
        }

        public Criteria andAdminPhoneNotLike(String value) {
            addCriterion("admin_phone not like", value, "adminPhone");
            return (Criteria) this;
        }

        public Criteria andAdminPhoneIn(List<String> values) {
            addCriterion("admin_phone in", values, "adminPhone");
            return (Criteria) this;
        }

        public Criteria andAdminPhoneNotIn(List<String> values) {
            addCriterion("admin_phone not in", values, "adminPhone");
            return (Criteria) this;
        }

        public Criteria andAdminPhoneBetween(String value1, String value2) {
            addCriterion("admin_phone between", value1, value2, "adminPhone");
            return (Criteria) this;
        }

        public Criteria andAdminPhoneNotBetween(String value1, String value2) {
            addCriterion("admin_phone not between", value1, value2, "adminPhone");
            return (Criteria) this;
        }

        public Criteria andAdminEmailIsNull() {
            addCriterion("admin_email is null");
            return (Criteria) this;
        }

        public Criteria andAdminEmailIsNotNull() {
            addCriterion("admin_email is not null");
            return (Criteria) this;
        }

        public Criteria andAdminEmailEqualTo(String value) {
            addCriterion("admin_email =", value, "adminEmail");
            return (Criteria) this;
        }

        public Criteria andAdminEmailNotEqualTo(String value) {
            addCriterion("admin_email <>", value, "adminEmail");
            return (Criteria) this;
        }

        public Criteria andAdminEmailGreaterThan(String value) {
            addCriterion("admin_email >", value, "adminEmail");
            return (Criteria) this;
        }

        public Criteria andAdminEmailGreaterThanOrEqualTo(String value) {
            addCriterion("admin_email >=", value, "adminEmail");
            return (Criteria) this;
        }

        public Criteria andAdminEmailLessThan(String value) {
            addCriterion("admin_email <", value, "adminEmail");
            return (Criteria) this;
        }

        public Criteria andAdminEmailLessThanOrEqualTo(String value) {
            addCriterion("admin_email <=", value, "adminEmail");
            return (Criteria) this;
        }

        public Criteria andAdminEmailLike(String value) {
            addCriterion("admin_email like", value, "adminEmail");
            return (Criteria) this;
        }

        public Criteria andAdminEmailNotLike(String value) {
            addCriterion("admin_email not like", value, "adminEmail");
            return (Criteria) this;
        }

        public Criteria andAdminEmailIn(List<String> values) {
            addCriterion("admin_email in", values, "adminEmail");
            return (Criteria) this;
        }

        public Criteria andAdminEmailNotIn(List<String> values) {
            addCriterion("admin_email not in", values, "adminEmail");
            return (Criteria) this;
        }

        public Criteria andAdminEmailBetween(String value1, String value2) {
            addCriterion("admin_email between", value1, value2, "adminEmail");
            return (Criteria) this;
        }

        public Criteria andAdminEmailNotBetween(String value1, String value2) {
            addCriterion("admin_email not between", value1, value2, "adminEmail");
            return (Criteria) this;
        }

        public Criteria andAdminQuestionIsNull() {
            addCriterion("admin_question is null");
            return (Criteria) this;
        }

        public Criteria andAdminQuestionIsNotNull() {
            addCriterion("admin_question is not null");
            return (Criteria) this;
        }

        public Criteria andAdminQuestionEqualTo(String value) {
            addCriterion("admin_question =", value, "adminQuestion");
            return (Criteria) this;
        }

        public Criteria andAdminQuestionNotEqualTo(String value) {
            addCriterion("admin_question <>", value, "adminQuestion");
            return (Criteria) this;
        }

        public Criteria andAdminQuestionGreaterThan(String value) {
            addCriterion("admin_question >", value, "adminQuestion");
            return (Criteria) this;
        }

        public Criteria andAdminQuestionGreaterThanOrEqualTo(String value) {
            addCriterion("admin_question >=", value, "adminQuestion");
            return (Criteria) this;
        }

        public Criteria andAdminQuestionLessThan(String value) {
            addCriterion("admin_question <", value, "adminQuestion");
            return (Criteria) this;
        }

        public Criteria andAdminQuestionLessThanOrEqualTo(String value) {
            addCriterion("admin_question <=", value, "adminQuestion");
            return (Criteria) this;
        }

        public Criteria andAdminQuestionLike(String value) {
            addCriterion("admin_question like", value, "adminQuestion");
            return (Criteria) this;
        }

        public Criteria andAdminQuestionNotLike(String value) {
            addCriterion("admin_question not like", value, "adminQuestion");
            return (Criteria) this;
        }

        public Criteria andAdminQuestionIn(List<String> values) {
            addCriterion("admin_question in", values, "adminQuestion");
            return (Criteria) this;
        }

        public Criteria andAdminQuestionNotIn(List<String> values) {
            addCriterion("admin_question not in", values, "adminQuestion");
            return (Criteria) this;
        }

        public Criteria andAdminQuestionBetween(String value1, String value2) {
            addCriterion("admin_question between", value1, value2, "adminQuestion");
            return (Criteria) this;
        }

        public Criteria andAdminQuestionNotBetween(String value1, String value2) {
            addCriterion("admin_question not between", value1, value2, "adminQuestion");
            return (Criteria) this;
        }

        public Criteria andAdminAnswerIsNull() {
            addCriterion("admin_answer is null");
            return (Criteria) this;
        }

        public Criteria andAdminAnswerIsNotNull() {
            addCriterion("admin_answer is not null");
            return (Criteria) this;
        }

        public Criteria andAdminAnswerEqualTo(String value) {
            addCriterion("admin_answer =", value, "adminAnswer");
            return (Criteria) this;
        }

        public Criteria andAdminAnswerNotEqualTo(String value) {
            addCriterion("admin_answer <>", value, "adminAnswer");
            return (Criteria) this;
        }

        public Criteria andAdminAnswerGreaterThan(String value) {
            addCriterion("admin_answer >", value, "adminAnswer");
            return (Criteria) this;
        }

        public Criteria andAdminAnswerGreaterThanOrEqualTo(String value) {
            addCriterion("admin_answer >=", value, "adminAnswer");
            return (Criteria) this;
        }

        public Criteria andAdminAnswerLessThan(String value) {
            addCriterion("admin_answer <", value, "adminAnswer");
            return (Criteria) this;
        }

        public Criteria andAdminAnswerLessThanOrEqualTo(String value) {
            addCriterion("admin_answer <=", value, "adminAnswer");
            return (Criteria) this;
        }

        public Criteria andAdminAnswerLike(String value) {
            addCriterion("admin_answer like", value, "adminAnswer");
            return (Criteria) this;
        }

        public Criteria andAdminAnswerNotLike(String value) {
            addCriterion("admin_answer not like", value, "adminAnswer");
            return (Criteria) this;
        }

        public Criteria andAdminAnswerIn(List<String> values) {
            addCriterion("admin_answer in", values, "adminAnswer");
            return (Criteria) this;
        }

        public Criteria andAdminAnswerNotIn(List<String> values) {
            addCriterion("admin_answer not in", values, "adminAnswer");
            return (Criteria) this;
        }

        public Criteria andAdminAnswerBetween(String value1, String value2) {
            addCriterion("admin_answer between", value1, value2, "adminAnswer");
            return (Criteria) this;
        }

        public Criteria andAdminAnswerNotBetween(String value1, String value2) {
            addCriterion("admin_answer not between", value1, value2, "adminAnswer");
            return (Criteria) this;
        }

        public Criteria andAdminAddressIsNull() {
            addCriterion("admin_address is null");
            return (Criteria) this;
        }

        public Criteria andAdminAddressIsNotNull() {
            addCriterion("admin_address is not null");
            return (Criteria) this;
        }

        public Criteria andAdminAddressEqualTo(String value) {
            addCriterion("admin_address =", value, "adminAddress");
            return (Criteria) this;
        }

        public Criteria andAdminAddressNotEqualTo(String value) {
            addCriterion("admin_address <>", value, "adminAddress");
            return (Criteria) this;
        }

        public Criteria andAdminAddressGreaterThan(String value) {
            addCriterion("admin_address >", value, "adminAddress");
            return (Criteria) this;
        }

        public Criteria andAdminAddressGreaterThanOrEqualTo(String value) {
            addCriterion("admin_address >=", value, "adminAddress");
            return (Criteria) this;
        }

        public Criteria andAdminAddressLessThan(String value) {
            addCriterion("admin_address <", value, "adminAddress");
            return (Criteria) this;
        }

        public Criteria andAdminAddressLessThanOrEqualTo(String value) {
            addCriterion("admin_address <=", value, "adminAddress");
            return (Criteria) this;
        }

        public Criteria andAdminAddressLike(String value) {
            addCriterion("admin_address like", value, "adminAddress");
            return (Criteria) this;
        }

        public Criteria andAdminAddressNotLike(String value) {
            addCriterion("admin_address not like", value, "adminAddress");
            return (Criteria) this;
        }

        public Criteria andAdminAddressIn(List<String> values) {
            addCriterion("admin_address in", values, "adminAddress");
            return (Criteria) this;
        }

        public Criteria andAdminAddressNotIn(List<String> values) {
            addCriterion("admin_address not in", values, "adminAddress");
            return (Criteria) this;
        }

        public Criteria andAdminAddressBetween(String value1, String value2) {
            addCriterion("admin_address between", value1, value2, "adminAddress");
            return (Criteria) this;
        }

        public Criteria andAdminAddressNotBetween(String value1, String value2) {
            addCriterion("admin_address not between", value1, value2, "adminAddress");
            return (Criteria) this;
        }

        public Criteria andAdminMoneyIsNull() {
            addCriterion("admin_money is null");
            return (Criteria) this;
        }

        public Criteria andAdminMoneyIsNotNull() {
            addCriterion("admin_money is not null");
            return (Criteria) this;
        }

        public Criteria andAdminMoneyEqualTo(Float value) {
            addCriterion("admin_money =", value, "adminMoney");
            return (Criteria) this;
        }

        public Criteria andAdminMoneyNotEqualTo(Float value) {
            addCriterion("admin_money <>", value, "adminMoney");
            return (Criteria) this;
        }

        public Criteria andAdminMoneyGreaterThan(Float value) {
            addCriterion("admin_money >", value, "adminMoney");
            return (Criteria) this;
        }

        public Criteria andAdminMoneyGreaterThanOrEqualTo(Float value) {
            addCriterion("admin_money >=", value, "adminMoney");
            return (Criteria) this;
        }

        public Criteria andAdminMoneyLessThan(Float value) {
            addCriterion("admin_money <", value, "adminMoney");
            return (Criteria) this;
        }

        public Criteria andAdminMoneyLessThanOrEqualTo(Float value) {
            addCriterion("admin_money <=", value, "adminMoney");
            return (Criteria) this;
        }

        public Criteria andAdminMoneyIn(List<Float> values) {
            addCriterion("admin_money in", values, "adminMoney");
            return (Criteria) this;
        }

        public Criteria andAdminMoneyNotIn(List<Float> values) {
            addCriterion("admin_money not in", values, "adminMoney");
            return (Criteria) this;
        }

        public Criteria andAdminMoneyBetween(Float value1, Float value2) {
            addCriterion("admin_money between", value1, value2, "adminMoney");
            return (Criteria) this;
        }

        public Criteria andAdminMoneyNotBetween(Float value1, Float value2) {
            addCriterion("admin_money not between", value1, value2, "adminMoney");
            return (Criteria) this;
        }

        public Criteria andAdminRegtimeIsNull() {
            addCriterion("admin_regtime is null");
            return (Criteria) this;
        }

        public Criteria andAdminRegtimeIsNotNull() {
            addCriterion("admin_regtime is not null");
            return (Criteria) this;
        }

        public Criteria andAdminRegtimeEqualTo(Date value) {
            addCriterion("admin_regtime =", value, "adminRegtime");
            return (Criteria) this;
        }

        public Criteria andAdminRegtimeNotEqualTo(Date value) {
            addCriterion("admin_regtime <>", value, "adminRegtime");
            return (Criteria) this;
        }

        public Criteria andAdminRegtimeGreaterThan(Date value) {
            addCriterion("admin_regtime >", value, "adminRegtime");
            return (Criteria) this;
        }

        public Criteria andAdminRegtimeGreaterThanOrEqualTo(Date value) {
            addCriterion("admin_regtime >=", value, "adminRegtime");
            return (Criteria) this;
        }

        public Criteria andAdminRegtimeLessThan(Date value) {
            addCriterion("admin_regtime <", value, "adminRegtime");
            return (Criteria) this;
        }

        public Criteria andAdminRegtimeLessThanOrEqualTo(Date value) {
            addCriterion("admin_regtime <=", value, "adminRegtime");
            return (Criteria) this;
        }

        public Criteria andAdminRegtimeIn(List<Date> values) {
            addCriterion("admin_regtime in", values, "adminRegtime");
            return (Criteria) this;
        }

        public Criteria andAdminRegtimeNotIn(List<Date> values) {
            addCriterion("admin_regtime not in", values, "adminRegtime");
            return (Criteria) this;
        }

        public Criteria andAdminRegtimeBetween(Date value1, Date value2) {
            addCriterion("admin_regtime between", value1, value2, "adminRegtime");
            return (Criteria) this;
        }

        public Criteria andAdminRegtimeNotBetween(Date value1, Date value2) {
            addCriterion("admin_regtime not between", value1, value2, "adminRegtime");
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