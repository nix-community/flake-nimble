{
  description = ''Nim bindings for the zxcvbn-c password strength estimation library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."zxcvbn-master".type = "github";
  inputs."zxcvbn-master".owner = "riinr";
  inputs."zxcvbn-master".repo = "flake-nimble";
  inputs."zxcvbn-master".ref = "flake-pinning";
  inputs."zxcvbn-master".dir = "nimpkgs/z/zxcvbn/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}