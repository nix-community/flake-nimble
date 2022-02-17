{
  description = ''Language Handler for executing Nim inside postgres as a procedural language'';
  inputs.src-plnim-v0_1_6.flake = false;
  inputs.src-plnim-v0_1_6.type = "github";
  inputs.src-plnim-v0_1_6.owner = "luisacosta828";
  inputs.src-plnim-v0_1_6.repo = "plnim";
  inputs.src-plnim-v0_1_6.ref = "refs/tags/v0.1.6";
  
  
  inputs."pgxcrown".type = "github";
  inputs."pgxcrown".owner = "riinr";
  inputs."pgxcrown".repo = "flake-nimble";
  inputs."pgxcrown".ref = "flake-pinning";
  inputs."pgxcrown".dir = "nimpkgs/p/pgxcrown";

  outputs = { self, nixpkgs, src-plnim-v0_1_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-plnim-v0_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-plnim-v0_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}