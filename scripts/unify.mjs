'use strict';

import { readFileSync } from 'fs';

const files = process.argv.slice(2);
const complete = {
  siteVersion: "1.130.3",
  _meta: { sources: [] },
};
files.forEach((file) => {
  const contents = JSON.parse(readFileSync(file));
  for (const key in contents) {
    if (key === "siteVersion") continue;
    if (key === "_meta") {
      complete["_meta"]["sources"].push(...contents[key]["sources"])
    } else {
      complete[key] = complete[key] || []
      complete[key].push(...contents[key])
    }
  }
});
console.log(JSON.stringify(complete));
