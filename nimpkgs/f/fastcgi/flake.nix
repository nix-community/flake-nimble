{
  description = ''FastCGI library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."fastcgi-master".type = "github";
  inputs."fastcgi-master".owner = "riinr";
  inputs."fastcgi-master".repo = "flake-nimble";
  inputs."fastcgi-master".ref = "flake-pinning";
  inputs."fastcgi-master".dir = "nimpkgs/f/fastcgi/master";
  inputs."fastcgi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fastcgi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fastcgi-0_1_0".type = "github";
  inputs."fastcgi-0_1_0".owner = "riinr";
  inputs."fastcgi-0_1_0".repo = "flake-nimble";
  inputs."fastcgi-0_1_0".ref = "flake-pinning";
  inputs."fastcgi-0_1_0".dir = "nimpkgs/f/fastcgi/0_1_0";
  inputs."fastcgi-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fastcgi-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}