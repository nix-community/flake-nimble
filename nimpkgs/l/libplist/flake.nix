{
  description = ''
    wrapper around libplist https://github.com/libimobiledevice/libplist
  '';
  inputs.src-libplist.url = "https://github.com/samdmarshall/libplist.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
