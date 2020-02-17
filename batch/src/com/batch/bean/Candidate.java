package com.batch.bean;

import java.util.Arrays;

public class Candidate {
		private int candidateId;
		private String candidateCurrentDate;
		private String candidateName;
		private String candidateFatherName;
		private String candidateEmail;
		private String candidateMobile;
		private String candidateCollegeUniversity;
		private String candidateQualification;
		private String candidatePermanentAddress;
		private String candidateCourse[];
		private String candidateCourseOne;
		private String candidateComment;
		
		public Candidate() {}
		
		public int getCandidateId() {
			return candidateId;
		}
		public void setCandidateId(int candidateId) {
			this.candidateId = candidateId;
		}
		public String getCandidateCurrentDate() {
			return candidateCurrentDate;
		}
		public void setCandidateCurrentDate(String candidateCurrentDate) {
			this.candidateCurrentDate = candidateCurrentDate;
		}
		public String getCandidateName() {
			return candidateName;
		}
		public void setCandidateName(String candidateName) {
			this.candidateName = candidateName;
		}
		public String getCandidateFatherName() {
			return candidateFatherName;
		}
		public void setCandidateFatherName(String candidateFatherName) {
			this.candidateFatherName = candidateFatherName;
		}
		public String getCandidateEmail() {
			return candidateEmail;
		}
		public void setCandidateEmail(String candidateEmail) {
			this.candidateEmail = candidateEmail;
		}
		public String getCandidateMobile() {
			return candidateMobile;
		}
		public void setCandidateMobile(String candidateMobile) {
			this.candidateMobile = candidateMobile;
		}
		public String getCandidateCollegeUniversity() {
			return candidateCollegeUniversity;
		}
		public void setCandidateCollegeUniversity(String candidateCollegeUniversity) {
			this.candidateCollegeUniversity = candidateCollegeUniversity;
		}
		public String getCandidateQualification() {
			return candidateQualification;
		}
		public void setCandidateQualification(String candidateQualification) {
			this.candidateQualification = candidateQualification;
		}
		public String getCandidatePermanentAddress() {
			return candidatePermanentAddress;
		}
		public void setCandidatePermanentAddress(String candidatePermanentAddress) {
			this.candidatePermanentAddress = candidatePermanentAddress;
		}
		
		public String[] getCandidateCourse() {
			return candidateCourse;
		}
		public void setCandidateCourse(String[] candidateCourse) {
			this.candidateCourse = candidateCourse;
		}
		public String getCandidateComment() {
			return candidateComment;
		}
		public void setCandidateComment(String candidateComment) {
			this.candidateComment = candidateComment;
		}
		public String getCandidateCourseOne() {
			return candidateCourseOne;
		}

		public void setCandidateCourseOne(String candidateCourseOne) {
			this.candidateCourseOne = candidateCourseOne;
		}
		
		@Override
		public String toString() {
			return  candidateId + "|" + candidateCurrentDate + "|" + candidateName + "|" + candidateFatherName
					+ "|" + candidateEmail + "|" + candidateMobile
					+ "|" + candidateCollegeUniversity + "|"
					+ candidateQualification + "|" + candidatePermanentAddress
					+ "|" + Arrays.toString(candidateCourse) +"|"+candidateCourseOne+"|" + candidateComment;
		}
}
