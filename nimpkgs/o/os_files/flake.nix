{
  description = ''
    Crossplatform (x11, windows, osx) native file dialogs; sytem file/folder icons in any resolution; open file with default application
  '';
  inputs.src-os_files.url = "https://github.com/tormund/os_files";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
