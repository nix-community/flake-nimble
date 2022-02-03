{
  description = ''WebDriver for Selenium(selenium-hub).'';
  inputs.src-selenimum-v0_2_0.flake = false;
  inputs.src-selenimum-v0_2_0.type = "github";
  inputs.src-selenimum-v0_2_0.owner = "myamyu";
  inputs.src-selenimum-v0_2_0.repo = "selenimum";
  inputs.src-selenimum-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-selenimum-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-selenimum-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-selenimum-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}