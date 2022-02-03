{
  description = ''Bindings for zstd'';
  inputs.src-zstd-v0_2.flake = false;
  inputs.src-zstd-v0_2.type = "github";
  inputs.src-zstd-v0_2.owner = "wltsmrz";
  inputs.src-zstd-v0_2.repo = "nim_zstd";
  inputs.src-zstd-v0_2.ref = "refs/tags/v0.2";
  
  outputs = { self, nixpkgs, src-zstd-v0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zstd-v0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zstd-v0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}