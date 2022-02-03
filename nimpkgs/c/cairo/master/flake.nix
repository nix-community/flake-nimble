{
  description = ''Wrapper for cairo, a vector graphics library with display and print output'';
  inputs.src-cairo-master.flake = false;
  inputs.src-cairo-master.type = "github";
  inputs.src-cairo-master.owner = "nim-lang";
  inputs.src-cairo-master.repo = "cairo";
  inputs.src-cairo-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-cairo-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cairo-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cairo-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}