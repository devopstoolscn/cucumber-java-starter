# language: zh-CN

功能: 用户登录

  场景大纲: 账号密码登录
  假如 用户进入登录页面
  当 用户需要输入用户名<UserName>和密码<Password>然后点击登录按钮
  那么 用户登录平台并显示当前姓名<NickName>

    @positive
    例子: 有效用户名和密码
      | UserName    | Password | NickName |
      | devopstools | 123456   | bdd      |

