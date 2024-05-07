
monthnames = Dict(
    1 => "Nisan",
    2 => "Iyar",
    3 => "Sivan",
    4 => "Tammuz",
    5 => "Av",
    6 => "Elul",
    7 => "Tishrei",
    8 => "Cheshvan",
    9 => "Kislev",
    10 => "Tevet",
    11 => "Shevat",
    12 => "Adar",
    13 => "Adar2",
)

systemnames = Dict(
    1 => "European",
    2 => "Common",
    3 => "Julian",
    4 => "Hebrew",
    5 => "Islamic",
    6 => "ISO",
    7 => "EuroNum",
    8 => "Julian day number"
)

function hebrewforsysdate(dt::Dates.Date)::NTuple{4, Int64}
    ConvertDate(CE, year(dt), month(dt), day(dt), AM)
end

function sysdateforhebrew(hdate::NTuple{4, Int64})::Dates.Date
    Dates.Date(Calendars.Year(hdate), Calendars.Month(hdate), Calendars.Day(hdate))
end


function hebrewstring(hdate::NTuple{4, Int64})
    m = Calendars.Month(hdate)
    join([Calendars.Day(hdate), monthnames[m], Calendars.Year(hdate)], " ")
end