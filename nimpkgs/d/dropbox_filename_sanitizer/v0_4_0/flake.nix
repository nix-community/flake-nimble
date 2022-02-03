{
  description = ''Tool to clean up filenames shared on Dropbox'';
  inputs.src-dropbox_filename_sanitizer-v0_4_0.flake = false;
  inputs.src-dropbox_filename_sanitizer-v0_4_0.type = "github";
  inputs.src-dropbox_filename_sanitizer-v0_4_0.owner = "Araq";
  inputs.src-dropbox_filename_sanitizer-v0_4_0.repo = "dropbox_filename_sanitizer";
  inputs.src-dropbox_filename_sanitizer-v0_4_0.ref = "refs/tags/v0.4.0";
  
  outputs = { self, nixpkgs, src-dropbox_filename_sanitizer-v0_4_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dropbox_filename_sanitizer-v0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dropbox_filename_sanitizer-v0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}