{
  description = ''terminal ascii tables for nim'';
  inputs.src-asciitables-master.flake = false;
  inputs.src-asciitables-master.type = "github";
  inputs.src-asciitables-master.owner = "xmonader";
  inputs.src-asciitables-master.repo = "nim-asciitables";
  inputs.src-asciitables-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-asciitables-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asciitables-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-asciitables-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}