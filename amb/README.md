## 概述

在看sicp第4章讲不确定求值-amb时，有一个无限amb的例子`an-integer-starting-from`，看到文章中有几个例子一直用这个过程做例子。但在后面的amb-求值器的实现中，并没有发现对amb参数惰性求值的支持，怀疑示例amb-求值器的实现并没有考虑到`an-integer-starting-from`的支持。

```
(define (an-integer-starting-from n)
    (amb n (an-integer-starting-from (+ n 1))))
```

### amb的实现

实现来自<https://mitpress.mit.edu/sicp/code/index.html>, 将`ch4-mceval.scm`、`ch4-ambeval.scm`整合在一起作为amb的实现。

### 测试1 list测试

示例代码见：<amb-list-demo.scm>

**结果**

可以正确执行。符合预期。

### 测试2 an-integer-starting-from无限测试

示例代码见：<amb-infinite-demo.scm>

**结果**

卡在`an-integer-starting-from`的执行上，最终内存溢出。符合预期。
