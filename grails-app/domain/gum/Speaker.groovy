package gum

class Speaker {
	String name
	String twitterId
	String githubId
	String company
	String about

	static hasMany = [presentations: Presentation]

    static constraints = {
		name(blank: false, nullable: false)
		twitterId(blank:true, nullable: true)
		githubId(blank:true, nullable: true)
		company(blank: true, nullable: true)
		about(blank: true, nullable: true)
    }

	String toString() {
		this.name
	}
}
