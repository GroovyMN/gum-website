package gum

class Sponsor {
	String type
	String url
	String title
	String file
	Date description
	Byte photo
	Integer sortOrder

	static constraints = {
		type(blank: false, nullable: false)
		url(url:true, blank: true, nullable: true)
		title(blank: false, nullable: false, unique: true)
		file(blank: false, nullable: false)
		description(blank: true, nullable: true, maxSize: 1000)
		photo(blank: true, nullable: true)
		sortOrder(blank: true, nullable: true)
	}

	String toString() {
		return title
	}
}
