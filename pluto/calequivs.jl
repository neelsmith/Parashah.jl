### A Pluto.jl notebook ###
# v0.19.41

using Markdown
using InteractiveUtils

# ╔═╡ 4d25ddda-f616-47f3-aeb6-e372dec6b804
begin
	using Pkg
	Pkg.add(path=dirname(pwd()))

	using Parashah
	using Calendars
	using Dates
end

# ╔═╡ 2d7b7d48-0c67-11ef-2830-cf9f33a67790
md"""# Practice with Hebrew calendar"""

# ╔═╡ 63c98f21-7135-419b-b5e9-f594d72bc500
today = Dates.Date(Dates.now())

# ╔═╡ 9b035e5b-43ad-43f9-b0d9-13b3e0999f3d
today_hebrew = ConvertDate(CE, year(today), month(today), day(today), AM)

# ╔═╡ 0d76ec07-d731-4efe-9c50-6ee712f320f5
today_hebrew |> Calendars.Year

# ╔═╡ 812e9412-9b6d-448a-9bf9-d955069deccd
today_hebrew |> Calendars.Month

# ╔═╡ c1ce3db5-ad1a-4848-88ed-2a23f8af27af
pwd()

# ╔═╡ Cell order:
# ╠═4d25ddda-f616-47f3-aeb6-e372dec6b804
# ╟─2d7b7d48-0c67-11ef-2830-cf9f33a67790
# ╟─63c98f21-7135-419b-b5e9-f594d72bc500
# ╟─9b035e5b-43ad-43f9-b0d9-13b3e0999f3d
# ╠═0d76ec07-d731-4efe-9c50-6ee712f320f5
# ╠═812e9412-9b6d-448a-9bf9-d955069deccd
# ╠═c1ce3db5-ad1a-4848-88ed-2a23f8af27af
