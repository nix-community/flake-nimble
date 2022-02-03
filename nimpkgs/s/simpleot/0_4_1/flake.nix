{
  description = ''Simple OT wrapper'';
  inputs.src-simpleot-0_4_1.flake = false;
  inputs.src-simpleot-0_4_1.type = "github";
  inputs.src-simpleot-0_4_1.owner = "markspanbroek";
  inputs.src-simpleot-0_4_1.repo = "simpleot.nim";
  inputs.src-simpleot-0_4_1.ref = "refs/tags/0.4.1";
  
  
  inputs."nimterop".url = "path:../../../n/nimterop";
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-simpleot-0_4_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simpleot-0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-simpleot-0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}