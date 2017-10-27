package com.airbnb.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.airbnb.web.command.Command;
import com.airbnb.web.mapper.BKMapper;

@Transactional
@Service
public class TransactionService {
	@Autowired Command cmd;
	@Autowired BKMapper mapper;
	public void delete(Command cmd) {
		mapper.deleteId(cmd);
		mapper.deleteRes(cmd);
	}
}
