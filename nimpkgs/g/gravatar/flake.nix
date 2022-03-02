{
  description = ''Gravatar API wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."gravatar-master".type = "github";
  inputs."gravatar-master".owner = "riinr";
  inputs."gravatar-master".repo = "flake-nimble";
  inputs."gravatar-master".ref = "flake-pinning";
  inputs."gravatar-master".dir = "nimpkgs/g/gravatar/master";
  inputs."gravatar-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gravatar-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}