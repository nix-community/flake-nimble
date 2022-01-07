{
  description = ''
    Linux Seccomp sandbox library
  '';
  inputs.src-seccomp.url = "https://github.com/FedericoCeratto/nim-seccomp";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
