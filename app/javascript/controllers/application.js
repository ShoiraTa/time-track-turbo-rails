import { Application } from '@hotwired/stimulus';

const application = Application.start();
//= require jquery_ujs
// Configure Stimulus development experience
application.debug = false;
window.Stimulus = application;

export { application };
