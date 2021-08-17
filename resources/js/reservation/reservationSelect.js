const date = new Date();
/*alert('date.getFullYear()');*/
const lastDay = new Date(date.getFullYear(), date.getMonth() + 1, 0);
const reserveDate = document.querySelector(".reserve-date");

const weekOfDay = ["일", "월", "화", "수", "목", "금", "토"]
const year = date.getFullYear();
const month = date.getMonth() + 1;
for (i = date.getDate(); i <= lastDay.getDate(); i++) {

	const button = document.createElement("button");
	const spanWeekOfDay = document.createElement("span");
	const spanDay = document.createElement("span");

	//class넣기
	button.classList = "perform-date-wrapper"
	spanWeekOfDay.classList = "perform-week-of-day";
	spanDay.classList = "perform-day";

	//weekOfDay[new Date(2020-03-날짜)]
	const dayOfWeek = weekOfDay[new Date(year + "-" + month + "-" + i).getDay()];

	//요일 넣기
	if (dayOfWeek === "토") {
		spanWeekOfDay.classList.add("saturday");
		spanDay.classList.add("saturday");
	} else if (dayOfWeek === "일") {
		spanWeekOfDay.classList.add("sunday");
		spanDay.classList.add("sunday");
	}
	spanWeekOfDay.innerHTML = dayOfWeek;
	button.append(spanWeekOfDay);
	//날짜 넣기
	spanDay.innerHTML = i;
	button.append(spanDay);
	//button.append(i);
	reserveDate.append(button);

	dayClickEvent(button);
}


function dayClickEvent(button) {
	button.addEventListener("click", function() {
		const performDateWrapperActive = document.querySelectorAll(".perform-date-wrapper-active");
		performDateWrapperActive.forEach((list) => {
			list.classList.remove("perform-date-wrapper-active");
		})
		button.classList.add("perform-date-wrapper-active");
	})
}