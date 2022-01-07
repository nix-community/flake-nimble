{
  description = ''
    libssh FFI bindings
  '';
  inputs.src-libssh.url = "https://github.com/dariolah/libssh-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
