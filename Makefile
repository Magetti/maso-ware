local_schema_diagram: ## Crea il diagramma ER
	java -jar ~/jars/schemaSpy_5.0.0.jar -t pgsql -host localhost -s public -db huware -u postgres \
	-dp ~/jars/postgresql-42.2.18.jar -o schema/diagrams
