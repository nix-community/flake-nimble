{
  description = ''Wrapper for cairo, a vector graphics library with display and print output'';
  inputs.src-cairo-1_1_1.flake = false;
  inputs.src-cairo-1_1_1.type = "github";
  inputs.src-cairo-1_1_1.owner = "nim-lang";
  inputs.src-cairo-1_1_1.repo = "cairo";
  inputs.src-cairo-1_1_1.ref = "refs/tags/1.1.1";
  
  outputs = { self, nixpkgs, src-cairo-1_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cairo-1_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cairo-1_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}