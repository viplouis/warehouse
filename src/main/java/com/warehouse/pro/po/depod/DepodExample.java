package com.warehouse.pro.po.depod;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class DepodExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public DepodExample() {
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

        public Criteria andDepodidIsNull() {
            addCriterion("depodid is null");
            return (Criteria) this;
        }

        public Criteria andDepodidIsNotNull() {
            addCriterion("depodid is not null");
            return (Criteria) this;
        }

        public Criteria andDepodidEqualTo(Integer value) {
            addCriterion("depodid =", value, "depodid");
            return (Criteria) this;
        }

        public Criteria andDepodidNotEqualTo(Integer value) {
            addCriterion("depodid <>", value, "depodid");
            return (Criteria) this;
        }

        public Criteria andDepodidGreaterThan(Integer value) {
            addCriterion("depodid >", value, "depodid");
            return (Criteria) this;
        }

        public Criteria andDepodidGreaterThanOrEqualTo(Integer value) {
            addCriterion("depodid >=", value, "depodid");
            return (Criteria) this;
        }

        public Criteria andDepodidLessThan(Integer value) {
            addCriterion("depodid <", value, "depodid");
            return (Criteria) this;
        }

        public Criteria andDepodidLessThanOrEqualTo(Integer value) {
            addCriterion("depodid <=", value, "depodid");
            return (Criteria) this;
        }

        public Criteria andDepodidIn(List<Integer> values) {
            addCriterion("depodid in", values, "depodid");
            return (Criteria) this;
        }

        public Criteria andDepodidNotIn(List<Integer> values) {
            addCriterion("depodid not in", values, "depodid");
            return (Criteria) this;
        }

        public Criteria andDepodidBetween(Integer value1, Integer value2) {
            addCriterion("depodid between", value1, value2, "depodid");
            return (Criteria) this;
        }

        public Criteria andDepodidNotBetween(Integer value1, Integer value2) {
            addCriterion("depodid not between", value1, value2, "depodid");
            return (Criteria) this;
        }

        public Criteria andDepodnumIsNull() {
            addCriterion("depodnum is null");
            return (Criteria) this;
        }

        public Criteria andDepodnumIsNotNull() {
            addCriterion("depodnum is not null");
            return (Criteria) this;
        }

        public Criteria andDepodnumEqualTo(String value) {
            addCriterion("depodnum =", value, "depodnum");
            return (Criteria) this;
        }

        public Criteria andDepodnumNotEqualTo(String value) {
            addCriterion("depodnum <>", value, "depodnum");
            return (Criteria) this;
        }

        public Criteria andDepodnumGreaterThan(String value) {
            addCriterion("depodnum >", value, "depodnum");
            return (Criteria) this;
        }

        public Criteria andDepodnumGreaterThanOrEqualTo(String value) {
            addCriterion("depodnum >=", value, "depodnum");
            return (Criteria) this;
        }

        public Criteria andDepodnumLessThan(String value) {
            addCriterion("depodnum <", value, "depodnum");
            return (Criteria) this;
        }

        public Criteria andDepodnumLessThanOrEqualTo(String value) {
            addCriterion("depodnum <=", value, "depodnum");
            return (Criteria) this;
        }

        public Criteria andDepodnumLike(String value) {
            addCriterion("depodnum like", value, "depodnum");
            return (Criteria) this;
        }

        public Criteria andDepodnumNotLike(String value) {
            addCriterion("depodnum not like", value, "depodnum");
            return (Criteria) this;
        }

        public Criteria andDepodnumIn(List<String> values) {
            addCriterion("depodnum in", values, "depodnum");
            return (Criteria) this;
        }

        public Criteria andDepodnumNotIn(List<String> values) {
            addCriterion("depodnum not in", values, "depodnum");
            return (Criteria) this;
        }

        public Criteria andDepodnumBetween(String value1, String value2) {
            addCriterion("depodnum between", value1, value2, "depodnum");
            return (Criteria) this;
        }

        public Criteria andDepodnumNotBetween(String value1, String value2) {
            addCriterion("depodnum not between", value1, value2, "depodnum");
            return (Criteria) this;
        }

        public Criteria andDepodnameIsNull() {
            addCriterion("depodname is null");
            return (Criteria) this;
        }

        public Criteria andDepodnameIsNotNull() {
            addCriterion("depodname is not null");
            return (Criteria) this;
        }

        public Criteria andDepodnameEqualTo(String value) {
            addCriterion("depodname =", value, "depodname");
            return (Criteria) this;
        }

        public Criteria andDepodnameNotEqualTo(String value) {
            addCriterion("depodname <>", value, "depodname");
            return (Criteria) this;
        }

        public Criteria andDepodnameGreaterThan(String value) {
            addCriterion("depodname >", value, "depodname");
            return (Criteria) this;
        }

        public Criteria andDepodnameGreaterThanOrEqualTo(String value) {
            addCriterion("depodname >=", value, "depodname");
            return (Criteria) this;
        }

        public Criteria andDepodnameLessThan(String value) {
            addCriterion("depodname <", value, "depodname");
            return (Criteria) this;
        }

        public Criteria andDepodnameLessThanOrEqualTo(String value) {
            addCriterion("depodname <=", value, "depodname");
            return (Criteria) this;
        }

        public Criteria andDepodnameLike(String value) {
            addCriterion("depodname like", value, "depodname");
            return (Criteria) this;
        }

        public Criteria andDepodnameNotLike(String value) {
            addCriterion("depodname not like", value, "depodname");
            return (Criteria) this;
        }

        public Criteria andDepodnameIn(List<String> values) {
            addCriterion("depodname in", values, "depodname");
            return (Criteria) this;
        }

        public Criteria andDepodnameNotIn(List<String> values) {
            addCriterion("depodname not in", values, "depodname");
            return (Criteria) this;
        }

        public Criteria andDepodnameBetween(String value1, String value2) {
            addCriterion("depodname between", value1, value2, "depodname");
            return (Criteria) this;
        }

        public Criteria andDepodnameNotBetween(String value1, String value2) {
            addCriterion("depodname not between", value1, value2, "depodname");
            return (Criteria) this;
        }

        public Criteria andDepodaddressIsNull() {
            addCriterion("depodaddress is null");
            return (Criteria) this;
        }

        public Criteria andDepodaddressIsNotNull() {
            addCriterion("depodaddress is not null");
            return (Criteria) this;
        }

        public Criteria andDepodaddressEqualTo(String value) {
            addCriterion("depodaddress =", value, "depodaddress");
            return (Criteria) this;
        }

        public Criteria andDepodaddressNotEqualTo(String value) {
            addCriterion("depodaddress <>", value, "depodaddress");
            return (Criteria) this;
        }

        public Criteria andDepodaddressGreaterThan(String value) {
            addCriterion("depodaddress >", value, "depodaddress");
            return (Criteria) this;
        }

        public Criteria andDepodaddressGreaterThanOrEqualTo(String value) {
            addCriterion("depodaddress >=", value, "depodaddress");
            return (Criteria) this;
        }

        public Criteria andDepodaddressLessThan(String value) {
            addCriterion("depodaddress <", value, "depodaddress");
            return (Criteria) this;
        }

        public Criteria andDepodaddressLessThanOrEqualTo(String value) {
            addCriterion("depodaddress <=", value, "depodaddress");
            return (Criteria) this;
        }

        public Criteria andDepodaddressLike(String value) {
            addCriterion("depodaddress like", value, "depodaddress");
            return (Criteria) this;
        }

        public Criteria andDepodaddressNotLike(String value) {
            addCriterion("depodaddress not like", value, "depodaddress");
            return (Criteria) this;
        }

        public Criteria andDepodaddressIn(List<String> values) {
            addCriterion("depodaddress in", values, "depodaddress");
            return (Criteria) this;
        }

        public Criteria andDepodaddressNotIn(List<String> values) {
            addCriterion("depodaddress not in", values, "depodaddress");
            return (Criteria) this;
        }

        public Criteria andDepodaddressBetween(String value1, String value2) {
            addCriterion("depodaddress between", value1, value2, "depodaddress");
            return (Criteria) this;
        }

        public Criteria andDepodaddressNotBetween(String value1, String value2) {
            addCriterion("depodaddress not between", value1, value2, "depodaddress");
            return (Criteria) this;
        }

        public Criteria andStorigetypeIsNull() {
            addCriterion("storigetype is null");
            return (Criteria) this;
        }

        public Criteria andStorigetypeIsNotNull() {
            addCriterion("storigetype is not null");
            return (Criteria) this;
        }

        public Criteria andStorigetypeEqualTo(String value) {
            addCriterion("storigetype =", value, "storigetype");
            return (Criteria) this;
        }

        public Criteria andStorigetypeNotEqualTo(String value) {
            addCriterion("storigetype <>", value, "storigetype");
            return (Criteria) this;
        }

        public Criteria andStorigetypeGreaterThan(String value) {
            addCriterion("storigetype >", value, "storigetype");
            return (Criteria) this;
        }

        public Criteria andStorigetypeGreaterThanOrEqualTo(String value) {
            addCriterion("storigetype >=", value, "storigetype");
            return (Criteria) this;
        }

        public Criteria andStorigetypeLessThan(String value) {
            addCriterion("storigetype <", value, "storigetype");
            return (Criteria) this;
        }

        public Criteria andStorigetypeLessThanOrEqualTo(String value) {
            addCriterion("storigetype <=", value, "storigetype");
            return (Criteria) this;
        }

        public Criteria andStorigetypeLike(String value) {
            addCriterion("storigetype like", value, "storigetype");
            return (Criteria) this;
        }

        public Criteria andStorigetypeNotLike(String value) {
            addCriterion("storigetype not like", value, "storigetype");
            return (Criteria) this;
        }

        public Criteria andStorigetypeIn(List<String> values) {
            addCriterion("storigetype in", values, "storigetype");
            return (Criteria) this;
        }

        public Criteria andStorigetypeNotIn(List<String> values) {
            addCriterion("storigetype not in", values, "storigetype");
            return (Criteria) this;
        }

        public Criteria andStorigetypeBetween(String value1, String value2) {
            addCriterion("storigetype between", value1, value2, "storigetype");
            return (Criteria) this;
        }

        public Criteria andStorigetypeNotBetween(String value1, String value2) {
            addCriterion("storigetype not between", value1, value2, "storigetype");
            return (Criteria) this;
        }

        public Criteria andPrincipalIsNull() {
            addCriterion("principal is null");
            return (Criteria) this;
        }

        public Criteria andPrincipalIsNotNull() {
            addCriterion("principal is not null");
            return (Criteria) this;
        }

        public Criteria andPrincipalEqualTo(String value) {
            addCriterion("principal =", value, "principal");
            return (Criteria) this;
        }

        public Criteria andPrincipalNotEqualTo(String value) {
            addCriterion("principal <>", value, "principal");
            return (Criteria) this;
        }

        public Criteria andPrincipalGreaterThan(String value) {
            addCriterion("principal >", value, "principal");
            return (Criteria) this;
        }

        public Criteria andPrincipalGreaterThanOrEqualTo(String value) {
            addCriterion("principal >=", value, "principal");
            return (Criteria) this;
        }

        public Criteria andPrincipalLessThan(String value) {
            addCriterion("principal <", value, "principal");
            return (Criteria) this;
        }

        public Criteria andPrincipalLessThanOrEqualTo(String value) {
            addCriterion("principal <=", value, "principal");
            return (Criteria) this;
        }

        public Criteria andPrincipalLike(String value) {
            addCriterion("principal like", value, "principal");
            return (Criteria) this;
        }

        public Criteria andPrincipalNotLike(String value) {
            addCriterion("principal not like", value, "principal");
            return (Criteria) this;
        }

        public Criteria andPrincipalIn(List<String> values) {
            addCriterion("principal in", values, "principal");
            return (Criteria) this;
        }

        public Criteria andPrincipalNotIn(List<String> values) {
            addCriterion("principal not in", values, "principal");
            return (Criteria) this;
        }

        public Criteria andPrincipalBetween(String value1, String value2) {
            addCriterion("principal between", value1, value2, "principal");
            return (Criteria) this;
        }

        public Criteria andPrincipalNotBetween(String value1, String value2) {
            addCriterion("principal not between", value1, value2, "principal");
            return (Criteria) this;
        }

        public Criteria andTelphoneIsNull() {
            addCriterion("telphone is null");
            return (Criteria) this;
        }

        public Criteria andTelphoneIsNotNull() {
            addCriterion("telphone is not null");
            return (Criteria) this;
        }

        public Criteria andTelphoneEqualTo(String value) {
            addCriterion("telphone =", value, "telphone");
            return (Criteria) this;
        }

        public Criteria andTelphoneNotEqualTo(String value) {
            addCriterion("telphone <>", value, "telphone");
            return (Criteria) this;
        }

        public Criteria andTelphoneGreaterThan(String value) {
            addCriterion("telphone >", value, "telphone");
            return (Criteria) this;
        }

        public Criteria andTelphoneGreaterThanOrEqualTo(String value) {
            addCriterion("telphone >=", value, "telphone");
            return (Criteria) this;
        }

        public Criteria andTelphoneLessThan(String value) {
            addCriterion("telphone <", value, "telphone");
            return (Criteria) this;
        }

        public Criteria andTelphoneLessThanOrEqualTo(String value) {
            addCriterion("telphone <=", value, "telphone");
            return (Criteria) this;
        }

        public Criteria andTelphoneLike(String value) {
            addCriterion("telphone like", value, "telphone");
            return (Criteria) this;
        }

        public Criteria andTelphoneNotLike(String value) {
            addCriterion("telphone not like", value, "telphone");
            return (Criteria) this;
        }

        public Criteria andTelphoneIn(List<String> values) {
            addCriterion("telphone in", values, "telphone");
            return (Criteria) this;
        }

        public Criteria andTelphoneNotIn(List<String> values) {
            addCriterion("telphone not in", values, "telphone");
            return (Criteria) this;
        }

        public Criteria andTelphoneBetween(String value1, String value2) {
            addCriterion("telphone between", value1, value2, "telphone");
            return (Criteria) this;
        }

        public Criteria andTelphoneNotBetween(String value1, String value2) {
            addCriterion("telphone not between", value1, value2, "telphone");
            return (Criteria) this;
        }

        public Criteria andCreatetimeIsNull() {
            addCriterion("createtime is null");
            return (Criteria) this;
        }

        public Criteria andCreatetimeIsNotNull() {
            addCriterion("createtime is not null");
            return (Criteria) this;
        }

        public Criteria andCreatetimeEqualTo(Date value) {
            addCriterion("createtime =", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeNotEqualTo(Date value) {
            addCriterion("createtime <>", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeGreaterThan(Date value) {
            addCriterion("createtime >", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeGreaterThanOrEqualTo(Date value) {
            addCriterion("createtime >=", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeLessThan(Date value) {
            addCriterion("createtime <", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeLessThanOrEqualTo(Date value) {
            addCriterion("createtime <=", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeIn(List<Date> values) {
            addCriterion("createtime in", values, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeNotIn(List<Date> values) {
            addCriterion("createtime not in", values, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeBetween(Date value1, Date value2) {
            addCriterion("createtime between", value1, value2, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeNotBetween(Date value1, Date value2) {
            addCriterion("createtime not between", value1, value2, "createtime");
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