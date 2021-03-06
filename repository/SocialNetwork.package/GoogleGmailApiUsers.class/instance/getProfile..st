generated
getProfile: userId 
	"
		Gets the current user's Gmail profile.

		Parameters, * = required, optional parameters in optionsDict

		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: '{userId}/profile' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.