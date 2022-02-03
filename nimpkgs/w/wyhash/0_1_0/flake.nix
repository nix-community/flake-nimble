{
  description = ''Nim wrapper for wyhash'';
  inputs.src-wyhash-0_1_0.flake = false;
  inputs.src-wyhash-0_1_0.type = "github";
  inputs.src-wyhash-0_1_0.owner = "jackhftang";
  inputs.src-wyhash-0_1_0.repo = "wyhash.nim";
  inputs.src-wyhash-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-wyhash-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wyhash-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-wyhash-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}