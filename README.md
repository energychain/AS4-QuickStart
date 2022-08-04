# AS4-QuickStart

<a href="https://stromdao.de/" target="_blank" title="STROMDAO - Digital Energy Infrastructure"><img src="./static/stromdao.png" align="right" height="85px" hspace="30px" vspace="30px"></a>

**Einführung in das Webservices basierende Kommunikationsprotokoll AS4 zum B2B Austausch zwischen Marktpartnern.**

## Zugehöriges Training
- [Einführung in den AS4-Standard](https://stromdao.marbleteams.com/paths/3/)

## Nutzung Docker Image
Das Image basiert auf [HolodeckB2B](http://holodeck-b2b.org/) und bietet eine Initialisierung für den [Getting-Started-Guide](holodeck-b2b.org/documentation/getting-started/). Es kann als Basis für die Schulungen und Einführungen genutzt werden.

```
docker network create as4
docker run --name CompanyA --net as4 -d stromdao/as4quickstart:latest
docker exec -ti CompanyA initCompanyA

docker run --name CompanyB --net as4 -d stromdao/as4quickstart:latest
docker exec -ti CompanyB initCompanyB

docker exec -ti CompanyA testOneWayPushToB
```

## Nützliche Shortcuts
```
docker exec -ti CompanyA ./bin/gatewayMonitor.sh history
docker exec -ti CompanyB ./bin/gatewayMonitor.sh history
```

## Maintainer / Imprint

<addr>
STROMDAO GmbH  <br/>
Gerhard Weiser Ring 29  <br/>
69256 Mauer  <br/>
Germany  <br/>
  <br/>
+49 6226 968 009 0  <br/>
  <br/>
kontakt@stromdao.com  <br/>
  <br/>
Handelsregister: HRB 728691 (Amtsgericht Mannheim)
</addr>

Project Website: https://corrently.io/

## LICENSE
[Apache-2.0](./LICENSE)
