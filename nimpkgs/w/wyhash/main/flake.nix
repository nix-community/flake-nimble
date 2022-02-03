{
  description = ''Nim wrapper for wyhash'';
  inputs.src-wyhash-main.flake = false;
  inputs.src-wyhash-main.type = "github";
  inputs.src-wyhash-main.owner = "jackhftang";
  inputs.src-wyhash-main.repo = "wyhash.nim";
  inputs.src-wyhash-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-wyhash-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wyhash-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-wyhash-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}