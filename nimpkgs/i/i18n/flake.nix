{
  description = ''Bring a gettext-like internationalisation module to Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."i18n-master".type = "github";
  inputs."i18n-master".owner = "riinr";
  inputs."i18n-master".repo = "flake-nimble";
  inputs."i18n-master".ref = "flake-pinning";
  inputs."i18n-master".dir = "nimpkgs/i/i18n/master";
  inputs."i18n-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."i18n-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}