{
  description = ''Nim wrapper for edlib'';
  inputs.src-edlib-main.flake = false;
  inputs.src-edlib-main.type = "github";
  inputs.src-edlib-main.owner = "bio-nim";
  inputs.src-edlib-main.repo = "nim-edlib";
  inputs.src-edlib-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-edlib-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-edlib-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-edlib-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}