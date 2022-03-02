{
  description = ''A new awesome nimble package'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."tim_sort-master".type = "github";
  inputs."tim_sort-master".owner = "riinr";
  inputs."tim_sort-master".repo = "flake-nimble";
  inputs."tim_sort-master".ref = "flake-pinning";
  inputs."tim_sort-master".dir = "nimpkgs/t/tim_sort/master";
  inputs."tim_sort-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tim_sort-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}