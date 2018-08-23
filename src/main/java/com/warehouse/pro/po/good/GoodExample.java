package com.warehouse.pro.po.good;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class GoodExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public GoodExample() {
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

        public Criteria andGoodnumIsNull() {
            addCriterion("goodnum is null");
            return (Criteria) this;
        }

        public Criteria andGoodnumIsNotNull() {
            addCriterion("goodnum is not null");
            return (Criteria) this;
        }

        public Criteria andGoodnumEqualTo(String value) {
            addCriterion("goodnum =", value, "goodnum");
            return (Criteria) this;
        }

        public Criteria andGoodnumNotEqualTo(String value) {
            addCriterion("goodnum <>", value, "goodnum");
            return (Criteria) this;
        }

        public Criteria andGoodnumGreaterThan(String value) {
            addCriterion("goodnum >", value, "goodnum");
            return (Criteria) this;
        }

        public Criteria andGoodnumGreaterThanOrEqualTo(String value) {
            addCriterion("goodnum >=", value, "goodnum");
            return (Criteria) this;
        }

        public Criteria andGoodnumLessThan(String value) {
            addCriterion("goodnum <", value, "goodnum");
            return (Criteria) this;
        }

        public Criteria andGoodnumLessThanOrEqualTo(String value) {
            addCriterion("goodnum <=", value, "goodnum");
            return (Criteria) this;
        }

        public Criteria andGoodnumLike(String value) {
            addCriterion("goodnum like", value, "goodnum");
            return (Criteria) this;
        }

        public Criteria andGoodnumNotLike(String value) {
            addCriterion("goodnum not like", value, "goodnum");
            return (Criteria) this;
        }

        public Criteria andGoodnumIn(List<String> values) {
            addCriterion("goodnum in", values, "goodnum");
            return (Criteria) this;
        }

        public Criteria andGoodnumNotIn(List<String> values) {
            addCriterion("goodnum not in", values, "goodnum");
            return (Criteria) this;
        }

        public Criteria andGoodnumBetween(String value1, String value2) {
            addCriterion("goodnum between", value1, value2, "goodnum");
            return (Criteria) this;
        }

        public Criteria andGoodnumNotBetween(String value1, String value2) {
            addCriterion("goodnum not between", value1, value2, "goodnum");
            return (Criteria) this;
        }

        public Criteria andGoodnameIsNull() {
            addCriterion("goodname is null");
            return (Criteria) this;
        }

        public Criteria andGoodnameIsNotNull() {
            addCriterion("goodname is not null");
            return (Criteria) this;
        }

        public Criteria andGoodnameEqualTo(String value) {
            addCriterion("goodname =", value, "goodname");
            return (Criteria) this;
        }

        public Criteria andGoodnameNotEqualTo(String value) {
            addCriterion("goodname <>", value, "goodname");
            return (Criteria) this;
        }

        public Criteria andGoodnameGreaterThan(String value) {
            addCriterion("goodname >", value, "goodname");
            return (Criteria) this;
        }

        public Criteria andGoodnameGreaterThanOrEqualTo(String value) {
            addCriterion("goodname >=", value, "goodname");
            return (Criteria) this;
        }

        public Criteria andGoodnameLessThan(String value) {
            addCriterion("goodname <", value, "goodname");
            return (Criteria) this;
        }

        public Criteria andGoodnameLessThanOrEqualTo(String value) {
            addCriterion("goodname <=", value, "goodname");
            return (Criteria) this;
        }

        public Criteria andGoodnameLike(String value) {
            addCriterion("goodname like", value, "goodname");
            return (Criteria) this;
        }

        public Criteria andGoodnameNotLike(String value) {
            addCriterion("goodname not like", value, "goodname");
            return (Criteria) this;
        }

        public Criteria andGoodnameIn(List<String> values) {
            addCriterion("goodname in", values, "goodname");
            return (Criteria) this;
        }

        public Criteria andGoodnameNotIn(List<String> values) {
            addCriterion("goodname not in", values, "goodname");
            return (Criteria) this;
        }

        public Criteria andGoodnameBetween(String value1, String value2) {
            addCriterion("goodname between", value1, value2, "goodname");
            return (Criteria) this;
        }

        public Criteria andGoodnameNotBetween(String value1, String value2) {
            addCriterion("goodname not between", value1, value2, "goodname");
            return (Criteria) this;
        }

        public Criteria andGoodmodelIsNull() {
            addCriterion("goodmodel is null");
            return (Criteria) this;
        }

        public Criteria andGoodmodelIsNotNull() {
            addCriterion("goodmodel is not null");
            return (Criteria) this;
        }

        public Criteria andGoodmodelEqualTo(String value) {
            addCriterion("goodmodel =", value, "goodmodel");
            return (Criteria) this;
        }

        public Criteria andGoodmodelNotEqualTo(String value) {
            addCriterion("goodmodel <>", value, "goodmodel");
            return (Criteria) this;
        }

        public Criteria andGoodmodelGreaterThan(String value) {
            addCriterion("goodmodel >", value, "goodmodel");
            return (Criteria) this;
        }

        public Criteria andGoodmodelGreaterThanOrEqualTo(String value) {
            addCriterion("goodmodel >=", value, "goodmodel");
            return (Criteria) this;
        }

        public Criteria andGoodmodelLessThan(String value) {
            addCriterion("goodmodel <", value, "goodmodel");
            return (Criteria) this;
        }

        public Criteria andGoodmodelLessThanOrEqualTo(String value) {
            addCriterion("goodmodel <=", value, "goodmodel");
            return (Criteria) this;
        }

        public Criteria andGoodmodelLike(String value) {
            addCriterion("goodmodel like", value, "goodmodel");
            return (Criteria) this;
        }

        public Criteria andGoodmodelNotLike(String value) {
            addCriterion("goodmodel not like", value, "goodmodel");
            return (Criteria) this;
        }

        public Criteria andGoodmodelIn(List<String> values) {
            addCriterion("goodmodel in", values, "goodmodel");
            return (Criteria) this;
        }

        public Criteria andGoodmodelNotIn(List<String> values) {
            addCriterion("goodmodel not in", values, "goodmodel");
            return (Criteria) this;
        }

        public Criteria andGoodmodelBetween(String value1, String value2) {
            addCriterion("goodmodel between", value1, value2, "goodmodel");
            return (Criteria) this;
        }

        public Criteria andGoodmodelNotBetween(String value1, String value2) {
            addCriterion("goodmodel not between", value1, value2, "goodmodel");
            return (Criteria) this;
        }

        public Criteria andGoodproducerIsNull() {
            addCriterion("goodproducer is null");
            return (Criteria) this;
        }

        public Criteria andGoodproducerIsNotNull() {
            addCriterion("goodproducer is not null");
            return (Criteria) this;
        }

        public Criteria andGoodproducerEqualTo(String value) {
            addCriterion("goodproducer =", value, "goodproducer");
            return (Criteria) this;
        }

        public Criteria andGoodproducerNotEqualTo(String value) {
            addCriterion("goodproducer <>", value, "goodproducer");
            return (Criteria) this;
        }

        public Criteria andGoodproducerGreaterThan(String value) {
            addCriterion("goodproducer >", value, "goodproducer");
            return (Criteria) this;
        }

        public Criteria andGoodproducerGreaterThanOrEqualTo(String value) {
            addCriterion("goodproducer >=", value, "goodproducer");
            return (Criteria) this;
        }

        public Criteria andGoodproducerLessThan(String value) {
            addCriterion("goodproducer <", value, "goodproducer");
            return (Criteria) this;
        }

        public Criteria andGoodproducerLessThanOrEqualTo(String value) {
            addCriterion("goodproducer <=", value, "goodproducer");
            return (Criteria) this;
        }

        public Criteria andGoodproducerLike(String value) {
            addCriterion("goodproducer like", value, "goodproducer");
            return (Criteria) this;
        }

        public Criteria andGoodproducerNotLike(String value) {
            addCriterion("goodproducer not like", value, "goodproducer");
            return (Criteria) this;
        }

        public Criteria andGoodproducerIn(List<String> values) {
            addCriterion("goodproducer in", values, "goodproducer");
            return (Criteria) this;
        }

        public Criteria andGoodproducerNotIn(List<String> values) {
            addCriterion("goodproducer not in", values, "goodproducer");
            return (Criteria) this;
        }

        public Criteria andGoodproducerBetween(String value1, String value2) {
            addCriterion("goodproducer between", value1, value2, "goodproducer");
            return (Criteria) this;
        }

        public Criteria andGoodproducerNotBetween(String value1, String value2) {
            addCriterion("goodproducer not between", value1, value2, "goodproducer");
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

        public Criteria andPriceIsNull() {
            addCriterion("price is null");
            return (Criteria) this;
        }

        public Criteria andPriceIsNotNull() {
            addCriterion("price is not null");
            return (Criteria) this;
        }

        public Criteria andPriceEqualTo(BigDecimal value) {
            addCriterion("price =", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotEqualTo(BigDecimal value) {
            addCriterion("price <>", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceGreaterThan(BigDecimal value) {
            addCriterion("price >", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("price >=", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLessThan(BigDecimal value) {
            addCriterion("price <", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLessThanOrEqualTo(BigDecimal value) {
            addCriterion("price <=", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceIn(List<BigDecimal> values) {
            addCriterion("price in", values, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotIn(List<BigDecimal> values) {
            addCriterion("price not in", values, "price");
            return (Criteria) this;
        }

        public Criteria andPriceBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("price between", value1, value2, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("price not between", value1, value2, "price");
            return (Criteria) this;
        }

        public Criteria andStockIsNull() {
            addCriterion("stock is null");
            return (Criteria) this;
        }

        public Criteria andStockIsNotNull() {
            addCriterion("stock is not null");
            return (Criteria) this;
        }

        public Criteria andStockEqualTo(Integer value) {
            addCriterion("stock =", value, "stock");
            return (Criteria) this;
        }

        public Criteria andStockNotEqualTo(Integer value) {
            addCriterion("stock <>", value, "stock");
            return (Criteria) this;
        }

        public Criteria andStockGreaterThan(Integer value) {
            addCriterion("stock >", value, "stock");
            return (Criteria) this;
        }

        public Criteria andStockGreaterThanOrEqualTo(Integer value) {
            addCriterion("stock >=", value, "stock");
            return (Criteria) this;
        }

        public Criteria andStockLessThan(Integer value) {
            addCriterion("stock <", value, "stock");
            return (Criteria) this;
        }

        public Criteria andStockLessThanOrEqualTo(Integer value) {
            addCriterion("stock <=", value, "stock");
            return (Criteria) this;
        }

        public Criteria andStockIn(List<Integer> values) {
            addCriterion("stock in", values, "stock");
            return (Criteria) this;
        }

        public Criteria andStockNotIn(List<Integer> values) {
            addCriterion("stock not in", values, "stock");
            return (Criteria) this;
        }

        public Criteria andStockBetween(Integer value1, Integer value2) {
            addCriterion("stock between", value1, value2, "stock");
            return (Criteria) this;
        }

        public Criteria andStockNotBetween(Integer value1, Integer value2) {
            addCriterion("stock not between", value1, value2, "stock");
            return (Criteria) this;
        }

        public Criteria andWarningIsNull() {
            addCriterion("warning is null");
            return (Criteria) this;
        }

        public Criteria andWarningIsNotNull() {
            addCriterion("warning is not null");
            return (Criteria) this;
        }

        public Criteria andWarningEqualTo(Integer value) {
            addCriterion("warning =", value, "warning");
            return (Criteria) this;
        }

        public Criteria andWarningNotEqualTo(Integer value) {
            addCriterion("warning <>", value, "warning");
            return (Criteria) this;
        }

        public Criteria andWarningGreaterThan(Integer value) {
            addCriterion("warning >", value, "warning");
            return (Criteria) this;
        }

        public Criteria andWarningGreaterThanOrEqualTo(Integer value) {
            addCriterion("warning >=", value, "warning");
            return (Criteria) this;
        }

        public Criteria andWarningLessThan(Integer value) {
            addCriterion("warning <", value, "warning");
            return (Criteria) this;
        }

        public Criteria andWarningLessThanOrEqualTo(Integer value) {
            addCriterion("warning <=", value, "warning");
            return (Criteria) this;
        }

        public Criteria andWarningIn(List<Integer> values) {
            addCriterion("warning in", values, "warning");
            return (Criteria) this;
        }

        public Criteria andWarningNotIn(List<Integer> values) {
            addCriterion("warning not in", values, "warning");
            return (Criteria) this;
        }

        public Criteria andWarningBetween(Integer value1, Integer value2) {
            addCriterion("warning between", value1, value2, "warning");
            return (Criteria) this;
        }

        public Criteria andWarningNotBetween(Integer value1, Integer value2) {
            addCriterion("warning not between", value1, value2, "warning");
            return (Criteria) this;
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