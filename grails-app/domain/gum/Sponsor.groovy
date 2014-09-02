package gum

class Sponsor {
	String type // TODO: Enum
	String url
	String title // TODO: or unique code?
	String file
	Date description
	Byte photo

	static constraints = {
		type(blank: false, nullable: false) // TODO: unique: true
		url(url:true, blank: true, nullable: true)
		title(blank: false, nullable: false, unique: true)
		file(blank: false, nullable: false)
		description(blank: true, nullable: true, maxSize: 1000)
		photo(blank: true, nullable: true)
	}

	String toString() {
		return title
	}
}