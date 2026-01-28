package com.member.domain;

import lombok.Data;

@Data
public class Member {
	private int No;
    private String name;
    private String ID;
    private String password;

    private String oldID;   // 소문자 시작
}

