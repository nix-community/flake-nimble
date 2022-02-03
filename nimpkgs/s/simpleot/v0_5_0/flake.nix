{
  description = ''Simple OT wrapper'';
  inputs.src-simpleot-v0_5_0.flake = false;
  inputs.src-simpleot-v0_5_0.type = "github";
  inputs.src-simpleot-v0_5_0.owner = "markspanbroek";
  inputs.src-simpleot-v0_5_0.repo = "simpleot.nim";
  inputs.src-simpleot-v0_5_0.ref = "refs/tags/v0.5.0";
  
  
  inputs."nimterop".url = "path:../../../n/nimterop";
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-simpleot-v0_5_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simpleot-v0_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-simpleot-v0_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}