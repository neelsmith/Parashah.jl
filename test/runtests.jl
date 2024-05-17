using Parashah
using Calendars, Dates
using Test


@testset "Test simple date conversions" begin
    dt = Dates.Date(2024, 5, 1)
    expected = (4, 5784, 1, 23)
    converted = Parashah.hebrewforsysdate(dt)
    @test  converted == expected
    roundtrip = Parashah.sysdateforhebrew(converted)
    @test roundtrip == dt

    @test Parashah.hebrewstring(converted) == "23 Nisan 5784"
end