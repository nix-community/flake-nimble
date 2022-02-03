{
  description = ''basic monadic maybe type for Nim'';
  inputs.src-maybe-2_2.flake = false;
  inputs.src-maybe-2_2.type = "github";
  inputs.src-maybe-2_2.owner = "superfunc";
  inputs.src-maybe-2_2.repo = "maybe";
  inputs.src-maybe-2_2.ref = "refs/tags/2.2";
  
  outputs = { self, nixpkgs, src-maybe-2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-maybe-2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-maybe-2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}