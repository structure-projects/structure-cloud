# structure-cloud

微服务版本依赖管理与扩展组件

## 项目简介

structure-cloud 是一个 Spring Cloud 微服务开发的基础设施项目，提供统一的依赖版本管理和扩展组件支持。

## 模块说明

### structure-cloud-dependencies
- **功能**：统一的依赖版本管理模块
- **特性**：
  - 管理 Spring Cloud 依赖版本 (2021.0.5)
  - 管理 Spring Cloud Alibaba 依赖版本 (2021.0.4.0)
  - 管理 Seata 分布式事务依赖版本 (1.2.0)
  - 管理 Spring Boot 依赖版本 (2.7.18)
  - 基于 structure 1.2.10 构建

### structure-ribbon-starter
- **功能**：Ribbon 客户端扩展启动器
- **特性**：
  - 支持在 Spring Cloud 高版本中继续使用 Ribbon (2.2.9.RELEASE)
  - 提供静态服务列表配置
  - 自动装配支持

## 快速开始

### 引入依赖管理

在项目的 pom.xml 中添加：

```xml
<dependencyManagement>
    <dependencies>
        <dependency>
            <groupId>cn.structured</groupId>
            <artifactId>structure-cloud-dependencies</artifactId>
            <version>1.0.3-SNAPSHOT</version>
            <type>pom</type>
            <scope>import</scope>
        </dependency>
    </dependencies>
</dependencyManagement>
```

### 使用 Ribbon Starter

> **注意**：structure-ribbon-starter 的版本不在 structure-cloud-dependencies 中维护，需要单独指定版本。

1. 添加依赖：

```xml
<dependency>
    <groupId>cn.structured</groupId>
    <artifactId>structure-ribbon-starter</artifactId>
    <version>1.2.10</version>
</dependency>
```

2. 配置 application.yml：

```yaml
structure:
  ribbon:
    enable: true
    server:
      - host: localhost
        port: 8080
        scheme: http
```

## 技术栈

- Java 8+
- Spring Boot 2.7.18
- Spring Cloud 2021.0.5
- Spring Cloud Alibaba 2021.0.4.0
- Netflix Ribbon 2.2.9.RELEASE
- Seata 1.2.0

## 许可证

本项目采用 Apache License 2.0 许可证 - 详见 [LICENSE](LICENSE) 文件

## 开发者

- **chuck** - [chuckLcq](https://github.com/chuckLcq)
- **Chuanqiang Liu** - [lchqJava](https://github.com/lchqJava)

## 项目地址

- GitHub: https://github.com/structure-projects/structure-cloud
- 项目主页: https://projects.structured.cn/structure-cloud

## 问题反馈

如有问题，请在 [GitHub Issues](https://github.com/structure-projects/structure-cloud/issues) 中反馈。
