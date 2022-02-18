{
  description = ''pas2nim is a tool to translate Pascal code to Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."pas2nim-master".type = "github";
  inputs."pas2nim-master".owner = "riinr";
  inputs."pas2nim-master".repo = "flake-nimble";
  inputs."pas2nim-master".ref = "flake-pinning";
  inputs."pas2nim-master".dir = "nimpkgs/p/pas2nim/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}