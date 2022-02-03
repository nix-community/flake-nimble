{
  description = ''Convert a Nim file or string to Markdown'';
  inputs.src-nimtomd-master.flake = false;
  inputs.src-nimtomd-master.type = "github";
  inputs.src-nimtomd-master.owner = "ThomasTJdev";
  inputs.src-nimtomd-master.repo = "nimtomd";
  inputs.src-nimtomd-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimtomd-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimtomd-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimtomd-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}