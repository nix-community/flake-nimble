{
  description = ''Language Handler for executing Nim inside postgres as a procedural language'';
  inputs.src-plnim-master.flake = false;
  inputs.src-plnim-master.type = "github";
  inputs.src-plnim-master.owner = "luisacosta828";
  inputs.src-plnim-master.repo = "plnim";
  inputs.src-plnim-master.ref = "refs/heads/master";
  
  
  inputs."pgxcrown".url = "path:../../../p/pgxcrown";
  inputs."pgxcrown".type = "github";
  inputs."pgxcrown".owner = "riinr";
  inputs."pgxcrown".repo = "flake-nimble";
  inputs."pgxcrown".ref = "flake-pinning";
  inputs."pgxcrown".dir = "nimpkgs/p/pgxcrown";

  outputs = { self, nixpkgs, src-plnim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-plnim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-plnim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}