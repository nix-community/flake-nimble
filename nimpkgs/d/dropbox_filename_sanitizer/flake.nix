{
  description = ''Tool to clean up filenames shared on Dropbox'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."dropbox_filename_sanitizer-master".type = "github";
  inputs."dropbox_filename_sanitizer-master".owner = "riinr";
  inputs."dropbox_filename_sanitizer-master".repo = "flake-nimble";
  inputs."dropbox_filename_sanitizer-master".ref = "flake-pinning";
  inputs."dropbox_filename_sanitizer-master".dir = "nimpkgs/d/dropbox_filename_sanitizer/master";
  inputs."dropbox_filename_sanitizer-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dropbox_filename_sanitizer-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."dropbox_filename_sanitizer-v0_2_1".type = "github";
  inputs."dropbox_filename_sanitizer-v0_2_1".owner = "riinr";
  inputs."dropbox_filename_sanitizer-v0_2_1".repo = "flake-nimble";
  inputs."dropbox_filename_sanitizer-v0_2_1".ref = "flake-pinning";
  inputs."dropbox_filename_sanitizer-v0_2_1".dir = "nimpkgs/d/dropbox_filename_sanitizer/v0_2_1";
  inputs."dropbox_filename_sanitizer-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dropbox_filename_sanitizer-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."dropbox_filename_sanitizer-v0_4_0".type = "github";
  inputs."dropbox_filename_sanitizer-v0_4_0".owner = "riinr";
  inputs."dropbox_filename_sanitizer-v0_4_0".repo = "flake-nimble";
  inputs."dropbox_filename_sanitizer-v0_4_0".ref = "flake-pinning";
  inputs."dropbox_filename_sanitizer-v0_4_0".dir = "nimpkgs/d/dropbox_filename_sanitizer/v0_4_0";
  inputs."dropbox_filename_sanitizer-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dropbox_filename_sanitizer-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}