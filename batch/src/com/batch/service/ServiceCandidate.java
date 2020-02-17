package com.batch.service;

import java.util.List;

import com.batch.bean.Candidate;

public interface ServiceCandidate {
	public abstract int saveCandidate(Candidate candidate);
	public abstract List<Candidate> viewAllCandidate();
}
