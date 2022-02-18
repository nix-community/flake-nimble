{
  description = ''Nim Espeak NG wrapper, for super easy Voice and Text-To-Speech'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."espeak-master".type = "github";
  inputs."espeak-master".owner = "riinr";
  inputs."espeak-master".repo = "flake-nimble";
  inputs."espeak-master".ref = "flake-pinning";
  inputs."espeak-master".dir = "nimpkgs/e/espeak/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}