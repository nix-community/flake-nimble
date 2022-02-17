{
  description = ''Nimble package manager'';
  inputs.src-nimble-v0_7_8.flake = false;
  inputs.src-nimble-v0_7_8.type = "github";
  inputs.src-nimble-v0_7_8.owner = "nim-lang";
  inputs.src-nimble-v0_7_8.repo = "nimble";
  inputs.src-nimble-v0_7_8.ref = "refs/tags/v0.7.8";
  
  
  inputs."compiler".type = "github";
  inputs."compiler".owner = "riinr";
  inputs."compiler".repo = "flake-nimble";
  inputs."compiler".ref = "flake-pinning";
  inputs."compiler".dir = "nimpkgs/c/compiler";

  outputs = { self, nixpkgs, src-nimble-v0_7_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimble-v0_7_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimble-v0_7_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}