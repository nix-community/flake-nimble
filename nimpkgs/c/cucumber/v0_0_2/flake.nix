{
  description = ''implements the cucumber BDD framework in the nim language'';
  inputs.src-cucumber-v0_0_2.flake = false;
  inputs.src-cucumber-v0_0_2.type = "github";
  inputs.src-cucumber-v0_0_2.owner = "shaunc";
  inputs.src-cucumber-v0_0_2.repo = "cucumber_nim";
  inputs.src-cucumber-v0_0_2.ref = "refs/tags/v0.0.2";
  
  outputs = { self, nixpkgs, src-cucumber-v0_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cucumber-v0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cucumber-v0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}