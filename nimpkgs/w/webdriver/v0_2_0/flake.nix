{
  description = ''Implementation of the WebDriver w3c spec.'';
  inputs.src-webdriver-v0_2_0.flake = false;
  inputs.src-webdriver-v0_2_0.type = "github";
  inputs.src-webdriver-v0_2_0.owner = "dom96";
  inputs.src-webdriver-v0_2_0.repo = "webdriver";
  inputs.src-webdriver-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-webdriver-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-webdriver-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-webdriver-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}