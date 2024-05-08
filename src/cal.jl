
const monthnames = Dict(
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


"""Convert a `Date` to a date in the Hebrew calendar as 
represented by the `Calendars` package.

$(SIGNATURES)
"""
function hebrewforsysdate(dt::Dates.Date)::NTuple{4, Int64}
    ConvertDate(CE, year(dt), month(dt), day(dt), AM)
end


"""Convert a date in the Hebrew calendar, as represented by the `Calendars` package, to a `Dates.Date` object.

$(SIGNATURES)
"""
function sysdateforhebrew(hdate::NTuple{4, Int64})::Dates.Date
    gregorian = ConvertDate(AM, Calendars.Year(hdate), Calendars.Month(hdate), Calendars.Day(hdate), CE)
    Dates.Date(Calendars.Year(gregorian), Calendars.Month(gregorian), Calendars.Day(gregorian))
end


"""Format a string for a date in the Hebrew calendar as
represented by the `Calendars` package.

$(SIGNATURES)
"""
function hebrewstring(hdate::NTuple{4, Int64})
    m = Calendars.Month(hdate)
    join([Calendars.Day(hdate), monthnames[m], Calendars.Year(hdate)], " ")
end