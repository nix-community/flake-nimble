{
  description = ''
    daemonizer for Unix, Linux and OS X
  '';
  inputs.src-daemonim.url = "https://github.com/bung87/daemon";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
