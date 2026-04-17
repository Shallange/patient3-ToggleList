# Kodkliniken - Jimmy Kroneld

## Patient jag ansvarade för
- Patient 3

## Symptom
- Toggle-raderna hade kompileringsfel.
- Listan visades men gick inte att redigera.

## Diagnos
- ForEach(viewModel.tasks) gav kopior av varje task.
- Toggle kräver en Binding för att kunna skriva tillbaka ändringar.

## Behandling
- Jag ändrade till ForEach($viewModel.tasks).
- Jag använde $task.isDone i Toggle för att skapa en binding.

## Verifiering
- Appen kompilerar.
- Toggle fungerar och uppdaterar listan korrekt.

## Lärdomar
- ForEach över värden ger kopior.
- $ används för att skapa bindningar i SwiftUI.
