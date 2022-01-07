{
  description = ''
    Userspace SCTP bindings
  '';
  inputs.src-sctp.url = "https://github.com/metacontainer/sctp.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
