{
  description = ''Language Handler for executing Nim inside postgres as a procedural language'';
  inputs.src-plnim-v0_1_4.flake = false;
  inputs.src-plnim-v0_1_4.type = "github";
  inputs.src-plnim-v0_1_4.owner = "luisacosta828";
  inputs.src-plnim-v0_1_4.repo = "plnim";
  inputs.src-plnim-v0_1_4.ref = "refs/tags/v0.1.4";
  
  
  inputs."pgxcrown".type = "github";
  inputs."pgxcrown".owner = "riinr";
  inputs."pgxcrown".repo = "flake-nimble";
  inputs."pgxcrown".ref = "flake-pinning";
  inputs."pgxcrown".dir = "nimpkgs/p/pgxcrown";

  outputs = { self, nixpkgs, src-plnim-v0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-plnim-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-plnim-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}