# engineering_notebook
Initializes an engineering notebook

## Installation
```bash
source journal.sh
init_journal
standup
```

## Usage

#### init_journal
```bash
init_journal
```

##### Explaination
Creates  ~/.jrnl
Initializes an empty git repo
Copies journal.sh into ~/.jrnl
Commits journal.sh
Adds "source ~/.jrnl/journal.sh" to your profile

#### journal
```bash
journal "<WHAT I DID>"
```

##### Explaination
Adds an empty commit to your git directory in ~/.jrnl with the specified message

#### standup
```bash
standup
```

##### Explaination
Run git log | grep for today and yesterday
