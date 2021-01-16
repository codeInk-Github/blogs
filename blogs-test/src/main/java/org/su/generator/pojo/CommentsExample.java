package org.su.generator.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CommentsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CommentsExample() {
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

        public Criteria andCommentIdIsNull() {
            addCriterion("comment_id is null");
            return (Criteria) this;
        }

        public Criteria andCommentIdIsNotNull() {
            addCriterion("comment_id is not null");
            return (Criteria) this;
        }

        public Criteria andCommentIdEqualTo(String value) {
            addCriterion("comment_id =", value, "commentId");
            return (Criteria) this;
        }

        public Criteria andCommentIdNotEqualTo(String value) {
            addCriterion("comment_id <>", value, "commentId");
            return (Criteria) this;
        }

        public Criteria andCommentIdGreaterThan(String value) {
            addCriterion("comment_id >", value, "commentId");
            return (Criteria) this;
        }

        public Criteria andCommentIdGreaterThanOrEqualTo(String value) {
            addCriterion("comment_id >=", value, "commentId");
            return (Criteria) this;
        }

        public Criteria andCommentIdLessThan(String value) {
            addCriterion("comment_id <", value, "commentId");
            return (Criteria) this;
        }

        public Criteria andCommentIdLessThanOrEqualTo(String value) {
            addCriterion("comment_id <=", value, "commentId");
            return (Criteria) this;
        }

        public Criteria andCommentIdLike(String value) {
            addCriterion("comment_id like", value, "commentId");
            return (Criteria) this;
        }

        public Criteria andCommentIdNotLike(String value) {
            addCriterion("comment_id not like", value, "commentId");
            return (Criteria) this;
        }

        public Criteria andCommentIdIn(List<String> values) {
            addCriterion("comment_id in", values, "commentId");
            return (Criteria) this;
        }

        public Criteria andCommentIdNotIn(List<String> values) {
            addCriterion("comment_id not in", values, "commentId");
            return (Criteria) this;
        }

        public Criteria andCommentIdBetween(String value1, String value2) {
            addCriterion("comment_id between", value1, value2, "commentId");
            return (Criteria) this;
        }

        public Criteria andCommentIdNotBetween(String value1, String value2) {
            addCriterion("comment_id not between", value1, value2, "commentId");
            return (Criteria) this;
        }

        public Criteria andBlogIdIsNull() {
            addCriterion("blog_id is null");
            return (Criteria) this;
        }

        public Criteria andBlogIdIsNotNull() {
            addCriterion("blog_id is not null");
            return (Criteria) this;
        }

        public Criteria andBlogIdEqualTo(Integer value) {
            addCriterion("blog_id =", value, "blogId");
            return (Criteria) this;
        }

        public Criteria andBlogIdNotEqualTo(Integer value) {
            addCriterion("blog_id <>", value, "blogId");
            return (Criteria) this;
        }

        public Criteria andBlogIdGreaterThan(Integer value) {
            addCriterion("blog_id >", value, "blogId");
            return (Criteria) this;
        }

        public Criteria andBlogIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("blog_id >=", value, "blogId");
            return (Criteria) this;
        }

        public Criteria andBlogIdLessThan(Integer value) {
            addCriterion("blog_id <", value, "blogId");
            return (Criteria) this;
        }

        public Criteria andBlogIdLessThanOrEqualTo(Integer value) {
            addCriterion("blog_id <=", value, "blogId");
            return (Criteria) this;
        }

        public Criteria andBlogIdIn(List<Integer> values) {
            addCriterion("blog_id in", values, "blogId");
            return (Criteria) this;
        }

        public Criteria andBlogIdNotIn(List<Integer> values) {
            addCriterion("blog_id not in", values, "blogId");
            return (Criteria) this;
        }

        public Criteria andBlogIdBetween(Integer value1, Integer value2) {
            addCriterion("blog_id between", value1, value2, "blogId");
            return (Criteria) this;
        }

        public Criteria andBlogIdNotBetween(Integer value1, Integer value2) {
            addCriterion("blog_id not between", value1, value2, "blogId");
            return (Criteria) this;
        }

        public Criteria andCommenterIdIsNull() {
            addCriterion("commenter_id is null");
            return (Criteria) this;
        }

        public Criteria andCommenterIdIsNotNull() {
            addCriterion("commenter_id is not null");
            return (Criteria) this;
        }

        public Criteria andCommenterIdEqualTo(String value) {
            addCriterion("commenter_id =", value, "commenterId");
            return (Criteria) this;
        }

        public Criteria andCommenterIdNotEqualTo(String value) {
            addCriterion("commenter_id <>", value, "commenterId");
            return (Criteria) this;
        }

        public Criteria andCommenterIdGreaterThan(String value) {
            addCriterion("commenter_id >", value, "commenterId");
            return (Criteria) this;
        }

        public Criteria andCommenterIdGreaterThanOrEqualTo(String value) {
            addCriterion("commenter_id >=", value, "commenterId");
            return (Criteria) this;
        }

        public Criteria andCommenterIdLessThan(String value) {
            addCriterion("commenter_id <", value, "commenterId");
            return (Criteria) this;
        }

        public Criteria andCommenterIdLessThanOrEqualTo(String value) {
            addCriterion("commenter_id <=", value, "commenterId");
            return (Criteria) this;
        }

        public Criteria andCommenterIdLike(String value) {
            addCriterion("commenter_id like", value, "commenterId");
            return (Criteria) this;
        }

        public Criteria andCommenterIdNotLike(String value) {
            addCriterion("commenter_id not like", value, "commenterId");
            return (Criteria) this;
        }

        public Criteria andCommenterIdIn(List<String> values) {
            addCriterion("commenter_id in", values, "commenterId");
            return (Criteria) this;
        }

        public Criteria andCommenterIdNotIn(List<String> values) {
            addCriterion("commenter_id not in", values, "commenterId");
            return (Criteria) this;
        }

        public Criteria andCommenterIdBetween(String value1, String value2) {
            addCriterion("commenter_id between", value1, value2, "commenterId");
            return (Criteria) this;
        }

        public Criteria andCommenterIdNotBetween(String value1, String value2) {
            addCriterion("commenter_id not between", value1, value2, "commenterId");
            return (Criteria) this;
        }

        public Criteria andCommerterNameIsNull() {
            addCriterion("commerter_name is null");
            return (Criteria) this;
        }

        public Criteria andCommerterNameIsNotNull() {
            addCriterion("commerter_name is not null");
            return (Criteria) this;
        }

        public Criteria andCommerterNameEqualTo(String value) {
            addCriterion("commerter_name =", value, "commerterName");
            return (Criteria) this;
        }

        public Criteria andCommerterNameNotEqualTo(String value) {
            addCriterion("commerter_name <>", value, "commerterName");
            return (Criteria) this;
        }

        public Criteria andCommerterNameGreaterThan(String value) {
            addCriterion("commerter_name >", value, "commerterName");
            return (Criteria) this;
        }

        public Criteria andCommerterNameGreaterThanOrEqualTo(String value) {
            addCriterion("commerter_name >=", value, "commerterName");
            return (Criteria) this;
        }

        public Criteria andCommerterNameLessThan(String value) {
            addCriterion("commerter_name <", value, "commerterName");
            return (Criteria) this;
        }

        public Criteria andCommerterNameLessThanOrEqualTo(String value) {
            addCriterion("commerter_name <=", value, "commerterName");
            return (Criteria) this;
        }

        public Criteria andCommerterNameLike(String value) {
            addCriterion("commerter_name like", value, "commerterName");
            return (Criteria) this;
        }

        public Criteria andCommerterNameNotLike(String value) {
            addCriterion("commerter_name not like", value, "commerterName");
            return (Criteria) this;
        }

        public Criteria andCommerterNameIn(List<String> values) {
            addCriterion("commerter_name in", values, "commerterName");
            return (Criteria) this;
        }

        public Criteria andCommerterNameNotIn(List<String> values) {
            addCriterion("commerter_name not in", values, "commerterName");
            return (Criteria) this;
        }

        public Criteria andCommerterNameBetween(String value1, String value2) {
            addCriterion("commerter_name between", value1, value2, "commerterName");
            return (Criteria) this;
        }

        public Criteria andCommerterNameNotBetween(String value1, String value2) {
            addCriterion("commerter_name not between", value1, value2, "commerterName");
            return (Criteria) this;
        }

        public Criteria andCommentTimeIsNull() {
            addCriterion("comment_time is null");
            return (Criteria) this;
        }

        public Criteria andCommentTimeIsNotNull() {
            addCriterion("comment_time is not null");
            return (Criteria) this;
        }

        public Criteria andCommentTimeEqualTo(Date value) {
            addCriterion("comment_time =", value, "commentTime");
            return (Criteria) this;
        }

        public Criteria andCommentTimeNotEqualTo(Date value) {
            addCriterion("comment_time <>", value, "commentTime");
            return (Criteria) this;
        }

        public Criteria andCommentTimeGreaterThan(Date value) {
            addCriterion("comment_time >", value, "commentTime");
            return (Criteria) this;
        }

        public Criteria andCommentTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("comment_time >=", value, "commentTime");
            return (Criteria) this;
        }

        public Criteria andCommentTimeLessThan(Date value) {
            addCriterion("comment_time <", value, "commentTime");
            return (Criteria) this;
        }

        public Criteria andCommentTimeLessThanOrEqualTo(Date value) {
            addCriterion("comment_time <=", value, "commentTime");
            return (Criteria) this;
        }

        public Criteria andCommentTimeIn(List<Date> values) {
            addCriterion("comment_time in", values, "commentTime");
            return (Criteria) this;
        }

        public Criteria andCommentTimeNotIn(List<Date> values) {
            addCriterion("comment_time not in", values, "commentTime");
            return (Criteria) this;
        }

        public Criteria andCommentTimeBetween(Date value1, Date value2) {
            addCriterion("comment_time between", value1, value2, "commentTime");
            return (Criteria) this;
        }

        public Criteria andCommentTimeNotBetween(Date value1, Date value2) {
            addCriterion("comment_time not between", value1, value2, "commentTime");
            return (Criteria) this;
        }

        public Criteria andCommentContextIsNull() {
            addCriterion("comment_context is null");
            return (Criteria) this;
        }

        public Criteria andCommentContextIsNotNull() {
            addCriterion("comment_context is not null");
            return (Criteria) this;
        }

        public Criteria andCommentContextEqualTo(String value) {
            addCriterion("comment_context =", value, "commentContext");
            return (Criteria) this;
        }

        public Criteria andCommentContextNotEqualTo(String value) {
            addCriterion("comment_context <>", value, "commentContext");
            return (Criteria) this;
        }

        public Criteria andCommentContextGreaterThan(String value) {
            addCriterion("comment_context >", value, "commentContext");
            return (Criteria) this;
        }

        public Criteria andCommentContextGreaterThanOrEqualTo(String value) {
            addCriterion("comment_context >=", value, "commentContext");
            return (Criteria) this;
        }

        public Criteria andCommentContextLessThan(String value) {
            addCriterion("comment_context <", value, "commentContext");
            return (Criteria) this;
        }

        public Criteria andCommentContextLessThanOrEqualTo(String value) {
            addCriterion("comment_context <=", value, "commentContext");
            return (Criteria) this;
        }

        public Criteria andCommentContextLike(String value) {
            addCriterion("comment_context like", value, "commentContext");
            return (Criteria) this;
        }

        public Criteria andCommentContextNotLike(String value) {
            addCriterion("comment_context not like", value, "commentContext");
            return (Criteria) this;
        }

        public Criteria andCommentContextIn(List<String> values) {
            addCriterion("comment_context in", values, "commentContext");
            return (Criteria) this;
        }

        public Criteria andCommentContextNotIn(List<String> values) {
            addCriterion("comment_context not in", values, "commentContext");
            return (Criteria) this;
        }

        public Criteria andCommentContextBetween(String value1, String value2) {
            addCriterion("comment_context between", value1, value2, "commentContext");
            return (Criteria) this;
        }

        public Criteria andCommentContextNotBetween(String value1, String value2) {
            addCriterion("comment_context not between", value1, value2, "commentContext");
            return (Criteria) this;
        }

        public Criteria andAnnoIsNull() {
            addCriterion("anno is null");
            return (Criteria) this;
        }

        public Criteria andAnnoIsNotNull() {
            addCriterion("anno is not null");
            return (Criteria) this;
        }

        public Criteria andAnnoEqualTo(Integer value) {
            addCriterion("anno =", value, "anno");
            return (Criteria) this;
        }

        public Criteria andAnnoNotEqualTo(Integer value) {
            addCriterion("anno <>", value, "anno");
            return (Criteria) this;
        }

        public Criteria andAnnoGreaterThan(Integer value) {
            addCriterion("anno >", value, "anno");
            return (Criteria) this;
        }

        public Criteria andAnnoGreaterThanOrEqualTo(Integer value) {
            addCriterion("anno >=", value, "anno");
            return (Criteria) this;
        }

        public Criteria andAnnoLessThan(Integer value) {
            addCriterion("anno <", value, "anno");
            return (Criteria) this;
        }

        public Criteria andAnnoLessThanOrEqualTo(Integer value) {
            addCriterion("anno <=", value, "anno");
            return (Criteria) this;
        }

        public Criteria andAnnoIn(List<Integer> values) {
            addCriterion("anno in", values, "anno");
            return (Criteria) this;
        }

        public Criteria andAnnoNotIn(List<Integer> values) {
            addCriterion("anno not in", values, "anno");
            return (Criteria) this;
        }

        public Criteria andAnnoBetween(Integer value1, Integer value2) {
            addCriterion("anno between", value1, value2, "anno");
            return (Criteria) this;
        }

        public Criteria andAnnoNotBetween(Integer value1, Integer value2) {
            addCriterion("anno not between", value1, value2, "anno");
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