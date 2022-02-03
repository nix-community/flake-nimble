{
  description = ''WebDriver for Selenium(selenium-hub).'';
  inputs.src-selenimum-main.flake = false;
  inputs.src-selenimum-main.type = "github";
  inputs.src-selenimum-main.owner = "myamyu";
  inputs.src-selenimum-main.repo = "selenimum";
  inputs.src-selenimum-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-selenimum-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-selenimum-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-selenimum-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}