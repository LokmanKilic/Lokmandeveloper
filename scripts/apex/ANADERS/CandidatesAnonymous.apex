Candidates.companyName = 'SoftInnovas';
Candidates.printCandidateInfo();
system.debug('Start count of candidates = '+Candidates.countCandidates);

Candidates c1 = new Candidates();
//Candidates.countCandidates++;
c1.Name = 'Jerry';
c1.Gender = 'Male';
c1.printCandidate();

Candidates c5 = new Candidates('Newman','joe');
c5.printCandidate();


Candidates c2 = new Candidates();

//Candidates.countCandidates++;
c2.Name = 'Elaine';
c2.Gender = 'Female';
c2.printCandidate();
//for mac: opt + shift + drag mouse

Candidates.companyName = 'Vandelay Industries';

Candidates c3 = new Candidates();
//Candidates.countCandidates++;
c3.Name = 'George';
c3.Gender = 'Male';
c3.printCandidate();

system.debug('-------');
c1.printCandidate();
system.debug('-------');
c2.printCandidate();
system.debug('-------');
Candidates.printCandidateInfo();

Candidates c4 = new Candidates();
//Candidates.countCandidates++;
c4.Name = 'Hagi';
c4.Gender = 'Male';
c4.printCandidate();

system.debug('END count of candidates = ' + Candidates.countCandidates);