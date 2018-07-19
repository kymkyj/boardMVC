package com.ym.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ym.board.vo.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
//	@Resource
//	private SqlSession sqlSession;
	@Autowired
	private SqlSession template;
	
	@Override
	public List<BoardVO> selectBoard() {
		return template.selectList("board.selectBoard");
	}

	@Override
	public void regBoard(BoardVO boardVO) {
		template.insert("board.regBoard", boardVO);
	}

	@Override
	public List<BoardVO> detailView(int idx) {
		return template.selectList("board.detailBoard", idx);
	}

	@Override
	public Object deleteInfo(String idx) {
		return template.delete("board.deleteInfo", idx);
	}
}
