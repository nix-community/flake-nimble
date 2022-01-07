{
  description = ''
    cross-platform file watcher with database
  '';
  inputs.src-watch_for_files.url = "https://github.com/hamidb80/watch_for_files";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
