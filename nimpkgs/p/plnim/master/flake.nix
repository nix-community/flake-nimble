{
  description = ''Language Handler for executing Nim inside postgres as a procedural language'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-plnim-master.flake = false;
  inputs.src-plnim-master.type = "github";
  inputs.src-plnim-master.owner = "luisacosta828";
  inputs.src-plnim-master.repo = "plnim";
  inputs.src-plnim-master.ref = "refs/heads/master";
  
  
  inputs."pgxcrown".type = "github";
  inputs."pgxcrown".owner = "riinr";
  inputs."pgxcrown".repo = "flake-nimble";
  inputs."pgxcrown".ref = "flake-pinning";
  inputs."pgxcrown".dir = "nimpkgs/p/pgxcrown";

  outputs = { self, nixpkgs, flakeNimbleLib, src-plnim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-plnim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-plnim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}