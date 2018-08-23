package com.warehouse.pro.po.good;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class InDepodExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public InDepodExample() {
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

        public Criteria andIndepodidIsNull() {
            addCriterion("indepodid is null");
            return (Criteria) this;
        }

        public Criteria andIndepodidIsNotNull() {
            addCriterion("indepodid is not null");
            return (Criteria) this;
        }

        public Criteria andIndepodidEqualTo(Integer value) {
            addCriterion("indepodid =", value, "indepodid");
            return (Criteria) this;
        }

        public Criteria andIndepodidNotEqualTo(Integer value) {
            addCriterion("indepodid <>", value, "indepodid");
            return (Criteria) this;
        }

        public Criteria andIndepodidGreaterThan(Integer value) {
            addCriterion("indepodid >", value, "indepodid");
            return (Criteria) this;
        }

        public Criteria andIndepodidGreaterThanOrEqualTo(Integer value) {
            addCriterion("indepodid >=", value, "indepodid");
            return (Criteria) this;
        }

        public Criteria andIndepodidLessThan(Integer value) {
            addCriterion("indepodid <", value, "indepodid");
            return (Criteria) this;
        }

        public Criteria andIndepodidLessThanOrEqualTo(Integer value) {
            addCriterion("indepodid <=", value, "indepodid");
            return (Criteria) this;
        }

        public Criteria andIndepodidIn(List<Integer> values) {
            addCriterion("indepodid in", values, "indepodid");
            return (Criteria) this;
        }

        public Criteria andIndepodidNotIn(List<Integer> values) {
            addCriterion("indepodid not in", values, "indepodid");
            return (Criteria) this;
        }

        public Criteria andIndepodidBetween(Integer value1, Integer value2) {
            addCriterion("indepodid between", value1, value2, "indepodid");
            return (Criteria) this;
        }

        public Criteria andIndepodidNotBetween(Integer value1, Integer value2) {
            addCriterion("indepodid not between", value1, value2, "indepodid");
            return (Criteria) this;
        }

        public Criteria andGoodidIsNull() {
            addCriterion("goodid is null");
            return (Criteria) this;
        }

        public Criteria andGoodidIsNotNull() {
            addCriterion("goodid is not null");
            return (Criteria) this;
        }

        public Criteria andGoodidEqualTo(Integer value) {
            addCriterion("goodid =", value, "goodid");
            return (Criteria) this;
        }

        public Criteria andGoodidNotEqualTo(Integer value) {
            addCriterion("goodid <>", value, "goodid");
            return (Criteria) this;
        }

        public Criteria andGoodidGreaterThan(Integer value) {
            addCriterion("goodid >", value, "goodid");
            return (Criteria) this;
        }

        public Criteria andGoodidGreaterThanOrEqualTo(Integer value) {
            addCriterion("goodid >=", value, "goodid");
            return (Criteria) this;
        }

        public Criteria andGoodidLessThan(Integer value) {
            addCriterion("goodid <", value, "goodid");
            return (Criteria) this;
        }

        public Criteria andGoodidLessThanOrEqualTo(Integer value) {
            addCriterion("goodid <=", value, "goodid");
            return (Criteria) this;
        }

        public Criteria andGoodidIn(List<Integer> values) {
            addCriterion("goodid in", values, "goodid");
            return (Criteria) this;
        }

        public Criteria andGoodidNotIn(List<Integer> values) {
            addCriterion("goodid not in", values, "goodid");
            return (Criteria) this;
        }

        public Criteria andGoodidBetween(Integer value1, Integer value2) {
            addCriterion("goodid between", value1, value2, "goodid");
            return (Criteria) this;
        }

        public Criteria andGoodidNotBetween(Integer value1, Integer value2) {
            addCriterion("goodid not between", value1, value2, "goodid");
            return (Criteria) this;
        }

        public Criteria andUnitIsNull() {
            addCriterion("unit is null");
            return (Criteria) this;
        }

        public Criteria andUnitIsNotNull() {
            addCriterion("unit is not null");
            return (Criteria) this;
        }

        public Criteria andUnitEqualTo(String value) {
            addCriterion("unit =", value, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitNotEqualTo(String value) {
            addCriterion("unit <>", value, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitGreaterThan(String value) {
            addCriterion("unit >", value, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitGreaterThanOrEqualTo(String value) {
            addCriterion("unit >=", value, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitLessThan(String value) {
            addCriterion("unit <", value, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitLessThanOrEqualTo(String value) {
            addCriterion("unit <=", value, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitLike(String value) {
            addCriterion("unit like", value, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitNotLike(String value) {
            addCriterion("unit not like", value, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitIn(List<String> values) {
            addCriterion("unit in", values, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitNotIn(List<String> values) {
            addCriterion("unit not in", values, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitBetween(String value1, String value2) {
            addCriterion("unit between", value1, value2, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitNotBetween(String value1, String value2) {
            addCriterion("unit not between", value1, value2, "unit");
            return (Criteria) this;
        }

        public Criteria andNumIsNull() {
            addCriterion("num is null");
            return (Criteria) this;
        }

        public Criteria andNumIsNotNull() {
            addCriterion("num is not null");
            return (Criteria) this;
        }

        public Criteria andNumEqualTo(Integer value) {
            addCriterion("num =", value, "num");
            return (Criteria) this;
        }

        public Criteria andNumNotEqualTo(Integer value) {
            addCriterion("num <>", value, "num");
            return (Criteria) this;
        }

        public Criteria andNumGreaterThan(Integer value) {
            addCriterion("num >", value, "num");
            return (Criteria) this;
        }

        public Criteria andNumGreaterThanOrEqualTo(Integer value) {
            addCriterion("num >=", value, "num");
            return (Criteria) this;
        }

        public Criteria andNumLessThan(Integer value) {
            addCriterion("num <", value, "num");
            return (Criteria) this;
        }

        public Criteria andNumLessThanOrEqualTo(Integer value) {
            addCriterion("num <=", value, "num");
            return (Criteria) this;
        }

        public Criteria andNumIn(List<Integer> values) {
            addCriterion("num in", values, "num");
            return (Criteria) this;
        }

        public Criteria andNumNotIn(List<Integer> values) {
            addCriterion("num not in", values, "num");
            return (Criteria) this;
        }

        public Criteria andNumBetween(Integer value1, Integer value2) {
            addCriterion("num between", value1, value2, "num");
            return (Criteria) this;
        }

        public Criteria andNumNotBetween(Integer value1, Integer value2) {
            addCriterion("num not between", value1, value2, "num");
            return (Criteria) this;
        }

        public Criteria andIndepodtimeIsNull() {
            addCriterion("indepodtime is null");
            return (Criteria) this;
        }

        public Criteria andIndepodtimeIsNotNull() {
            addCriterion("indepodtime is not null");
            return (Criteria) this;
        }

        public Criteria andIndepodtimeEqualTo(Date value) {
            addCriterion("indepodtime =", value, "indepodtime");
            return (Criteria) this;
        }

        public Criteria andIndepodtimeNotEqualTo(Date value) {
            addCriterion("indepodtime <>", value, "indepodtime");
            return (Criteria) this;
        }

        public Criteria andIndepodtimeGreaterThan(Date value) {
            addCriterion("indepodtime >", value, "indepodtime");
            return (Criteria) this;
        }

        public Criteria andIndepodtimeGreaterThanOrEqualTo(Date value) {
            addCriterion("indepodtime >=", value, "indepodtime");
            return (Criteria) this;
        }

        public Criteria andIndepodtimeLessThan(Date value) {
            addCriterion("indepodtime <", value, "indepodtime");
            return (Criteria) this;
        }

        public Criteria andIndepodtimeLessThanOrEqualTo(Date value) {
            addCriterion("indepodtime <=", value, "indepodtime");
            return (Criteria) this;
        }

        public Criteria andIndepodtimeIn(List<Date> values) {
            addCriterion("indepodtime in", values, "indepodtime");
            return (Criteria) this;
        }

        public Criteria andIndepodtimeNotIn(List<Date> values) {
            addCriterion("indepodtime not in", values, "indepodtime");
            return (Criteria) this;
        }

        public Criteria andIndepodtimeBetween(Date value1, Date value2) {
            addCriterion("indepodtime between", value1, value2, "indepodtime");
            return (Criteria) this;
        }

        public Criteria andIndepodtimeNotBetween(Date value1, Date value2) {
            addCriterion("indepodtime not between", value1, value2, "indepodtime");
            return (Criteria) this;
        }

        public Criteria andBuyerIsNull() {
            addCriterion("buyer is null");
            return (Criteria) this;
        }

        public Criteria andBuyerIsNotNull() {
            addCriterion("buyer is not null");
            return (Criteria) this;
        }

        public Criteria andBuyerEqualTo(String value) {
            addCriterion("buyer =", value, "buyer");
            return (Criteria) this;
        }

        public Criteria andBuyerNotEqualTo(String value) {
            addCriterion("buyer <>", value, "buyer");
            return (Criteria) this;
        }

        public Criteria andBuyerGreaterThan(String value) {
            addCriterion("buyer >", value, "buyer");
            return (Criteria) this;
        }

        public Criteria andBuyerGreaterThanOrEqualTo(String value) {
            addCriterion("buyer >=", value, "buyer");
            return (Criteria) this;
        }

        public Criteria andBuyerLessThan(String value) {
            addCriterion("buyer <", value, "buyer");
            return (Criteria) this;
        }

        public Criteria andBuyerLessThanOrEqualTo(String value) {
            addCriterion("buyer <=", value, "buyer");
            return (Criteria) this;
        }

        public Criteria andBuyerLike(String value) {
            addCriterion("buyer like", value, "buyer");
            return (Criteria) this;
        }

        public Criteria andBuyerNotLike(String value) {
            addCriterion("buyer not like", value, "buyer");
            return (Criteria) this;
        }

        public Criteria andBuyerIn(List<String> values) {
            addCriterion("buyer in", values, "buyer");
            return (Criteria) this;
        }

        public Criteria andBuyerNotIn(List<String> values) {
            addCriterion("buyer not in", values, "buyer");
            return (Criteria) this;
        }

        public Criteria andBuyerBetween(String value1, String value2) {
            addCriterion("buyer between", value1, value2, "buyer");
            return (Criteria) this;
        }

        public Criteria andBuyerNotBetween(String value1, String value2) {
            addCriterion("buyer not between", value1, value2, "buyer");
            return (Criteria) this;
        }

        public Criteria andDepodprincipalIsNull() {
            addCriterion("depodprincipal is null");
            return (Criteria) this;
        }

        public Criteria andDepodprincipalIsNotNull() {
            addCriterion("depodprincipal is not null");
            return (Criteria) this;
        }

        public Criteria andDepodprincipalEqualTo(String value) {
            addCriterion("depodprincipal =", value, "depodprincipal");
            return (Criteria) this;
        }

        public Criteria andDepodprincipalNotEqualTo(String value) {
            addCriterion("depodprincipal <>", value, "depodprincipal");
            return (Criteria) this;
        }

        public Criteria andDepodprincipalGreaterThan(String value) {
            addCriterion("depodprincipal >", value, "depodprincipal");
            return (Criteria) this;
        }

        public Criteria andDepodprincipalGreaterThanOrEqualTo(String value) {
            addCriterion("depodprincipal >=", value, "depodprincipal");
            return (Criteria) this;
        }

        public Criteria andDepodprincipalLessThan(String value) {
            addCriterion("depodprincipal <", value, "depodprincipal");
            return (Criteria) this;
        }

        public Criteria andDepodprincipalLessThanOrEqualTo(String value) {
            addCriterion("depodprincipal <=", value, "depodprincipal");
            return (Criteria) this;
        }

        public Criteria andDepodprincipalLike(String value) {
            addCriterion("depodprincipal like", value, "depodprincipal");
            return (Criteria) this;
        }

        public Criteria andDepodprincipalNotLike(String value) {
            addCriterion("depodprincipal not like", value, "depodprincipal");
            return (Criteria) this;
        }

        public Criteria andDepodprincipalIn(List<String> values) {
            addCriterion("depodprincipal in", values, "depodprincipal");
            return (Criteria) this;
        }

        public Criteria andDepodprincipalNotIn(List<String> values) {
            addCriterion("depodprincipal not in", values, "depodprincipal");
            return (Criteria) this;
        }

        public Criteria andDepodprincipalBetween(String value1, String value2) {
            addCriterion("depodprincipal between", value1, value2, "depodprincipal");
            return (Criteria) this;
        }

        public Criteria andDepodprincipalNotBetween(String value1, String value2) {
            addCriterion("depodprincipal not between", value1, value2, "depodprincipal");
            return (Criteria) this;
        }

        public Criteria andSpare1IsNull() {
            addCriterion("spare1 is null");
            return (Criteria) this;
        }

        public Criteria andSpare1IsNotNull() {
            addCriterion("spare1 is not null");
            return (Criteria) this;
        }

        public Criteria andSpare1EqualTo(String value) {
            addCriterion("spare1 =", value, "spare1");
            return (Criteria) this;
        }

        public Criteria andSpare1NotEqualTo(String value) {
            addCriterion("spare1 <>", value, "spare1");
            return (Criteria) this;
        }

        public Criteria andSpare1GreaterThan(String value) {
            addCriterion("spare1 >", value, "spare1");
            return (Criteria) this;
        }

        public Criteria andSpare1GreaterThanOrEqualTo(String value) {
            addCriterion("spare1 >=", value, "spare1");
            return (Criteria) this;
        }

        public Criteria andSpare1LessThan(String value) {
            addCriterion("spare1 <", value, "spare1");
            return (Criteria) this;
        }

        public Criteria andSpare1LessThanOrEqualTo(String value) {
            addCriterion("spare1 <=", value, "spare1");
            return (Criteria) this;
        }

        public Criteria andSpare1Like(String value) {
            addCriterion("spare1 like", value, "spare1");
            return (Criteria) this;
        }

        public Criteria andSpare1NotLike(String value) {
            addCriterion("spare1 not like", value, "spare1");
            return (Criteria) this;
        }

        public Criteria andSpare1In(List<String> values) {
            addCriterion("spare1 in", values, "spare1");
            return (Criteria) this;
        }

        public Criteria andSpare1NotIn(List<String> values) {
            addCriterion("spare1 not in", values, "spare1");
            return (Criteria) this;
        }

        public Criteria andSpare1Between(String value1, String value2) {
            addCriterion("spare1 between", value1, value2, "spare1");
            return (Criteria) this;
        }

        public Criteria andSpare1NotBetween(String value1, String value2) {
            addCriterion("spare1 not between", value1, value2, "spare1");
            return (Criteria) this;
        }

        public Criteria andSpare2IsNull() {
            addCriterion("spare2 is null");
            return (Criteria) this;
        }

        public Criteria andSpare2IsNotNull() {
            addCriterion("spare2 is not null");
            return (Criteria) this;
        }

        public Criteria andSpare2EqualTo(String value) {
            addCriterion("spare2 =", value, "spare2");
            return (Criteria) this;
        }

        public Criteria andSpare2NotEqualTo(String value) {
            addCriterion("spare2 <>", value, "spare2");
            return (Criteria) this;
        }

        public Criteria andSpare2GreaterThan(String value) {
            addCriterion("spare2 >", value, "spare2");
            return (Criteria) this;
        }

        public Criteria andSpare2GreaterThanOrEqualTo(String value) {
            addCriterion("spare2 >=", value, "spare2");
            return (Criteria) this;
        }

        public Criteria andSpare2LessThan(String value) {
            addCriterion("spare2 <", value, "spare2");
            return (Criteria) this;
        }

        public Criteria andSpare2LessThanOrEqualTo(String value) {
            addCriterion("spare2 <=", value, "spare2");
            return (Criteria) this;
        }

        public Criteria andSpare2Like(String value) {
            addCriterion("spare2 like", value, "spare2");
            return (Criteria) this;
        }

        public Criteria andSpare2NotLike(String value) {
            addCriterion("spare2 not like", value, "spare2");
            return (Criteria) this;
        }

        public Criteria andSpare2In(List<String> values) {
            addCriterion("spare2 in", values, "spare2");
            return (Criteria) this;
        }

        public Criteria andSpare2NotIn(List<String> values) {
            addCriterion("spare2 not in", values, "spare2");
            return (Criteria) this;
        }

        public Criteria andSpare2Between(String value1, String value2) {
            addCriterion("spare2 between", value1, value2, "spare2");
            return (Criteria) this;
        }

        public Criteria andSpare2NotBetween(String value1, String value2) {
            addCriterion("spare2 not between", value1, value2, "spare2");
            return (Criteria) this;
        }

        public Criteria andSpare3IsNull() {
            addCriterion("spare3 is null");
            return (Criteria) this;
        }

        public Criteria andSpare3IsNotNull() {
            addCriterion("spare3 is not null");
            return (Criteria) this;
        }

        public Criteria andSpare3EqualTo(String value) {
            addCriterion("spare3 =", value, "spare3");
            return (Criteria) this;
        }

        public Criteria andSpare3NotEqualTo(String value) {
            addCriterion("spare3 <>", value, "spare3");
            return (Criteria) this;
        }

        public Criteria andSpare3GreaterThan(String value) {
            addCriterion("spare3 >", value, "spare3");
            return (Criteria) this;
        }

        public Criteria andSpare3GreaterThanOrEqualTo(String value) {
            addCriterion("spare3 >=", value, "spare3");
            return (Criteria) this;
        }

        public Criteria andSpare3LessThan(String value) {
            addCriterion("spare3 <", value, "spare3");
            return (Criteria) this;
        }

        public Criteria andSpare3LessThanOrEqualTo(String value) {
            addCriterion("spare3 <=", value, "spare3");
            return (Criteria) this;
        }

        public Criteria andSpare3Like(String value) {
            addCriterion("spare3 like", value, "spare3");
            return (Criteria) this;
        }

        public Criteria andSpare3NotLike(String value) {
            addCriterion("spare3 not like", value, "spare3");
            return (Criteria) this;
        }

        public Criteria andSpare3In(List<String> values) {
            addCriterion("spare3 in", values, "spare3");
            return (Criteria) this;
        }

        public Criteria andSpare3NotIn(List<String> values) {
            addCriterion("spare3 not in", values, "spare3");
            return (Criteria) this;
        }

        public Criteria andSpare3Between(String value1, String value2) {
            addCriterion("spare3 between", value1, value2, "spare3");
            return (Criteria) this;
        }

        public Criteria andSpare3NotBetween(String value1, String value2) {
            addCriterion("spare3 not between", value1, value2, "spare3");
            return (Criteria) this;
        }

        public Criteria andSpare4IsNull() {
            addCriterion("spare4 is null");
            return (Criteria) this;
        }

        public Criteria andSpare4IsNotNull() {
            addCriterion("spare4 is not null");
            return (Criteria) this;
        }

        public Criteria andSpare4EqualTo(String value) {
            addCriterion("spare4 =", value, "spare4");
            return (Criteria) this;
        }

        public Criteria andSpare4NotEqualTo(String value) {
            addCriterion("spare4 <>", value, "spare4");
            return (Criteria) this;
        }

        public Criteria andSpare4GreaterThan(String value) {
            addCriterion("spare4 >", value, "spare4");
            return (Criteria) this;
        }

        public Criteria andSpare4GreaterThanOrEqualTo(String value) {
            addCriterion("spare4 >=", value, "spare4");
            return (Criteria) this;
        }

        public Criteria andSpare4LessThan(String value) {
            addCriterion("spare4 <", value, "spare4");
            return (Criteria) this;
        }

        public Criteria andSpare4LessThanOrEqualTo(String value) {
            addCriterion("spare4 <=", value, "spare4");
            return (Criteria) this;
        }

        public Criteria andSpare4Like(String value) {
            addCriterion("spare4 like", value, "spare4");
            return (Criteria) this;
        }

        public Criteria andSpare4NotLike(String value) {
            addCriterion("spare4 not like", value, "spare4");
            return (Criteria) this;
        }

        public Criteria andSpare4In(List<String> values) {
            addCriterion("spare4 in", values, "spare4");
            return (Criteria) this;
        }

        public Criteria andSpare4NotIn(List<String> values) {
            addCriterion("spare4 not in", values, "spare4");
            return (Criteria) this;
        }

        public Criteria andSpare4Between(String value1, String value2) {
            addCriterion("spare4 between", value1, value2, "spare4");
            return (Criteria) this;
        }

        public Criteria andSpare4NotBetween(String value1, String value2) {
            addCriterion("spare4 not between", value1, value2, "spare4");
            return (Criteria) this;
        }

        public Criteria andSpare5IsNull() {
            addCriterion("spare5 is null");
            return (Criteria) this;
        }

        public Criteria andSpare5IsNotNull() {
            addCriterion("spare5 is not null");
            return (Criteria) this;
        }

        public Criteria andSpare5EqualTo(String value) {
            addCriterion("spare5 =", value, "spare5");
            return (Criteria) this;
        }

        public Criteria andSpare5NotEqualTo(String value) {
            addCriterion("spare5 <>", value, "spare5");
            return (Criteria) this;
        }

        public Criteria andSpare5GreaterThan(String value) {
            addCriterion("spare5 >", value, "spare5");
            return (Criteria) this;
        }

        public Criteria andSpare5GreaterThanOrEqualTo(String value) {
            addCriterion("spare5 >=", value, "spare5");
            return (Criteria) this;
        }

        public Criteria andSpare5LessThan(String value) {
            addCriterion("spare5 <", value, "spare5");
            return (Criteria) this;
        }

        public Criteria andSpare5LessThanOrEqualTo(String value) {
            addCriterion("spare5 <=", value, "spare5");
            return (Criteria) this;
        }

        public Criteria andSpare5Like(String value) {
            addCriterion("spare5 like", value, "spare5");
            return (Criteria) this;
        }

        public Criteria andSpare5NotLike(String value) {
            addCriterion("spare5 not like", value, "spare5");
            return (Criteria) this;
        }

        public Criteria andSpare5In(List<String> values) {
            addCriterion("spare5 in", values, "spare5");
            return (Criteria) this;
        }

        public Criteria andSpare5NotIn(List<String> values) {
            addCriterion("spare5 not in", values, "spare5");
            return (Criteria) this;
        }

        public Criteria andSpare5Between(String value1, String value2) {
            addCriterion("spare5 between", value1, value2, "spare5");
            return (Criteria) this;
        }

        public Criteria andSpare5NotBetween(String value1, String value2) {
            addCriterion("spare5 not between", value1, value2, "spare5");
            return (Criteria) this;
        }
        /*
         * 自定义查询条件
         */
        public Criteria andGoodnameLike(String value) {
            addCriterion("goodname like", value, "goodname");
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