package gum

import groovy.transform.EqualsAndHashCode

@EqualsAndHashCode
class Sponsor {
	String name
	String type
	String url
	String file
	Date description
	Byte photo
	Integer sortOrder

	static constraints = {
		name(blank: false, nullable: false, unique: true)
		type(blank: false, nullable: false)
		url(url:true, blank: true, nullable: true)
		file(blank: false, nullable: false)
		description(blank: true, nullable: true, maxSize: 1000)
		photo(blank: true, nullable: true)
		sortOrder(blank: true, nullable: true)
	}

	String toString() {
		return name
	}
}
