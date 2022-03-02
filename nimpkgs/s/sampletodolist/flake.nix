{
  description = ''Sample Todo List Application'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sampletodolist-master".type = "github";
  inputs."sampletodolist-master".owner = "riinr";
  inputs."sampletodolist-master".repo = "flake-nimble";
  inputs."sampletodolist-master".ref = "flake-pinning";
  inputs."sampletodolist-master".dir = "nimpkgs/s/sampletodolist/master";
  inputs."sampletodolist-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sampletodolist-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}