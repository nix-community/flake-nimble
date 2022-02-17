{
  description = ''Code expander for competitive programing in Nim.'';
  inputs.src-expander-main.flake = false;
  inputs.src-expander-main.type = "github";
  inputs.src-expander-main.owner = "soraiemame";
  inputs.src-expander-main.repo = "expander";
  inputs.src-expander-main.ref = "refs/heads/main";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-expander-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-expander-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-expander-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}