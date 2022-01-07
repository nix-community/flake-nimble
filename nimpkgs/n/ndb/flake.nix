{
  description = ''
    A db_sqlite fork with a proper typing
  '';
  inputs.src-ndb.url = "https://github.com/xzfc/ndb.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
