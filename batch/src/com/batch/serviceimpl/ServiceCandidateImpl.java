package com.batch.serviceimpl;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.batch.DBConnectionInfo;
import com.batch.bean.Candidate;
import com.batch.service.ServiceCandidate;

public class ServiceCandidateImpl implements ServiceCandidate  {
	
	DBConnectionInfo connectionInfo=null;
	List<Candidate> candidateList=null;
	Candidate candidatebean=null;
	public ServiceCandidateImpl() {
		 connectionInfo=new DBConnectionInfo();
	}

	@Override
	public int saveCandidate(Candidate candidate) {
		int status=0;
		try{
			Connection connection=connectionInfo.getDBConnectionInfo();
			String query="{call batch.saveCandidate(?,?,?,?,?,?,?,?,?,?)}";
			CallableStatement statement=connection.prepareCall(query);
			statement.setNString(1, candidate.getCandidateCurrentDate());
			statement.setNString(2, candidate.getCandidateName());
			statement.setNString(3, candidate.getCandidateFatherName());
			statement.setNString(4, candidate.getCandidateEmail());
			statement.setNString(5, candidate.getCandidateMobile());
			statement.setNString(6, candidate.getCandidateCollegeUniversity());
			statement.setNString(7, candidate.getCandidateQualification());
			statement.setNString(8, candidate.getCandidatePermanentAddress());
			String arra[]=candidate.getCandidateCourse();
			String multicourse="";
			for (String course : arra){
				multicourse=course+","+multicourse;
			}
			statement.setString(9, multicourse);
			statement.setNString(10, candidate.getCandidateComment());
			status=statement.executeUpdate();
			if(status>0){
				//connection.commit();
				connection.close();
				return status;
			}else{
				connection.rollback();
				connection.close();
				return status;
			}
		}catch (Exception e) {
			System.out.println("ServiceCandidateImpl:saveCandidate"+e);
		}
		return status;
	}

	@Override
	public List<Candidate> viewAllCandidate() {
		try{
			Connection connection=connectionInfo.getDBConnectionInfo();
			String sql="call batch.viewAllCandidate()";
			CallableStatement statement=connection.prepareCall(sql);
			ResultSet set=statement.executeQuery();
			candidateList=new ArrayList<Candidate>();
			while (set.next()) {
				candidatebean=new Candidate();
				candidatebean.setCandidateId(set.getInt("candidateId"));
				candidatebean.setCandidateName(set.getString("candidateName"));
				candidatebean.setCandidateFatherName(set.getString("candidateFatherName"));
				candidatebean.setCandidateMobile(set.getString("candidateMobile"));
				candidatebean.setCandidateEmail(set.getString("candidateEmail"));
				candidatebean.setCandidatePermanentAddress(set.getString("candidatePermanentAddress"));
				candidatebean.setCandidateQualification(set.getString("candidateQualification"));
				candidatebean.setCandidateCollegeUniversity(set.getString("candidateCollegeUniversity"));
				candidatebean.setCandidateCourseOne(set.getString("candidateCourse"));
				candidatebean.setCandidateComment(set.getString("candidateComment"));
				candidatebean.setCandidateCurrentDate(set.getString("candidateCurrentDate"));
				candidateList.add(candidatebean);
			}
			
		}catch (Exception e) {
			System.out.println("ServiceCandidateImpl:viewAllCandidate"+e);
		}
		return candidateList;
	}

}
