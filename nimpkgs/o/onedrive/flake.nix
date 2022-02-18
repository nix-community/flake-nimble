{
  description = ''Get information on files and folders in OneDrive'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."onedrive-master".type = "github";
  inputs."onedrive-master".owner = "riinr";
  inputs."onedrive-master".repo = "flake-nimble";
  inputs."onedrive-master".ref = "flake-pinning";
  inputs."onedrive-master".dir = "nimpkgs/o/onedrive/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}