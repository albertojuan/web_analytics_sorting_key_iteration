tb datasource append analytics_events ./datasources/fixtures/analytics_events.ndjson
tb push pipes/backfilling.pipe --populate --wait
tb datasource exchange analytics_events_aux analytics_events
