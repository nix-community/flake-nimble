{
  description = ''Implementation of the WebDriver w3c spec.'';
  inputs.src-webdriver-master.flake = false;
  inputs.src-webdriver-master.type = "github";
  inputs.src-webdriver-master.owner = "dom96";
  inputs.src-webdriver-master.repo = "webdriver";
  inputs.src-webdriver-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-webdriver-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-webdriver-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-webdriver-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}