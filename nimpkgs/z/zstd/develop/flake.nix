{
  description = ''Bindings for zstd'';
  inputs.src-zstd-develop.flake = false;
  inputs.src-zstd-develop.type = "github";
  inputs.src-zstd-develop.owner = "wltsmrz";
  inputs.src-zstd-develop.repo = "nim_zstd";
  inputs.src-zstd-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, src-zstd-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zstd-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zstd-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}