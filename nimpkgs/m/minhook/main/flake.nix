{
  description = ''MinHook wrapper for Nim'';
  inputs.src-minhook-main.flake = false;
  inputs.src-minhook-main.type = "github";
  inputs.src-minhook-main.owner = "khchen";
  inputs.src-minhook-main.repo = "minhook";
  inputs.src-minhook-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-minhook-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-minhook-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-minhook-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}