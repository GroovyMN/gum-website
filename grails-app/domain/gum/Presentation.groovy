package gum

class Presentation {
	String title
	String description
	String sourceUrl
	String slidesUrl
	Date presentationDate
	Byte photo

	static belongsTo = [Speaker]

	static constraints = {
		title(blank: false, nullable: false)
		description(blank: true, nullable: true, maxSize: 1000)
		sourceUrl(url:true, blank: true, nullable: true)
		slidesUrl(url: true, blank: true, nullable: true)
		presentationDate(blank: false, nullable: false)
		photo(blank: true, nullable: true)
	}

	static hasMany = [speakers: Speaker]

	static mapping = {
		sort presentationDate: "desc"
	}

	String toString() {
		return title
	}
}
