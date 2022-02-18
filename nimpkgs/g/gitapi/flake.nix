{
  description = ''Nim wrapper around the git version control software'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."gitapi-master".type = "github";
  inputs."gitapi-master".owner = "riinr";
  inputs."gitapi-master".repo = "flake-nimble";
  inputs."gitapi-master".ref = "flake-pinning";
  inputs."gitapi-master".dir = "nimpkgs/g/gitapi/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}