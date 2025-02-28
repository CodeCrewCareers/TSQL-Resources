SELECT 
    DATEADD(DAY,DATEDIFF(DAY,1,GETDATE()),0) as PriorDay
    ,DATEADD(DAY, DATEDIFF(DAY, -7, GETDATE()), 0) as FutureDay
    ,DATEADD(WEEK, DATEDIFF(WEEK, 0, GETDATE()) - 1, 0) as StartOfLastWeekMonday
    ,DATEADD(DAY, -1, DATEADD(WEEK, DATEDIFF(WEEK, 0, GETDATE()), 0)) as EndOfLastWeekSunday    
    ,DATEADD(WEEK, DATEDIFF(WEEK, 0, GETDATE()), 0) as StartOfCurrentWeekMonday
    ,DATEADD(DAY, -1, DATEADD(WEEK, DATEDIFF(WEEK, 0, GETDATE()) + 1, 0)) as EndOfCurrentWeekSunday
    ,DATEADD(WEEK, DATEDIFF(WEEK, 0, GETDATE()) - 1, -1) as StartOfLastWeekSunday
    ,DATEADD(DAY, -1, DATEADD(WEEK, DATEDIFF(WEEK, 0, GETDATE()), -1)) as EndOfLastWeekSaturday
    ,DATEADD(WEEK, DATEDIFF(WEEK, 0, GETDATE()), -1) as StartOfCurrentWeekSunday
    ,DATEADD(DAY, -1, DATEADD(WEEK, DATEDIFF(WEEK, 0, GETDATE()) + 1, -1)) as EndOfCurrentWeekSaturday
    ,DATEADD(MONTH, 6, GETDATE()) as AddMonths
    ,DATEADD(MONTH, -2, GETDATE()) as RemoveMonths
    ,DATEADD(MM, DATEDIFF(MM, 0, GETDATE()), 0) as StartOfCurrentMonth 
    ,DATEADD(DD, -1, DATEADD(MM, DATEDIFF(MM, 0, GETDATE()) +1, 0)) as EndOfCurrentMonth
    ,DATEADD(MM, DATEDIFF(MM, 0, GETDATE()) -1, 0) as StartOfLastMonth
    ,DATEADD(MM, DATEDIFF(MM, 0, GETDATE()), -1) as EndOfLastMonth
    ,DATEADD(MM, DATEDIFF(MM, 0, GETDATE()) + 1, 0) as StartOfNextMonth
    ,DATEADD(DD, -1, DATEADD(MM, DATEDIFF(MM, 0, GETDATE()) +2, 0)) as EndOfNextMonth
    ,DATEADD(QQ, DATEDIFF(QQ, 0, GETDATE()), 0) as StartOfCurrentQuarter
    ,DATEADD (DD, -1, DATEADD(QQ, DATEDIFF(QQ, 0, GETDATE()) +1, 0)) as EndOfCurrentQuarter
    ,DATEADD(QQ, DATEDIFF(QQ, 0, GETDATE()) -1, 0) as StartOfLastQuarter
    ,DATEADD(QQ, DATEDIFF(QQ, 0, GETDATE()), -1) as EndOfLastQuarter
    ,DATEADD(QQ, DATEDIFF(QQ, 0, GETDATE()) + 1, 0) as StartOfNextQuarter
    ,DATEADD(DD, -1, DATEADD(QQ, DATEDIFF(QQ, 0, GETDATE()) +2, 0)) as EndOfNextQuarter
    ,DATEADD(YY, DATEDIFF(YY, 0, GETDATE()), 0) as StartOfCurrentYear
    ,DATEADD(DD, -1, DATEADD(YY, DATEDIFF(YY, 0, GETDATE()) +1, 0)) as EndOfCurrentYear
    ,DATEADD(YY, DATEDIFF(YY, 0, GETDATE()) -1, 0) as StartOfLastYear
    ,DATEADD(YY, DATEDIFF(YY, 0, GETDATE()), -1) as EndOfLastYear
    ,DATEADD(YY, DATEDIFF(YY, 0, GETDATE()) +1, 0) as StartOfNextYear
    ,DATEADD(DD, -1, DATEADD(YY, DATEDIFF(YY, 0, GETDATE()) +2, 0)) as EndOfNextYear