{
  description = ''
    Tool to clean up filenames shared on Dropbox
  '';
  inputs.src-dropbox_filename_sanitizer.url = "https://github.com/Araq/dropbox_filename_sanitizer/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
