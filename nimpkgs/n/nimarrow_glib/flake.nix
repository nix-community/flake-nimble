{
  description = ''
    apache arrow and parquet c api bindings
  '';
  inputs.src-nimarrow_glib.url = "https://github.com/emef/nimarrow_glib";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
