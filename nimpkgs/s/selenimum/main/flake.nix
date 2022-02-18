{
  description = ''WebDriver for Selenium(selenium-hub).'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-selenimum-main.flake = false;
  inputs.src-selenimum-main.type = "github";
  inputs.src-selenimum-main.owner = "myamyu";
  inputs.src-selenimum-main.repo = "selenimum";
  inputs.src-selenimum-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-selenimum-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-selenimum-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-selenimum-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}