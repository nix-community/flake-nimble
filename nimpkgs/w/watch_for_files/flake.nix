{
  description = ''cross-platform file watcher with database'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."watch_for_files-main".type = "github";
  inputs."watch_for_files-main".owner = "riinr";
  inputs."watch_for_files-main".repo = "flake-nimble";
  inputs."watch_for_files-main".ref = "flake-pinning";
  inputs."watch_for_files-main".dir = "nimpkgs/w/watch_for_files/main";
  inputs."watch_for_files-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."watch_for_files-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}