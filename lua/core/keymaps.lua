-- 设置主键很重要！！！
vim.g.mapleader = " "

local keymap = vim.keymap
local opt = {noremap=true,silent=true}

-- --------- 插入模式 --------- --

-- 插入模式通过 jj 返回 普通模式
keymap.set("i","jj","<ESC>")

-- --------- 视觉模式 --------- --

-- 单行或多行移动
keymap.set("v","J",":m '>+1<CR>gv=gv")
keymap.set("v","K",":m '<-2<CR>gv=gv")

-- --------- 正常模式 --------- --

-- 窗口
keymap.set("n","<leader>sv","<C-w>v") -- 水平新增窗口
keymap.set("n","<leader>sh","<C-w>s") -- 垂直新增窗口
-- 窗口快速移动
keymap.set("n","<C-l>","<C-w>l")
keymap.set("n","<C-h>","<C-w>h")
keymap.set("n","<C-j>","<C-w>j")
keymap.set("n","<C-k>","<C-w>k")

-- 取消高亮
keymap.set("n","<leader>nh",":nohl<CR>")

-- 显示不全的一行 通过 j k 跳进
keymap.set("n","j",[[v:count ? 'j' : 'gj']],{noremap=true,expr=true})
keymap.set("n","k",[[v:count ? 'k' : 'gk']],{noremap=true,expr=true})


