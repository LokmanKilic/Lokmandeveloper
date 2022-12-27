public class DatetimeMethodsDemo {

    public void calculateAgeInMonths() {
    
    date bd=date.newInstance(1977,05,25);
    date  tdy= date.today();

    integer ageInMonths=bd.monthsBetween(tdy);
    system.debug( 'Lokman age in months is  '+ageInMonths);
    }
    
    public void calculateAgeInDays(){
       date tdy=date.today();
       date bd=date.newInstance(1977,5,25);
       integer ageInDays=bd.daysBetween(tdy);
       system.debug( 'Lokman age indays is '+ageInDays);

    }

    public void printSubscriptionEndDate(){
        date subscriptionStartDate=date.today();

        date subscriptionEndtDate=subscriptionStartDate.addDays(1000);
        system.debug('Subscription end on '+ subscriptionEndtDate);
        integer endDateYear= subscriptionEndtDate.year();
        system.debug('Subscription end date Yaer is '+endDateYear );
        integer endDateMonth=subscriptionEndtDate.month();
        system.debug('Subscription end date Month is '+endDateMonth );

    }

    public void printOfferEndDate(){
        datetime dtNow=datetime.now();
        datetime dtOfferEnd=dtNow.addHours(51);
        system.debug( 'offer end date&time is ' + dtOfferEnd);
        datetime dateOfferEnd=dtOfferEnd.date();
        system.debug('date of offer end is '+dateOfferEnd);

    }

    public void birthDateToMilliSeconds(){
        datetime birthDate=datetime.newInstance(1977,05,25,12,25,6);
        long longhBirthDate=birthDate.getTime();
        system.debug('my long birth Date is '+longhBirthDate);
    }



}
