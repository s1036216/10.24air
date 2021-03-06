package com.airbnb.web.domain;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class Member {
			private String 
			memberId,
			memberPassword,
			name,
			regdate,
			birthdate,
			memberRole
			
			;

			public String getMemberRole() {
				return memberRole;
			}

			public void setMemberRole(String memberRole) {
				this.memberRole = memberRole;
			}

			@Override
			public String toString() {
				return "Member [memberId=" + memberId + ", memberPassword=" + memberPassword + ", name=" + name
						+ ", regdate=" + regdate + ", birthdate=" + birthdate + "]";
			}

			public String getMemberId() {
				return memberId;
			}

			public void setMemberId(String memberId) {
				this.memberId = memberId;
			}

			public String getMemberPassword() {
				return memberPassword;
			}

			public void setMemberPassword(String memberPassword) {
				this.memberPassword = memberPassword;
			}

			public String getName() {
				return name;
			}

			public void setName(String name) {
				this.name = name;
			}

			public String getRegdate() {
				return regdate;
			}

			public void setRegdate(String regdate) {
				this.regdate = regdate;
			}

			public String getbirthdate() {
				return birthdate;
			}

			public void setbirthdate(String birthdate) {
				this.birthdate = birthdate;
			}
			
}
