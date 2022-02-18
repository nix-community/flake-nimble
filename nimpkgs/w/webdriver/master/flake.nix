{
  description = ''Implementation of the WebDriver w3c spec.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-webdriver-master.flake = false;
  inputs.src-webdriver-master.type = "github";
  inputs.src-webdriver-master.owner = "dom96";
  inputs.src-webdriver-master.repo = "webdriver";
  inputs.src-webdriver-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-webdriver-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-webdriver-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-webdriver-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}