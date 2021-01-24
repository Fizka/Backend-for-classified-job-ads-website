package com.projektpk.szukajpracy;

import com.projektpk.szukajpracy.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class SzukajPracyApplication implements CommandLineRunner {

    public static void main(String[] args) {
        SpringApplication.run(SzukajPracyApplication.class, args);
    }

    @Autowired
    private SearchRepository searchRepository;
    @Autowired
    private AdvertisementRepository advertisementRepository;
    @Autowired
    private ApplicationRepository applicationRepository;
    @Autowired
    private CertificateRepository certificateRepository;
    @Autowired
    private CourseRepository courseRepository;
    @Autowired
    private CustomerRepository customerRepository;
    @Autowired
    private CVRepository cvRepository;
    @Autowired
    private QuestionRepository questionRepository;
    @Autowired
    private SurveyRepository surveyRepository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private CompanyRepository companyRepository;

    @Override
    public void run(String... args) throws Exception {

        /*
        searchRepository.save( new Search("Finanse","Księgowość","Starzysta"));
        searchRepository.save( new Search("Finanse","Bankowość","Starzysta"));
        searchRepository.save( new Search("Finanse","Rachunkowść","Starzysta"));
        searchRepository.save( new Search("Budownictwo","Praca Fizyczna","Starzysta"));
        searchRepository.save( new Search("Budownictwo","Architektura","Starzysta"));
        searchRepository.save( new Search("Budownictwo","Energetyka","Starzysta"));
        searchRepository.save( new Search("Budownictwo","Przemysłowość","Starzysta"));
        searchRepository.save( new Search("IT","Programowanie","Java"));
        searchRepository.save( new Search("IT","Programowanie","C++"));
        searchRepository.save( new Search("IT","Programowanie","JS"));
        searchRepository.save( new Search("IT","Programowanie","C#"));
        searchRepository.save( new Search("IT","Programowanie","C"));
        searchRepository.save( new Search("IT","Programowanie","GO"));
        searchRepository.save( new Search("IT","bezpieczeństwo","Starzysta"));
        searchRepository.save(new Search("IT","Testowanie","Junio"));
        searchRepository.save(new Search("IT","Bazy Danych","Senior"));
        searchRepository.save( new Search("Prawo","Windykacja","Starzysta"));
        searchRepository.save( new Search("Prawo","Prawnik","Starzysta"));
        searchRepository.save( new Search("Finanse","Księgowość","Specjalista"));
        searchRepository.save( new Search("Finanse","Bankowość","Specjalista"));
        searchRepository.save( new Search("Finanse","Rachunkowść","Specjalista"));
        searchRepository.save( new Search("Budownictwo","Praca Fizyczna","Specjalista"));
        searchRepository.save( new Search("Budownictwo","Architektura","Specjalista"));
        searchRepository.save( new Search("Budownictwo","Energetyka","Specjalista"));
        searchRepository.save( new Search("Budownictwo","Przemysłowość","Specjalista"));
        searchRepository.save( new Search("Prawo","Windykacja","Specjalista"));
        searchRepository.save( new Search("Prawo","Prawnik","Specjalista"));
*/
/*
        User u1 =new User("admin","haslo","Kawalska@wp.pl");
        User u2 =new User("Login2","haslo","Nowak@wp.pl");
        User u3 =new User("Login3","haslo","Rybka@wp.pl");
        User u4 =new User("Login4","haslo","Pokolko@wp.pl");
        User u5 =new User("Login5","haslo","Bykoro@wp.pl");
        User u6 =new User("Login6","haslo","KNowak@wp.pl");
        User u7 =new User("Login7","haslo","Kawalskaa@wp.pl");
        User u8 =new User("Login8","haslo","NowakK@wp.pl");
        User u9 =new User("Login9","haslo","Modolek@wp.pl");
        User u10 =new User("Login10","haslo","Zygon@wp.pl");
        User u11 =new User("Login11","haslo","Tymko@wp.pl");
        User u12 =new User("Login12","haslo","Nowak@wp.pl");

        User u13 =new User("login13","haslo","login13@wp.pl");
        User u14 =new User("Login14","haslo","Login14@wp.pl");
        User u15 =new User("Login15","haslo","Login15@wp.pl");
        User u16 =new User("Login16","haslo","Login16@wp.pl");
        User u17 =new User("Login17","haslo","Login17@wp.pl");
        User u18=new User("Login18","haslo","Login18@wp.pl");
        User u19 =new User("Login19","haslo","Login19@wp.pl");
        User u20 =new User("Login20","haslo","Login20@wp.pl");
        User u21 =new User("Login21","haslo","Login21@wp.pl");
        User u22 =new User("Login22","haslo","Login22@wp.pl");
        User u23 =new User("Login23","haslo","Login23@wp.pl");
        User u24 =new User("Login24","haslo","Login24@wp.pl");

        userRepository.save(u1);
        userRepository.save(u2);
        userRepository.save(u3);
        userRepository.save(u4);
        userRepository.save(u5);
        userRepository.save(u6);
        userRepository.save(u7);
        userRepository.save(u8);
        userRepository.save(u9);
        userRepository.save(u10);
        userRepository.save(u11);
        userRepository.save(u12);
        userRepository.save(u13);
        userRepository.save(u14);
        userRepository.save(u15);
        userRepository.save(u16);
        userRepository.save(u17);
        userRepository.save(u18);
        userRepository.save(u19);
        userRepository.save(u20);
        userRepository.save(u21);
        userRepository.save(u22);
        userRepository.save(u23);
        userRepository.save(u24);

        Customer c1 = new Customer("Anna","Kawalska","Kraków",787656465,54986653);
        Customer c2 =new Customer("Paulina","Nowak","Kraków",985432765,345);
        Customer c3 =new Customer("Zosia","Rybka","Kraków",876527654,9999999);
        Customer c4 =new Customer("Kuba","Pokolko","Kraków",985432876,987654678);
        Customer c5 =new Customer("Kamil","Bykoro","Kraków",987654397,345679765);
        Customer c6 = new Customer("Janusz","Nowak","jnKrakówhb",987498765,875434567);

        Customer c7 = new Customer("Monika","Kawalska","Warszawa",45356465,532986653);
        Customer c8 =new Customer("Krystyna","Nowak","Warszawa",243242765,3454655);
        Customer c9 =new Customer("Basia","Modolek","Warszawa",435652654,9954999);
        Customer c10 =new Customer("Karolina","Zygon","Warszawa",432876,984454678);
        Customer c11 =new Customer("Bartek","Tymko","Warszawa",213765397,325679765);
        Customer c12 = new Customer("Zbigniew","Nowak","Warszawa",54548765,235434567);

        c1.setUser_Customer(u1);
        c2.setUser_Customer(u2);
        c3.setUser_Customer(u3);
        c4.setUser_Customer(u4);
        c5.setUser_Customer(u5);
        c6.setUser_Customer(u6);
        c7.setUser_Customer(u13);
        c8.setUser_Customer(u14);
        c9.setUser_Customer(u15);
        c10.setUser_Customer(u16);
        c11.setUser_Customer(u17);
        c12.setUser_Customer(u18);

        customerRepository.save(c1);
        customerRepository.save(c2);
        customerRepository.save(c3);
        customerRepository.save(c4);
        customerRepository.save(c5);
        customerRepository.save(c6);
        customerRepository.save(c7);
        customerRepository.save(c8);
        customerRepository.save(c9);
        customerRepository.save(c10);
        customerRepository.save(c11);
        customerRepository.save(c12);

        CV cv1 = new CV("Anna Kawalska","Politechnika Krakowska im. Tadeusza Kościuszki Wydział Inżynierii Elektrycznej i Komputerowej","Wedkarstwo","Kreatywność, umiejętność pracy w grupie ","Pięć lat w zawodzie");
        CV cv2 =new CV("Paulina Nowak","Politechnika Krakowska im. Tadeusza Kościuszki Wydział Inżynierii Elektrycznej i Komputerowej","Kolekcjonuje znaczki","Techologie: Programowanie w języku Java, Programowanie w języku C++","Dwa lat w zawodzie");
        CV cv3 =new CV("Zosia Rybka","Politechnika Krakowska im. Tadeusza Kościuszki Wydział Inżynierii Elektrycznej i Komputerowej","Koszykówka","Kreatywność, umiejętność pracy w grupie","Brak");
        CV cv4 =new CV("Kuba Pokolko","Politechnika Krakowska im. Tadeusza Kościuszki Wydział Inżynierii Elektrycznej i Komputerowej","Bieganie","Programowanie w języku C++","Specjalista, dziesięć lat w zawodzie");
        CV cv5 =new CV("Kamil Bykoro","Politechnika Krakowska im. Tadeusza Kościuszki Wydział Inżynierii Elektrycznej i Komputerowej","Nauka o sztucznej inteligencji","Kreatywność, umiejętność pracy w grupie","Stażysta");
        CV cv6 = new CV("Janusz Nowak","Politechnika Krakowska im. Tadeusza Kościuszki Wydział Inżynierii Elektrycznej i Komputerowej","Piłka norzna","Programowanie w języku Java","Brak");

        CV cv7 = new CV("Monika Kawalska","Politechnika Krakowska im. Tadeusza Kościuszki Wydział Inżynierii Elektrycznej i Komputerowej","Programowanie","Umiejętność pracy w zespole i samodzielnie","Dwa lata w zawodzie");
        CV cv8 =new CV("Krystyna Nowak","Politechnika Krakowska im. Tadeusza Kościuszki Wydział Inżynierii Elektrycznej i Komputerowej","Wyprawy w góry","Programowanie w języku JS","brak");
        CV cv9 =new CV("Basia Modolek","Politechnika Krakowska im. Tadeusza Kościuszki Wydział Inżynierii Elektrycznej i Komputerowej","Podróże","Spostrzegawczość","Siedem lat w zawodzie");
        CV cv10 =new CV("Karolina Zygon","Politechnika Krakowska im. Tadeusza Kościuszki Wydział Inżynierii Elektrycznej i Komputerowej","Koszykówka","Umiejętność pracy w zespole i samodzielnie","Rok w zawodzie");
        CV cv11 =new CV("Bartek Tymko","Politechnika Krakowska im. Tadeusza Kościuszki Wydział Inżynierii Elektrycznej i Komputerowej","Programowanie","Umiejętność pracy w zespole i samodzielnie","Brak");
        CV cv12 = new CV("Zbigniew Nowak","Politechnika Krakowska im. Tadeusza Kościuszki Wydział Inżynierii Elektrycznej i Komputerowej","Nauka o sztucznej inteligencji","Programowanie w języku Python","Brak");

        cv1.setCv(c1);
        cv2.setCv(c2);
        cv3.setCv(c3);
        cv4.setCv(c4);
        cv5.setCv(c5);
        cv6.setCv(c6);

        cv7.setCv(c7);
        cv8.setCv(c8);
        cv9.setCv(c9);
        cv10.setCv(c10);
        cv11.setCv(c11);
        cv12.setCv(c12);

        cvRepository.save(cv1);
        cvRepository.save(cv2);
        cvRepository.save(cv3);
        cvRepository.save(cv4);
        cvRepository.save(cv5);
        cvRepository.save(cv6);
        cvRepository.save(cv7);
        cvRepository.save(cv8);
        cvRepository.save(cv9);
        cvRepository.save(cv10);
        cvRepository.save(cv11);
        cvRepository.save(cv12);

        Company co1 = new Company("Paroza","ul. Piękna","Kraków","Paroza@wp.pl",43678,9987,776);
        Company co2 = new Company("Wizoko & SK","ul. Długa","Kraków","Wizoko@wp.pl",43565,9864,9876);
        Company co3 = new Company("Nokia","ul. Nowa","Kraków","Nokia@wp.pl",34567,9896,98765);
        Company co4 = new Company("S&G&Q","ul. Warszawska","Kraków","G@wp.pl",98765,98766,8765);
        Company co5 = new Company("Mpp","ul. Warszawska","Kraków","Mpp@wp.pl",87654,875655,87654);
        Company co6 = new Company("Hykoo&U","ul. Rynna","Kraków","Hykoo@wp.pl",98764,98765,876555);

        Company co7 = new Company("U&T","ulica1","Warszawa","UT@wp.pl",45653678,9587,75656);
        Company co8 = new Company("Pawilon","ulica2","Warszawa","Pawilon@wp.pl",45653565,56564,956576);
        Company co9 = new Company("Rykona","ulica3","Warszawa","Rykona@wp.pl",5654567,9896,5656);
        Company co10 = new Company("M&M","ulica4","Warszawa","MMM@wp.pl",9565765,98766,856565);
        Company co11 = new Company("Wyk&H","ulica5","Warszawa","Wyk@wp.pl",5657654,875655,85657654);
        Company co12 = new Company("Joope","ulica6","Warszawa","Joope@wp.pl",9565764,5658765,5656);

        co1.setUser_company(u7);
        co2.setUser_company(u8);
        co3.setUser_company(u9);
        co4.setUser_company(u10);
        co5.setUser_company(u11);
        co6.setUser_company(u12);
        co7.setUser_company(u19);
        co8.setUser_company(u20);
        co9.setUser_company(u21);
        co10.setUser_company(u22);
        co11.setUser_company(u23);
        co12.setUser_company(u24);


        companyRepository.save(co1);
        companyRepository.save(co2);
        companyRepository.save(co3);
        companyRepository.save(co4);
        companyRepository.save(co5);
        companyRepository.save(co6);
        companyRepository.save(co7);
        companyRepository.save(co8);
        companyRepository.save(co9);
        companyRepository.save(co10);
        companyRepository.save(co11);
        companyRepository.save(co12);

        Advertisement ad1 = new Advertisement("Pilnie poszukiwany stażysta!","IT","Kraków",4000,"Paroza","2020-02-02","Umawa zlecenie","Poszukiwany specjalista na wyżej wymienione stanowisko!");
        Advertisement ad2 = new Advertisement("Poszukiwany programosta Java!","IT","Kraków",700,"Firma","2020-02-02","Umawa zlecenie","Poszukiwany specjalista na wyżej wymienione stanowisko!");
        Advertisement ad3 = new Advertisement("Poszukiwany Java! Junio!","IT","Kraków",13000,"Firma","2020-02-02","Umawa zlecenie","Poszukiwany specjalista na wyżej wymienione stanowisko!");
        Advertisement ad4 = new Advertisement("Poszukiwany programista C++","IT","Kraków",8765,"Firma","2020-02-02","B2B","Poszukiwany specjalista na wyżej wymienione stanowisko!");
        Advertisement ad5 = new Advertisement("Pilnie poszukiwany stażysta!","IT","Warszawa",3000,"Firma","2020-02-02","B2B","Poszukiwany specjalista na wyżej wymienione stanowisko!");
        Advertisement ad6 = new Advertisement("Poszukiwany programista JS!","IT","Warszawa",7000,"Firma","2020-02-02","Umowa o dzieło","Poszukiwany specjalista na wyżej wymienione stanowisko!");

        Advertisement ad7 = new Advertisement("Pilnie potrzebny konstruktor!","Budownictwo","Warszawa",4000,"Paroza","2020-02-02","Umawa zlecenie","Poszukiwany specjalista na wyżej wymienione stanowisko!");
        Advertisement ad8 = new Advertisement("Pilnie poszukiwany stażysta!","Budownictwo","Kraków",7200,"Firma","2020-02-02","Umawa zlecenie","Poszukiwany specjalista na wyżej wymienione stanowisko!");
        Advertisement ad9 = new Advertisement("Pilnie poszukiwany prawnik!","Prawo","Warszawa",5600,"Firma","2020-02-02","Umawa zlecenie","Poszukiwany specjalista na wyżej wymienione stanowisko!");
        Advertisement ad10 = new Advertisement("Pozycja głownego prawnika!","Prawo","Kraków",5800,"Firma","2020-02-02","B2B","Poszukiwany specjalista na wyżej wymienione stanowisko!");
        Advertisement ad11 = new Advertisement("Pilnie poszukiwany stażysta!","Finanse","Warszawa",6000,"Firma","2020-02-02","B2B","Poszukiwany specjalista na wyżej wymienione stanowisko!");
        Advertisement ad12 = new Advertisement("Poszukiwana osoba na pozycję księgowej!","Finanse","Kraków",7000,"Firma","2020-02-02","Umowa o dzieło","Poszukiwany specjalista na wyżej wymienione stanowisko!");

        ad1.setCompany_Advertisement(co1);
        ad2.setCompany_Advertisement(co2);
        ad3.setCompany_Advertisement(co3);
        ad4.setCompany_Advertisement(co4);
        ad5.setCompany_Advertisement(co5);
        ad6.setCompany_Advertisement(co6);
        ad7.setCompany_Advertisement(co7);
        ad8.setCompany_Advertisement(co8);
        ad9.setCompany_Advertisement(co9);
        ad10.setCompany_Advertisement(co10);
        ad11.setCompany_Advertisement(co11);
        ad12.setCompany_Advertisement(co12);

        advertisementRepository.save(ad1);
        advertisementRepository.save(ad2);
        advertisementRepository.save(ad3);
        advertisementRepository.save(ad4);
        advertisementRepository.save(ad5);
        advertisementRepository.save(ad6);
        advertisementRepository.save(ad7);
        advertisementRepository.save(ad8);
        advertisementRepository.save(ad9);
        advertisementRepository.save(ad10);
        advertisementRepository.save(ad11);
        advertisementRepository.save(ad12);

        Application a1 = new Application("Paroza","Pilnie poszukiwany stażysta! IT","Nowak@wp.pl",876542187,"Paulina Nowak");
        Application a2 = new Application("Wizoko & SK","Poszukiwany programosta Java!","Nowak@wp.pl",987643187,"Paulina Nowak");
        Application a3 = new Application("Nokia","Poszukiwany Java! Junio!","Bykoro@wp.pl",876532187,"Kamil Bykoro");
        Application a4 = new Application("S&G&Q","Poszukiwany programista C++","KNowak@wp.pl",876542187,"Zosia Rybka");
        Application a5 = new Application("Mpp","Pilnie poszukiwany stażysta!","Kawalskaa@wp.pl",876543217,"Monika Kawalska");
        Application a6 = new Application("Hykoo&U","Poszukiwany programista JS!","Modolek@wp.pl",765432187,"Basia Modolek");



        a2.setCompany_Application(co1);
        a2.setCustomers_Application(c1);
        a2.setAdvertisement(ad1);

        a3.setCompany_Application(co2);
        a3.setCustomers_Application(c2);
        a3.setAdvertisement(ad2);

        a4.setCompany_Application(co3);
        a4.setCustomers_Application(c3);
        a4.setAdvertisement(ad3);

        a5.setCompany_Application(co4);
        a5.setCustomers_Application(c4);
        a5.setAdvertisement(ad4);

        a6.setCompany_Application(co5);
        a6.setCustomers_Application(c5);
        a6.setAdvertisement(ad5);

        a1.setCompany_Application(co6);
        a1.setCustomers_Application(c6);
        a1.setAdvertisement(ad6);

        applicationRepository.save(a1);
        applicationRepository.save(a2);
        applicationRepository.save(a3);
        applicationRepository.save(a4);
        applicationRepository.save(a5);
        applicationRepository.save(a6);

        Course ce1 = new Course("Kurs","Specjalistyczny");
        Course ce2 = new Course("Kurs","Specjalistyczny");
        Course ce3 = new Course("Kurs","Specjalistyczny");
        Course ce4 = new Course("Kurs","Specjalistyczny");
        Course ce5 = new Course("Kurs","Specjalistyczny");
        Course ce6 = new Course("Kurs","Specjalistyczny");

        ce1.setCustomer_Curse(c1);
        ce2.setCustomer_Curse(c2);
        ce3.setCustomer_Curse(c3);
        ce4.setCustomer_Curse(c4);
        ce5.setCustomer_Curse(c5);
        ce6.setCustomer_Curse(c6);

        courseRepository.save(ce1);
        courseRepository.save(ce2);
        courseRepository.save(ce3);
        courseRepository.save(ce4);
        courseRepository.save(ce5);
        courseRepository.save(ce6);

        Certificate cf1 = new Certificate("Certyfikat","Specjalistyczny");
        Certificate cf2 = new Certificate("Certyfikat","Specjalistyczny");
        Certificate cf3 = new Certificate("Certyfikat","Specjalistyczny");
        Certificate cf4 = new Certificate("Certyfikat","Specjalistyczny");
        Certificate cf5 = new Certificate("Certyfikat","Specjalistyczny");
        Certificate cf6 = new Certificate("Certyfikat","Specjalistyczny");

        cf1.setCustomer_Certficate(c1);
        cf2.setCustomer_Certficate(c2);
        cf3.setCustomer_Certficate(c3);
        cf4.setCustomer_Certficate(c4);
        cf5.setCustomer_Certficate(c5);
        cf6.setCustomer_Certficate(c6);
*/
    }
}
