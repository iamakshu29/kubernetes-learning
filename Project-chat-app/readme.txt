Manifest Files and their configurations for Project chat-app:
Frontend
- service.yml
- deployment.yml
- hpa.yml

Backend
- service.yml 
- deployment.yml
- hpa.yml

Database (deployment using stateful sets,no HPA, mostly VPA or external managed db services)
- service.yml -> headless service for stateful applications. Why? 
    a. To give direct, stable DNS identities to each pod — instead of a single load-balanced endpoint.
    b. The database should never be exposed to users or the public network.
- deployment.yml
- hpa.yml (not applicable)
    a. As pods with databases typically use stateful sets and do not scale using HPA. 
    b. They mostly scale vertically by allocating more resources to db pods or using external managed db services.
- pv and pvc.yml -> Persistent Volume and Persistent Volume Claim for database storage.


