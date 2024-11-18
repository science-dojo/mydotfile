# Notice
如果配置extra.java插件，由于jdtls有最低java版本要求，如果系统java不满足，需要安装个人的java包。

安装个人版本java后 `brew intall openjdk`, 需要显示设置JAVA_HOME环境变量, 例如:

```bash
export JAVA_HOME=/opt/homebrew/Cellar/openjdk/23.0.1
export PATH=$JAVA_HOME/bin:$PATH
```
