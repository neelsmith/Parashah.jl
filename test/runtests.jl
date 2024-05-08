using Parashat
using Calendars, Dates
using Test


@testset "Test simple date conversions" begin
    dt = Dates.Date(2024, 5, 1)
    expected = (4, 5784, 1, 23)
    converted = Parashat.hebrewforsysdate(dt)
    @test  converted == expected
    roundtrip = Parashat.sysdateforhebrew(converted)
    @test roundtrip == dt

    @test Parashat.hebrewstring(converted) == "23 Nisan 5784"
end