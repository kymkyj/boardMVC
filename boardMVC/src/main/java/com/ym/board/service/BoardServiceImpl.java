package com.ym.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ym.board.dao.BoardDAO;
import com.ym.board.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardDAO boardDAO;
	
	// Resource는 name으로 찾아감.
	// Autowired는 type으로 찾음.
	
	@Override
	public List<BoardVO> selectBoard() {
		return boardDAO.selectBoard();
	}
	
	@Override
	public void regBoard(BoardVO boardVO) {
		boardDAO.regBoard(boardVO);
	}

	@Override
	public List<BoardVO> detailView(int idx) {
		return boardDAO.detailView(idx);
	}

	@Override
	public void deleteInfo(String idx) {
		boardDAO.deleteInfo(idx);
	}

}
