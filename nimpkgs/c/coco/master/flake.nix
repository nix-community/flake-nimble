{
  description = ''Code coverage CLI + library for Nim using LCOV'';
  inputs.src-coco-master.flake = false;
  inputs.src-coco-master.type = "github";
  inputs.src-coco-master.owner = "samuelroy";
  inputs.src-coco-master.repo = "coco";
  inputs.src-coco-master.ref = "refs/heads/master";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."glob".type = "github";
  inputs."glob".owner = "riinr";
  inputs."glob".repo = "flake-nimble";
  inputs."glob".ref = "flake-pinning";
  inputs."glob".dir = "nimpkgs/g/glob";

  outputs = { self, nixpkgs, src-coco-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-coco-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-coco-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}