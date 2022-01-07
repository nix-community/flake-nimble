{
  description = ''
    objective-c runtime bindings
  '';
  inputs.src-objc_runtime.url = "https://github.com/bung87/objc_runtime";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
