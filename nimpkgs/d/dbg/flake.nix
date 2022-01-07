{
  description = ''
    dbg template; in debug echo
  '';
  inputs.src-dbg.url = "https://github.com/enthus1ast/nimDbg";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
