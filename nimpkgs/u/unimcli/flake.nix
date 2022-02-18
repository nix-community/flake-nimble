{
  description = ''User-friendly nimcli.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."unimcli-master".type = "github";
  inputs."unimcli-master".owner = "riinr";
  inputs."unimcli-master".repo = "flake-nimble";
  inputs."unimcli-master".ref = "flake-pinning";
  inputs."unimcli-master".dir = "nimpkgs/u/unimcli/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}