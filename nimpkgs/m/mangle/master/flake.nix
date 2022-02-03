{
  description = ''Yet another iterator library'';
  inputs.src-mangle-master.flake = false;
  inputs.src-mangle-master.type = "github";
  inputs.src-mangle-master.owner = "baabelfish";
  inputs.src-mangle-master.repo = "mangle";
  inputs.src-mangle-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-mangle-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mangle-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mangle-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}