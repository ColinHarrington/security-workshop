import com.fakebank.Account
import com.fakebank.AccountHolder
import com.fakebank.AccountTransaction

class BootStrap {

	def init = { servletContext ->

		//Initialize Users
		AccountHolder billGates = createAccountHolder("Bill Gates", 'bill@microsoft.com', 'windows')
		AccountHolder oo7 = createAccountHolder("James Bond", 'james@bond.com', '007')
		AccountHolder steveJobs = createAccountHolder("Steve Jobs", 'steve@apple.com', 'Laurene')
		AccountHolder johnDoe = createAccountHolder("John Doe", 'john@example.com', 'john')
		AccountHolder janeDoe = createAccountHolder("Jane Doe", 'jane@example.com', 'jane')

		addAccount("Checking 1", "Personal Checking", billGates)
		addAccount("Checking 2", "Company Checking", billGates)
		addAccount("Checking 3", "Slush fund", billGates)
		billGates.save()

		addAccount("Checking 1", "IMF", oo7)
		oo7.save()

	}

	def destroy = {

	}

	protected createAccountHolder(String name, String username, String password) {
		AccountHolder user = new AccountHolder(
				name: name,
				username: username,
				password: password
		)
		user.save(failOnError: true)

		return user
	}

	protected addAccount(String name, String description, AccountHolder accountHolder) {
		Account account = new Account(
				name: name,
				description: description,
				accountHolder: accountHolder,
				balance: Math.random() * 20000
		)
		account.save()

		accountHolder.addToAccounts(account)

		(0..90).each { daysAgo ->
			5.times { i ->
				account.addToTransactions(new AccountTransaction(
						amount: Math.pow(Math.random(), 2) * 500,
						description: "transaction $i $daysAgo days ago",
						settled: new Date() - daysAgo
				))

			}
		}
		account.save(failOnError: true)
	}
}
