public class Candidates {
    public string name;
    public string gender;
    public static string companyName;
    public static integer countCandidates=0;
    
    public Candidates(){
        Candidates.countCandidates++;
    }

    public Candidates(string n, string g){
        this();
        this.name = n;
        this.Gender = g;
    }


    public void printCandidate(){
        system.debug('Candidate name is ' + Name );
        system.debug('Gender is ' + Gender);
        system.debug('Company name is ' + companyName);
    }
    public static void printCandidateInfo(){
        //we can access only static members inside static method.
        system.debug('Company name is '+ companyName);
        //we can not access non static members inside static method.
        //system.debug('name is ' + Name);
    }
}