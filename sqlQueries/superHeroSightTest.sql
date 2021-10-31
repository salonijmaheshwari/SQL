USE superherosightupdated;

SELECT * FROM location;
select * from herosight;
select * from superhero;
select * from hero_organization;
select * from hero_location;
select * from organizations;
select * from superpower;

select * from herosight where sightId = 65;



SELECT sp.* FROM superPower sp JOIN superHero sh ON sh.powerId = sp.powerId WHERE sh.heroId = 89;

UPDATE superHero SET heroName = "sm" , heroDescription = "sm" , powerId = 2 WHERE heroId = 2;

DELETE FROM hero_organization WHERE heroId = 2;

INSERT INTO hero_organization(heroId, orgId) VALUES(2,1);
INSERT INTO hero_organization(heroId, orgId) VALUES(2,2);

DELETE FROM hero_location WHERE heroId = 2;
DELETE FROM herosight WHERE heroId= 2;

select * from superhero;

select * from organizations;

select * from hero_organization where heroId=1;

INSERT INTO hero_organization(heroId, orgId) VALUES(1,2);

