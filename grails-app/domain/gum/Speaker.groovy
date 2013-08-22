package gum

class Speaker {
	String name
	String twitterId
	String githubId
	String website
	String company
	String about

	static constraints = {
		name(blank: false, nullable: false)
		twitterId(blank: true, nullable: true)
		githubId(blank: true, nullable: true)
		website(url: true, blank: true, nullable: true)
		company(blank: true, nullable: true)
		about(blank: true, nullable: true)
	}

	static hasMany = [presentations: Presentation]

	static mapping = {
		sort "name"
	}

	String toString() {
		return name
	}
}
