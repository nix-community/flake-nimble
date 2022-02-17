{
  description = ''Spurdification library and CLI'';
  inputs.src-spurdify-v0_0_6.flake = false;
  inputs.src-spurdify-v0_0_6.type = "github";
  inputs.src-spurdify-v0_0_6.owner = "paradox460";
  inputs.src-spurdify-v0_0_6.repo = "spurdify";
  inputs.src-spurdify-v0_0_6.ref = "refs/tags/v0.0.6";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-spurdify-v0_0_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spurdify-v0_0_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-spurdify-v0_0_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}