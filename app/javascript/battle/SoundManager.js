import { Howl, Howler } from 'howler';

export default class SoundManager {
  SOUND_MAP = {
    'cancel': '/assets/Cancel2.ogg',
    'open': '/assets/Cursor2.ogg',
    'swing': '/assets/air-swing.wav',
    'cursor': '/assets/menu_click.wav',
    'move': '/assets/move.ogg',
    'attack_1': '/assets/hit.wav',
    'heal': '/assets/saber.wav',
  };
  VOLUME = 0.5;

  constructor() {
    this.soundIsOn = true;
  }

  play(sound) {
    if (this.soundIsOn) {
      new Howl({
        src: [this.SOUND_MAP[sound]],
        volume: this.VOLUME,
      }).play();
    }
  }
}
