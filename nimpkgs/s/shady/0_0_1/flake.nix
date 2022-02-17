{
  description = ''Nim to GPU shader language compiler and supporting utilities.'';
  inputs.src-shady-0_0_1.flake = false;
  inputs.src-shady-0_0_1.type = "github";
  inputs.src-shady-0_0_1.owner = "treeform";
  inputs.src-shady-0_0_1.repo = "shady";
  inputs.src-shady-0_0_1.ref = "refs/tags/0.0.1";
  
  
  inputs."vmath".type = "github";
  inputs."vmath".owner = "riinr";
  inputs."vmath".repo = "flake-nimble";
  inputs."vmath".ref = "flake-pinning";
  inputs."vmath".dir = "nimpkgs/v/vmath";

  
  inputs."pixie".type = "github";
  inputs."pixie".owner = "riinr";
  inputs."pixie".repo = "flake-nimble";
  inputs."pixie".ref = "flake-pinning";
  inputs."pixie".dir = "nimpkgs/p/pixie";

  outputs = { self, nixpkgs, src-shady-0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shady-0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-shady-0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}