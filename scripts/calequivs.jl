using Parashah
using Calendars
using Dates


today = Dates.Date(Dates.now())
today_hebrew = ConvertDate(CE, year(today), month(today), day(today), AM)

typeof(today_hebrew)

function sysdateforhebrew(hdate::NTuple{4, Int64})
    Dates.Date(Calendars.Year(hdate), Calendars.Month(hdate), Calendars.Day(hdate))
end

sysdateforhebrew(today_hebrew)

Parashah.monthnames[Calendars.Month(today_hebrew)]