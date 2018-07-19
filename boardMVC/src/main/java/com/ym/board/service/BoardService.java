package com.ym.board.service;

import java.util.List;

import com.ym.board.vo.BoardVO;

public interface BoardService {

	List<BoardVO> selectBoard();

	void regBoard(BoardVO boardVO);

	List<BoardVO> detailView(int idx);

	void deleteInfo(String idx);

}
