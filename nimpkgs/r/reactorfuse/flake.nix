{
  description = ''
    Filesystem in userspace (FUSE) for Nim (for reactor.nim library)
  '';
  inputs.src-reactorfuse.url = "https://github.com/zielmicha/reactorfuse";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
