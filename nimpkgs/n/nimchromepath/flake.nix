{
  description = ''Thin lib to find if chrome exists on Windows, Mac, or Linux.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimchromepath-master".type = "github";
  inputs."nimchromepath-master".owner = "riinr";
  inputs."nimchromepath-master".repo = "flake-nimble";
  inputs."nimchromepath-master".ref = "flake-pinning";
  inputs."nimchromepath-master".dir = "nimpkgs/n/nimchromepath/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}