{
  description = ''Pastebin API wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."pastebin-master".type = "github";
  inputs."pastebin-master".owner = "riinr";
  inputs."pastebin-master".repo = "flake-nimble";
  inputs."pastebin-master".ref = "flake-pinning";
  inputs."pastebin-master".dir = "nimpkgs/p/pastebin/master";
  inputs."pastebin-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pastebin-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}