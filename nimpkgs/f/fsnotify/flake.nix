{
  description = ''
    A file system monitor in Nim.
  '';
  inputs.src-fsnotify.url = "https://github.com/xflywind/fsnotify";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
