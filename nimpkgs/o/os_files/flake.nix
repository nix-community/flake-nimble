{
  description = ''Crossplatform (x11, windows, osx) native file dialogs; sytem file/folder icons in any resolution; open file with default application'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."os_files-master".type = "github";
  inputs."os_files-master".owner = "riinr";
  inputs."os_files-master".repo = "flake-nimble";
  inputs."os_files-master".ref = "flake-pinning";
  inputs."os_files-master".dir = "nimpkgs/o/os_files/master";
  inputs."os_files-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."os_files-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}