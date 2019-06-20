// Capture Javascript errors
window.onerror = function(errorMsg, url, lineNumber, column, errorObj) {
	window.plugins.toast.showShortTop(errorMsg + lineNumber + errorObj);
};

var app = {
	// Application Constructor
	initialize: function() {
		this.bindEvents();
	},
	// Bind Event Listeners
	//
	// Bind any events that are required on startup. Common events are:
	// 'load', 'deviceready', 'offline', and 'online'.
	bindEvents: function() {
		document.addEventListener('deviceready', this.onDeviceReady, false);
	},
	// deviceready Event Handler
	onDeviceReady: function() {
		var parentElement = document.getElementById('swrve-panel');
		parentElement.setAttribute('style', 'display:block;');

		// Set push payload listener
		window.plugins.swrve.setPushNotificationListener(function(payload) {
			window.plugins.toast.showShortTop('Push payload: ' + payload);
		});

		parentElement.querySelector('.swrve-event-button').addEventListener('click', function() {
			window.plugins.swrve.event(
				'sample.cordova.event',
				undefined,
				function() {
					window.plugins.toast.showShortTop('Event queued');
				},
				function() {
					window.plugins.toast.showShortTop('Error: event not queued');
				}
			);
		});

		parentElement.querySelector('.swrve-send-events-button').addEventListener('click', function() {
			window.plugins.swrve.sendEvents(
				function() {
					window.plugins.toast.showShortTop('Event queue sent to Swrve');
				},
				function() {
					window.plugins.toast.showShortTop('Error: event queue not sent');
				}
			);
		});
	}
};
