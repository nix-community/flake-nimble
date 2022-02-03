{
  description = ''128-bit integers'';
  inputs.src-nint128-main.flake = false;
  inputs.src-nint128-main.type = "github";
  inputs.src-nint128-main.owner = "rockcavera";
  inputs.src-nint128-main.repo = "nim-nint128";
  inputs.src-nint128-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-nint128-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nint128-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nint128-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}