{
  description = ''Tool to clean up filenames shared on Dropbox'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-dropbox_filename_sanitizer-v0_2_1.flake = false;
  inputs.src-dropbox_filename_sanitizer-v0_2_1.type = "github";
  inputs.src-dropbox_filename_sanitizer-v0_2_1.owner = "Araq";
  inputs.src-dropbox_filename_sanitizer-v0_2_1.repo = "dropbox_filename_sanitizer";
  inputs.src-dropbox_filename_sanitizer-v0_2_1.ref = "refs/tags/v0.2.1";
  inputs.src-dropbox_filename_sanitizer-v0_2_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-dropbox_filename_sanitizer-v0_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dropbox_filename_sanitizer-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dropbox_filename_sanitizer-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}