package com.ym.board.dao;

import java.util.List;

import com.ym.board.vo.BoardVO;

public interface BoardDAO {

	public List<BoardVO> selectBoard();

	public void regBoard(BoardVO boardVO);

	public List<BoardVO> detailView(int idx);

	public Object deleteInfo(String idx);
}
