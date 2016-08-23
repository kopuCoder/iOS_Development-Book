
代码规范个人总结：
    1.代码简介，但不失语语意
    2.通常，不要缩写对象的名称。即使它们很长，也全拼
      // eg:setBackgroundColor: //good    setBkgdColor: //bad
    3.类名最好加上前缀，避免和系统或者三方库函数命令名冲突，属性和方法名 申明使用驼峰式命名法则

    4.关于实例变量的申明：synthesize  参考：http://blog.csdn.net/u011010305/article/details/51800936

  Xcode5之后，就不需要@property和@synthesize 配对使用了，而且开发者只会关心对象的接口，不关心实现的细节。应避免显示声明实例变量

 warning:针对可能会出现的问题：同时重写了setter和getter方法，导致编译器不自定生成对应的： _XXX实例变量的，解决办法是：谁最后重写方法时，谁报错，谁加上 synthesize,如果所有的属性都需要写上 synthesize，就开发效率而言，太浪费时间 ，就添加 @synthesize XXX = _XXX 而言，建议最好使用苹果推荐的风格，生成对应的以 "_"开头的实例变量


