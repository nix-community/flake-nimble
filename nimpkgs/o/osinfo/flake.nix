{
  description = ''
    Modules providing information about the OS.
  '';
  inputs.src-osinfo.url = "https://github.com/nim-lang/osinfo.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
