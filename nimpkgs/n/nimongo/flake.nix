{
  description = ''
    MongoDB driver in pure Nim language with synchronous and asynchronous I/O support
  '';
  inputs.src-nimongo.url = "https://github.com/SSPkrolik/nimongo";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
