{
  description = ''Get the current hostname with gethostname(2)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."oshostname-master".type = "github";
  inputs."oshostname-master".owner = "riinr";
  inputs."oshostname-master".repo = "flake-nimble";
  inputs."oshostname-master".ref = "flake-pinning";
  inputs."oshostname-master".dir = "nimpkgs/o/oshostname/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}