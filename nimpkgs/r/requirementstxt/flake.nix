{
  description = ''Python requirements.txt generic parser for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."requirementstxt-master".type = "github";
  inputs."requirementstxt-master".owner = "riinr";
  inputs."requirementstxt-master".repo = "flake-nimble";
  inputs."requirementstxt-master".ref = "flake-pinning";
  inputs."requirementstxt-master".dir = "nimpkgs/r/requirementstxt/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}