{
  description = ''Bindings for zstd'';
  inputs.src-zstd-master.flake = false;
  inputs.src-zstd-master.type = "github";
  inputs.src-zstd-master.owner = "wltsmrz";
  inputs.src-zstd-master.repo = "nim_zstd";
  inputs.src-zstd-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-zstd-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zstd-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zstd-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}