# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "battle", preload: true
pin "formulas", preload: true
# pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
# pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
# pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
# pin_all_from "app/javascript/controllers", under: "controllers"
pin "animejs", to: "https://ga.jspm.io/npm:animejs@3.2.1/lib/anime.js"
pin "howler", to: "https://ga.jspm.io/npm:howler@2.2.3/dist/howler.js"
pin "spriteling", to: "https://ga.jspm.io/npm:spriteling@1.1.5/dist/spriteling.min.js"
pin "process", to: "https://ga.jspm.io/npm:@jspm/core@2.0.0-beta.22/nodelibs/browser/process-production.js"
pin "fastpriorityqueue", to: "https://ga.jspm.io/npm:fastpriorityqueue@0.7.2/FastPriorityQueue.js"
