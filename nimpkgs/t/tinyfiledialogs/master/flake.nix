{
  description = ''TinyFileDialogs for Nim.'';
  inputs.src-tinyfiledialogs-master.flake = false;
  inputs.src-tinyfiledialogs-master.type = "github";
  inputs.src-tinyfiledialogs-master.owner = "juancarlospaco";
  inputs.src-tinyfiledialogs-master.repo = "nim-tinyfiledialogs";
  inputs.src-tinyfiledialogs-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-tinyfiledialogs-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tinyfiledialogs-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tinyfiledialogs-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}