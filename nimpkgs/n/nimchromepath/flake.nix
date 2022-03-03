{
  description = ''Thin lib to find if chrome exists on Windows, Mac, or Linux.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimchromepath-master".type = "github";
  inputs."nimchromepath-master".owner = "riinr";
  inputs."nimchromepath-master".repo = "flake-nimble";
  inputs."nimchromepath-master".ref = "flake-pinning";
  inputs."nimchromepath-master".dir = "nimpkgs/n/nimchromepath/master";
  inputs."nimchromepath-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimchromepath-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}