import { Controller } from '@hotwired/stimulus';

// Connects to data-controller="timelog"
export default class extends Controller {
  static targets = ['play', 'self', 'study', 'social', 'exercise', 'work'];
  connect() {
    console.log(this.formTarget);
  }

  closeCard(target) {
    if (target.params.payload === 'Play') this.playTarget.hidden = false;
    if (target.params.payload === 'Self') this.selfTarget.hidden = false;
    if (target.params.payload === 'Work') this.workTarget.hidden = false;
    if (target.params.payload === 'Study') this.studyTarget.hidden = false;
    if (target.params.payload === 'Social') this.socialTarget.hidden = false;
    if (target.params.payload === 'Exercise') this.exerciseTarget.hidden = false;
  }
  showCard(target) {
    if (target.params.payload === 'Play') this.playTarget.hidden = true;
    if (target.params.payload === 'Self') this.selfTarget.hidden = true;
    if (target.params.payload === 'Work') this.workTarget.hidden = true;
    if (target.params.payload === 'Study') this.studyTarget.hidden = true;
    if (target.params.payload === 'Social') this.socialTarget.hidden = true;
    if (target.params.payload === 'Exercise') this.exerciseTarget.hidden = true;
  }
}
