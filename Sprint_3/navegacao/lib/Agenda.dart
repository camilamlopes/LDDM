import 'package:flutter/material.dart';
import 'package:calendar_view/calendar_view.dart';

class Agenda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
              CalendarControllerProvider(
                controller: EventController(),
                child: WeekView(
                      controller: EventController(),
                      eventTileBuilder: (data, eventos, boundry, start, end) {
                        // Return your widget to display as event tile.
                        return Container();
                      },
                      showLiveTimeLineInAllDays: true, // To display live time line in all pages in week view.
                      width: 350, // width of week view.
                      //minMonth: DateTime(1990),
                      //maxMonth: DateTime(2050),
                      //initialMonth: DateTime(2021),
                      heightPerMinute: 1, // height occupied by 1 minute time span.
                      eventArranger: SideEventArranger(), // To define how simultaneous events will be arranged.
                      onEventTap: (events, date) => print(events),
                    )
                  // Your initialization for material app.
                ),
                Scaffold(
                  floatingActionButton: FloatingActionButton(
                  child: Icon(Icons.add),
                  elevation: 8,
                  //onPressed: _addEvent,
                  ),
                  //body: WeekViewWidget(),
                )
        ],
      ),
    );
  }
  /*Future<void> _addEvent() async {
    final event =
    await context.pushRoute<CalendarEventData<Event>>(CriarEvento(
      withDuration: true,
    ));
    if (event == null) return;
    CalendarControllerProvider.of<Event>(context).controller.add(event);
  }*/
}