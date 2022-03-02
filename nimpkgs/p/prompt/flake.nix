{
  description = ''Feature-rich readline replacement'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."prompt-master".type = "github";
  inputs."prompt-master".owner = "riinr";
  inputs."prompt-master".repo = "flake-nimble";
  inputs."prompt-master".ref = "flake-pinning";
  inputs."prompt-master".dir = "nimpkgs/p/prompt/master";
  inputs."prompt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prompt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}