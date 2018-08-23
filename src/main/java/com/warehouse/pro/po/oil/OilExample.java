package com.warehouse.pro.po.oil;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class OilExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public OilExample() {
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

        public Criteria andOilIdIsNull() {
            addCriterion("oil_id is null");
            return (Criteria) this;
        }

        public Criteria andOilIdIsNotNull() {
            addCriterion("oil_id is not null");
            return (Criteria) this;
        }

        public Criteria andOilIdEqualTo(Integer value) {
            addCriterion("oil_id =", value, "oilId");
            return (Criteria) this;
        }

        public Criteria andOilIdNotEqualTo(Integer value) {
            addCriterion("oil_id <>", value, "oilId");
            return (Criteria) this;
        }

        public Criteria andOilIdGreaterThan(Integer value) {
            addCriterion("oil_id >", value, "oilId");
            return (Criteria) this;
        }

        public Criteria andOilIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("oil_id >=", value, "oilId");
            return (Criteria) this;
        }

        public Criteria andOilIdLessThan(Integer value) {
            addCriterion("oil_id <", value, "oilId");
            return (Criteria) this;
        }

        public Criteria andOilIdLessThanOrEqualTo(Integer value) {
            addCriterion("oil_id <=", value, "oilId");
            return (Criteria) this;
        }

        public Criteria andOilIdIn(List<Integer> values) {
            addCriterion("oil_id in", values, "oilId");
            return (Criteria) this;
        }

        public Criteria andOilIdNotIn(List<Integer> values) {
            addCriterion("oil_id not in", values, "oilId");
            return (Criteria) this;
        }

        public Criteria andOilIdBetween(Integer value1, Integer value2) {
            addCriterion("oil_id between", value1, value2, "oilId");
            return (Criteria) this;
        }

        public Criteria andOilIdNotBetween(Integer value1, Integer value2) {
            addCriterion("oil_id not between", value1, value2, "oilId");
            return (Criteria) this;
        }

        public Criteria andOilCardIsNull() {
            addCriterion("oil_card is null");
            return (Criteria) this;
        }

        public Criteria andOilCardIsNotNull() {
            addCriterion("oil_card is not null");
            return (Criteria) this;
        }

        public Criteria andOilCardEqualTo(String value) {
            addCriterion("oil_card =", value, "oilCard");
            return (Criteria) this;
        }

        public Criteria andOilCardNotEqualTo(String value) {
            addCriterion("oil_card <>", value, "oilCard");
            return (Criteria) this;
        }

        public Criteria andOilCardGreaterThan(String value) {
            addCriterion("oil_card >", value, "oilCard");
            return (Criteria) this;
        }

        public Criteria andOilCardGreaterThanOrEqualTo(String value) {
            addCriterion("oil_card >=", value, "oilCard");
            return (Criteria) this;
        }

        public Criteria andOilCardLessThan(String value) {
            addCriterion("oil_card <", value, "oilCard");
            return (Criteria) this;
        }

        public Criteria andOilCardLessThanOrEqualTo(String value) {
            addCriterion("oil_card <=", value, "oilCard");
            return (Criteria) this;
        }

        public Criteria andOilCardLike(String value) {
            addCriterion("oil_card like", value, "oilCard");
            return (Criteria) this;
        }

        public Criteria andOilCardNotLike(String value) {
            addCriterion("oil_card not like", value, "oilCard");
            return (Criteria) this;
        }

        public Criteria andOilCardIn(List<String> values) {
            addCriterion("oil_card in", values, "oilCard");
            return (Criteria) this;
        }

        public Criteria andOilCardNotIn(List<String> values) {
            addCriterion("oil_card not in", values, "oilCard");
            return (Criteria) this;
        }

        public Criteria andOilCardBetween(String value1, String value2) {
            addCriterion("oil_card between", value1, value2, "oilCard");
            return (Criteria) this;
        }

        public Criteria andOilCardNotBetween(String value1, String value2) {
            addCriterion("oil_card not between", value1, value2, "oilCard");
            return (Criteria) this;
        }

        public Criteria andOilAddressIsNull() {
            addCriterion("oil_address is null");
            return (Criteria) this;
        }

        public Criteria andOilAddressIsNotNull() {
            addCriterion("oil_address is not null");
            return (Criteria) this;
        }

        public Criteria andOilAddressEqualTo(String value) {
            addCriterion("oil_address =", value, "oilAddress");
            return (Criteria) this;
        }

        public Criteria andOilAddressNotEqualTo(String value) {
            addCriterion("oil_address <>", value, "oilAddress");
            return (Criteria) this;
        }

        public Criteria andOilAddressGreaterThan(String value) {
            addCriterion("oil_address >", value, "oilAddress");
            return (Criteria) this;
        }

        public Criteria andOilAddressGreaterThanOrEqualTo(String value) {
            addCriterion("oil_address >=", value, "oilAddress");
            return (Criteria) this;
        }

        public Criteria andOilAddressLessThan(String value) {
            addCriterion("oil_address <", value, "oilAddress");
            return (Criteria) this;
        }

        public Criteria andOilAddressLessThanOrEqualTo(String value) {
            addCriterion("oil_address <=", value, "oilAddress");
            return (Criteria) this;
        }

        public Criteria andOilAddressLike(String value) {
            addCriterion("oil_address like", value, "oilAddress");
            return (Criteria) this;
        }

        public Criteria andOilAddressNotLike(String value) {
            addCriterion("oil_address not like", value, "oilAddress");
            return (Criteria) this;
        }

        public Criteria andOilAddressIn(List<String> values) {
            addCriterion("oil_address in", values, "oilAddress");
            return (Criteria) this;
        }

        public Criteria andOilAddressNotIn(List<String> values) {
            addCriterion("oil_address not in", values, "oilAddress");
            return (Criteria) this;
        }

        public Criteria andOilAddressBetween(String value1, String value2) {
            addCriterion("oil_address between", value1, value2, "oilAddress");
            return (Criteria) this;
        }

        public Criteria andOilAddressNotBetween(String value1, String value2) {
            addCriterion("oil_address not between", value1, value2, "oilAddress");
            return (Criteria) this;
        }

        public Criteria andOilLicenceIsNull() {
            addCriterion("oil_licence is null");
            return (Criteria) this;
        }

        public Criteria andOilLicenceIsNotNull() {
            addCriterion("oil_licence is not null");
            return (Criteria) this;
        }

        public Criteria andOilLicenceEqualTo(String value) {
            addCriterion("oil_licence =", value, "oilLicence");
            return (Criteria) this;
        }

        public Criteria andOilLicenceNotEqualTo(String value) {
            addCriterion("oil_licence <>", value, "oilLicence");
            return (Criteria) this;
        }

        public Criteria andOilLicenceGreaterThan(String value) {
            addCriterion("oil_licence >", value, "oilLicence");
            return (Criteria) this;
        }

        public Criteria andOilLicenceGreaterThanOrEqualTo(String value) {
            addCriterion("oil_licence >=", value, "oilLicence");
            return (Criteria) this;
        }

        public Criteria andOilLicenceLessThan(String value) {
            addCriterion("oil_licence <", value, "oilLicence");
            return (Criteria) this;
        }

        public Criteria andOilLicenceLessThanOrEqualTo(String value) {
            addCriterion("oil_licence <=", value, "oilLicence");
            return (Criteria) this;
        }

        public Criteria andOilLicenceLike(String value) {
            addCriterion("oil_licence like", value, "oilLicence");
            return (Criteria) this;
        }

        public Criteria andOilLicenceNotLike(String value) {
            addCriterion("oil_licence not like", value, "oilLicence");
            return (Criteria) this;
        }

        public Criteria andOilLicenceIn(List<String> values) {
            addCriterion("oil_licence in", values, "oilLicence");
            return (Criteria) this;
        }

        public Criteria andOilLicenceNotIn(List<String> values) {
            addCriterion("oil_licence not in", values, "oilLicence");
            return (Criteria) this;
        }

        public Criteria andOilLicenceBetween(String value1, String value2) {
            addCriterion("oil_licence between", value1, value2, "oilLicence");
            return (Criteria) this;
        }

        public Criteria andOilLicenceNotBetween(String value1, String value2) {
            addCriterion("oil_licence not between", value1, value2, "oilLicence");
            return (Criteria) this;
        }

        public Criteria andOilMoneyIsNull() {
            addCriterion("oil_money is null");
            return (Criteria) this;
        }

        public Criteria andOilMoneyIsNotNull() {
            addCriterion("oil_money is not null");
            return (Criteria) this;
        }

        public Criteria andOilMoneyEqualTo(Double value) {
            addCriterion("oil_money =", value, "oilMoney");
            return (Criteria) this;
        }

        public Criteria andOilMoneyNotEqualTo(Double value) {
            addCriterion("oil_money <>", value, "oilMoney");
            return (Criteria) this;
        }

        public Criteria andOilMoneyGreaterThan(Double value) {
            addCriterion("oil_money >", value, "oilMoney");
            return (Criteria) this;
        }

        public Criteria andOilMoneyGreaterThanOrEqualTo(Double value) {
            addCriterion("oil_money >=", value, "oilMoney");
            return (Criteria) this;
        }

        public Criteria andOilMoneyLessThan(Double value) {
            addCriterion("oil_money <", value, "oilMoney");
            return (Criteria) this;
        }

        public Criteria andOilMoneyLessThanOrEqualTo(Double value) {
            addCriterion("oil_money <=", value, "oilMoney");
            return (Criteria) this;
        }

        public Criteria andOilMoneyIn(List<Double> values) {
            addCriterion("oil_money in", values, "oilMoney");
            return (Criteria) this;
        }

        public Criteria andOilMoneyNotIn(List<Double> values) {
            addCriterion("oil_money not in", values, "oilMoney");
            return (Criteria) this;
        }

        public Criteria andOilMoneyBetween(Double value1, Double value2) {
            addCriterion("oil_money between", value1, value2, "oilMoney");
            return (Criteria) this;
        }

        public Criteria andOilMoneyNotBetween(Double value1, Double value2) {
            addCriterion("oil_money not between", value1, value2, "oilMoney");
            return (Criteria) this;
        }

        public Criteria andTimeIsNull() {
            addCriterion("time is null");
            return (Criteria) this;
        }

        public Criteria andTimeIsNotNull() {
            addCriterion("time is not null");
            return (Criteria) this;
        }

        public Criteria andTimeEqualTo(Date value) {
            addCriterion("time =", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeNotEqualTo(Date value) {
            addCriterion("time <>", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeGreaterThan(Date value) {
            addCriterion("time >", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("time >=", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeLessThan(Date value) {
            addCriterion("time <", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeLessThanOrEqualTo(Date value) {
            addCriterion("time <=", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeIn(List<Date> values) {
            addCriterion("time in", values, "time");
            return (Criteria) this;
        }

        public Criteria andTimeNotIn(List<Date> values) {
            addCriterion("time not in", values, "time");
            return (Criteria) this;
        }

        public Criteria andTimeBetween(Date value1, Date value2) {
            addCriterion("time between", value1, value2, "time");
            return (Criteria) this;
        }

        public Criteria andTimeNotBetween(Date value1, Date value2) {
            addCriterion("time not between", value1, value2, "time");
            return (Criteria) this;
        }

        public Criteria andOilUserIsNull() {
            addCriterion("oil_user is null");
            return (Criteria) this;
        }

        public Criteria andOilUserIsNotNull() {
            addCriterion("oil_user is not null");
            return (Criteria) this;
        }

        public Criteria andOilUserEqualTo(String value) {
            addCriterion("oil_user =", value, "oilUser");
            return (Criteria) this;
        }

        public Criteria andOilUserNotEqualTo(String value) {
            addCriterion("oil_user <>", value, "oilUser");
            return (Criteria) this;
        }

        public Criteria andOilUserGreaterThan(String value) {
            addCriterion("oil_user >", value, "oilUser");
            return (Criteria) this;
        }

        public Criteria andOilUserGreaterThanOrEqualTo(String value) {
            addCriterion("oil_user >=", value, "oilUser");
            return (Criteria) this;
        }

        public Criteria andOilUserLessThan(String value) {
            addCriterion("oil_user <", value, "oilUser");
            return (Criteria) this;
        }

        public Criteria andOilUserLessThanOrEqualTo(String value) {
            addCriterion("oil_user <=", value, "oilUser");
            return (Criteria) this;
        }

        public Criteria andOilUserLike(String value) {
            addCriterion("oil_user like", value, "oilUser");
            return (Criteria) this;
        }

        public Criteria andOilUserNotLike(String value) {
            addCriterion("oil_user not like", value, "oilUser");
            return (Criteria) this;
        }

        public Criteria andOilUserIn(List<String> values) {
            addCriterion("oil_user in", values, "oilUser");
            return (Criteria) this;
        }

        public Criteria andOilUserNotIn(List<String> values) {
            addCriterion("oil_user not in", values, "oilUser");
            return (Criteria) this;
        }

        public Criteria andOilUserBetween(String value1, String value2) {
            addCriterion("oil_user between", value1, value2, "oilUser");
            return (Criteria) this;
        }

        public Criteria andOilUserNotBetween(String value1, String value2) {
            addCriterion("oil_user not between", value1, value2, "oilUser");
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