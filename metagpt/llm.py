#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
@Time    : 2023/5/11 14:45
@Author  : alexanderwu
@File    : llm.py
@Modified By: mashenquan, 2023
"""
from enum import Enum

from metagpt.provider.anthropic_api import Claude2 as Claude
from metagpt.provider.openai_api import OpenAIGPTAPI as LLM


class LLMType(Enum):
    OPENAI = "OpenAI"
    METAGPT = "MetaGPT"
    UNKNOWN = "UNKNOWN"

    @classmethod
    def get(cls, value):
        for member in cls:
            if member.value == value:
                return member
        return cls.UNKNOWN

    @property
    def UNKNOWN(self):
        return LLMType.UNKNOWN


DEFAULT_LLM = LLM()
CLAUDE_LLM = Claude()


async def ai_func(prompt):
    """使用LLM进行QA
    QA with LLMs
    """
    return await DEFAULT_LLM.aask(prompt)
