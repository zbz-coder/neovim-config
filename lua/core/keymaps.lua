-- 设置主键很重要！！！
vim.g.mapleader = " "

local keymap = vim.keymap

-- --------- 插入模式 --------- --
-- 插入模式通过 jj 返回 普通模式
keymap.set("i","jj","<ESC>")

-- --------- 视觉模式 --------- --
-- 单行或多行移动
keymap.set("v","J",":m '>+1<CR>gv=gv")
keymap.set("v","K",":m '<-2<CR>gv=gv")

-- --------- 正常模式 --------- --
-- 窗口
keymap.set("n","<C-l>","<C-w>v") -- 水平新增窗口
keymap.set("n","<C-j>","<C-w>s") -- 垂直新增窗口

-- 取消高亮
keymap.set("n","<leader>nh",":nohl<CR>")

