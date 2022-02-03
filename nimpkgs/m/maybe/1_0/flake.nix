{
  description = ''basic monadic maybe type for Nim'';
  inputs.src-maybe-1_0.flake = false;
  inputs.src-maybe-1_0.type = "github";
  inputs.src-maybe-1_0.owner = "superfunc";
  inputs.src-maybe-1_0.repo = "maybe";
  inputs.src-maybe-1_0.ref = "refs/tags/1.0";
  
  outputs = { self, nixpkgs, src-maybe-1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-maybe-1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-maybe-1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}