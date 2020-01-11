# Architectural Guidelines
1. Minimize sharing user data and metadata beyond the users device, ideally restricted only to cases where it is done with the users enthusiastic consent.
2. Minimize the capital costs of operating and maintenance first, then time costs.

## Faux-personas
_Note: none of these have been researched via qualitative or quantitative measures. We would deeply appreciate market or user research as contributions to the product._
1. **Erin, the enthusiast** - A budding home chef without experience or expertise, but lots of energy! Erin loves exploring new cooking techniques as a way to relax after work.
2. **Dar, the dabbler** - Dar's been cooking at home a few times a week for years and is looking to get a bit more pizzaz out of their evening meal.
3. **Pat, the prepper** - Pat's got it all laid out. They buy in bulk, plan their whole week of meals, and put it all together in one fell swoop!

## Design in the Small
1. Follow the [four rules of simple design](https://www.natashatherobot.com/4-rules-of-simple-design/) when possible.
1. Try things and show your work rather than striving for a platonic ideal.

## Design in the Large
1. At this time, we believe direct integration with native platform APIs provides the highest degree of user privacy, experience, information security and developer maintainabilty.
1. Prefer libraries and frameworks with a multi-year major release cycle over libraries currently experiencing even semi-annual or even annual API churn.


## Data Locality and Ownership
1. Prioritize retrieving and storing data through platform supported channels that enforce user privacy. For example [HealthKit](https://developer.apple.com/documentation/healthkit) for nutritional information, [Core Data](https://developer.apple.com/documentation/coredata) for in-memory data, and [CloudKit](https://developer.apple.com/documentation/cloudkit) for cross-device synchronization.
2. Respect distribution rights wherever possible. Many recipes are licensed under [Creative Commons ](https://creativecommons.org/) licenses which may require attribution. We prefer to err on the side of citation.
